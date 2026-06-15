#!/bin/bash

cd ~/universidade-da-vida-direito

echo "Atualizar nome do projeto..."

find . -type f \( -name "*.html" -o -name "*.md" \) -exec sed -i 's/Repositório de Solicitadoria/Repositório de Solicitadoria/g' {} +

find . -type f \( -name "*.html" -o -name "*.md" \) -exec sed -i 's/Projeto de estudo independente criado por Paulo Silva/Projeto independente de estudo jurídico criado por Paulo Silva/g' {} +

python3 << 'PY'
from pathlib import Path

f = Path("index.html")

if f.exists():
    html = f.read_text(encoding="utf-8")

    html = html.replace(
        "📚 Cadeiras",
        "📚 Plano de Estudos"
    )

    html = html.replace(
        "Abrir Cadeiras",
        "Abrir Plano de Estudos"
    )

    f.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Alterar nome para Repositorio de Solicitadoria"
git push

echo ""
echo "Nome atualizado."
