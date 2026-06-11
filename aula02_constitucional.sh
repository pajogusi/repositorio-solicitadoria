#!/bin/bash

cd ~/universidade-da-vida-direito

mkdir -p aulas/direito-constitucional

cat > aulas/direito-constitucional/aula-02.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Aula 02 - Estado de Direito Democrático</title>
<link rel="stylesheet" href="../../style.css">
</head>
<body>

<h1>Aula 02 - Estado de Direito Democrático</h1>

<p>
Portugal é um Estado de Direito Democrático. Isto significa que o poder do Estado está sujeito à lei e que os cidadãos participam na escolha dos seus representantes através de eleições livres.
</p>

<h2>Explicação simples</h2>

<p>
Num Estado de Direito ninguém está acima da lei. Nem os cidadãos, nem os governantes.
Todas as decisões devem respeitar a Constituição e as restantes leis do país.
</p>

<p>
O termo Democrático significa que o povo participa no governo do país, elegendo os seus representantes e exercendo diversos direitos políticos.
</p>

<h2>Princípios fundamentais</h2>

<ul>
<li>Respeito pela Constituição.</li>
<li>Separação de poderes.</li>
<li>Igualdade perante a lei.</li>
<li>Proteção dos direitos fundamentais.</li>
<li>Participação democrática dos cidadãos.</li>
</ul>

<h2>Exemplo prático</h2>

<p>
Se o Governo criar uma medida contrária à Constituição, os tribunais podem declarar essa medida inconstitucional.
Isto demonstra que mesmo o poder político está sujeito à lei.
</p>

<h2>Importância para a Solicitadoria</h2>

<p>
O solicitador trabalha diariamente com direitos dos cidadãos e deve conhecer os princípios constitucionais que protegem os clientes perante o Estado e outras entidades.
</p>

<h2>Resumo em 5 pontos</h2>

<ul>
<li>Portugal é um Estado de Direito Democrático.</li>
<li>Ninguém está acima da lei.</li>
<li>A Constituição é a lei fundamental.</li>
<li>Os cidadãos participam através da democracia.</li>
<li>Os tribunais garantem o respeito pela Constituição.</li>
</ul>

<h2>Mini-perguntas</h2>

<ol>
<li>O que significa Estado de Direito?</li>
<li>O que significa Democrático?</li>
<li>Quem está sujeito à lei?</li>
<li>Qual é a lei fundamental do Estado?</li>
<li>Porque é importante este princípio?</li>
</ol>

<hr>

<nav>
<a href="../../index.html">🏠 Página Principal</a> |
<a href="../../cadeiras/cadeira-02-direito-constitucional.html">📚 Voltar à cadeira</a> |
<a href="aula-01.html">⬅ Aula Anterior</a> |
<a href="aula-03.html">➡ Próxima Aula</a>
</nav>

</body>
</html>
EOF

git add .
git commit -m "Adicionar Aula 02 Estado de Direito Democrático"
git push

echo "Aula 02 criada e publicada."
