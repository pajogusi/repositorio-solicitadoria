#!/bin/bash

# ==========================================================
# Corrigir Cadeira 6 para o padrão real do projeto
# Cadeira 6: Análise e Produção de Textos
# Autor oficial: Paulo Silva
# ==========================================================

set -e

echo "=========================================="
echo "A corrigir padrão da Cadeira 6"
echo "=========================================="

python3 <<'PY'
from pathlib import Path
import re
import shutil

# ----------------------------------------------------------
# Configuração
# ----------------------------------------------------------

aulas_dir = Path("aulas/analise-producao-textos")
cadeira_antiga = Path("cadeiras/analise-producao-textos/index.html")
cadeira_nova = Path("cadeiras/cadeira-06-analise-producao-textos.html")
cadeiras_html = Path("cadeiras.html")

backup_dir = Path("backup-cadeira06-antes-correcao")

titulos = {
    1: "O texto jurídico e as suas características",
    2: "Clareza e precisão da linguagem jurídica",
    3: "Estrutura de documentos jurídicos",
    4: "Técnicas de argumentação e persuasão",
    5: "Interpretação e análise textual",
    6: "Resumo e síntese de textos jurídicos",
    7: "Pareceres, requerimentos e petições",
    8: "Erros frequentes na escrita jurídica",
    9: "Caso prático orientado",
    10: "Revisão geral e quiz final",
}

# ----------------------------------------------------------
# Segurança: backup local dos ficheiros antigos
# ----------------------------------------------------------

backup_dir.mkdir(exist_ok=True)

if aulas_dir.exists():
    shutil.copytree(aulas_dir, backup_dir / "aulas-analise-producao-textos", dirs_exist_ok=True)

if cadeira_antiga.exists():
    (backup_dir / "cadeira-antiga-index.html").write_text(
        cadeira_antiga.read_text(encoding="utf-8"),
        encoding="utf-8"
    )

if cadeiras_html.exists():
    (backup_dir / "cadeiras.html").write_text(
        cadeiras_html.read_text(encoding="utf-8"),
        encoding="utf-8"
    )

print("Backup local criado em backup-cadeira06-antes-correcao/")

# ----------------------------------------------------------
# Funções
# ----------------------------------------------------------

def extrair_conteudo_main(html):
    """
    Extrai o conteúdo principal entre <main> e </main>,
    removendo a navegação final antiga da Cadeira 6.
    """
    m = re.search(r'<main.*?>(.*?)</main>', html, flags=re.DOTALL)
    if not m:
        raise ValueError("Não foi possível encontrar <main>.")

    conteudo = m.group(1).strip()

    # Remover secção final de navegação criada anteriormente
    conteudo = re.sub(
        r'\s*<section class="card">\s*<p>\s*<a href=.*?</p>\s*</section>\s*$',
        '',
        conteudo,
        flags=re.DOTALL
    )

    # Remover qualquer secção final simples com Voltar à cadeira
    conteudo = re.sub(
        r'\s*<section>\s*<p>\s*<a href=.*?Voltar.*?</p>\s*</section>\s*$',
        '',
        conteudo,
        flags=re.DOTALL
    )

    # Normalizar classes: o projeto antigo usa section simples
    conteudo = conteudo.replace('<section class="card">', '<section>')

    # Primeira secção fica como box, para seguir o padrão visual das aulas antigas
    conteudo = conteudo.replace('<section>', '<section class="box">', 1)

    # Remover indentação excessiva deixada pelo HTML anterior
    conteudo = re.sub(r'\n\s{4,}', '\n', conteudo)

    return conteudo.strip()


def nome_aula(n):
    if n == 10:
        return "quiz-final.html"
    return f"aula-{n:02d}.html"


def nav_final(n):
    if n == 1:
        return f'''<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-06-analise-producao-textos.html">📚 Cadeira</a> |
<a href="aula-02.html">➡ Aula 02</a>
</nav>'''

    if n == 10:
        return f'''<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-06-analise-producao-textos.html">📚 Cadeira</a> |
<a href="aula-09.html">⬅ Aula 09</a>
</nav>'''

    return f'''<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-06-analise-producao-textos.html">📚 Cadeira</a> |
<a href="aula-{n-1:02d}.html">⬅ Aula {n-1:02d}</a> |
<a href="aula-{n+1:02d}.html">➡ Aula {n+1:02d}</a>
</nav>'''


def criar_aula_padrao(n, conteudo):
    titulo = titulos[n]
    ficheiro = nome_aula(n)

    html = f'''<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Aula {n:02d} - {titulo}</title>
<link rel="stylesheet" href="../../style.css?v=80">
</head>
<body>
<main>

<h1>Aula {n:02d} - {titulo}</h1>

{conteudo}

{nav_final(n)}

</main>
</body>
</html>
'''

    (aulas_dir / ficheiro).write_text(html, encoding="utf-8")
    print(f"Criado: {aulas_dir / ficheiro}")


# ----------------------------------------------------------
# Converter aulas antigas para padrão correto
# ----------------------------------------------------------

if not aulas_dir.exists():
    raise SystemExit("ERRO: pasta aulas/analise-producao-textos não encontrada.")

for n in range(1, 11):
    antigo = aulas_dir / f"aula{n:02d}.html"

    if not antigo.exists():
        raise SystemExit(f"ERRO: ficheiro antigo não encontrado: {antigo}")

    html_antigo = antigo.read_text(encoding="utf-8")
    conteudo = extrair_conteudo_main(html_antigo)
    criar_aula_padrao(n, conteudo)

