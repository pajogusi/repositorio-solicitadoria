#!/bin/bash

cd ~/universidade-da-vida-direito

echo "Corrigir links da cadeira de Direito Constitucional..."

sed -i 's|<li>Aula 02 - Estado de Direito Democrático</li>|<li><a href="../aulas/direito-constitucional/aula-02.html">Aula 02 - Estado de Direito Democrático</a></li>|' cadeiras/cadeira-02-direito-constitucional.html

sed -i 's|<li>Aula 03 - Princípios Fundamentais da Constituição Portuguesa</li>|<li><a href="../aulas/direito-constitucional/aula-03.html">Aula 03 - Princípios Fundamentais da Constituição Portuguesa</a></li>|' cadeiras/cadeira-02-direito-constitucional.html

sed -i 's|<li>Aula 04 - Direitos, Liberdades e Garantias</li>|<li><a href="../aulas/direito-constitucional/aula-04.html">Aula 04 - Direitos, Liberdades e Garantias</a></li>|' cadeiras/cadeira-02-direito-constitucional.html


echo "Melhorar página inicial..."

cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Repositório de Solicitadoria</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<h1>Repositório de Solicitadoria</h1>

<p>
Projeto independente de estudo de Direito e Solicitadoria.
</p>

<div class="aviso">
<h2>🚧 Projeto em Construção</h2>

<p>
As aulas estão a ser desenvolvidas gradualmente.
</p>

<p>
Sugestões:
<a href="mailto:pajogusi.uk@gmail.com">
pajogusi.uk@gmail.com
</a>
</p>
</div>

<h2>1º Ano</h2>

<div class="cadeira-card">
<h3>📚 Introdução ao Direito I</h3>
<p>10 / 10 aulas concluídas</p>
<a class="botao" href="cadeiras/cadeira-01-introducao-direito-i.html">
Entrar
</a>
</div>

<div class="cadeira-card">
<h3>📚 Direito Constitucional</h3>
<p>10 / 10 aulas concluídas</p>
<a class="botao" href="cadeiras/cadeira-02-direito-constitucional.html">
Entrar
</a>
</div>

<div class="cadeira-card">
<h3>📚 Introdução à Economia</h3>
<p>0 / 10 aulas concluídas</p>
<span class="construcao">
Em construção
</span>
</div>

<h2>2º Ano</h2>

<div class="cadeira-card">
<h3>📚 Direito das Obrigações</h3>
<p>Em construção</p>
</div>

<div class="cadeira-card">
<h3>📚 Direito Fiscal</h3>
<p>Em construção</p>
</div>

<div class="cadeira-card">
<h3>📚 Direito Comercial</h3>
<p>Em construção</p>
</div>

<h2>3º Ano</h2>

<div class="cadeira-card">
<h3>📚 Direito do Trabalho</h3>
<p>Em construção</p>
</div>

<div class="cadeira-card">
<h3>📚 Direito dos Registos</h3>
<p>Em construção</p>
</div>

<div class="cadeira-card">
<h3>📚 Regulação e Deontologia da Solicitadoria</h3>
<p>Em construção</p>
</div>

</body>
</html>
EOF


cat >> style.css << 'EOF'

.cadeira-card{
background:white;
padding:20px;
margin:20px 0;
border-radius:12px;
box-shadow:0 2px 8px rgba(0,0,0,0.08);
}

.botao{
display:inline-block;
background:#0b2c4d;
color:white !important;
padding:10px 20px;
border-radius:8px;
text-decoration:none;
font-weight:bold;
}

.botao:hover{
background:#154b82;
}

.construcao{
color:#a66a00;
font-weight:bold;
}

.aviso{
background:#fff4d8;
border:1px solid #e0c070;
padding:20px;
border-radius:12px;
margin-bottom:30px;
}
EOF


git add .
git commit -m "Melhorar pagina inicial e corrigir links constitucional"
git push

echo ""
echo "Concluido."
echo "Atualiza o browser com CTRL+F5."
