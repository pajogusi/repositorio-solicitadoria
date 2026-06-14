#!/bin/bash

cd ~/universidade-da-vida-direito

mkdir -p assets

cat > assets/logo.svg << 'EOF'
<svg xmlns="http://www.w3.org/2000/svg" width="500" height="120">
  <rect width="500" height="120" rx="15" fill="#0b2c4d"/>
  <text x="35" y="78" font-size="60" fill="white">⚖</text>
  <text x="110" y="55" font-size="28" fill="white"
        font-family="Arial">Repositório de</text>
  <text x="110" y="90" font-size="32" fill="white"
        font-family="Arial" font-weight="bold">Solicitadoria</text>
</svg>
EOF

cat >> style.css << 'EOF'

.logo-container{
    text-align:center;
    margin:20px 0;
}

.logo-container img{
    max-width:450px;
    width:90%;
}
EOF

python3 << 'PY'
from pathlib import Path

f = Path("index.html")
html = f.read_text(encoding="utf-8")

logo = '''
<div class="logo-container">
<img src="assets/logo.svg" alt="Repositório de Solicitadoria">
</div>
'''

if 'logo.svg' not in html:
    html = html.replace('<main>', '<main>\n' + logo, 1)

f.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar logotipo do Repositorio de Solicitadoria"
git push

echo "Logótipo adicionado."
