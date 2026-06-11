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
