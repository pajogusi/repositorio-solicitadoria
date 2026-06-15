#!/bin/bash

# ==========================================================
# Corrigir cartão da Cadeira 6 em cadeiras.html
# Cadeira: Análise e Produção de Textos
# ==========================================================

set -e

echo "A corrigir cartão da Cadeira 6 em cadeiras.html..."

python3 <<'PY'
from pathlib import Path
import re

path = Path("cadeiras.html")

if not path.exists():
    print("ERRO: cadeiras.html não encontrado.")
    raise SystemExit(1)

html = path.read_text(encoding="utf-8")

original = html

# Corrigir contador de aulas
html = html.replace(
    "0 / 10 aulas concluídas",
    "1 / 10 aulas concluídas",
    1
)

# Corrigir estado
html = html.replace(
    "Não Iniciada",
    "Em desenvolvimento",
    1
)

# Corrigir classe visual se existir
html = html.replace(
    "nao-iniciada",
    "em-desenvolvimento",
    1
)

# Inserir botão Entrar no cartão da cadeira, se ainda não existir
titulo = "Análise e Produção de Textos"
link = 'href="cadeiras/analise-producao-textos/index.html"'

if link not in html:
    pattern = r'(<h3[^>]*>\s*📚\s*Análise e Produção de Textos\s*</h3>.*?</section>)'

    match = re.search(pattern, html, flags=re.DOTALL)

    if match:
        bloco = match.group(1)

        if "Entrar" not in bloco:
            novo_bloco = bloco.replace(
                "</section>",
                '''
        <a class="btn" href="cadeiras/analise-producao-textos/index.html">Entrar</a>
      </section>'''
            )

            html = html.replace(bloco, novo_bloco)
            print("Botão Entrar adicionado.")
        else:
            print("O botão Entrar já existia no bloco.")
    else:
        print("AVISO: não consegui encontrar automaticamente o bloco da Cadeira 6.")
else:
    print("Link da cadeira já existe.")

if html != original:
    path.write_text(html, encoding="utf-8")
    print("cadeiras.html corrigido.")
else:
    print("Nada foi alterado.")

PY

git add cadeiras.html

git commit -m "Corrigir cartão da Cadeira 6 em cadeiras" || echo "Nada novo para commit."

git push

echo "Correção concluída."
