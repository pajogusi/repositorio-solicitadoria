#!/bin/bash

cd ~/universidade-da-vida-direito

echo "===== AUDITORIA DO REPOSITÓRIO DE SOLICITADORIA ====="
echo ""

echo "1) Procurar referências antigas:"
grep -Rni "Repositório de Solicitadoria" . || echo "OK - sem referências antigas."
grep -Rni "Paulo Silva" . || echo "OK - sem Paulo Silva."
echo ""

echo "2) Procurar aulas sem Base Legal:"
find aulas -name "*.html" -print0 | while IFS= read -r -d '' file; do
    if ! grep -q "Base Legal" "$file"; then
        echo "Sem Base Legal: $file"
    fi
done
echo ""

echo "3) Procurar páginas HTML:"
find . -name "*.html" | sort
echo ""

echo "4) Procurar ficheiros principais:"
ls -la
echo ""

echo "Auditoria concluída."
