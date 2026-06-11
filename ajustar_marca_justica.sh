#!/bin/bash

echo "A ajustar marca de água da justiça..."

cat >> style.css << 'EOF'

/* Ajuste final da marca de água */
main::after {
    right: 2%;
    bottom: 10%;
    font-size: 13rem;
    opacity: 0.07;
}
EOF

sed -i 's|style.css?v=16|style.css?v=17|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html

git add .
git commit -m "Ajustar posicao da marca de agua da justica"
git push

echo "Marca de água ajustada."
