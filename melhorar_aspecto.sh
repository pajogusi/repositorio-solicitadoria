#!/bin/bash

echo "A melhorar o aspeto visual do site..."

cat > style.css << 'EOF'
* {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    max-width: 900px;
    margin: 0 auto;
    padding: 30px 20px;
    background: #f4f6f8;
    color: #222;
    line-height: 1.6;
}

h1 {
    color: #0b2c4d;
    font-size: 2.2rem;
    border-bottom: 3px solid #0b2c4d;
    padding-bottom: 10px;
}

h2 {
    color: #123f68;
    margin-top: 30px;
}

p, li {
    font-size: 1rem;
}

a {
    color: #005fa3;
    font-weight: bold;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

ul, ol {
    background: #ffffff;
    padding: 20px 30px;
    border-radius: 10px;
    border: 1px solid #ddd;
}

nav {
    background: #ffffff;
    padding: 15px;
    border-radius: 10px;
    border: 1px solid #ddd;
    margin-top: 25px;
}

hr {
    border: none;
    border-top: 1px solid #ccc;
    margin-top: 30px;
}

body::before {
    content: "Repositório de Solicitadoria - Direito e Solicitadoria Independente";
    display: block;
    background: #0b2c4d;
    color: white;
    padding: 15px;
    margin: -30px -20px 30px -20px;
    text-align: center;
    font-weight: bold;
}

@media (max-width: 600px) {
    body {
        padding: 20px 12px;
    }

    h1 {
        font-size: 1.7rem;
    }

    nav a {
        display: block;
        margin: 8px 0;
    }
}
EOF

git add .
git commit -m "Melhorar aspeto visual do site"
git push

echo "Aspeto visual melhorado e enviado para o GitHub."
