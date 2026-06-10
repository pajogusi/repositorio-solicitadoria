#!/bin/bash

echo "A melhorar navegação..."

cat > cadeiras/cadeira-01-introducao-direito-i.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Introdução ao Direito I</title>
<link rel="stylesheet" href="../style.css">
</head>
<body>

<h1>Introdução ao Direito I</h1>

<p>Esta é a primeira cadeira da Universidade da Vida - Direito e Solicitadoria Independente.</p>

<h2>Objetivos da cadeira</h2>
<ul>
<li>Compreender o que é o Direito.</li>
<li>Distinguir Direito, moral, ética e justiça.</li>
<li>Conhecer a norma jurídica.</li>
<li>Identificar as principais fontes do Direito.</li>
<li>Perceber os ramos fundamentais do Direito.</li>
</ul>

<h2>Aulas</h2>
<ol>
<li><a href="../aulas/introducao-direito-i/aula-01.html">Aula 01 - O que é o Direito?</a></li>
<li>Aula 02 - Direito, moral, ética e justiça</li>
<li>Aula 03 - A norma jurídica</li>
<li>Aula 04 - Fontes do Direito</li>
<li>Aula 05 - Ramos do Direito</li>
<li>Aula 06 - Estado, Constituição e lei</li>
<li>Aula 07 - Tribunais e aplicação do Direito</li>
<li>Aula 08 - Interpretação da lei</li>
<li>Aula 09 - Caso prático orientado</li>
<li>Aula 10 - Revisão e quiz final</li>
</ol>

<h2>Estado</h2>
<p><strong>Em desenvolvimento.</strong></p>

<hr>

<p><strong>Progresso da cadeira:</strong> 1 de 10 aulas concluídas</p>

<nav>
<a href="../index.html">🏠 Página Principal</a> |
<a href="../aulas/introducao-direito-i/aula-01.html">📘 Aula 01</a>
</nav>

</body>
</html>
EOF

cat > aulas/introducao-direito-i/aula-01.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aula 01 - O que é o Direito?</title>
<link rel="stylesheet" href="../../style.css">
</head>
<body>

<h1>Aula 01 - O que é o Direito?</h1>

<p>
O Direito é um conjunto de regras que organiza a vida em sociedade.
Serve para definir direitos, deveres, limites e consequências.
</p>

<h2>Explicação simples</h2>

<p>
Sempre que várias pessoas vivem juntas, surgem conflitos, interesses diferentes
e necessidade de organização. O Direito existe para criar regras comuns e
permitir que a convivência seja possível.
</p>

<h2>Exemplo prático</h2>

<p>
Se uma pessoa compra uma casa, o Direito regula o contrato, o registo, os impostos
e os direitos de quem compra e de quem vende.
</p>

<h2>Resumo em 5 pontos</h2>
<ul>
<li>O Direito organiza a vida em sociedade.</li>
<li>Define direitos e deveres.</li>
<li>Cria consequências para certos comportamentos.</li>
<li>Ajuda a resolver conflitos.</li>
<li>Está presente em atos simples do dia a dia.</li>
</ul>

<h2>Mini-perguntas</h2>
<ol>
<li>Para que serve o Direito?</li>
<li>Porque é que uma sociedade precisa de regras?</li>
<li>Dá um exemplo de uma situação regulada pelo Direito.</li>
</ol>

<hr>

<nav>
<a href="../../index.html">🏠 Página Principal</a> |
<a href="../../cadeiras/cadeira-01-introducao-direito-i.html">📚 Voltar à cadeira</a> |
<a href="aula-02.html">➡ Próxima Aula</a>
</nav>

</body>
</html>
EOF

git add .
git commit -m "Melhorar navegação inicial"
git push

echo "Navegação melhorada e enviada para o GitHub."
