#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A separar Home e Cadeiras..."

mkdir -p paginas

cat > cadeiras.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Cadeiras</title>
<link rel="stylesheet" href="style.css?v=25">
</head>
<body>
<main>

<h1>Cadeiras</h1>

<p>Plano completo organizado por anos e semestres.</p>

<h2>1º Ano</h2>

<h3>1º Semestre</h3>
<div class="cadeira-card"><h3>📚 Introdução ao Direito I</h3><p>10 / 10 aulas concluídas</p><a class="botao" href="cadeiras/cadeira-01-introducao-direito-i.html">Entrar</a></div>
<div class="cadeira-card"><h3>📚 Direito Constitucional</h3><p>10 / 10 aulas concluídas</p><a class="botao" href="cadeiras/cadeira-02-direito-constitucional.html">Entrar</a></div>
<div class="cadeira-card"><h3>📚 Introdução à Economia</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Introdução ao Estudo da Empresa</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Sociologia do Direito</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>

<h3>2º Semestre</h3>
<div class="cadeira-card"><h3>📚 Introdução ao Direito II</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito da União Europeia</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Administrativo I</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Economia Portuguesa e Europeia</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Noções de Contabilidade Geral</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Tecnologias da Informação</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>

<h2>2º Ano</h2>

<h3>1º Semestre</h3>
<div class="cadeira-card"><h3>📚 Direito das Obrigações</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito das Coisas I</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Processual Civil I</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Administrativo II</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Fiscal I</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Comercial</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>

<h3>2º Semestre</h3>
<div class="cadeira-card"><h3>📚 Direito das Coisas II</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Processual Civil II</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Fiscal II</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito da Família e das Sucessões I</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito das Sociedades</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Princípios de Finanças</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>

<h2>3º Ano</h2>

<h3>1º Semestre</h3>
<div class="cadeira-card"><h3>📚 Direito Processual Civil III</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito da Família e das Sucessões II</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito do Notariado</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito dos Contratos</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito do Trabalho</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Penal e Contra-Ordenacional</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito da Informática</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>

<h3>2º Semestre</h3>
<div class="cadeira-card"><h3>📚 Direito Processual Civil IV</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito Administrativo III</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito dos Registos</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Informática Jurídica</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Direito da Regulação Económica e Ambiental</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Recuperação e Liquidação de Empresas</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>
<div class="cadeira-card"><h3>📚 Regulação e Deontologia da Solicitadoria</h3><p>0 / 10 aulas concluídas</p><span class="construcao">Em construção</span></div>

<hr>
<nav>
<a href="index.html">🏠 Página Principal</a> |
<a href="biblioteca/codigos-juridicos.html">⚖️ Biblioteca</a> |
<a href="glossario/index.html">📖 Glossário</a>
</nav>

</main>
</body>
</html>
EOF

cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Repositório de Solicitadoria</title>
<link rel="stylesheet" href="style.css?v=25">
</head>
<body>
<main>

<h1>Repositório de Solicitadoria</h1>

<div class="dashboard">
<h2>📚 Repositório de Solicitadoria</h2>
<p class="autor">Projeto de estudo independente criado por Paulo Silva</p>

<div class="stats">
<div class="stat-card"><strong>2</strong><br>Cadeiras concluídas</div>
<div class="stat-card"><strong>20</strong><br>Aulas concluídas</div>
<div class="stat-card"><strong>1 / 6</strong><br>Semestres iniciados</div>
<div class="stat-card"><strong>Biblioteca</strong><br>Jurídica ativa</div>
</div>

<div class="progress-container">
<div class="progress-bar">17%</div>
</div>

<p>Progresso global da licenciatura</p>
</div>

<div class="search-box">
<h2>🔍 Pesquisa Global</h2>
<p>Pesquisa rápida nas cadeiras, biblioteca, glossário e casos práticos.</p>
<input type="text" id="pesquisaCurso" onkeyup="pesquisarCurso()" placeholder="Pesquisar por Constituição, contrato, tribunal, norma...">
<div id="resultadosPesquisa" class="search-results"></div>
</div>

<div class="cadeira-card">
<h3>📚 Cadeiras</h3>
<p>Plano completo organizado por anos e semestres.</p>
<a class="botao" href="cadeiras.html">Abrir Cadeiras</a>
</div>

<div class="cadeira-card">
<h3>⚖️ Biblioteca Jurídica</h3>
<p>Códigos, Constituição, legislação fundamental e portais oficiais.</p>
<a class="botao" href="biblioteca/codigos-juridicos.html">Abrir Biblioteca</a>
</div>

<div class="cadeira-card">
<h3>📖 Glossário Jurídico</h3>
<p>Conceitos essenciais explicados em linguagem simples.</p>
<a class="botao" href="glossario/index.html">Abrir Glossário</a>
</div>

<div class="cadeira-card">
<h3>🧩 Casos Práticos</h3>
<p>Exercícios orientados para aplicar a matéria estudada.</p>
<a class="botao" href="casos/index.html">Abrir Casos</a>
</div>

<div class="cadeira-card">
<h3>🎯 Quiz Interativo</h3>
<p>Teste rápido com correção automática.</p>
<a class="botao" href="quiz-interativo.html">Abrir Quiz</a>
</div>

<div class="aviso">
<h2>🚧 Projeto em Construção</h2>
<p>Esta plataforma ainda está em desenvolvimento. As aulas estão a ser criadas gradualmente.</p>
<p>Contacto: <a href="mailto:pajogusi.uk@gmail.com">pajogusi.uk@gmail.com</a></p>
</div>

<div class="apoio">
<h3>☕ Apoiar o Projeto</h3>
<p>A Repositório de Solicitadoria é um projeto independente criado para fins educativos.</p>
<p>PayPal: <strong>pajogusi.uk@gmail.com</strong></p>
<p>Obrigado pelo teu apoio.</p>
</div>

<div class="footer-copyright">
© 2026 Paulo Silva / Pàjó - Todos os direitos reservados.
<br>
Conteúdo disponibilizado apenas para estudo pessoal.
</div>

<script src="script.js"></script>

</main>
</body>
</html>
EOF

git add .
git commit -m "Separar home e pagina de cadeiras"
git push

echo "Home simplificada e página de cadeiras criada."
