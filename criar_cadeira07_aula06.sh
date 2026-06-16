#!/bin/bash

# ==========================================================
# Repositório de Solicitadoria
# Cadeira 7: Introdução ao Direito II
# Aula 06: Atos jurídicos
# Autor oficial: Paulo Silva
# Modelo oficial: top-menu, style.css?v=90, main, botão topo
# ==========================================================

set -e

echo "=========================================="
echo "A criar Aula 06 - Atos jurídicos"
echo "=========================================="

mkdir -p aulas/introducao-direito-ii

cat > aulas/introducao-direito-ii/aula-06.html <<'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aula 06 - Atos jurídicos</title>
<link rel="stylesheet" href="../../style.css?v=90">
<link rel="icon" type="image/svg+xml" href="../../assets/favicon.svg">
</head>
<body>
<main>

<nav class="top-menu">
<a href="../../index.html">🏠 Início</a>
<a href="../../cadeiras.html">📚 Plano de Estudos</a>
<a href="../../biblioteca/codigos-juridicos.html">⚖ Biblioteca</a>
<a href="../../glossario/index.html">📖 Glossário</a>
<a href="../../casos/index.html">🧩 Casos</a>
<a href="../../quiz-interativo.html">🎯 Quiz</a>
<a href="../../paginas/sobre.html">ℹ Sobre</a>
<a href="../../paginas/contacto.html">📧 Contacto</a>
<a href="../../paginas/mapa.html">🗺 Mapa</a>
<a href="../../paginas/aviso-legal.html">⚖ Aviso Legal</a>
</nav>

<h1>Aula 06 - Atos jurídicos</h1>

<section class="box">
<h2>Objetivos da Aula</h2>
<ul>
<li>Compreender o conceito de ato jurídico.</li>
<li>Distinguir facto jurídico de ato jurídico.</li>
<li>Conhecer a diferença entre atos jurídicos lícitos e ilícitos.</li>
<li>Perceber a importância da vontade humana nos atos jurídicos.</li>
<li>Preparar o estudo do negócio jurídico.</li>
</ul>
</section>

<section>
<h2>Introdução</h2>
<p>
Na aula anterior estudámos os factos jurídicos: acontecimentos aos quais o Direito atribui efeitos.
Entre esses factos existem alguns que resultam da atuação humana. Quando essa atuação humana é juridicamente
relevante, podemos estar perante atos jurídicos.
</p>

<p>
O ato jurídico é, portanto, uma categoria dentro dos factos jurídicos. Nem todo o facto jurídico é ato
jurídico, mas todo o ato jurídico é um facto jurídico.
</p>

<div class="destaque">
<strong>Ideia principal:</strong><br>
O ato jurídico é um comportamento humano voluntário ao qual o Direito atribui efeitos jurídicos.
</div>
</section>

<section>
<h2>Conceito de ato jurídico</h2>
<p>
O ato jurídico é uma conduta humana voluntária que produz efeitos reconhecidos pelo Direito.
</p>

<p>
Pode consistir numa declaração, numa assinatura, numa entrega, num pagamento, numa aceitação, numa
recusa, numa comunicação, numa omissão juridicamente relevante ou noutra conduta humana com efeitos
jurídicos.
</p>

<p>
O ponto essencial é a intervenção da vontade humana.
</p>
</section>

<section>
<h2>Facto jurídico e ato jurídico</h2>
<p>
O facto jurídico é qualquer acontecimento que produz efeitos jurídicos. Pode ser natural ou humano.
</p>

<p>
O ato jurídico é um facto jurídico humano e voluntário.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
A morte de uma pessoa é um facto jurídico natural. A assinatura de um contrato é um ato jurídico.
Ambos podem produzir efeitos jurídicos, mas apenas o segundo resulta diretamente de uma atuação humana voluntária.
</div>
</section>

<section>
<h2>Elementos essenciais do ato jurídico</h2>
<p>
Para que exista ato jurídico, normalmente encontramos:
</p>

<ul>
<li><strong>Conduta humana:</strong> existe uma atuação ou omissão de uma pessoa.</li>
<li><strong>Vontade:</strong> a conduta é praticada de forma voluntária.</li>
<li><strong>Relevância jurídica:</strong> o Direito atribui efeitos à conduta.</li>
<li><strong>Consequência jurídica:</strong> o ato cria, modifica ou extingue posições jurídicas.</li>
</ul>
</section>

