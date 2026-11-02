// O catálogo é gerado a partir do plano de estudos e dos ficheiros de aulas.
function calcularProgresso(disciplinas) {
    const previstas = disciplinas.reduce((total, cadeira) => total + cadeira.previstas, 0);
    const concluidas = disciplinas.reduce((total, cadeira) => total + cadeira.aulas.length, 0);
    return {
        disciplinas: disciplinas.length,
        concluidas: disciplinas.filter(c => c.aulas.length === c.previstas).length,
        emCurso: disciplinas.filter(c => c.aulas.length > 0 && c.aulas.length < c.previstas).length,
        porIniciar: disciplinas.filter(c => c.aulas.length === 0).length,
        aulasConcluidas: concluidas,
        aulasPrevistas: previstas,
        percentagem: previstas ? concluidas / previstas * 100 : 0
    };
}

function atualizarProgresso() {
    const barra = document.getElementById("progressoCurso");
    if (!barra || typeof disciplinasCurso === "undefined") return;
    const estado = calcularProgresso(disciplinasCurso);
    const percentagem = estado.percentagem.toLocaleString("pt-PT", {minimumFractionDigits: 1, maximumFractionDigits: 1}) + "%";
    barra.max = estado.aulasPrevistas;
    barra.value = estado.aulasConcluidas;
    barra.textContent = percentagem;
    document.getElementById("rotuloProgresso").textContent = percentagem;
    document.getElementById("cadeirasConcluidas").textContent = `${estado.concluidas} / ${estado.disciplinas}`;
    document.getElementById("aulasConcluidas").textContent = `${estado.aulasConcluidas} / ${estado.aulasPrevistas}`;
}
