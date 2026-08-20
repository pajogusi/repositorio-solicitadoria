#!/bin/bash

cd ~/universidade-da-vida-direito

python3 << 'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

slogan = """
<p class="slogan">
Aprender Direito. Compreender a Lei. Construir Conhecimento.
</p>
"""

if 'class="slogan"' not in html:
    html = html.replace(
        "<h1>Repositório de Solicitadoria</h1>",
        "<h1>Repositório de Solicitadoria</h1>\n" + slogan
    )

path.write_text(html, encoding="utf-8")
PY

cat >> style.css << 'EOF'

.slogan {
    text-align: center;
    font-size: 1.2em;
    font-weight: bold;
    color: #0b2c4d;
    margin-top: -10px;
    margin-bottom: 30px;
}
EOF

git add .
git commit -m "Adicionar slogan do projeto"
git push

echo "Slogan adicionado."