<section>
<h2>Atos jurídicos lícitos</h2>
<p>
Os atos jurídicos lícitos são atos conformes ao Direito. Produzem efeitos jurídicos sem violar normas
jurídicas.
</p>

<p>Exemplos:</p>
<ul>
<li>Celebrar um contrato válido.</li>
<li>Pagar uma dívida.</li>
<li>Apresentar um requerimento.</li>
<li>Reconhecer uma assinatura.</li>
<li>Fazer uma doação permitida por lei.</li>
<li>Emitir uma declaração com efeitos jurídicos.</li>
</ul>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Maria paga a renda no prazo acordado. Esse pagamento é um ato jurídico lícito que extingue a obrigação de pagamento desse mês.
</div>
</section>

<section>
<h2>Atos jurídicos ilícitos</h2>
<p>
Os atos jurídicos ilícitos são atos contrários ao Direito. Podem gerar responsabilidade civil, penal,
disciplinar, contraordenacional ou outras consequências previstas na lei.
</p>

<p>Exemplos:</p>
<ul>
<li>Danificar propriedade alheia.</li>
<li>Incumprir uma obrigação contratual.</li>
<li>Prestar informação falsa com relevância jurídica.</li>
<li>Ocupar ilegalmente um imóvel.</li>
<li>Praticar uma conduta proibida por lei.</li>
</ul>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Se uma pessoa destrói voluntariamente o bem de outra, pratica um ato ilícito que pode gerar dever de indemnizar.
</div>
</section>

<section>
<h2>Atos jurídicos simples</h2>
<p>
Alguns atos jurídicos são simples porque produzem efeitos jurídicos sem exigirem uma estrutura complexa.
</p>

<p>
Podem consistir numa comunicação, entrega, interpelação, pagamento, aceitação de uma notificação ou
outro comportamento juridicamente relevante.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
O pagamento de uma dívida é um ato jurídico simples que pode extinguir uma obrigação.
</div>
</section>

<section>
<h2>Atos jurídicos formais</h2>
<p>
Certos atos jurídicos exigem uma forma específica para serem válidos ou eficazes.
</p>

<p>
A forma pode ser escrita, autenticada, pública, eletrónica ou sujeita a determinadas formalidades.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Alguns atos relativos a imóveis exigem forma documental adequada e podem depender de registo para produzir efeitos perante terceiros.
</div>

<p>
Quando a lei exige forma especial, a falta dessa forma pode afetar a validade ou eficácia do ato.
</p>
</section>

<section>
<h2>Declaração de vontade</h2>
<p>
Muitos atos jurídicos dependem de uma declaração de vontade. A pessoa manifesta uma intenção destinada
a produzir efeitos jurídicos.
</p>

<p>
A declaração pode ser expressa ou tácita.
</p>

<ul>
<li><strong>Expressa:</strong> feita por palavras, escrito ou outro meio direto.</li>
<li><strong>Tácita:</strong> resulta de comportamentos que revelam uma vontade.</li>
</ul>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Assinar um contrato é uma declaração expressa. Entrar num autocarro e validar o bilhete pode revelar,
por comportamento, a aceitação das condições de transporte.
</div>
</section>

<section>
<h2>Atos jurídicos e negócio jurídico</h2>
<p>
O negócio jurídico é uma categoria especialmente importante de ato jurídico. Nele, a vontade das partes
é dirigida à produção de determinados efeitos jurídicos.
</p>

<p>
Todos os negócios jurídicos são atos jurídicos, mas nem todos os atos jurídicos são negócios jurídicos.
</p>

<div class="destaque">
<strong>Ponto de ligação com a próxima aula:</strong><br>
A Aula 07 será dedicada ao negócio jurídico, uma das figuras centrais da teoria geral do Direito Civil.
</div>
</section>

<section>
<h2>Atos jurídicos unilaterais e bilaterais</h2>
<p>
Alguns atos jurídicos dependem da vontade de uma só pessoa. Outros exigem a intervenção de duas ou mais
vontades.
</p>

