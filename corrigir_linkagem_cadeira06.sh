#!/bin/bash

# ==========================================================
# Corrigir definitivamente a linkagem da Cadeira 6
# Análise e Produção de Textos
# ==========================================================

set -e

echo "A corrigir definitivamente o cartão da Cadeira 6..."

python3 <<'PY'
from pathlib import Path
import re

path = Path("cadeiras.html")

if not path.exists():
    print("ERRO: cadeiras.html não encontrado.")
    raise SystemExit(1)

html = path.read_text(encoding="utf-8")

novo_bloco = '''<div class="card">
  <h3>📚 Análise e Produção de Textos</h3>
  <p>2 / 10 aulas concluídas</p>
  <span class="status em-andamento">🟡 Em desenvolvimento</span>
  <br><br>
  <a class="btn" href="cadeiras/analise-producao-textos/index.html">Entrar</a>
</div>'''

# Procurar qualquer card/div/section que contenha Análise e Produção de Textos
padroes = [
    r'<div class="card">.*?Análise e Produção de Textos.*?</div>',
    r'<section class="card">.*?Análise e Produção de Textos.*?</section>',
    r'<article class="card">.*?Análise e Produção de Textos.*?</article>',
]

alterado = False

for padrao in padroes:
    novo_html, n = re.subn(padrao, novo_bloco, html, count=1, flags=re.DOTALL)
    if n > 0:
        html = novo_html
        alterado = True
        print("Bloco da Cadeira 6 substituído com sucesso.")
        break

if not alterado:
    print("ERRO: não encontrei o bloco da Cadeira 6 em cadeiras.html.")
    print("Vamos precisar ver o trecho do ficheiro.")
    raise SystemExit(1)

path.write_text(html, encoding="utf-8")
print("cadeiras.html corrigido.")
PY

git add cadeiras.html
git commit -m "Corrigir linkagem da Cadeira 6 em cadeiras" || echo "Nada novo para commit."
git push

echo "Concluído. Agora faz Ctrl + F5 na página cadeiras.html."
