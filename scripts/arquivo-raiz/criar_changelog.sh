#!/bin/bash

cd ~/universidade-da-vida-direito

mkdir -p paginas

cat > paginas/atualizacoes.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Atualizações</title>
<link rel="stylesheet" href="../style.css?v=34">
</head>
<body>
<main>

<h1>Registo de Atualizações</h1>

<section class="cadeira-card">
<h2>Versão 1.0 Estável</h2>
<ul>
<li>Nome definido: Repositório de Solicitadoria.</li>
<li>Estrutura organizada em 3 anos e 6 semestres.</li>
<li>Cadeira Introdução ao Direito I concluída.</li>
<li>Cadeira Direito Constitucional concluída.</li>
<li>Biblioteca Jurídica criada.</li>
<li>Glossário Jurídico criado.</li>
<li>Casos Práticos criados.</li>
<li>Quiz Interativo criado.</li>
<li>Dashboard inicial criado.</li>
<li>Copyright e autoria adicionados.</li>
</ul>
</section>

<section class="cadeira-card">
<h2>Melhorias visuais</h2>
<ul>
<li>Menu superior comum.</li>
<li>Rodapé comum.</li>
<li>Favicon.</li>
<li>Logótipo provisório.</li>
<li>Botão voltar ao topo.</li>
<li>Mapa do site.</li>
</ul>
</section>

<section class="cadeira-card">
<h2>Próximas fases</h2>
<ul>
<li>Uniformizar aulas antigas para formato 2.0.</li>
<li>Criar Introdução à Economia.</li>
<li>Melhorar quiz interativo.</li>
<li>Adicionar pesquisa mais completa.</li>
<li>Criar mais casos práticos por cadeira.</li>
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

    if 'paginas/atualizacoes.html' not in html:
        html = re.sub(
            r'(<a href="' + re.escape(prefix) + r'paginas/mapa.html">🗺️ Mapa</a>)',
            r'\1\n<a href="' + prefix + r'paginas/atualizacoes.html">📝 Atualizações</a>',
            html
        )

    path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar registo de atualizacoes"
git push

echo "Registo de atualizações criado."
