#!/bin/bash

echo "A corrigir fundo da justiça..."

cat >> style.css << 'EOF'

/* Correção: símbolo da justiça como marca de água dentro da página */
body::after {
    display: none;
}

main::after {
    content: "⚖️";
    position: fixed;
    right: 8%;
    bottom: 8%;
    font-size: 18rem;
    opacity: 0.08;
    z-index: 0;
    pointer-events: none;
}

main > * {
    position: relative;
    z-index: 1;
}
EOF

sed -i 's|style.css?v=15|style.css?v=16|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html

git add .
git commit -m "Corrigir marca de agua da justica"
git push

echo "Marca de água corrigida."
