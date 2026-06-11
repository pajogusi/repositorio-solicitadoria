#!/bin/bash

cd ~/universidade-da-vida-direito

echo "Aplicar melhorias Fase 1..."

cat >> style.css << 'EOF'

.dashboard{
background:#eef4fb;
padding:25px;
border-radius:12px;
margin:20px 0;
text-align:center;
}

.stats{
display:flex;
flex-wrap:wrap;
gap:15px;
justify-content:center;
margin-top:15px;
}

.stat-card{
background:white;
padding:15px;
border-radius:10px;
min-width:180px;
box-shadow:0 2px 6px rgba(0,0,0,0.1);
}

.progress-container{
width:100%;
background:#ddd;
border-radius:10px;
overflow:hidden;
margin-top:20px;
}

.progress-bar{
width:17%;
height:24px;
background:#0b2c4d;
color:white;
text-align:center;
line-height:24px;
font-size:0.9em;
}

.autor{
font-style:italic;
color:#555;
margin-top:10px;
}
EOF

cp index.html index_backup.html

sed -i '/<h1>Universidade da Vida</h1>/a\ \

<div class="dashboard">\
<h2>📚 Universidade da Vida</h2>\
<p class="autor">Projeto de estudo independente criado por Pàjó</p>\
<div class="stats">\
<div class="stat-card"><strong>2</strong><br>Cadeiras concluídas</div>\
<div class="stat-card"><strong>20</strong><br>Aulas concluídas</div>\
<div class="stat-card"><strong>1 / 6</strong><br>Semestres iniciados</div>\
<div class="stat-card"><strong>30+</strong><br>Diplomas disponíveis</div>\
</div>\
<div class="progress-container">\
<div class="progress-bar">17%</div>\
</div>\
<p>Progresso global da licenciatura</p>\
</div>' index.html

git add .
git commit -m "Adicionar dashboard e estatisticas"
git push

echo "Fase 1 concluida."
EOF
