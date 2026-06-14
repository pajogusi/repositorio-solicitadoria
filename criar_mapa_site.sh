#!/bin/bash

cd ~/universidade-da-vida-direito

mkdir -p paginas

cat > paginas/mapa.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Mapa do Site</title>
<link rel="stylesheet" href="../style.css?v=33">
</head>
<body>
<main>

<h1>Mapa do Site</h1>

<section class="cadeira-card">
<h2>Área Principal</h2>
<ul>
<li><a href="../index.html">Página Inicial</a></li>
<li><a href="../cadeiras.html">Plano de Estudos</a></li>
<li><a href="../quiz-interativo.html">Quiz Interativo</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Cadeiras Concluídas</h2>
<ul>
<li><a href="../cadeiras/cadeira-01-introducao-direito-i.html">Introdução ao Direito I</a></li>
<li><a href="../cadeiras/cadeira-02-direito-constitucional.html">Direito Constitucional</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Recursos</h2>
<ul>
<li><a href="../biblioteca/codigos-juridicos.html">Biblioteca Jurídica</a></li>
<li><a href="../glossario/index.html">Glossário Jurídico</a></li>
<li><a href="../casos/index.html">Casos Práticos</a></li>
</ul>
</section>

<section class="cadeira-card">
<h2>Projeto</h2>
<ul>
<li><a href="sobre.html">Sobre o Projeto</a></li>
<li><a href="contacto.html">Contacto</a></li>
</ul>
</section>

</main>
</body>
</html>
EOF

python3 << 'PY'
from pathlib import Path
import re

for path in Path(".").rglob("*.html"):
    html = path.read_text(encoding="utf-8")
    depth = len(path.parts) - 1
    prefix = "../" * depth

    html = re.sub(
        r'<a href="' + re.escape(prefix) + r'paginas/contacto.html">📧 Contacto</a>',
        f'<a href="{prefix}paginas/contacto.html">📧 Contacto</a>\n<a href="{prefix}paginas/mapa.html">🗺️ Mapa</a>',
        html
    )

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar mapa do site"
git push

echo "Mapa do site criado."
