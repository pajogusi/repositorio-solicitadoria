"""Regressões técnicas locais; não executa serviços externos nem scripts históricos."""
import hashlib
import importlib.util
import json
import re
import shutil
import subprocess
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('site_data', ROOT / 'scripts/atualizar_dados.py')
site = importlib.util.module_from_spec(spec)
spec.loader.exec_module(site)


def preserved_source(source):
    # São permitidas apenas alterações de metadados viewport e marcação de navegação.
    source = re.sub(r'\n<meta name="viewport" content="width=device-width, initial-scale=1.0">', '', source)
    return re.sub(r'<nav\b[^>]*>.*?</nav>', lambda m: site.Page(m[0].replace('<nav', '<div').replace('</nav>', '</div>')).searchable(), source, flags=re.S | re.I)


class SiteTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.pages = {p.relative_to(ROOT).as_posix(): site.Page(p.read_text(encoding='utf-8')) for p in site.public_pages()}
        cls.catalog = site.course_catalog()

    def test_every_public_internal_link_and_anchor(self):
        errors = []
        checked = 0
        for name, page in self.pages.items():
            for url, line in page.links:
                target = site.local_target(name, url)
                if target is None:
                    continue
                checked += 1
                path, anchor = target
                destination = ROOT / path
                if destination.is_dir():
                    path = str(Path(path) / 'index.html')
                    destination = ROOT / path
                if not destination.is_file():
                    errors.append(f'{name}:{line}: {url}')
                elif anchor and path in self.pages and anchor not in self.pages[path].ids:
                    errors.append(f'{name}:{line}: âncora inexistente {url}')
        self.assertEqual(errors, [], '\n'.join(errors))
        self.assertGreater(checked, 4000)

    def test_every_page_reachable(self):
        visited, pending = set(), ['index.html']
        while pending:
            current = pending.pop()
            if current in visited:
                continue
            visited.add(current)
            for url, _ in self.pages[current].links:
                target = site.local_target(current, url)
                if target and target[0] in self.pages and target[0] not in visited:
                    pending.append(target[0])
        self.assertEqual(visited, set(self.pages))

    def test_unique_ids_and_mobile_viewport(self):
        for name, page in self.pages.items():
            with self.subTest(page=name):
                self.assertEqual(len(page.ids), len(set(page.ids)))
                self.assertRegex((ROOT / name).read_text(), r'<meta name="viewport" content="width=device-width, initial-scale=1.0">')

    def test_course_numbers_derived_from_existing_lessons(self):
        self.assertEqual(site.summary(self.catalog), {'disciplinas':38, 'concluidas':26, 'emCurso':1, 'porIniciar':11,
                         'aulasConcluidas':266, 'aulasPrevistas':380, 'percentagem':70.0})
        lessons = [p for c in self.catalog for p in c['aulas']]
        self.assertEqual(len(lessons), len(set(lessons)))
        self.assertTrue(all((ROOT / path).is_file() for path in lessons))

    def test_original_lessons_and_supplements_preserved(self):
        baseline = json.loads((ROOT / 'tests/aulas_base.json').read_text())
        current = {p.relative_to(ROOT).as_posix() for p in (ROOT / 'aulas').rglob('*.html')}
        self.assertEqual(set(baseline), current)
        self.assertEqual(len(current), 269)
        for path, digest in baseline.items():
            with self.subTest(page=path):
                self.assertEqual(hashlib.sha256(preserved_source((ROOT / path).read_text()).encode()).hexdigest(), digest)

    def test_generated_data_are_current(self):
        for name, expected in site.generated_outputs().items():
            with self.subTest(file=name):
                self.assertEqual((ROOT / name).read_text(), expected)

    def test_search_index_covers_all_public_pages_and_content(self):
        index = site.search_index()
        self.assertEqual({p['url'] for p in index}, set(self.pages))
        self.assertEqual(len(index), len(self.pages))
        for page in index:
            self.assertTrue(page['titulo'])
            self.assertTrue(page['texto'])
            self.assertEqual(page['texto'], self.pages[page['url']].searchable())

    def test_missing_lesson_stops_generation(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            shutil.copy(ROOT / 'cadeiras.html', root / 'cadeiras.html')
            shutil.copytree(ROOT / 'cadeiras', root / 'cadeiras')
            shutil.copytree(ROOT / 'aulas', root / 'aulas')
            (root / 'aulas/direito-notariado/aula-06.html').unlink()
            with self.assertRaisesRegex(ValueError, 'plano indica 6; ficheiros confirmam 5'):
                site.course_catalog(root)

    def test_commercial_code_and_unavailable_next_lesson(self):
        library = (ROOT / 'biblioteca/codigos-juridicos.html').read_text()
        self.assertIn('https://dgpj.justica.gov.pt/Portals/31/CodComercial.pdf', library)
        self.assertNotRegex(library, r'href="[^"]*nid=85[^\"]*"[^>]*>Código Comercial')
        self.assertNotIn('href="aula-07.html"', (ROOT / 'aulas/direito-notariado/aula-06.html').read_text())

    def test_javascript_behavior(self):
        result = subprocess.run(['node', str(ROOT / 'tests/test_script.js')], capture_output=True, text=True, cwd=ROOT)
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)


if __name__ == '__main__':
    unittest.main()
