#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A criar pesquisa global e quiz interativo..."

cat >> style.css << 'EOF'

.search-box {
    margin: 25px 0;
    padding: 20px;
    background: #eef4fb;
    border-radius: 12px;
}

.search-box input {
    width: 100%;
    padding: 12px;
    font-size: 1em;
    border: 1px solid #bbb;
    border-radius: 8px;
}

.search-results {
    margin-top: 15px;
}

.quiz-interativo {
    background: #f9fbfd;
    padding: 20px;
    border-radius: 12px;
    border: 1px solid #dde3ea;
    margin: 20px 0;
}

.quiz-interativo button {
    margin-top: 15px;
    background: #0b2c4d;
    color: white;
    border: none;
    padding: 10px 18px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
}

.quiz-interativo button:hover {
    background: #154b82;
}

.resultado-quiz {
    margin-top: 15px;
    font-weight: bold;
}
EOF

cat > script.js << 'EOF'
const paginas = [
    { titulo: "Introdução ao Direito I", url: "cadeiras/cadeira-01-introducao-direito-i.html", termos: "direito norma juridica fontes ramos tribunais interpretação" },
    { titulo: "Direito Constitucional", url: "cadeiras/cadeira-02-direito-constitucional.html", termos: "constituição estado direito democrático tribunais soberania fiscalização constitucionalidade" },
    { titulo: "Biblioteca Jurídica", url: "biblioteca/codigos-juridicos.html", termos: "códigos constituição código civil trabalho penal fiscal administrativo" },
    { titulo: "Glossário Jurídico", url: "glossario/index.html", termos: "conceitos constituição norma coercibilidade jurisprudência doutrina contrato obrigação" },
    { titulo: "Casos Práticos", url: "casos/index.html", termos: "casos práticos contrato liberdade igualdade sanção normas" }
];

function pesquisarCurso() {
    const input = document.getElementById("pesquisaCurso");
    const resultados = document.getElementById("resultadosPesquisa");

    if (!input || !resultados) return;

    const termo = input.value.toLowerCase().trim();
    resultados.innerHTML = "";

    if (termo.length < 2) return;

    const encontrados = paginas.filter(p =>
        p.titulo.toLowerCase().includes(termo) ||
        p.termos.toLowerCase().includes(termo)
    );

    if (encontrados.length === 0) {
        resultados.innerHTML = "<p>Nenhum resultado encontrado.</p>";
        return;
    }

    encontrados.forEach(p => {
        resultados.innerHTML += `<p><a href="${p.url}">${p.titulo}</a></p>`;
    });
}

function verificarQuiz() {
    const respostas = {
        q1: "b",
        q2: "a",
        q3: "c",
        q4: "b",
        q5: "a"
    };

    let pontos = 0;
    let total = Object.keys(respostas).length;

    for (let q in respostas) {
        const marcada = document.querySelector(`input[name="${q}"]:checked`);
        if (marcada && marcada.value === respostas[q]) {
            pontos++;
        }
    }

    const resultado = document.getElementById("resultadoQuiz");
    if (!resultado) return;

    const percentagem = Math.round((pontos / total) * 100);

    if (percentagem >= 60) {
        resultado.innerHTML = `Resultado: ${pontos}/${total} (${percentagem}%). Aprovado.`;
        resultado.style.color = "green";
    } else {
        resultado.innerHTML = `Resultado: ${pontos}/${total} (${percentagem}%). Revê a matéria.`;
        resultado.style.color = "darkred";
    }
}
EOF

python3 << 'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

# garantir script.js no index
if '<script src="script.js"></script>' not in html:
    html = html.replace("</main>", '<script src="script.js"></script>\n</main>')

pesquisa = """
<div class="search-box">
<h2>🔍 Pesquisa Global</h2>
<p>Pesquisa rápida nas cadeiras, biblioteca, glossário e casos práticos.</p>
<input type="text" id="pesquisaCurso" onkeyup="pesquisarCurso()" placeholder="Pesquisar por Constituição, contrato, tribunal, norma...">
<div id="resultadosPesquisa" class="search-results"></div>
</div>
"""

if 'id="pesquisaCurso"' not in html:
    html = html.replace('<p>Projeto independente de estudo de Direito e Solicitadoria.</p>', '<p>Projeto independente de estudo de Direito e Solicitadoria.</p>\n' + pesquisa)

path.write_text(html, encoding="utf-8")
PY

cat > quiz-interativo.html << 'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Quiz Interativo</title>
<link rel="stylesheet" href="style.css?v=24">
</head>
<body>
<main>

<h1>Quiz Interativo</h1>

<p>
Teste rápido sobre as duas primeiras cadeiras concluídas.
</p>

<section class="quiz-interativo">

<h2>Perguntas</h2>

<p><strong>1. O que é o Direito?</strong></p>
<label><input type="radio" name="q1" value="a"> Uma opinião moral.</label><br>
<label><input type="radio" name="q1" value="b"> Um conjunto de normas jurídicas que regulam a vida em sociedade.</label><br>
<label><input type="radio" name="q1" value="c"> Apenas decisões dos tribunais.</label>

<p><strong>2. Qual é a lei fundamental do Estado?</strong></p>
<label><input type="radio" name="q2" value="a"> Constituição.</label><br>
<label><input type="radio" name="q2" value="b"> Código Civil.</label><br>
<label><input type="radio" name="q2" value="c"> Regulamento municipal.</label>

<p><strong>3. O que é coercibilidade?</strong></p>
<label><input type="radio" name="q3" value="a"> Uma regra de cortesia.</label><br>
<label><input type="radio" name="q3" value="b"> Uma opinião ética.</label><br>
<label><input type="radio" name="q3" value="c"> Possibilidade de o Estado impor o cumprimento da norma.</label>

<p><strong>4. Quem fiscaliza principalmente a constitucionalidade?</strong></p>
<label><input type="radio" name="q4" value="a"> Governo.</label><br>
<label><input type="radio" name="q4" value="b"> Tribunal Constitucional.</label><br>
<label><input type="radio" name="q4" value="c"> Câmara Municipal.</label>

<p><strong>5. O que significa hierarquia das normas?</strong></p>
<label><input type="radio" name="q5" value="a"> Normas inferiores não podem contrariar normas superiores.</label><br>
<label><input type="radio" name="q5" value="b"> Todas as normas têm o mesmo valor.</label><br>
<label><input type="radio" name="q5" value="c"> Só os tribunais criam leis.</label>

<br>

<button onclick="verificarQuiz()">Verificar Resultado</button>

<div id="resultadoQuiz" class="resultado-quiz"></div>

</section>

<hr>

<nav>
<a href="index.html">🏠 Página Principal</a> |
<a href="glossario/index.html">📖 Glossário</a> |
<a href="casos/index.html">🧩 Casos Práticos</a>
</nav>

<script src="script.js"></script>

</main>
</body>
</html>
EOF

python3 << 'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

bloco = """
<div class="cadeira-card">
<h3>🎯 Quiz Interativo</h3>
<p>Teste rápido com correção automática.</p>
<a class="botao" href="quiz-interativo.html">Abrir Quiz</a>
</div>
"""

if 'href="quiz-interativo.html"' not in html:
    html = html.replace('<div class="cadeira-card">\n<h3>🧩 Casos Práticos</h3>', bloco + '\n<div class="cadeira-card">\n<h3>🧩 Casos Práticos</h3>')

path.write_text(html, encoding="utf-8")
PY

git add .
git commit -m "Adicionar pesquisa global e quiz interativo"
git push

echo "Fase 4 concluída."
