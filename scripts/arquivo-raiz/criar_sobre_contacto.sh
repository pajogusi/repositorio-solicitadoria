#!/bin/bash

cd ~/universidade-da-vida-direito

mkdir -p paginas

cat > paginas/sobre.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Sobre o Projeto</title>
<link rel="stylesheet" href="../style.css?v=29">
</head>
<body>
<main>

<h1>Sobre o Projeto</h1>

<p>
O Repositório de Solicitadoria é um projeto independente de estudo jurídico criado por Paulo Silva.
</p>

<p>
O objetivo é organizar conteúdos, aulas, códigos legais, glossário, casos práticos e recursos úteis para quem pretende estudar Direito e Solicitadoria de forma autónoma.
</p>

<div class="aviso">
<strong>Aviso:</strong><br>
Este projeto não substitui formação oficial, aconselhamento jurídico, inscrição profissional ou consulta de legislação atualizada.
</div>

<h2>Objetivos</h2>
<ul>
<li>Organizar conhecimento jurídico em linguagem clara.</li>
<li>Criar uma estrutura de estudo por cadeiras e semestres.</li>
<li>Disponibilizar recursos úteis para estudo pessoal.</li>
<li>Construir uma plataforma progressiva e aberta à melhoria.</li>
</ul>

<h2>Autoria</h2>
<p>
Projeto criado e desenvolvido por Paulo Silva / Pàjó.
</p>

</main>
</body>
</html>
EOF

cat > paginas/contacto.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Contacto</title>
<link rel="stylesheet" href="../style.css?v=29">
</head>
<body>
<main>

<h1>Contacto</h1>

<p>
Para sugestões, correções, ideias ou pedidos de autorização relacionados com o projeto:
</p>

<div class="cadeira-card">
<h2>📧 Email</h2>
<p><a href="mailto:pajogusi.uk@gmail.com">pajogusi.uk@gmail.com</a></p>
</div>

<div class="cadeira-card">
<h2>☕ Apoiar o Projeto</h2>
<p>
Se este conteúdo te ajudou e quiseres apoiar o desenvolvimento futuro:
</p>
<p><strong>PayPal:</strong> pajogusi.uk@gmail.com</p>
</div>

</main>
</body>
</html>
EOF

python3 << 'PY'
from pathlib import Path

for path in Path(".").rglob("*.html"):
    html = path.read_text(encoding="utf-8")
    depth = len(path.parts) - 1
    prefix = "../" * depth

    new_menu = f'''
<nav class="top-menu">
<a href="{prefix}index.html">🏠 Início</a>
<a href="{prefix}cadeiras.html">📚 Plano de Estudos</a>
<a href="{prefix}biblioteca/codigos-juridicos.html">⚖️ Biblioteca</a>
<a href="{prefix}glossario/index.html">📖 Glossário</a>
<a href="{prefix}casos/index.html">🧩 Casos</a>
<a href="{prefix}quiz-interativo.html">🎯 Quiz</a>
<a href="{prefix}paginas/sobre.html">ℹ️ Sobre</a>
<a href="{prefix}paginas/contacto.html">📧 Contacto</a>
</nav>
'''

    import re
    html = re.sub(r'<nav class="top-menu">.*?</nav>', new_menu, html, flags=re.S)

    if '<nav class="top-menu">' not in html:
        html = html.replace("<main>", "<main>\n" + new_menu, 1)

    footer = '''
<footer class="site-footer">
<p><strong>Repositório de Solicitadoria</strong></p>
<p>Projeto independente de estudo jurídico criado por Paulo Silva.</p>
<p>© 2026 Paulo Silva / Pàjó - Todos os direitos reservados.</p>
</footer>
'''

    if '<footer class="site-footer">' not in html:
        html = html.replace("</main>", footer + "\n</main>", 1)

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar paginas Sobre e Contacto"
git push

echo "Páginas Sobre e Contacto criadas."
