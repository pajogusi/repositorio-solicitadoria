#!/bin/bash

# ==========================================================
# Correção final da Cadeira 6 em cadeiras.html
# Remove bloco duplicado no fim e corrige o cartão verdadeiro
# ==========================================================

set -e

echo "A corrigir cadeiras.html..."

python3 <<'PY'
from pathlib import Path
import re

path = Path("cadeiras.html")

if not path.exists():
    print("ERRO: cadeiras.html não encontrado.")
    raise SystemExit(1)

html = path.read_text(encoding="utf-8")

# 1. Remover bloco duplicado errado que foi parar ao fim do ficheiro
html = re.sub(
    r'\n\s*<!-- Cadeira 6 - Análise e Produção de Textos -->\s*'
    r'<div class="card">\s*'
    r'<h3>📚 Análise e Produção de Textos</h3>\s*'
    r'<p>2 / 10 aulas concluídas</p>\s*'
    r'<span class="status em-andamento">🟡 Em desenvolvimento</span>\s*'
    r'<br><br>\s*'
    r'<a class="btn" href="cadeiras/analise-producao-textos/index.html">Entrar</a>\s*'
    r'</div>\s*',
    '\n',
    html,
    flags=re.DOTALL
)

# 2. Corrigir o cartão verdadeiro da cadeira 6
cartao_antigo = (
    '<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3>'
    '<p>0 / 10 aulas concluídas</p>'
    '<span class="badge em-desenvolvimento">⚪ Não iniciada</span></div>'
)

cartao_novo = (
    '<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3>'
    '<p>2 / 10 aulas concluídas</p>'
    '<span class="badge em-desenvolvimento">🟡 Em desenvolvimento</span>'
    '<br><br><a class="botao" href="cadeiras/analise-producao-textos/index.html">Entrar</a></div>'
)

if cartao_antigo not in html:
    print("AVISO: cartão antigo exato não encontrado. Vou tentar substituição por padrão.")

    padrao = (
        r'<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3>'
        r'<p>.*?</p>'
        r'<span class="badge .*?">.*?</span>'
        r'(?:<br><br><a class="botao" href=".*?">Entrar</a>)?'
        r'</div>'
    )

    html, n = re.subn(padrao, cartao_novo, html, count=1, flags=re.DOTALL)

    if n == 0:
        print("ERRO: não consegui corrigir o cartão da cadeira 6.")
        raise SystemExit(1)
else:
    html = html.replace(cartao_antigo, cartao_novo, 1)

path.write_text(html, encoding="utf-8")

print("Cadeira 6 corrigida:")
print("- contador: 2 / 10")
print("- estado: Em desenvolvimento")
print("- botão Entrar adicionado")
print("- bloco duplicado removido")
PY

git add cadeiras.html
git commit -m "Corrigir cartão e link da Cadeira 6" || echo "Nada novo para commit."
git push

echo "Correção concluída. Faz Ctrl + F5 na página cadeiras.html."
