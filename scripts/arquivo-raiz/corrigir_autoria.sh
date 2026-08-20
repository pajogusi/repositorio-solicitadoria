#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A corrigir autoria..."

find . -type f \( -name "*.html" -o -name "*.md" \) -exec sed -i 's/Paulo Silva \/ Pàjó/Paulo Silva/g' {} +
find . -type f \( -name "*.html" -o -name "*.md" \) -exec sed -i 's/Paulo Silva/Paulo Silva/g' {} +

git add .
git commit -m "Corrigir autoria para Paulo Silva"
git push

echo "Autoria corrigida para Paulo Silva."
