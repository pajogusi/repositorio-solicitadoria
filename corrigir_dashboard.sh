#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A corrigir dashboard..."

python3 << 'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

dashboard = """
<div class="dashboard">
<h2>📚 Repositório de Solicitadoria</h2>
<p class="autor">Projeto de estudo independente criado por Pàjó</p>

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
"""

if '<div class="dashboard">' not in html:
    html = html.replace("<h1>Repositório de Solicitadoria</h1>", "<h1>Repositório de Solicitadoria</h1>\n" + dashboard)

path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Corrigir insercao do dashboard"
git push

echo "Dashboard corrigido."