# Apagar ficheiros antigos aula01.html ... aula10.html
for n in range(1, 11):
    antigo = aulas_dir / f"aula{n:02d}.html"
    if antigo.exists():
        antigo.unlink()
        print(f"Removido ficheiro antigo: {antigo}")

# ----------------------------------------------------------
# Criar página nova da cadeira no padrão correto
# ----------------------------------------------------------

pagina_cadeira = '''<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Análise e Produção de Textos</title>
<link rel="stylesheet" href="../style.css?v=80">
</head>
<body>
<main>

<h1>Análise e Produção de Textos</h1>

<section class="box">
<h2>Apresentação da Cadeira</h2>
<p>
A cadeira de Análise e Produção de Textos introduz o estudo da escrita, interpretação e produção de textos jurídicos e académicos.
</p>
<p>
O seu objetivo é desenvolver competências de clareza, precisão, estrutura, argumentação, análise textual e produção de documentos jurídicos simples.
</p>
</section>

<section>
<h2>Objetivos da Cadeira</h2>
<ul>
<li>Compreender as características próprias do texto jurídico.</li>
<li>Distinguir linguagem comum de linguagem jurídica.</li>
<li>Desenvolver clareza e precisão na escrita.</li>
<li>Aprender a estruturar documentos jurídicos simples.</li>
<li>Treinar leitura, interpretação, resumo e argumentação.</li>
<li>Aplicar técnicas de escrita a casos práticos.</li>
</ul>
</section>

<section>
<h2>Aulas</h2>
<ol>
<li><a href="../aulas/analise-producao-textos/aula-01.html">Aula 01 - O texto jurídico e as suas características</a></li>
<li><a href="../aulas/analise-producao-textos/aula-02.html">Aula 02 - Clareza e precisão da linguagem jurídica</a></li>
<li><a href="../aulas/analise-producao-textos/aula-03.html">Aula 03 - Estrutura de documentos jurídicos</a></li>
<li><a href="../aulas/analise-producao-textos/aula-04.html">Aula 04 - Técnicas de argumentação e persuasão</a></li>
<li><a href="../aulas/analise-producao-textos/aula-05.html">Aula 05 - Interpretação e análise textual</a></li>
<li><a href="../aulas/analise-producao-textos/aula-06.html">Aula 06 - Resumo e síntese de textos jurídicos</a></li>
<li><a href="../aulas/analise-producao-textos/aula-07.html">Aula 07 - Pareceres, requerimentos e petições</a></li>
<li><a href="../aulas/analise-producao-textos/aula-08.html">Aula 08 - Erros frequentes na escrita jurídica</a></li>
<li><a href="../aulas/analise-producao-textos/aula-09.html">Aula 09 - Caso prático orientado</a></li>
<li><a href="../aulas/analise-producao-textos/quiz-final.html">Aula 10 - Revisão geral e quiz final</a></li>
</ol>
</section>

<section>
<h2>Estado</h2>
<p><strong>Concluída.</strong></p>
<p><strong>Progresso da cadeira:</strong> 10 de 10 aulas concluídas</p>
<span class="badge concluida">🟢 Concluída</span>
</section>

<hr>

<nav>
<a href="../index.html">🏠 Início</a> |
<a href="../cadeiras.html">📚 Plano de Estudos</a> |
<a href="../aulas/analise-producao-textos/aula-01.html">📘 Aula 01</a>
</nav>

</main>
</body>
</html>
'''

cadeira_nova.write_text(pagina_cadeira, encoding="utf-8")
print(f"Página nova criada: {cadeira_nova}")

# ----------------------------------------------------------
# Manter página antiga como redirecionamento
# ----------------------------------------------------------

if cadeira_antiga.exists():
    redirect = '''<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="0; url=../cadeira-06-analise-producao-textos.html">
<title>Redirecionamento</title>
</head>
<body>
<p>A redirecionar para a página da cadeira...</p>
<p><a href="../cadeira-06-analise-producao-textos.html">Abrir Análise e Produção de Textos</a></p>
</body>
</html>
'''
    cadeira_antiga.write_text(redirect, encoding="utf-8")
    print("Página antiga mantida como redirecionamento.")

# ----------------------------------------------------------
# Atualizar cadeiras.html
# ----------------------------------------------------------

if not cadeiras_html.exists():
    raise SystemExit("ERRO: cadeiras.html não encontrado.")

html = cadeiras_html.read_text(encoding="utf-8")

cartao_novo = (
    '<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3>'
    '<p>10 / 10 aulas concluídas</p>'
    '<span class="badge concluida">🟢 Concluída</span>'
    '<br><br><a class="botao" href="cadeiras/cadeira-06-analise-producao-textos.html">Entrar</a></div>'
)

padrao = (
    r'<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3>'
    r'<p>.*?</p>'
    r'<span class="badge .*?">.*?</span>'
    r'(?:<br><br><a class="botao" href=".*?">Entrar</a>)?'
    r'</div>'
)

html, n = re.subn(padrao, cartao_novo, html, count=1, flags=re.DOTALL)

if n == 0:
    raise SystemExit("ERRO: não consegui atualizar o cartão da Cadeira 6 em cadeiras.html.")

cadeiras_html.write_text(html, encoding="utf-8")
print("cadeiras.html atualizado para apontar para a página padrão da Cadeira 6.")

print("Correção estrutural concluída.")
PY

# ----------------------------------------------------------
# Git
# ----------------------------------------------------------

git add .

git commit -m "Corrigir Cadeira 6 para o padrão do projeto" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "Cadeira 6 corrigida para o padrão do projeto."
echo "Agora faz Ctrl + F5 nas páginas."
echo "=========================================="
