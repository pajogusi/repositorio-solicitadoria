#!/bin/bash

cd ~/universidade-da-vida-direito

echo "Procurar referências antigas..."

grep -Rni "Repositório de Solicitadoria" .
grep -Rni "universidade da vida" .
grep -Rni "Universidade" .

echo ""
echo "A substituir referências..."

find . -type f \( \
-name "*.html" -o \
-name "*.md" -o \
-name "*.css" -o \
-name "*.js" \
\) -exec sed -i 's/Repositório de Solicitadoria/Repositório de Solicitadoria/g' {} +

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
\) -exec sed -i 's/Projeto independente de estudo de Direito e Solicitadoria/Projeto independente de estudo jurídico criado por Paulo Silva/g' {} +

echo ""
echo "Referências restantes:"
grep -Rni "Repositório de Solicitadoria" . || true
grep -Rni "universidade da vida" . || true

git add .
git commit -m "Remover referencias a Repositório de Solicitadoria"
echo ""
echo "Agora executa:"
echo "git push"
