#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A uniformizar o site..."

cat >> style.css << 'EOF'

.top-menu {
    background: #0b2c4d;
    padding: 12px;
    border-radius: 10px;
    margin-bottom: 25px;
    text-align: center;
}

.top-menu a {
    color: white !important;
    margin: 0 10px;
    text-decoration: none;
    font-weight: bold;
}

.top-menu a:hover {
    text-decoration: underline;
}

.site-footer {
    margin-top: 40px;
    padding: 20px;
    text-align: center;
    font-size: 0.85em;
    color: #666;
    border-top: 1px solid #ddd;
}

@media (max-width: 700px) {
    .top-menu a {
        display: block;
        margin: 8px 0;
    }
}
EOF

python3 << 'PY'
from pathlib import Path

menu_root = '''
<nav class="top-menu">
<a href="index.html">🏠 Início</a>
<a href="cadeiras.html">📚 Plano de Estudos</a>
<a href="biblioteca/codigos-juridicos.html">⚖️ Biblioteca</a>
<a href="glossario/index.html">📖 Glossário</a>
<a href="casos/index.html">🧩 Casos</a>
<a href="quiz-interativo.html">🎯 Quiz</a>
</nav>
'''

footer = '''
<footer class="site-footer">
<p><strong>Repositório de Solicitadoria</strong></p>
<p>Projeto independente de estudo jurídico criado por Pàjó.</p>
<p>© 2026 Paulo Silva / Pàjó - Todos os direitos reservados.</p>
</footer>
'''

def menu_for(path):
    depth = len(path.parts) - 1
    prefix = "../" * depth
    return f'''
<nav class="top-menu">
<a href="{prefix}index.html">🏠 Início</a>
<a href="{prefix}cadeiras.html">📚 Plano de Estudos</a>
<a href="{prefix}biblioteca/codigos-juridicos.html">⚖️ Biblioteca</a>
<a href="{prefix}glossario/index.html">📖 Glossário</a>
<a href="{prefix}casos/index.html">🧩 Casos</a>
<a href="{prefix}quiz-interativo.html">🎯 Quiz</a>
</nav>
'''

for path in Path(".").rglob("*.html"):
    html = path.read_text(encoding="utf-8")

    if '<nav class="top-menu">' not in html:
        html = html.replace("<main>", "<main>\n" + menu_for(path), 1)

    if '<footer class="site-footer">' not in html:
        html = html.replace("</main>", footer + "\n</main>", 1)

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Uniformizar menu e rodape do site"
git push

echo "Site uniformizado."
