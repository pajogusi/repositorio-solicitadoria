#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A atualizar estatísticas da página inicial..."

sed -i 's|<div class="stat-card"><strong>2</strong><br>Cadeiras concluídas</div>|<div class="stat-card"><strong>3</strong><br>Cadeiras concluídas</div>|' index.html

sed -i 's|<div class="stat-card"><strong>20</strong><br>Aulas concluídas</div>|<div class="stat-card"><strong>30</strong><br>Aulas concluídas</div>|' index.html

git add index.html
git commit -m "Atualizar estatisticas da pagina inicial"
git push

echo "Estatísticas atualizadas: 3 cadeiras e 30 aulas."
