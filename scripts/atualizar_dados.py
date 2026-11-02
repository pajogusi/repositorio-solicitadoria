#!/usr/bin/env python3
"""Gerar catálogo, pesquisa e resumo a partir do HTML, sem dependências externas."""
import argparse
import json
import posixpath
import re
from html import unescape
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import unquote, urlsplit

ROOT = Path(__file__).resolve().parents[1]
PUBLIC_DIRS = ('aulas', 'biblioteca', 'cadeiras', 'casos', 'glossario', 'jurisprudencia', 'paginas')


def public_pages(root=ROOT):
    return sorted([*root.glob('*.html'), *(p for d in PUBLIC_DIRS for p in (root / d).rglob('*.html'))])


class Page(HTMLParser):
    """Extrair texto útil, títulos, identificadores e referências sem executar HTML."""
    def __init__(self, source):
        super().__init__(convert_charrefs=True)
        self.stack = []
        self.text = []
        self.title = []
        self.heading = []
        self.links = []
        self.ids = []
        self.feed(source)

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if attrs.get('id'):
            self.ids.append(attrs['id'])
        if tag == 'a' and attrs.get('name'):
            self.ids.append(attrs['name'])
        for key in ('href', 'src'):
            if key in attrs:
                self.links.append((attrs[key], self.getpos()[0]))
        if tag not in ('area', 'base', 'br', 'col', 'embed', 'hr', 'img', 'input', 'link', 'meta', 'param', 'source', 'track', 'wbr'):
            excluded = tag in ('nav', 'footer', 'script', 'style', 'noscript') or 'aviso-rodape' in attrs.get('class', '').split()
            self.stack.append((tag, excluded))

    def handle_startendtag(self, tag, attrs):
        self.handle_starttag(tag, attrs)
        self.handle_endtag(tag)

    def handle_endtag(self, tag):
        for i in range(len(self.stack) - 1, -1, -1):
            if self.stack[i][0] == tag:
                del self.stack[i:]
                break

    def handle_data(self, data):
        tags = [tag for tag, _ in self.stack]
        if 'title' in tags:
            self.title.append(data)
        if 'h1' in tags:
            self.heading.append(data)
        if 'head' not in tags and not any(excluded for _, excluded in self.stack):
            self.text.append(data)

    def searchable(self):
        return ' '.join(' '.join(self.text).split())


def local_target(page, url):
    parts = urlsplit(url)
    if parts.scheme or parts.netloc:
        return None
    path = unquote(parts.path)
    if path.startswith('/'):
        raise ValueError(f'Ligação incompatível com subdiretório GitHub Pages: {page}: {url}')
    target = posixpath.normpath(posixpath.join(posixpath.dirname(page), path)) if path else page
    if target == '.':
        target = 'index.html'
    return target, unquote(parts.fragment)


def course_catalog(root=ROOT):
    source = (root / 'cadeiras.html').read_text(encoding='utf-8')
    cards = re.findall(r'<div class="cadeira-card">(.*?)</div>', source, re.S)
    catalog = []
    for card in cards:
        title = Page(re.search(r'<h3>(.*?)</h3>', card, re.S)[1]).searchable().removeprefix('📚').strip()
        match = re.search(r'(\d+)\s*/\s*(\d+) aulas concluídas', card)
        if not match:
            raise ValueError(f'Contagem em falta: {title}')
        declared, planned = map(int, match.groups())
        link = re.search(r'href="([^"]+)"', card)
        url = link[1] if link else None
        lessons = []
        if url:
            presentation = root / url
            if not presentation.is_file():
                raise ValueError(f'Apresentação inexistente: {url}')
            lesson_links = []
            for href, _ in Page(presentation.read_text(encoding='utf-8')).links:
                target = local_target(url, href)
                if target and target[0].startswith('aulas/') and (root / target[0]).is_file():
                    lesson_links.append(target[0])
            directories = {str(Path(p).parent) for p in lesson_links if re.search(r'/(aula-\d+|quiz-final)\.html$', p)}
            if len(directories) != 1:
                raise ValueError(f'Não foi possível determinar as aulas de {title}: {directories}')
            directory = directories.pop()
            for number in range(1, planned + 1):
                candidate = f'{directory}/aula-{number:02}.html'
                # Nas primeiras cadeiras, quiz-final.html é a décima aula.
                if number == planned and not (root / candidate).is_file():
                    candidate = f'{directory}/quiz-final.html'
                if (root / candidate).is_file():
                    if len(lessons) != number - 1:
                        raise ValueError(f'Sequência de aulas interrompida: {title}')
                    lessons.append(candidate)
        if len(lessons) != declared:
            raise ValueError(f'{title}: plano indica {declared}; ficheiros confirmam {len(lessons)}. Reconciliar antes de gerar.')
        catalog.append({'titulo': title, 'url': url, 'previstas': planned, 'aulas': lessons})
    if not catalog:
        raise ValueError('Plano de estudos sem disciplinas reconhecidas')
    return catalog


