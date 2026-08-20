#!/bin/bash

cd ~/universidade-da-vida-direito

cat > aulas/direito-constitucional/aula-07.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Aula 07 - Assembleia da República e Governo</title>
<link rel="stylesheet" href="../../style.css">
</head>
<body>

<h1>Aula 07 - Assembleia da República e Governo</h1>

<p>
A Assembleia da República e o Governo são dois dos principais órgãos de soberania do Estado Português. Embora trabalhem em conjunto, possuem funções diferentes e complementares.
</p>

<h2>A Assembleia da República</h2>

<p>
A Assembleia da República é o parlamento português. Representa todos os cidadãos e é composta por deputados eleitos.
</p>

<h3>Principais Funções</h3>

<ul>
<li>Aprovar leis.</li>
<li>Fiscalizar a atividade do Governo.</li>
<li>Aprovar o Orçamento do Estado.</li>
<li>Debater questões políticas nacionais.</li>
<li>Representar os cidadãos portugueses.</li>
</ul>

<h2>Os Deputados</h2>

<p>
Os deputados são eleitos pelos cidadãos através de eleições legislativas.
</p>

<p>
Embora sejam eleitos por círculos eleitorais, representam todo o país e não apenas a sua região.
</p>

<h2>O Governo</h2>

<p>
O Governo é o órgão responsável pela condução da política geral do país.
</p>

<p>
É composto pelo Primeiro-Ministro, Ministros e Secretários de Estado.
</p>

<h3>Principais Funções</h3>

<ul>
<li>Executar leis aprovadas.</li>
<li>Dirigir a Administração Pública.</li>
<li>Gerir os serviços do Estado.</li>
<li>Preparar propostas legislativas.</li>
<li>Executar políticas públicas.</li>
</ul>

<h2>Primeiro-Ministro</h2>

<p>
O Primeiro-Ministro é o chefe do Governo.
</p>

<p>
Coordena a ação governativa e representa politicamente o Governo.
</p>

<h2>Relação entre Assembleia e Governo</h2>

<p>
A Assembleia aprova leis e fiscaliza o Governo.
</p>

<p>
O Governo executa essas leis e pode apresentar propostas legislativas à Assembleia.
</p>

<div class="destaque">
<strong>Importante:</strong><br>
A Assembleia da República controla politicamente o Governo através de debates, perguntas, moções e fiscalização parlamentar.
</div>

<h2>Exemplo Prático</h2>

<p>
O Governo pode propor alterações ao sistema de saúde. A Assembleia discute essas propostas, podendo aprová-las, alterá-las ou rejeitá-las.
</p>

<h2>Importância para a Solicitadoria</h2>

<p>
Grande parte das normas jurídicas utilizadas pelos solicitadores resulta do trabalho legislativo da Assembleia da República ou da atividade governativa.
</p>

<p>
Compreender a origem das leis ajuda a interpretar melhor o sistema jurídico.
</p>

<h2>Resumo em 5 Pontos</h2>

<ul>
<li>A Assembleia da República representa os cidadãos.</li>
<li>A principal função da Assembleia é legislar.</li>
<li>O Governo conduz a política geral do país.</li>
<li>O Primeiro-Ministro lidera o Governo.</li>
<li>Existe controlo e equilíbrio entre Assembleia e Governo.</li>
</ul>

<h2>Mini-Perguntas</h2>

<ol>
<li>Qual é a principal função da Assembleia da República?</li>
<li>Quem compõe a Assembleia?</li>
<li>Qual é a principal função do Governo?</li>
<li>Quem lidera o Governo?</li>
<li>Como fiscaliza a Assembleia a atividade do Governo?</li>
</ol>

<hr>

<nav>
<a href="../../index.html">🏠 Página Principal</a> |
<a href="../../cadeiras/cadeira-02-direito-constitucional.html">📚 Voltar à cadeira</a> |
<a href="aula-06.html">⬅ Aula Anterior</a> |
<a href="aula-08.html">➡ Próxima Aula</a>
</nav>

</body>
</html>
EOF

sed -i 's|Aula 07 - Assembleia da República e Governo|<a href="../aulas/direito-constitucional/aula-07.html">Aula 07 - Assembleia da República e Governo</a>|' cadeiras/cadeira-02-direito-constitucional.html

git add .
git commit -m "Adicionar Aula 07 Assembleia da Republica e Governo"
git push

echo "Aula 07 criada e publicada."
