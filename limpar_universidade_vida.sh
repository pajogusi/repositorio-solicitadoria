#!/bin/bash

cd ~/universidade-da-vida-direito

echo "Procurar referências antigas..."

grep -Rni "Universidade da Vida" .
grep -Rni "universidade da vida" .
grep -Rni "Universidade" .

echo ""
echo "A substituir referências..."

find . -type f \( \
-name "*.html" -o \
-name "*.md" -o \
-name "*.css" -o \
-name "*.js" \
\) -exec sed -i 's/Universidade da Vida/Repositório de Solicitadoria/g' {} +

find . -type f \( \
-name "*.html" -o \
-name "*.md" -o \
-name "*.css" -o \
-name "*.js" \
\) -exec sed -i 's/universidade da vida/Repositório de Solicitadoria/g' {} +

find . -type f \( \
-name "*.html" -o \
-name "*.md" -o \
-name "*.css" -o \
-name "*.js" \
\) -exec sed -i 's/Projeto independente de estudo de Direito e Solicitadoria/Projeto independente de estudo jurídico criado por Pàjó/g' {} +

echo ""
echo "Referências restantes:"
grep -Rni "Universidade da Vida" . || true
grep -Rni "universidade da vida" . || true

git add .
git commit -m "Remover referencias a Universidade da Vida"
echo ""
echo "Agora executa:"
echo "git push"
