#!/bin/bash

cd ~/universidade-da-vida-direito

cat >> style.css << 'EOF'

/* Melhorias de navegação e cartões */
.top-menu {
    position: sticky;
    top: 10px;
    z-index: 100;
    box-shadow: 0 3px 10px rgba(0,0,0,0.12);
}

main > .cadeira-card {
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

main > .cadeira-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 5px 16px rgba(0,0,0,0.15);
}

@media (min-width: 900px) {
    .cards-grid {
        display: grid;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 20px;
    }

    .cards-grid .cadeira-card {
        margin: 0;
    }
}
EOF

python3 << 'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

if '<div class="cards-grid">' not in html:
    start = html.find('<div class="cadeira-card">')
    end = html.find('<div class="aviso">')
    if start != -1 and end != -1:
        cards = html[start:end]
        html = html[:start] + '<div class="cards-grid">\n' + cards + '</div>\n\n' + html[end:]

path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Melhorar menu e grelha de cartoes"
git push

echo "Menu e cartões melhorados."
