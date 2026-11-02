"""Regressões do registo; só altera cópias em memória."""
import copy
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parent))
from continuar import carregar, verificar, proxima


class ContinuidadeTests(unittest.TestCase):
    def setUp(self):
        self.registo = copy.deepcopy(carregar())

    def test_registo_real(self):
        self.assertEqual(verificar(self.registo), [])

    def test_proxima_prioriza_analise_incompleta(self):
        self.registo['aulas'][4]['auditoria'] = 'em análise'
        self.assertEqual(proxima(self.registo)['id'], self.registo['aulas'][4]['id'])

    def test_hash_divergente_bloqueia_reutilizacao(self):
        self.registo['aulas'][0]['sha256'] = '0' * 64
        self.assertTrue(any('ALTERAÇÃO POSTERIOR' in x for x in verificar(self.registo)))

    def test_id_duplicado(self):
        self.registo['aulas'][1]['id'] = self.registo['aulas'][0]['id']
        self.assertIn('IDs de aula duplicados.', verificar(self.registo))

    def test_conclusao_sem_relatorio_preenchido(self):
        self.registo['aulas'][0].update(auditoria='concluída', classificacao='validada', data_auditoria='2026-11-02')
        self.assertTrue(any('ainda por preencher' in x for x in verificar(self.registo)))

    def test_correcoes_independentes_da_auditoria(self):
        aula = next(x for x in self.registo['aulas'] if x['auditoria'] == 'concluída')
        self.assertEqual(aula['correcoes'], 'propostas')
        self.assertNotEqual(aula['correcoes'], 'aplicadas')

    def test_fonte_inexistente(self):
        self.registo['aulas'][-1]['fontes'].append('S999999')
        self.assertTrue(any('não consta do registo' in x for x in verificar(self.registo)))


if __name__ == '__main__':
    unittest.main()
