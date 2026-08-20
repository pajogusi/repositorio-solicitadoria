#!/bin/bash

# ==========================================================
# Repositório de Solicitadoria
# Cadeira 7: Introdução ao Direito II
# Aula 08: Invalidade dos atos jurídicos
# Autor oficial: Paulo Silva
# Modelo oficial: top-menu, style.css?v=90, main, botão topo
# ==========================================================

set -e

echo "=========================================="
echo "A criar Aula 08 - Invalidade dos atos jurídicos"
echo "=========================================="

mkdir -p aulas/introducao-direito-ii

cat > aulas/introducao-direito-ii/aula-08.html <<'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aula 08 - Invalidade dos atos jurídicos</title>
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

<h1>Aula 08 - Invalidade dos atos jurídicos</h1>

<section class="box">
<h2>Objetivos da Aula</h2>
<ul>
<li>Compreender o conceito de invalidade dos atos jurídicos.</li>
<li>Distinguir validade, eficácia e invalidade.</li>
<li>Conhecer as noções de nulidade e anulabilidade.</li>
<li>Identificar causas frequentes de invalidade.</li>
<li>Perceber as consequências práticas da invalidade.</li>
<li>Aplicar os conceitos a exemplos simples.</li>
</ul>
</section>

<section>
<h2>Introdução</h2>
<p>
Nas aulas anteriores estudámos os atos jurídicos e o negócio jurídico. Agora vamos analisar o que acontece
quando um ato jurídico apresenta problemas que afetam a sua validade.
</p>

<p>
Nem todos os atos praticados pelas pessoas produzem validamente os efeitos pretendidos. O Direito exige
certos requisitos: capacidade, vontade, objeto lícito, forma adequada e respeito pela lei.
</p>

<div class="destaque">
<strong>Ideia principal:</strong><br>
A invalidade ocorre quando um ato jurídico tem um defeito que impede ou compromete a produção normal dos seus efeitos jurídicos.
</div>
</section>

<section>
<h2>Validade e eficácia</h2>
<p>
Antes de estudar a invalidade, é importante distinguir validade e eficácia.
</p>

<p>
Um ato é válido quando respeita os requisitos exigidos pelo Direito. Um ato é eficaz quando produz os
efeitos jurídicos que lhe são próprios.
</p>

<p>
Em regra, um ato válido tende a produzir efeitos. Mas podem existir situações em que um ato válido ainda
não produz efeitos, por depender de condição, termo, registo ou outro requisito de eficácia.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um contrato pode ser válido entre as partes, mas certos efeitos perante terceiros podem depender de registo.
</div>
</section>

<section>
<h2>O que é invalidade?</h2>
<p>
A invalidade é a consequência jurídica de um defeito no ato jurídico.
</p>

<p>
Esse defeito pode estar relacionado com os sujeitos, a vontade, o objeto, a forma ou a finalidade do ato.
Quando o defeito é relevante, o Direito pode impedir que o ato produza os efeitos pretendidos ou permitir
a sua destruição jurídica.
</p>

<p>
A invalidade protege a ordem jurídica, as partes e, em certos casos, terceiros.
</p>
</section>

<section>
<h2>Causas frequentes de invalidade</h2>
<p>
A invalidade pode resultar de várias situações.
</p>

<ul>
<li>Falta de capacidade de uma das partes.</li>
<li>Falta ou vício da vontade.</li>
<li>Objeto impossível, ilícito ou indeterminado.</li>
<li>Falta de forma exigida por lei.</li>
<li>Violação de normas imperativas.</li>
<li>Finalidade contrária à lei, à ordem pública ou aos bons costumes.</li>
</ul>

<div class="destaque">
<strong>Ponto essencial:</strong><br>
Um ato jurídico não basta existir formalmente. Tem de respeitar os requisitos jurídicos exigidos.
</div>
</section>

<section>
<h2>Nulidade</h2>
<p>
A nulidade é uma forma grave de invalidade. Em termos simples, o ato nulo é tratado como não produzindo
validamente os efeitos pretendidos.
</p>

<p>
A nulidade surge normalmente quando o defeito é especialmente sério, como nos casos de objeto ilícito,
violação de normas imperativas ou falta de forma quando a lei a exige como requisito essencial.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um acordo com objeto proibido por lei pode ser nulo.
</div>
</section>

<section>
<h2>Características gerais da nulidade</h2>
<p>
Em termos introdutórios, a nulidade apresenta algumas características importantes:
</p>

<ul>
<li>Pode ser invocada por qualquer interessado, nos termos legalmente admitidos.</li>
<li>Pode ser conhecida oficiosamente pelo tribunal em certos casos.</li>
<li>Não se sana apenas pelo decurso do tempo, salvo regimes especiais.</li>
<li>Impede a produção normal dos efeitos jurídicos pretendidos.</li>
</ul>

<p>
Esta matéria será aprofundada em cadeiras de Direito Civil e Direito das Obrigações.
</p>
</section>

