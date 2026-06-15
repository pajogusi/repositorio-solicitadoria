#!/bin/bash

cd ~/universidade-da-vida-direito

cat > aulas/estudo-empresa/quiz-final.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Aula 10 - Revisão Geral e Quiz Final</title>
<link rel="stylesheet" href="../../style.css?v=70">
</head>
<body>
<main>

<h1>📘 Aula 10 - Revisão Geral e Quiz Final</h1>

<section class="box">
<h2>Objetivo</h2>
<p>
Consolidar os conhecimentos adquiridos ao longo da cadeira de Introdução ao Estudo da Empresa.
</p>
</section>

<section>
<h2>Resumo da Cadeira</h2>

<ol>
<li>Conceito de empresa.</li>
<li>Empresário, empresa e sociedade.</li>
<li>Tipos de empresas.</li>
<li>Recursos empresariais.</li>
<li>Funções da empresa.</li>
<li>Organização interna.</li>
<li>Gestão, risco e decisão.</li>
<li>Mercado e concorrência.</li>
<li>Caso prático orientado.</li>
</ol>

</section>

<section>
<h2>Quiz Final</h2>

<div class="exemplo">

<p><strong>1.</strong> Qual das seguintes entidades possui personalidade jurídica própria?</p>
<ul>
<li>a) Trabalhador</li>
<li>b) Sociedade por quotas ✅</li>
<li>c) Cliente</li>
<li>d) Fornecedor</li>
</ul>

<p><strong>2.</strong> Qual dos seguintes é um recurso intangível?</p>
<ul>
<li>a) Máquina</li>
<li>b) Viatura</li>
<li>c) Marca ✅</li>
<li>d) Armazém</li>
</ul>

<p><strong>3.</strong> O risco de incumprimento contratual é um:</p>
<ul>
<li>a) Risco jurídico ✅</li>
<li>b) Risco natural</li>
<li>c) Risco climático</li>
<li>d) Risco geográfico</li>
</ul>

<p><strong>4.</strong> A concorrência desleal é:</p>
<ul>
<li>a) Permitida</li>
<li>b) Regulada pelo Direito ✅</li>
<li>c) Obrigatória</li>
<li>d) Incentivada</li>
</ul>

<p><strong>5.</strong> Qual destas funções pertence à empresa?</p>
<ul>
<li>a) Produção ✅</li>
<li>b) Jurisdição</li>
<li>c) Legislação</li>
<li>d) Fiscalização parlamentar</li>
</ul>

</div>

</section>

<section>
<h2>Pergunta de Desenvolvimento</h2>

<div class="exemplo">
Explique a importância da organização empresarial e da gestão do risco para o sucesso de uma empresa.
</div>

</section>

<section>
<h2>Conclusão</h2>

<p>
A empresa é simultaneamente uma realidade económica e jurídica. O estudo da empresa é fundamental para compreender contratos, sociedades, responsabilidade, registos e atividade económica.
</p>

<div class="destaque">
<strong>Parabéns!</strong><br>
Concluiu a cadeira de Introdução ao Estudo da Empresa.
</div>

</section>

<section>
<h2>⚖️ Base Legal</h2>

<ul>
<li><a href="https://www.pgdlisboa.pt/leis/lei_mostra_articulado.php?nid=524&tabela=leis" target="_blank">Código das Sociedades Comerciais</a></li>
<li><a href="https://www.pgdlisboa.pt/leis/lei_mostra_articulado.php?nid=775&tabela=leis" target="_blank">Código Civil</a></li>
<li><a href="../../biblioteca/codigos-juridicos.html">Biblioteca Jurídica do Repositório</a></li>
</ul>

</section>

<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-04-estudo-empresa.html">📚 Cadeira</a> |
<a href="aula-09.html">⬅ Aula 09</a>
</nav>

</main>
</body>
</html>
EOF

python3 << 'PY'
from pathlib import Path

# Atualizar cadeira
path = Path("cadeiras/cadeira-04-estudo-empresa.html")
html = path.read_text(encoding="utf-8")

html = html.replace(
    '<li>Aula 10 - Revisão geral e quiz final</li>',
    '<li><a href="../aulas/estudo-empresa/quiz-final.html">Aula 10 - Revisão geral e quiz final</a></li>'
)

html = html.replace(
    '9 de 10 aulas concluídas',
    '10 de 10 aulas concluídas'
)

html = html.replace(
    '🟡 Em desenvolvimento',
    '🟢 Concluída'
)

path.write_text(html, encoding="utf-8")

# Atualizar lista de cadeiras
path = Path("cadeiras.html")
html = path.read_text(encoding="utf-8")
html = html.replace('9 / 10 aulas concluídas', '10 / 10 aulas concluídas', 1)
path.write_text(html, encoding="utf-8")

# Atualizar index
path = Path("index.html")
html = path.read_text(encoding="utf-8")

html = html.replace(
    '<strong>3</strong><br>Cadeiras concluídas',
    '<strong>4</strong><br>Cadeiras concluídas'
)

html = html.replace(
    '<strong>30</strong><br>Aulas concluídas',
    '<strong>40</strong><br>Aulas concluídas'
)

html = html.replace('17%', '22%')

path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Concluir cadeira Introducao ao Estudo da Empresa"
git push

echo "4 cadeiras e 40 aulas concluidas."
