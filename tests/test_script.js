// Testes com DOM em memória: nenhuma rede ou persistência da aplicação.
const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const path = require('node:path');
const root = path.resolve(__dirname, '..');
let elements = {}, answers = {};
let inputListener;
function element(tag = 'div') {
    return {tag, children: [], textContent: '', style: {}, value: '',
        append(...children) { this.children.push(...children); },
        replaceChildren(...children) { this.children = children; },
        addEventListener(event, handler) { if (event === 'input') inputListener = handler; }};
}
const document = {
    readyState: 'complete',
    getElementById: id => elements[id] || null,
    createElement: element,
    querySelector: query => {
        const match = query.match(/name="(q\d+)"/);
        return match && answers[match[1]] ? {value: answers[match[1]]} : null;
    }
};
const ctx = vm.createContext({document});
for (const name of ['data/cadeiras.js', 'data/progresso.js', 'data/pesquisa.js', 'script.js']) {
    vm.runInContext(fs.readFileSync(path.join(root, name), 'utf8'), ctx, {timeout: 5000});
}
const evaluate = expression => vm.runInContext(expression, ctx, {timeout: 5000});
const stats = evaluate('calcularProgresso(disciplinasCurso)');
assert.equal(stats.disciplinas, 38);
assert.equal(stats.concluidas, 26);
assert.equal(stats.emCurso, 1);
assert.equal(stats.porIniciar, 11);
assert.equal(stats.aulasConcluidas, 266);
assert.equal(stats.aulasPrevistas, 380);
assert.equal(stats.percentagem, 70);
assert.equal(evaluate('calcularProgresso([]).percentagem'), 0);
assert.equal(evaluate('calcularProgresso([{previstas:10,aulas:["a","b"]}]).percentagem'), 20);
for (const query of ['notariado escritura', 'direito fiscal', 'familia sucessoes', 'contabilidade', 'recursos processo civil', 'constituição', 'constituicao']) {
    const result = evaluate(`procurarPaginas(${JSON.stringify(query)}, paginasPesquisa)`);
    assert(result.length > 0, `Sem resultados para ${query}`);
    assert(result.some(p => p.url.startsWith('aulas/')), `Faltam aulas para ${query}`);
    for (const page of result) assert(fs.existsSync(path.join(root, page.url)));
}
assert.match(evaluate('procurarPaginas("direito fiscal", paginasPesquisa)[0].titulo'), /Direito Fiscal/);
assert.equal(evaluate('procurarPaginas("constituicao", paginasPesquisa).length'), evaluate('procurarPaginas("Constituição", paginasPesquisa).length'));
assert.equal(evaluate('procurarPaginas("x", paginasPesquisa).length'), 0);
assert.equal(evaluate('procurarPaginas("zzzinexistenteterm", paginasPesquisa).length'), 0);
assert.equal(evaluate('procurarPaginas("<img src=x onerror=alert(1)>", paginasPesquisa).length'), 0);
// Procurar texto do corpo que não consta do título.
assert.equal(evaluate('procurarPaginas("hipoteca", [{titulo:"Aula de exemplo",url:"aula.html",texto:"Garantia por hipoteca"}]).length'), 1);
elements = {pesquisaCurso: element('input'), resultadosPesquisa: element(), estadoPesquisa: element()};
ctx.iniciarPagina();
assert.equal(typeof inputListener, 'function');
elements.pesquisaCurso.value = 'notariado escritura';
inputListener();
assert.match(elements.estadoPesquisa.textContent, /resultado/);
assert(elements.resultadosPesquisa.children[0].children.length > 0);
const first = elements.resultadosPesquisa.children[0].children[0].children[0];
assert(first.href.endsWith('.html'));
assert(first.textContent.length > 0);
elements.pesquisaCurso.value = 'zzzinexistenteterm'; ctx.pesquisarCurso();
assert.equal(elements.estadoPesquisa.textContent, 'Nenhum resultado encontrado.');
elements.pesquisaCurso.value = ''; ctx.pesquisarCurso();
assert.equal(elements.estadoPesquisa.textContent, '');
assert.equal(elements.resultadosPesquisa.children.length, 0);
for (const id of ['progressoCurso','rotuloProgresso','cadeirasConcluidas','aulasConcluidas']) elements[id] = element();
ctx.atualizarProgresso();
assert.equal(elements.progressoCurso.value, 266);
assert.equal(elements.progressoCurso.max, 380);
assert.equal(elements.rotuloProgresso.textContent, '70,0%');
const key = {q1:'b',q2:'a',q3:'c',q4:'b',q5:'a'};
for (let n = 0; n <= 5; n++) {
    answers = {};
    Object.keys(key).slice(0,n).forEach(k => answers[k] = key[k]);
    elements.resultadoQuiz = element();
    ctx.verificarQuiz();
    assert(elements.resultadoQuiz.innerHTML.includes(`${n}/5 (${n*20}%)`));
    assert.equal(elements.resultadoQuiz.style.color, n >= 3 ? 'green' : 'darkred');
}
elements = {};
ctx.pesquisarCurso(); ctx.verificarQuiz(); ctx.atualizarProgresso();
// A página do quiz continua funcional sem carregar o índice ou o catálogo.
const quizOnly = vm.createContext({document});
vm.runInContext(fs.readFileSync(path.join(root, 'script.js'), 'utf8'), quizOnly);
elements = {resultadoQuiz: element()}; answers = key; quizOnly.verificarQuiz();
assert.match(elements.resultadoQuiz.innerHTML, /5\/5 \(100%\)/);
console.log('OK: pesquisa, DOM, normalização, progresso e regressão do quiz.');
