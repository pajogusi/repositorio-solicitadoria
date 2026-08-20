#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A criar favicon simples..."

mkdir -p assets

cat > assets/favicon.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
  <rect width="100" height="100" rx="18" fill="#0b2c4d"/>
  <text x="50" y="62" font-size="48" text-anchor="middle" fill="white">⚖</text>
</svg>
EOF

python3 << 'PY'
from pathlib import Path
import re

favicon = '<link rel="icon" type="image/svg+xml" href="{prefix}assets/favicon.svg">'

for path in Path(".").rglob("*.html"):
    html = path.read_text(encoding="utf-8")
    depth = len(path.parts) - 1
    prefix = "../" * depth

    html = re.sub(r'<link rel="icon".*?>\n?', '', html)

    if "</head>" in html:
        html = html.replace("</head>", favicon.format(prefix=prefix) + "\n</head>")

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar favicon do projeto"
git push

echo "Favicon adicionado."
