#!/bin/bash

cd ~/universidade-da-vida-direito

cat > paginas/mapa.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Mapa do Site</title>
<link rel="stylesheet" href="../style.css?v=73">
</head>
<body>
<main>

<h1>🗺️ Mapa do Site</h1>

<section class="cadeira-card">
<h2>Área Principal</h2>
<ul>
<li><a href="../index.html">Página Inicial</a></li>
<li><a href="../cadeiras.html">Plano de Estudos</a></li>
<li><a href="../biblioteca/codigos-juridicos.html">Biblioteca Jurídica</a></li>
<li><a href="../glossario/index.html">Glossário Jurídico</a></li>
<li><a href="../casos/index.html">Casos Práticos</a></li>
<li><a href="../quiz-interativo.html">Quiz Interativo</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Cadeiras Concluídas</h2>
<ul>
<li><a href="../cadeiras/cadeira-01-introducao-direito-i.html">Introdução ao Direito I</a></li>
<li><a href="../cadeiras/cadeira-02-direito-constitucional.html">Direito Constitucional</a></li>
<li><a href="../cadeiras/cadeira-03-introducao-economia.html">Introdução à Economia</a></li>
<li><a href="../cadeiras/cadeira-04-estudo-empresa.html">Introdução ao Estudo da Empresa</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Aulas — Introdução ao Direito I</h2>
<ul>
<li><a href="../aulas/introducao-direito-i/aula-01.html">Aula 01</a></li>
<li><a href="../aulas/introducao-direito-i/aula-02.html">Aula 02</a></li>
<li><a href="../aulas/introducao-direito-i/aula-03.html">Aula 03</a></li>
<li><a href="../aulas/introducao-direito-i/aula-04.html">Aula 04</a></li>
<li><a href="../aulas/introducao-direito-i/aula-05.html">Aula 05</a></li>
<li><a href="../aulas/introducao-direito-i/aula-06.html">Aula 06</a></li>
<li><a href="../aulas/introducao-direito-i/aula-07.html">Aula 07</a></li>
<li><a href="../aulas/introducao-direito-i/aula-08.html">Aula 08</a></li>
<li><a href="../aulas/introducao-direito-i/aula-09.html">Aula 09</a></li>
<li><a href="../aulas/introducao-direito-i/quiz-final.html">Quiz Final</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Aulas — Direito Constitucional</h2>
<ul>
<li><a href="../aulas/direito-constitucional/aula-01.html">Aula 01</a></li>
<li><a href="../aulas/direito-constitucional/aula-02.html">Aula 02</a></li>
<li><a href="../aulas/direito-constitucional/aula-03.html">Aula 03</a></li>
<li><a href="../aulas/direito-constitucional/aula-04.html">Aula 04</a></li>
<li><a href="../aulas/direito-constitucional/aula-05.html">Aula 05</a></li>
<li><a href="../aulas/direito-constitucional/aula-06.html">Aula 06</a></li>
<li><a href="../aulas/direito-constitucional/aula-07.html">Aula 07</a></li>
<li><a href="../aulas/direito-constitucional/aula-08.html">Aula 08</a></li>
<li><a href="../aulas/direito-constitucional/aula-09.html">Aula 09</a></li>
<li><a href="../aulas/direito-constitucional/quiz-final.html">Quiz Final</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Aulas — Introdução à Economia</h2>
<ul>
<li><a href="../aulas/introducao-economia/aula-01.html">Aula 01</a></li>
<li><a href="../aulas/introducao-economia/aula-02.html">Aula 02</a></li>
<li><a href="../aulas/introducao-economia/aula-03.html">Aula 03</a></li>
<li><a href="../aulas/introducao-economia/aula-04.html">Aula 04</a></li>
<li><a href="../aulas/introducao-economia/aula-05.html">Aula 05</a></li>
<li><a href="../aulas/introducao-economia/aula-06.html">Aula 06</a></li>
<li><a href="../aulas/introducao-economia/aula-07.html">Aula 07</a></li>
<li><a href="../aulas/introducao-economia/aula-08.html">Aula 08</a></li>
<li><a href="../aulas/introducao-economia/aula-09.html">Aula 09</a></li>
<li><a href="../aulas/introducao-economia/quiz-final.html">Quiz Final</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Aulas — Introdução ao Estudo da Empresa</h2>
<ul>
<li><a href="../aulas/estudo-empresa/aula-01.html">Aula 01</a></li>
<li><a href="../aulas/estudo-empresa/aula-02.html">Aula 02</a></li>
<li><a href="../aulas/estudo-empresa/aula-03.html">Aula 03</a></li>
<li><a href="../aulas/estudo-empresa/aula-04.html">Aula 04</a></li>
<li><a href="../aulas/estudo-empresa/aula-05.html">Aula 05</a></li>
<li><a href="../aulas/estudo-empresa/aula-06.html">Aula 06</a></li>
<li><a href="../aulas/estudo-empresa/aula-07.html">Aula 07</a></li>
<li><a href="../aulas/estudo-empresa/aula-08.html">Aula 08</a></li>
<li><a href="../aulas/estudo-empresa/aula-09.html">Aula 09</a></li>
<li><a href="../aulas/estudo-empresa/quiz-final.html">Quiz Final</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Projeto</h2>
<ul>
<li><a href="sobre.html">Sobre o Projeto</a></li>
<li><a href="contacto.html">Contacto</a></li>
<li><a href="aviso-legal.html">Aviso Legal e Académico</a></li>
<li><a href="atualizacoes.html">Registo de Atualizações</a></li>
</ul>
</section>

<hr>

<nav>
<a href="../index.html">🏠 Início</a>
</nav>

</main>
</body>
</html>
EOF

git add .
git commit -m "Atualizar mapa do site"
git push

echo "Mapa do site atualizado."
