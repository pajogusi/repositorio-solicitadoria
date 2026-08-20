#!/bin/bash

cd ~/universidade-da-vida-direito

find . -name "*.html" -exec sed -i \
's|<a href="[^"]*paginas/atualizacoes.html">📝 Atualizações</a>||g' {} \;

git add .
git commit -m "Remover Atualizacoes do menu principal"
git push

echo "Menu atualizado."
