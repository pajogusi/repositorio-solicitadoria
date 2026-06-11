#!/bin/bash

echo "A adicionar símbolo da justiça como fundo..."

cat >> style.css << 'EOF'

/* Fundo simbólico da Justiça */
body::after {
    content: "⚖️";
    position: fixed;
    right: 5%;
    bottom: 5%;
    font-size: 22rem;
    opacity: 0.06;
    z-index: -1;
    pointer-events: none;
}

body {
    position: relative;
    overflow-x: hidden;
}

main {
    position: relative;
    z-index: 1;
}
EOF

# Forçar nova versão do CSS
sed -i 's|style.css?v=14|style.css?v=15|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=13|style.css?v=15|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=12|style.css?v=15|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=11|style.css?v=15|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=10|style.css?v=15|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=9|style.css?v=15|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=8|style.css?v=15|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html

git add .
git commit -m "Adicionar simbolo da justica ao fundo"
git push

echo "Fundo com símbolo da justiça adicionado."
