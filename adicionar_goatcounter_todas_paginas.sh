#!/bin/bash

# ==========================================================
# Adicionar GoatCounter a todos os ficheiros HTML do projeto
# Evita duplicados
# Insere antes de </body>
# ==========================================================

set -e

echo "=========================================="
echo "A adicionar GoatCounter às páginas sem contador"
echo "=========================================="

python3 <<'PY'
from pathlib import Path

GOAT = '<script data-goatcounter="https://pajogusi.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>'

total_html = 0
alterados = 0
ja_tinham = 0
sem_body = 0

for path in Path(".").rglob("*.html"):
    # Ignorar .git se por algum motivo aparecer
    if ".git" in path.parts:
        continue

    total_html += 1
    html = path.read_text(encoding="utf-8")

    if "goatcounter" in html:
        ja_tinham += 1
        continue

    if "</body>" not in html:
        print(f"AVISO: sem </body>, ignorado: {path}")
        sem_body += 1
        continue

    html = html.replace("</body>", f"{GOAT}\n</body>", 1)
    path.write_text(html, encoding="utf-8")
    print(f"Adicionado: {path}")
    alterados += 1

print("==========================================")
print(f"Ficheiros HTML encontrados: {total_html}")
print(f"Já tinham GoatCounter: {ja_tinham}")
print(f"Alterados agora: {alterados}")
print(f"Ignorados sem </body>: {sem_body}")
print("==========================================")
PY

git add .

git commit -m "Adicionar GoatCounter a todas as páginas HTML" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "GoatCounter aplicado às páginas em falta."
echo "=========================================="