<section>
<h2>Anulabilidade</h2>
<p>
A anulabilidade é outra forma de invalidade, normalmente menos grave do que a nulidade.
</p>

<p>
O ato anulável produz efeitos enquanto não for anulado. Porém, pode ser destruído juridicamente se a
parte legitimada invocar a anulabilidade dentro do prazo aplicável.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um contrato celebrado com vício relevante da vontade pode ser anulável, dependendo das circunstâncias.
</div>
</section>

<section>
<h2>Características gerais da anulabilidade</h2>
<p>
De forma introdutória, a anulabilidade apresenta estas características:
</p>

<ul>
<li>Normalmente só pode ser invocada pela pessoa protegida pela norma violada.</li>
<li>Está sujeita a prazo.</li>
<li>O ato produz efeitos enquanto não for anulado.</li>
<li>Pode, em certos casos, ser confirmado pela parte interessada.</li>
</ul>

<p>
A anulabilidade permite proteger uma parte sem destruir automaticamente todos os efeitos do ato desde o início.
</p>
</section>

<section>
<h2>Nulidade e anulabilidade: diferença essencial</h2>
<p>
A diferença fundamental está na gravidade do defeito e no modo como a invalidade atua.
</p>

<table>
<tr>
<th>Figura</th>
<th>Ideia central</th>
<th>Efeito prático</th>
</tr>
<tr>
<td>Nulidade</td>
<td>Defeito grave</td>
<td>O ato não produz validamente os efeitos pretendidos</td>
</tr>
<tr>
<td>Anulabilidade</td>
<td>Defeito menos grave ou proteção de uma parte</td>
<td>O ato produz efeitos até ser anulado</td>
</tr>
</table>
</section>

<section>
<h2>Falta de capacidade</h2>
<p>
A capacidade dos sujeitos é um requisito essencial em muitos atos jurídicos.
</p>

<p>
Quando uma pessoa não tem capacidade para praticar determinado ato sozinha, pode ser necessária representação,
autorização ou assistência.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um menor pode ser titular de direitos, mas não tem plena capacidade para praticar livremente todos os atos jurídicos.
</div>

<p>
A falta de capacidade pode afetar a validade do ato, conforme o regime aplicável.
</p>
</section>

<section>
<h2>Vícios da vontade</h2>
<p>
A vontade é central nos atos e negócios jurídicos. Se a vontade estiver viciada, o ato pode ter problemas
de validade.
</p>

<p>Exemplos de vícios da vontade:</p>
<ul>
<li>Erro.</li>
<li>Dolo.</li>
<li>Coação.</li>
<li>Medo ou pressão ilegítima, quando juridicamente relevante.</li>
</ul>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Se uma pessoa assina um contrato porque foi enganada sobre um elemento essencial, pode existir um problema de vontade.
</div>
</section>

<section>
<h2>Objeto ilícito ou impossível</h2>
<p>
O objeto do ato jurídico deve ser lícito, possível e determinado ou determinável.
</p>

<p>
Se o objeto for contrário à lei ou impossível de realizar, o ato pode ser inválido.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um contrato que tenha por objeto uma atividade proibida pela lei não pode ser tratado como negócio jurídico válido.
</div>
</section>

<section>
<h2>Falta de forma legal</h2>
<p>
Alguns atos exigem forma especial. Quando a lei impõe uma forma e ela não é respeitada, pode haver invalidade.
</p>

<p>
A forma pode ser exigida para garantir segurança, prova, transparência, proteção das partes ou publicidade
perante terceiros.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Certos atos relativos a imóveis exigem forma documental específica. A falta da forma legalmente exigida
pode comprometer a validade ou eficácia do ato.
</div>
</section>

<section>
<h2>Invalidade e ineficácia</h2>
<p>
Invalidade e ineficácia não são exatamente a mesma coisa.
</p>

<p>
A invalidade resulta de um defeito do ato. A ineficácia significa que o ato não produz efeitos em
determinada situação, perante certas pessoas ou antes de verificado certo requisito.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um ato pode ser válido entre as partes, mas não produzir efeitos perante terceiros enquanto não for registado,
quando a lei exige registo para esse efeito.
</div>
</section>

<section>
<h2>Consequências práticas da invalidade</h2>
<p>
A invalidade pode gerar várias consequências:
</p>

<ul>
<li>Impedir a produção dos efeitos pretendidos.</li>
<li>Permitir a restituição do que foi prestado.</li>
<li>Obrigar à correção ou repetição do ato, quando possível.</li>
<li>Gerar responsabilidade, se houver dano.</li>
<li>Afetar documentos, contratos, registos ou procedimentos.</li>
</ul>

<p>
Na prática, a invalidade pode ter impacto económico e jurídico significativo.
</p>
</section>

<section>
<h2>Exemplo prático orientado</h2>
<div class="exemplo">
<p>
Pedro vendeu a Carla um bem que não podia legalmente ser vendido. Carla pagou o preço, mas depois
descobriu que o objeto do contrato era proibido por lei.
</p>