<ul>
<li><strong>Unilaterais:</strong> resultam da vontade de uma só parte.</li>
<li><strong>Bilaterais:</strong> resultam do acordo entre duas partes.</li>
</ul>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um testamento é exemplo clássico de ato unilateral. Um contrato de compra e venda é exemplo de ato bilateral.
</div>
</section>

<section>
<h2>Efeitos dos atos jurídicos</h2>
<p>
Os atos jurídicos podem produzir vários efeitos:
</p>

<ul>
<li>Criar direitos.</li>
<li>Constituir obrigações.</li>
<li>Modificar relações jurídicas.</li>
<li>Extinguir deveres.</li>
<li>Transferir bens ou direitos.</li>
<li>Gerar responsabilidade.</li>
<li>Produzir efeitos perante terceiros, quando a lei o permitir.</li>
</ul>
</section>

<section>
<h2>Exemplo prático orientado</h2>
<div class="exemplo">
<p>
Luís devia 800 euros a Marta. No dia 5 de maio de 2026, Luís transferiu a quantia para a conta bancária
de Marta, ficando a dívida paga.
</p>

<ul>
<li><strong>Facto jurídico:</strong> pagamento da quantia em dívida.</li>
<li><strong>Ato jurídico:</strong> transferência voluntária feita por Luís.</li>
<li><strong>Efeito jurídico:</strong> extinção da obrigação de pagar.</li>
<li><strong>Natureza:</strong> ato jurídico lícito.</li>
</ul>
</div>
</section>

<section>
<h2>Importância para a Solicitadoria</h2>
<p>
O solicitador lida frequentemente com atos jurídicos: contratos, procurações, requerimentos, declarações,
registos, pagamentos, notificações e comunicações formais.
</p>

<p>
Por isso, é essencial perceber se o ato é válido, se foi praticado por quem tinha capacidade, se respeitou
a forma exigida e se produziu os efeitos pretendidos.
</p>
</section>

<section>
<h2>Erros Frequentes</h2>
<ul>
<li>Confundir facto jurídico com ato jurídico.</li>
<li>Ignorar a importância da vontade humana.</li>
<li>Não distinguir ato lícito de ato ilícito.</li>
<li>Assumir que todos os atos jurídicos são contratos.</li>
<li>Esquecer que alguns atos exigem forma especial.</li>
</ul>
</section>

<section class="quiz">
<h2>Mini-Quiz</h2>
<ol>
<li>O que é um ato jurídico?</li>
<li>Qual é a diferença entre facto jurídico e ato jurídico?</li>
<li>Dá dois exemplos de atos jurídicos lícitos.</li>
<li>O que é uma declaração de vontade?</li>
<li>Todos os atos jurídicos são negócios jurídicos?</li>
</ol>
</section>

<section class="respostas">
<h2>Respostas Comentadas</h2>
<ol>
<li>É uma conduta humana voluntária à qual o Direito atribui efeitos jurídicos.</li>
<li>O facto jurídico pode ser natural ou humano; o ato jurídico é sempre humano e voluntário.</li>
<li>Celebrar contrato válido, pagar dívida, apresentar requerimento, reconhecer assinatura.</li>
<li>É a manifestação de uma intenção destinada a produzir efeitos jurídicos.</li>
<li>Não. Todo negócio jurídico é ato jurídico, mas nem todo ato jurídico é negócio jurídico.</li>
</ol>
</section>

<section>
<h2>Resumo em 5 Pontos</h2>
<ol>
<li>O ato jurídico é um facto jurídico humano e voluntário.</li>
<li>Os atos jurídicos podem ser lícitos ou ilícitos.</li>
<li>Muitos atos jurídicos dependem de declaração de vontade.</li>
<li>Alguns atos exigem forma especial para serem válidos ou eficazes.</li>
<li>O negócio jurídico é uma categoria importante de ato jurídico.</li>
</ol>
</section>

<section>
<h2>⚖ Base Legal e Ligações Oficiais</h2>
<ul>
<li><a href="https://diariodarepublica.pt/" target="_blank">Diário da República</a></li>
<li><a href="https://www.pgdlisboa.pt/leis/lei_main.php" target="_blank">Procuradoria-Geral Distrital de Lisboa — Legislação</a></li>
<li><a href="../../biblioteca/codigos-juridicos.html">Biblioteca Jurídica do Repositório</a></li>
</ul>
</section>

