#!/bin/bash

cd ~/universidade-da-vida-direito

cat > aulas/direito-constitucional/aula-09.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Aula 09 - Fiscalização da Constitucionalidade</title>
<link rel="stylesheet" href="../../style.css">
</head>
<body>

<h1>Aula 09 - Fiscalização da Constitucionalidade</h1>

<p>
A Constituição é a lei suprema do Estado Português. Para garantir que todas as outras normas respeitam a Constituição existe um mecanismo chamado fiscalização da constitucionalidade.
</p>

<h2>O que é a Fiscalização da Constitucionalidade?</h2>

<p>
É o controlo realizado para verificar se uma norma jurídica respeita ou viola a Constituição da República Portuguesa.
</p>

<div class="destaque">
<strong>Ideia principal:</strong><br>
Nenhuma lei pode contrariar a Constituição. Se isso acontecer, a norma pode ser declarada inconstitucional.
</div>

<h2>O que significa Inconstitucionalidade?</h2>

<p>
Uma norma é inconstitucional quando viola uma disposição ou princípio da Constituição.
</p>

<p>
Nesse caso, essa norma pode deixar de produzir efeitos jurídicos.
</p>

<h2>Quem fiscaliza?</h2>

<p>
O principal órgão responsável pela fiscalização da constitucionalidade é o Tribunal Constitucional.
</p>

<p>
No entanto, outros tribunais também podem apreciar questões de constitucionalidade durante os processos judiciais.
</p>

<h2>Tipos de Fiscalização</h2>

<h3>Fiscalização Preventiva</h3>

<p>
Ocorre antes da entrada em vigor da norma.
</p>

<p>
O Presidente da República pode solicitar ao Tribunal Constitucional que analise uma lei antes da sua promulgação.
</p>

<h3>Fiscalização Sucessiva</h3>

<p>
Ocorre depois da norma já estar em vigor.
</p>

<p>
Serve para verificar se a aplicação da norma respeita a Constituição.
</p>

<h2>Exemplo Prático</h2>

<p>
Imagine que uma lei proibisse um grupo específico de cidadãos de votar.
</p>

<p>
Essa lei poderia ser considerada inconstitucional por violar o princípio da igualdade e o direito de participação política protegidos pela Constituição.
</p>

<h2>Consequências da Inconstitucionalidade</h2>

<ul>
<li>A norma pode deixar de ser aplicada.</li>
<li>Os tribunais podem recusar a sua aplicação.</li>
<li>Pode ser eliminada do ordenamento jurídico.</li>
<li>Os direitos fundamentais ficam protegidos.</li>
</ul>

<h2>A Importância do Tribunal Constitucional</h2>

<p>
O Tribunal Constitucional atua como guardião da Constituição.
</p>

<p>
A sua função é assegurar que o sistema jurídico permanece coerente com os valores e princípios constitucionais.
</p>

<div class="destaque">
<strong>Princípio Fundamental:</strong><br>
A Constituição está acima de todas as restantes normas jurídicas.
</div>

<h2>Aplicação à Solicitadoria</h2>

<p>
Embora o solicitador não apresente normalmente processos de fiscalização constitucional, trabalha diariamente com normas que devem respeitar a Constituição.
</p>

<p>
Compreender este mecanismo ajuda a interpretar corretamente leis, regulamentos e atos administrativos.
</p>

<h2>Resumo em 5 Pontos</h2>

<ul>
<li>A Constituição é a norma suprema.</li>
<li>A fiscalização verifica se as leis respeitam a Constituição.</li>
<li>O Tribunal Constitucional é o principal órgão fiscalizador.</li>
<li>Existem fiscalizações preventiva e sucessiva.</li>
<li>A inconstitucionalidade protege os direitos fundamentais e o Estado de Direito.</li>
</ul>

<h2>Mini-Perguntas</h2>

<ol>
<li>O que é a fiscalização da constitucionalidade?</li>
<li>O que significa uma norma ser inconstitucional?</li>
<li>Qual é o principal órgão responsável por esta fiscalização?</li>
<li>Qual a diferença entre fiscalização preventiva e sucessiva?</li>
<li>Porque é importante este mecanismo?</li>
</ol>

<hr>

<nav>
<a href="../../index.html">🏠 Página Principal</a> |
<a href="../../cadeiras/cadeira-02-direito-constitucional.html">📚 Voltar à cadeira</a> |
<a href="aula-08.html">⬅ Aula Anterior</a> |
<a href="quiz-final.html">➡ Aula 10</a>
</nav>

</body>
</html>
EOF

sed -i 's|Aula 09 - Fiscalização da Constitucionalidade|<a href="../aulas/direito-constitucional/aula-09.html">Aula 09 - Fiscalização da Constitucionalidade</a>|' cadeiras/cadeira-02-direito-constitucional.html

git add .
git commit -m "Adicionar Aula 09 Fiscalizacao da Constitucionalidade"
git push

echo "Aula 09 criada e publicada."
