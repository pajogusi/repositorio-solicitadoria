#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A corrigir textos e estados..."

# Corrigir "A Repositório" -> "O Repositório"
find . -type f -name "*.html" -exec sed -i 's/A Repositório de Solicitadoria/O Repositório de Solicitadoria/g' {} +

# Corrigir "da Repositório" -> "do Repositório"
find . -type f -name "*.html" -exec sed -i 's/da Repositório de Solicitadoria/do Repositório de Solicitadoria/g' {} +

# Corrigir "nas aulas da Repositório"
find . -type f -name "*.html" -exec sed -i 's/nas aulas da Repositório/nas aulas do Repositório/g' {} +

# Corrigir estado da cadeira 1
sed -i 's/Em desenvolvimento\./Concluída\./g' \
cadeiras/cadeira-01-introducao-direito-i.html

# Corrigir texto da cadeira 1
sed -i 's/Esta é a primeira cadeira da Repositório/Esta é a primeira cadeira do Repositório/g' \
cadeiras/cadeira-01-introducao-direito-i.html

git add .
git commit -m "Corrigir textos e estado da cadeira 1"

echo ""
echo "ATENÇÃO:"
echo "Verifica manualmente o link do CIRE na Biblioteca Jurídica."
echo "Se estiver errado, corrigimos no próximo passo."

echo ""
echo "Agora faz:"
echo "git push"