def summary(catalog):
    total = sum(c['previstas'] for c in catalog)
    done = sum(len(c['aulas']) for c in catalog)
    return {'disciplinas': len(catalog), 'concluidas': sum(len(c['aulas']) == c['previstas'] for c in catalog),
            'emCurso': sum(0 < len(c['aulas']) < c['previstas'] for c in catalog),
            'porIniciar': sum(not c['aulas'] for c in catalog), 'aulasConcluidas': done,
            'aulasPrevistas': total, 'percentagem': done / total * 100 if total else 0}


def search_index(root=ROOT, catalog=None, overrides=None):
    catalog = catalog if catalog is not None else course_catalog(root)
    labels = {}
    # Os textos das ligações da apresentação identificam o assunto de cada aula.
    for course in catalog:
        if not course['url']:
            continue
        source = (root / course['url']).read_text(encoding='utf-8')
        for href, label in re.findall(r'<a\b[^>]*href="([^"]+)"[^>]*>(.*?)</a>', source, re.S | re.I):
            target = local_target(course['url'], href)
            if target and target[0] in course['aulas']:
                text = Page(label).searchable()
                if re.match(r'Aula\s+\d+\s*[—–-]', text):
                    labels[target[0]] = f"{course['titulo']} — {text}"
    result = []
    for path in public_pages(root):
        url = path.relative_to(root).as_posix()
        page = Page((overrides or {}).get(url, path.read_text(encoding='utf-8')))
        title = labels.get(url) or ' '.join(page.title).strip() or ' '.join(page.heading).strip() or url
        result.append({'titulo': unescape(title), 'url': url, 'texto': page.searchable()})
    return result


def generated_outputs(root=ROOT):
    catalog = course_catalog(root)
    stats = summary(catalog)
    encode = lambda value: json.dumps(value, ensure_ascii=False, separators=(',', ':')).replace('<', '\\u003c')
    home = (root / 'index.html').read_text(encoding='utf-8')
    values = {'cadeirasConcluidas': f"{stats['concluidas']} / {stats['disciplinas']}",
              'aulasConcluidas': f"{stats['aulasConcluidas']} / {stats['aulasPrevistas']}",
              'rotuloProgresso': f"{stats['percentagem']:.1f}%".replace('.', ',')}
    for element, value in values.items():
        home, count = re.subn(rf'(<(?:strong|span) id="{element}">)[^<]*(</(?:strong|span)>)', lambda m: m[1] + value + m[2], home)
        if count != 1:
            raise ValueError(f'Resumo HTML sem identificador único: {element}')
    home, count = re.subn(r'(<progress id="progressoCurso"[^>]*value=")[^"]*(" max=")[^"]*("[^>]*>)[^<]*(</progress>)',
                         lambda m: m[1] + str(stats['aulasConcluidas']) + m[2] + str(stats['aulasPrevistas']) + m[3] + values['rotuloProgresso'] + m[4], home)
    if count != 1:
        raise ValueError('Elemento progress em falta')
    index = search_index(root, catalog, {'index.html': home})
    array = lambda rows: '[\n' + ',\n'.join('  ' + encode(row) for row in rows) + '\n]'
    return {'data/cadeiras.js': '// Gerado por scripts/atualizar_dados.py; não editar manualmente.\nconst disciplinasCurso = ' + array(catalog) + ';\n',
            'data/pesquisa.js': '// Gerado por scripts/atualizar_dados.py; não editar manualmente.\nconst paginasPesquisa = ' + array(index) + ';\n',
            'index.html': home}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true', help='Verificar sincronização sem escrever ficheiros')
    args = parser.parse_args()
    outputs = generated_outputs()
    stale = [name for name, content in outputs.items() if not (ROOT / name).exists() or (ROOT / name).read_text(encoding='utf-8') != content]
    if args.check:
        if stale:
            raise SystemExit('Dados desatualizados: ' + ', '.join(stale))
    else:
        for name in stale:
            (ROOT / name).write_text(outputs[name], encoding='utf-8')
    print(json.dumps(summary(course_catalog()), ensure_ascii=False))


if __name__ == '__main__':
    main()