<ul>
<li><strong>Problema:</strong> objeto ilícito.</li>
<li><strong>Possível consequência:</strong> invalidade do negócio.</li>
<li><strong>Questão prática:</strong> analisar se há lugar à restituição do que foi pago.</li>
<li><strong>Elemento essencial:</strong> verificar a norma que proíbe o objeto.</li>
</ul>
</div>
</section>

<section>
<h2>Importância para a Solicitadoria</h2>
<p>
A invalidade é uma matéria muito importante para a prática jurídica.
</p>

<p>
O solicitador deve saber identificar riscos de invalidade antes de preparar documentos, contratos,
requerimentos, registos ou atos com relevância jurídica.
</p>

<p>
Muitos problemas podem ser evitados com uma verificação prévia:
</p>

<ul>
<li>Quem são os sujeitos?</li>
<li>Têm capacidade?</li>
<li>O objeto é lícito e possível?</li>
<li>A forma exigida foi cumprida?</li>
<li>A vontade foi livre e esclarecida?</li>
</ul>
</section>

<section>
<h2>Erros Frequentes</h2>
<ul>
<li>Confundir nulidade com anulabilidade.</li>
<li>Ignorar a diferença entre validade e eficácia.</li>
<li>Não verificar a capacidade das partes.</li>
<li>Esquecer a forma legal exigida.</li>
<li>Assumir que um documento assinado é sempre válido.</li>
<li>Não analisar se o objeto é lícito, possível e determinado.</li>
</ul>
</section>

<section class="quiz">
<h2>Mini-Quiz</h2>
<ol>
<li>O que é invalidade de um ato jurídico?</li>
<li>Qual é a diferença básica entre nulidade e anulabilidade?</li>
<li>Dá um exemplo de causa de invalidade.</li>
<li>Porque a forma pode ser importante para a validade?</li>
<li>Invalidade e ineficácia são a mesma coisa?</li>
</ol>
</section>

<section class="respostas">
<h2>Respostas Comentadas</h2>
<ol>
<li>É a consequência de um defeito juridicamente relevante no ato.</li>
<li>A nulidade corresponde a defeito mais grave; a anulabilidade permite anular o ato, que produz efeitos enquanto não for anulado.</li>
<li>Falta de capacidade, vício da vontade, objeto ilícito, objeto impossível ou falta de forma exigida.</li>
<li>Porque a lei pode exigir forma especial como requisito de validade, prova ou segurança jurídica.</li>
<li>Não. Invalidade resulta de defeito do ato; ineficácia significa ausência de efeitos em certa situação.</li>
</ol>
</section>

<section>
<h2>Resumo em 5 Pontos</h2>
<ol>
<li>A invalidade resulta de defeitos juridicamente relevantes nos atos jurídicos.</li>
<li>A nulidade é, em regra, uma forma mais grave de invalidade.</li>
<li>A anulabilidade permite destruir juridicamente um ato que produz efeitos enquanto não for anulado.</li>
<li>Capacidade, vontade, objeto e forma são elementos essenciais a verificar.</li>
<li>Na prática jurídica, prevenir a invalidade é tão importante como resolver os seus efeitos.</li>
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
<li>Invalidade dos atos jurídicos.</li>
<li>Nulidade e anulabilidade.</li>
<li>Vícios da vontade.</li>
<li>Forma legal e eficácia dos atos jurídicos.</li>
</ul>
</section>

<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-07-introducao-direito-ii.html">📚 Cadeira</a> |
<a href="aula-07.html">⬅ Aula anterior</a> |
<a href="aula-09.html">➡ Próxima aula</a>
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
    "<li>Aula 08 - Invalidade dos atos jurídicos</li>",
    '<li><a href="../aulas/introducao-direito-ii/aula-08.html">Aula 08 - Invalidade dos atos jurídicos</a></li>'
)

html = html.replace(
    "<p><strong>Progresso da cadeira:</strong> 7 de 10 aulas concluídas</p>",
    "<p><strong>Progresso da cadeira:</strong> 8 de 10 aulas concluídas</p>"
)

path.write_text(html, encoding="utf-8")
print("Página da cadeira atualizada para Aula 08.")
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
    '<p>8 / 10 aulas concluídas</p>'
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
print("cadeiras.html atualizado para 8 / 10.")
PY

# ==========================================================
# Atualizar index.html
# ==========================================================

python3 <<'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

html = html.replace("<strong>67</strong><br>Aulas concluídas", "<strong>68</strong><br>Aulas concluídas")

# 68/180 = 37,7%, arredondado para 38%
html = html.replace('<div class="progress-bar">37%</div>', '<div class="progress-bar">38%</div>')

path.write_text(html, encoding="utf-8")
print("index.html atualizado para 68 aulas e 38%.")
PY

# ==========================================================
# Git
# ==========================================================

git add .

git commit -m "Adicionar Aula 08 de Introdução ao Direito II" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "Aula 08 criada com sucesso."
echo "Introdução ao Direito II atualizada para 8 / 10."
echo "Total previsto: 68 aulas."
echo "Progresso previsto: 38%."
echo "=========================================="
