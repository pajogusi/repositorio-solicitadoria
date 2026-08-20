#!/bin/bash

cd ~/universidade-da-vida-direito

python3 << 'PY'
from pathlib import Path
import re

for path in Path(".").rglob("*.html"):
    html = path.read_text(encoding="utf-8")
    depth = len(path.parts) - 1
    prefix = "../" * depth

    if "aviso-legal.html" in html:
        continue

    aviso_link = f'<a href="{prefix}paginas/aviso-legal.html">⚖️ Aviso Legal</a>'

    html = re.sub(
        r'(<a href="' + re.escape(prefix) + r'paginas/atualizacoes.html">📝 Atualizações</a>)',
        r'\1\n' + aviso_link,
        html
    )

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar Aviso Legal ao menu"
git push

echo "Aviso Legal adicionado ao menu."