<section>
<h2>📚 Leitura Recomendada</h2>
<ul>
<li>Teoria geral dos atos jurídicos.</li>
<li>Declaração de vontade.</li>
<li>Atos lícitos e ilícitos.</li>
<li>Introdução ao negócio jurídico.</li>
</ul>
</section>

<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-07-introducao-direito-ii.html">📚 Cadeira</a> |
<a href="aula-05.html">⬅ Aula anterior</a> |
<a href="aula-07.html">➡ Próxima aula</a>
</nav>

</main>

<a href="#" class="back-to-top">↑ Topo</a>
</body>
</html>
EOF

# ==========================================================
# Atualizar página da cadeira
# ==========================================================

python3 <<'PY'
from pathlib import Path

path = Path("cadeiras/cadeira-07-introducao-direito-ii.html")
html = path.read_text(encoding="utf-8")

html = html.replace(
    "<li>Aula 06 - Atos jurídicos</li>",
    '<li><a href="../aulas/introducao-direito-ii/aula-06.html">Aula 06 - Atos jurídicos</a></li>'
)

html = html.replace(
    "<p><strong>Progresso da cadeira:</strong> 5 de 10 aulas concluídas</p>",
    "<p><strong>Progresso da cadeira:</strong> 6 de 10 aulas concluídas</p>"
)

path.write_text(html, encoding="utf-8")
print("Página da cadeira atualizada para Aula 06.")
PY

# ==========================================================
# Garantir link da Aula 05 para Aula 06
# ==========================================================

python3 <<'PY'
from pathlib import Path

path = Path("aulas/introducao-direito-ii/aula-05.html")

if path.exists():
    html = path.read_text(encoding="utf-8")

    if "aula-06.html" not in html:
        html = html.replace(
            '<a href="aula-04.html">⬅ Aula anterior</a>',
            '<a href="aula-04.html">⬅ Aula anterior</a> |\n<a href="aula-06.html">➡ Próxima aula</a>'
        )

    path.write_text(html, encoding="utf-8")
    print("Aula 05 verificada com link para Aula 06.")
else:
    print("AVISO: Aula 05 não encontrada.")
PY

# ==========================================================
# Atualizar cadeiras.html
# ==========================================================

python3 <<'PY'
from pathlib import Path
import re

path = Path("cadeiras.html")
html = path.read_text(encoding="utf-8")

cartao_novo = (
    '<div class="cadeira-card"><h3>📚 Introdução ao Direito II</h3>'
    '<p>6 / 10 aulas concluídas</p>'
    '<span class="badge em-desenvolvimento">🟡 Em desenvolvimento</span>'
    '<br><br><a class="botao" href="cadeiras/cadeira-07-introducao-direito-ii.html">Entrar</a></div>'
)

padrao = (
    r'<div class="cadeira-card"><h3>📚 Introdução ao Direito II</h3>'
    r'<p>.*?</p>'
    r'<span class="badge .*?">.*?</span>'
    r'(?:<br><br><a class="botao" href=".*?">Entrar</a>)?'
    r'</div>'
)

html, n = re.subn(padrao, cartao_novo, html, count=1, flags=re.DOTALL)

if n == 0:
    raise SystemExit("ERRO: não consegui atualizar o cartão de Introdução ao Direito II em cadeiras.html.")

path.write_text(html, encoding="utf-8")
print("cadeiras.html atualizado para 6 / 10.")
PY

# ==========================================================
# Atualizar index.html
# ==========================================================

python3 <<'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

html = html.replace("<strong>65</strong><br>Aulas concluídas", "<strong>66</strong><br>Aulas concluídas")

# 66/180 = 36,7%, arredondado visualmente para 37%
html = html.replace('<div class="progress-bar">36%</div>', '<div class="progress-bar">37%</div>')

path.write_text(html, encoding="utf-8")
print("index.html atualizado para 66 aulas e 37%.")
PY

# ==========================================================
# Git
# ==========================================================

git add .

git commit -m "Adicionar Aula 06 de Introdução ao Direito II" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "Aula 06 criada com sucesso."
echo "Introdução ao Direito II atualizada para 6 / 10."
echo "Total previsto: 66 aulas."
echo "Progresso previsto: 37%."
echo "=========================================="
