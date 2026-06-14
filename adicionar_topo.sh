#!/bin/bash

cd ~/universidade-da-vida-direito

cat >> style.css << 'EOF'

.back-to-top {
    position: fixed;
    right: 20px;
    bottom: 20px;
    background: #0b2c4d;
    color: white !important;
    padding: 12px 16px;
    border-radius: 50px;
    text-decoration: none;
    font-weight: bold;
    box-shadow: 0 3px 10px rgba(0,0,0,0.25);
    z-index: 200;
}

.back-to-top:hover {
    background: #154b82;
}
EOF

python3 << 'PY'
from pathlib import Path

for path in Path(".").rglob("*.html"):
    html = path.read_text(encoding="utf-8")

    if 'class="back-to-top"' not in html:
        html = html.replace("</main>", '<a href="#" class="back-to-top">↑ Topo</a>\n</main>', 1)

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar botao voltar ao topo"
git push

echo "Botão voltar ao topo adicionado."
