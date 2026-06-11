#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A criar Glossário Jurídico Global..."

mkdir -p glossario

cat > glossario/index.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Glossário Jurídico</title>
<link rel="stylesheet" href="../style.css?v=22">
</head>
<body>
<main>

<h1>Glossário Jurídico</h1>

<p>
Glossário simples de conceitos essenciais usados nas aulas da Universidade da Vida.
</p>

<div class="aviso">
<strong>Nota:</strong><br>
Este glossário é para estudo introdutório. Não substitui consulta de manuais, legislação atualizada ou aconselhamento jurídico.
</div>

<section class="cadeira-card">
<h2>Constituição</h2>
<p>Lei fundamental do Estado. Organiza o poder político e consagra direitos fundamentais.</p>
</section>

<section class="cadeira-card">
<h2>Direito</h2>
<p>Conjunto de normas jurídicas que regulam a vida em sociedade e podem ser impostas pelo Estado.</p>
</section>

<section class="cadeira-card">
<h2>Direito Objetivo</h2>
<p>Conjunto das normas jurídicas em vigor num determinado ordenamento jurídico.</p>
</section>

<section class="cadeira-card">
<h2>Direito Subjetivo</h2>
<p>Poder reconhecido a uma pessoa para exigir determinado comportamento de outra.</p>
</section>

<section class="cadeira-card">
<h2>Estado de Direito</h2>
<p>Modelo em que o Estado está sujeito à Constituição, à lei e ao controlo dos tribunais.</p>
</section>

<section class="cadeira-card">
<h2>Norma Jurídica</h2>
<p>Regra de conduta criada ou reconhecida pelo Estado, com carácter obrigatório e possibilidade de sanção.</p>
</section>

<section class="cadeira-card">
<h2>Coercibilidade</h2>
<p>Possibilidade de o Estado impor o cumprimento de uma norma jurídica através de meios legalmente previstos.</p>
</section>

<section class="cadeira-card">
<h2>Jurisprudência</h2>
<p>Conjunto de decisões dos tribunais que ajuda a interpretar e aplicar o Direito.</p>
</section>

<section class="cadeira-card">
<h2>Doutrina</h2>
<p>Estudos e opiniões de juristas, professores e investigadores que ajudam a compreender o Direito.</p>
</section>

<section class="cadeira-card">
<h2>Tribunal</h2>
<p>Órgão que administra a justiça, resolve conflitos e aplica o Direito aos casos concretos.</p>
</section>

<section class="cadeira-card">
<h2>Inconstitucionalidade</h2>
<p>Situação em que uma norma viola a Constituição.</p>
</section>

<section class="cadeira-card">
<h2>Estado</h2>
<p>Organização política e jurídica composta por povo, território e poder político.</p>
</section>

<section class="cadeira-card">
<h2>Lei</h2>
<p>Norma jurídica geral e abstrata criada por órgão competente com força obrigatória.</p>
</section>

<section class="cadeira-card">
<h2>Regulamento</h2>
<p>Norma inferior à lei, normalmente destinada a desenvolver ou executar leis.</p>
</section>

<section class="cadeira-card">
<h2>Contrato</h2>
<p>Acordo de vontades que cria, modifica ou extingue relações jurídicas.</p>
</section>

<section class="cadeira-card">
<h2>Obrigação</h2>
<p>Relação jurídica em que uma pessoa deve realizar uma prestação a favor de outra.</p>
</section>

<section class="cadeira-card">
<h2>Direito Público</h2>
<p>Ramo do Direito que regula relações em que o Estado atua em posição de autoridade.</p>
</section>

<section class="cadeira-card">
<h2>Direito Privado</h2>
<p>Ramo do Direito que regula relações entre particulares em posição de igualdade jurídica.</p>
</section>

<section class="cadeira-card">
<h2>Fiscalização da Constitucionalidade</h2>
<p>Controlo destinado a verificar se uma norma respeita ou viola a Constituição.</p>
</section>

<section class="cadeira-card">
<h2>Solicitadoria</h2>
<p>Área profissional jurídica ligada a atos, documentos, registos, contratos, procedimentos e apoio ao cidadão.</p>
</section>

<hr>

<nav>
<a href="../index.html">🏠 Página Principal</a> |
<a href="../biblioteca/codigos-juridicos.html">⚖️ Biblioteca Jurídica</a>
</nav>

</main>
</body>
</html>
EOF

# Inserir link do glossário na página principal, se ainda não existir
python3 << 'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

bloco = """
<div class="cadeira-card">
<h3>📖 Glossário Jurídico</h3>
<p>Conceitos essenciais explicados em linguagem simples.</p>
<a class="botao" href="glossario/index.html">Abrir Glossário</a>
</div>
"""

if 'href="glossario/index.html"' not in html:
    html = html.replace('<div class="cadeira-card">\n<h3>⚖️ Biblioteca Jurídica</h3>', bloco + '\n<div class="cadeira-card">\n<h3>⚖️ Biblioteca Jurídica</h3>')

path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar glossario juridico global"
git push

echo "Fase 2 concluída: Glossário Jurídico criado."
