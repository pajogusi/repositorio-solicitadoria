// Índice local gerado por scripts/atualizar_dados.py, sem serviços externos.
function normalizarPesquisa(texto) {
    return texto.normalize("NFD").replace(/[\u0300-\u036f]/g, "").toLocaleLowerCase("pt-PT");
}

let indiceNormalizado;
function procurarPaginas(consulta, paginas) {
    const frase = normalizarPesquisa(consulta).trim().replace(/\s+/g, " ");
    const termos = frase.split(" ").filter(Boolean);
    if (termos.join(" ").length < 2) return [];
    if (!indiceNormalizado || indiceNormalizado.origem !== paginas) {
        indiceNormalizado = {origem: paginas, entradas: paginas.map(pagina => ({
            pagina,
            titulo: normalizarPesquisa(pagina.titulo),
            texto: normalizarPesquisa(pagina.texto)
        }))};
    }
    return indiceNormalizado.entradas
        .filter(p => termos.every(termo => p.titulo.includes(termo) || p.texto.includes(termo)))
        .map(p => ({...p, peso: termos.reduce((peso, termo) => peso + (p.titulo.includes(termo) ? 1 : 0), p.titulo.includes(frase) ? termos.length * 4 : 0)}))
        .sort((a, b) => b.peso - a.peso || a.pagina.titulo.localeCompare(b.pagina.titulo, "pt-PT"))
        .map(p => p.pagina);
}

function pesquisarCurso() {
    const input = document.getElementById("pesquisaCurso");
    const resultados = document.getElementById("resultadosPesquisa");
    const estado = document.getElementById("estadoPesquisa");
    if (!input || !resultados || !estado) return;
    resultados.replaceChildren();
    estado.textContent = "";
    if (input.value.trim().length < 2) return;
    if (typeof paginasPesquisa === "undefined") {
        estado.textContent = "Não foi possível carregar a pesquisa. Recarrega a página para tentar novamente.";
        return;
    }
    const encontrados = procurarPaginas(input.value, paginasPesquisa);
    estado.textContent = encontrados.length ? `${encontrados.length} resultado(s).` : "Nenhum resultado encontrado.";
    const lista = document.createElement("ol");
    for (const pagina of encontrados) {
        const item = document.createElement("li");
        const link = document.createElement("a");
        link.href = pagina.url;
        link.textContent = pagina.titulo;
        const resumo = document.createElement("p");
        resumo.textContent = pagina.texto.slice(0, 180) + (pagina.texto.length > 180 ? "…" : "");
        item.append(link, resumo);
        lista.append(item);
    }
    resultados.append(lista);
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


function iniciarPagina() {
    const pesquisa = document.getElementById("pesquisaCurso");
    if (pesquisa) pesquisa.addEventListener("input", pesquisarCurso);
    if (typeof atualizarProgresso === "function") atualizarProgresso();
}

if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", iniciarPagina, {once: true});
} else {
    iniciarPagina();
}
