#!/usr/bin/env python3
"""Consultar o registo sem o modificar. Apenas biblioteca padrão."""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
AUDITORIA = {'pendente', 'em análise', 'concluída'}
CLASSES = {'validada', 'correções menores', 'correções jurídicas', 'revisão profunda', 'não verificada'}
CORRECOES = {'não iniciadas', 'propostas', 'aprovadas', 'aplicadas', 'verificadas'}


def carregar(root=ROOT):
    return json.loads((root / 'auditoria/progresso.json').read_text())


def proxima(registo):
    for estado in ('em análise', 'pendente'):
        for aula in registo['aulas']:
            if aula['auditoria'] == estado:
                return aula
    return None


def verificar(registo, root=ROOT):
    erros = []
    def exigir(condicao, mensagem):
        if not condicao:
            erros.append(mensagem)
    aulas = registo['aulas']
    exigir(len(aulas) == 266, 'Inventário deve conter 266 unidades.')
    exigir(len(registo['disciplinas']) == 38, 'Inventário deve conter 38 disciplinas.')
    exigir(len({x['id'] for x in aulas}) == len(aulas), 'IDs de aula duplicados.')
    exigir(len({x['ficheiro'] for x in aulas}) == len(aulas), 'Caminhos de aula duplicados.')
    fontes = (root / 'auditoria/fontes/referencias-legislativas.md').read_text()
    problemas = []
    for aula in aulas:
        ident = aula['id']
        exigir(aula['auditoria'] in AUDITORIA, f'{ident}: estado de auditoria inválido.')
        exigir(aula['classificacao'] in CLASSES or aula['classificacao'] is None, f'{ident}: classificação inválida.')
        exigir(aula['correcoes'] in CORRECOES, f'{ident}: estado de correções inválido.')
        ficheiro = root / aula['ficheiro']
        exigir(ficheiro.is_file(), f'{ident}: aula inexistente.')
        if ficheiro.is_file():
            exigir(hashlib.sha256(ficheiro.read_bytes()).hexdigest() == aula['sha256'], f'{ident}: ALTERAÇÃO POSTERIOR; rever auditoria antes de reutilizar.')
        relatorio = root / 'auditoria' / aula['relatorio']
        exigir(relatorio.is_file(), f'{ident}: relatório inexistente.')
        texto = relatorio.read_text() if relatorio.is_file() else ''
        exigir(f'`{ident}`' in texto, f'{ident}: identificação não coincide com relatório.')
        exigir(aula['sha256'] in texto, f'{ident}: hash não coincide com relatório.')
        exigir(f"Estado da auditoria: {aula['auditoria']}" in texto, f'{ident}: estado diverge do relatório.')
        exigir(f"Correções: {aula['correcoes']}" in texto, f'{ident}: correções divergem do relatório.')
        if aula['auditoria'] == 'concluída':
            exigir(aula['classificacao'] is not None and aula['data_auditoria'], f'{ident}: conclusão sem classificação/data.')
            exigir('PENDENTE.' not in texto, f'{ident}: relatório ainda por preencher.')
            exigir(f"Classificação: {aula['classificacao']}" in texto, f'{ident}: classificação diverge do relatório.')
            exigir(len(texto) > 1800, f'{ident}: relatório insuficientemente preenchido.')
        if aula['auditoria'] == 'pendente':
            exigir(aula['classificacao'] is None, f'{ident}: classificação prematura.')
        for fonte in aula['fontes']:
            exigir(re.search(r'\| '+re.escape(fonte)+r' \|', fontes), f'{ident}: fonte {fonte} não consta do registo.')
        for problema in aula['problemas']:
            problemas.append(problema['id'])
            exigir(problema['id'].startswith(ident+':P'), f'{ident}: ID de problema incoerente.')
            exigir(problema['id'] in texto, f'{ident}: problema ausente do relatório.')
            exigir(problema['estado'] in CORRECOES, f'{ident}: estado de problema inválido.')
    exigir(len(set(problemas)) == len(problemas), 'IDs de problema duplicados.')
    for d in registo['disciplinas']:
        exigir(sum(x['disciplina'] == d['id'] for x in aulas) == d['aulas'], f"{d['id']}: contagem incoerente.")
    for caminho, sha in registo['preservacao'].items():
        p = root / caminho
        exigir(p.is_file() and hashlib.sha256(p.read_bytes()).hexdigest() == sha, f'{caminho}: preservação falhou.')
    atuais = {str(p.relative_to(root)) for p in (root / 'aulas').rglob('*.html')}
    exigir(atuais == set(registo['preservacao']), 'Conjunto dos HTML de aulas alterado.')
    # O catálogo real é a fonte independente da ordem e dos caminhos canónicos.
    sys.path.insert(0, str(root / 'scripts'))
    from atualizar_dados import course_catalog
    reais = [p for d in course_catalog(root) for p in d['aulas']]
    exigir(reais == [x['ficheiro'] for x in aulas], 'Inventário diverge do catálogo real.')
    return erros


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    parser.add_argument('--proximo', action='store_true')
    args = parser.parse_args()
    registo = carregar()
    erros = verificar(registo)
    if erros:
        print('\n'.join(erros), file=sys.stderr)
        return 1
    if args.check:
        print('OK: 38 disciplinas, 266 unidades, relatórios e estados consistentes; 269 HTML preservados. Verificação estrutural: não certifica conteúdo jurídico.')
    elif args.proximo:
        aula = proxima(registo)
        print(json.dumps(aula, ensure_ascii=False, indent=2) if aula else 'Nenhuma unidade pendente.')
    else:
        for d in registo['disciplinas']:
            contagens = Counter(x['auditoria'] for x in registo['aulas'] if x['disciplina'] == d['id'])
            print(f"{d['nome']}: {d['aulas']} existentes; {dict(contagens)}")
        concluidas = [x for x in registo['aulas'] if x['auditoria'] == 'concluída']
        print('Concluídas:', len(concluidas), '/ 266;', dict(Counter(x['classificacao'] for x in concluidas)))
        print('Última conclusão no registo:', concluidas[-1]['id'] if concluidas else 'nenhuma')
        print('Próxima:', proxima(registo)['id'] if proxima(registo) else 'nenhuma')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
