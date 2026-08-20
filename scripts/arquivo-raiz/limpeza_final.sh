#!/bin/bash

cd ~/universidade-da-vida-direito

echo "Limpeza final do projeto..."

find . -type f \
\( -name "*.html" -o -name "*.md" -o -name "*.sh" -o -name "*.css" \) \
-exec sed -i 's/Repositório de Solicitadoria/Repositório de Solicitadoria/g' {} +

find . -type f \
\( -name "*.html" -o -name "*.md" -o -name "*.sh" -o -name "*.css" \) \
-exec sed -i 's/Paulo Silva/Paulo Silva/g' {} +

git add .
git commit -m "Limpeza final de nomenclatura e autoria"
git push

echo "Projeto uniformizado."
