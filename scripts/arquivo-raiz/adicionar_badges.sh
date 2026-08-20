#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A adicionar badges de estado..."

cat >> style.css << 'EOF'

.badge {
    display: inline-block;
    padding: 6px 12px;
    border-radius: 20px;
    font-size: 0.85em;
    font-weight: bold;
    margin-top: 10px;
}

.badge.concluida {
    background: #d4edda;
    color: #155724;
}

.badge.desenvolvimento {
    background: #fff3cd;
    color: #856404;
}

.badge.nao-iniciada {
    background: #e2e3e5;
    color: #383d41;
}
EOF

python3 << 'PY'
from pathlib import Path

files = ["cadeiras.html"]

for file in files:
    path = Path(file)
    html = path.read_text(encoding="utf-8")

    html = html.replace(
        '<p>10 / 10 aulas concluídas</p>',
        '<p>10 / 10 aulas concluídas</p>\n<span class="badge concluida">🟢 Concluída</span>'
    )

    html = html.replace(
        '<span class="construcao">Em construção</span>',
        '<span class="badge nao-iniciada">⚪ Não iniciada</span>'
    )

    path.write_text(html, encoding="utf-8")

# Atualizar páginas das cadeiras concluídas
for file in [
    "cadeiras/cadeira-01-introducao-direito-i.html",
    "cadeiras/cadeira-02-direito-constitucional.html"
]:
    path = Path(file)
    html = path.read_text(encoding="utf-8")

    if '<span class="badge concluida">' not in html:
        html = html.replace(
            '<p><strong>Progresso da cadeira:</strong> 10 de 10 aulas concluídas</p>',
            '<p><strong>Progresso da cadeira:</strong> 10 de 10 aulas concluídas</p>\n<span class="badge concluida">🟢 Concluída</span>'
        )

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar badges de estado das cadeiras"
git push

echo "Badges adicionados."
