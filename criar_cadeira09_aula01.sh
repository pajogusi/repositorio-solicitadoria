#!/bin/bash

# ==========================================================
# Repositório de Solicitadoria
# Cadeira 9: Direito Administrativo I
# Aula 01: O que é o Direito Administrativo
# Autor oficial: Paulo Silva
# Modelo oficial: top-menu, style.css?v=90, main, botão topo
# ==========================================================

set -e

echo "=========================================="
echo "A criar Cadeira 9 - Direito Administrativo I"
echo "Aula 01 - O que é o Direito Administrativo"
echo "=========================================="

mkdir -p aulas/direito-administrativo-i

# ==========================================================
# Página da cadeira
# ==========================================================

cat > cadeiras/cadeira-09-direito-administrativo-i.html <<'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Direito Administrativo I</title>
<link rel="stylesheet" href="../style.css?v=90">
<link rel="icon" type="image/svg+xml" href="../assets/favicon.svg">
</head>
<body>
<main>

<nav class="top-menu">
<a href="../index.html">🏠 Início</a>
<a href="../cadeiras.html">📚 Plano de Estudos</a>
<a href="../biblioteca/codigos-juridicos.html">⚖ Biblioteca</a>
<a href="../glossario/index.html">📖 Glossário</a>
<a href="../casos/index.html">🧩 Casos</a>
<a href="../quiz-interativo.html">🎯 Quiz</a>
<a href="../paginas/sobre.html">ℹ Sobre</a>
<a href="../paginas/contacto.html">📧 Contacto</a>
<a href="../paginas/mapa.html">🗺 Mapa</a>
<a href="../paginas/aviso-legal.html">⚖ Aviso Legal</a>
</nav>

<h1>Direito Administrativo I</h1>

<section class="box">
<h2>Apresentação da Cadeira</h2>
<p>
A cadeira de Direito Administrativo I introduz o estudo da Administração Pública, da sua organização,
dos seus princípios fundamentais e das principais formas de atuação administrativa.
</p>

<p>
O Direito Administrativo regula a atividade administrativa do Estado e de outras entidades públicas,
especialmente quando atuam na prossecução do interesse público.
</p>
</section>

<section>
<h2>Objetivos da Cadeira</h2>
<ul>
<li>Compreender o conceito de Direito Administrativo.</li>
<li>Conhecer a noção de Administração Pública.</li>
<li>Identificar os princípios fundamentais da atividade administrativa.</li>
<li>Distinguir órgãos, serviços e agentes administrativos.</li>
<li>Compreender o poder administrativo e a prossecução do interesse público.</li>
<li>Introduzir os conceitos de ato administrativo, regulamento administrativo e procedimento administrativo.</li>
<li>Aplicar os conceitos estudados a situações práticas simples.</li>
</ul>
</section>

<section>
<h2>Aulas</h2>
<ol>
<li><a href="../aulas/direito-administrativo-i/aula-01.html">Aula 01 - O que é o Direito Administrativo</a></li>
<li>Aula 02 - Administração Pública</li>
<li>Aula 03 - Princípios da atividade administrativa</li>
<li>Aula 04 - Órgãos, serviços e agentes administrativos</li>
<li>Aula 05 - Poder administrativo e interesse público</li>
<li>Aula 06 - Ato administrativo</li>
<li>Aula 07 - Regulamento administrativo</li>
<li>Aula 08 - Procedimento administrativo</li>
<li>Aula 09 - Caso prático orientado</li>
<li>Aula 10 - Revisão geral e quiz final</li>
</ol>
</section>

<section>
<h2>Estado</h2>
<p><strong>Em desenvolvimento.</strong></p>
<p><strong>Progresso da cadeira:</strong> 1 de 10 aulas concluídas</p>
<span class="badge em-desenvolvimento">🟡 Em desenvolvimento</span>
</section>

<hr>

<nav>
<a href="../index.html">🏠 Início</a> |
<a href="../cadeiras.html">📚 Plano de Estudos</a> |
<a href="../aulas/direito-administrativo-i/aula-01.html">📘 Aula 01</a>
</nav>

</main>

<a href="#" class="back-to-top">↑ Topo</a>
</body>
</html>
EOF

# ==========================================================
# Aula 01
# ==========================================================

cat > aulas/direito-administrativo-i/aula-01.html <<'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aula 01 - O que é o Direito Administrativo</title>
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

<h1>Aula 01 - O que é o Direito Administrativo</h1>

<section class="box">
<h2>Objetivos da Aula</h2>
<ul>
<li>Compreender o conceito de Direito Administrativo.</li>
<li>Perceber a relação entre Administração Pública e interesse público.</li>
<li>Distinguir Direito Administrativo de outros ramos do Direito.</li>
<li>Identificar exemplos práticos de atuação administrativa.</li>
<li>Compreender a importância do Direito Administrativo para a Solicitadoria.</li>
</ul>
</section>

<section>
<h2>Introdução</h2>
<p>
O Direito Administrativo é o ramo do Direito que regula a organização, funcionamento e atividade da Administração Pública.
</p>

<p>
Sempre que o Estado, uma autarquia, um instituto público ou outra entidade administrativa atua para prosseguir
o interesse público, pode surgir uma questão de Direito Administrativo.
</p>

<div class="destaque">
<strong>Ideia principal:</strong><br>
O Direito Administrativo regula a Administração Pública quando esta atua para realizar o interesse público, dentro dos limites da lei.
</div>
</section>

<section>
<h2>O que é a Administração Pública?</h2>
<p>
A Administração Pública é o conjunto de entidades, órgãos, serviços e agentes que atuam para satisfazer
necessidades coletivas e prosseguir o interesse público.
</p>

<p>
Inclui, por exemplo, ministérios, municípios, freguesias, institutos públicos, serviços administrativos,
autoridades administrativas e outras entidades que exercem funções públicas.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Quando uma câmara municipal licencia uma obra, atribui uma licença de ocupação da via pública ou aplica
uma contraordenação, está a exercer atividade administrativa.
</div>
</section>

<section>
<h2>O que é o Direito Administrativo?</h2>
<p>
O Direito Administrativo é o conjunto de normas e princípios que regulam a Administração Pública na sua
organização, funcionamento, poderes, deveres, procedimentos e relações com os particulares.
</p>

<p>
Este ramo do Direito procura equilibrar duas necessidades:
</p>

<ul>
<li>Permitir que a Administração realize o interesse público.</li>
<li>Proteger os direitos e interesses legalmente protegidos dos cidadãos.</li>
</ul>
</section>

<section>
<h2>Interesse público</h2>
<p>
O interesse público é a finalidade que justifica a atuação da Administração Pública.
</p>

<p>
A Administração não deve atuar para interesses pessoais, partidários, arbitrários ou privados. Deve atuar para
satisfazer necessidades coletivas definidas pela ordem jurídica.
</p>

<div class="destaque">
<strong>Ponto essencial:</strong><br>
A Administração Pública existe para servir o interesse público, mas deve fazê-lo respeitando a lei e os direitos dos cidadãos.
</div>
</section>

<section>
<h2>Administração Pública e cidadãos</h2>
<p>
O Direito Administrativo aparece muitas vezes na relação entre cidadãos e entidades públicas.
</p>

<p>Exemplos:</p>
<ul>
<li>Pedido de licença de construção.</li>
<li>Processo de contraordenação.</li>
<li>Reclamação contra uma decisão administrativa.</li>
<li>Pedido de certidão.</li>
<li>Inscrição em serviço público.</li>
<li>Concurso público.</li>
<li>Urbanismo, ambiente, saúde, educação ou segurança social.</li>
</ul>
</section>

<section>
<h2>Administração Pública e empresas</h2>
<p>
As empresas também se relacionam frequentemente com a Administração Pública.
</p>

<p>Exemplos:</p>
<ul>
<li>Licenciamentos.</li>
<li>Autorizações administrativas.</li>
<li>Contratação pública.</li>
<li>Fiscalizações.</li>
<li>Regulação económica.</li>
<li>Contraordenações.</li>
<li>Apoios públicos e fundos.</li>
</ul>

<p>
Por isso, o Direito Administrativo é fundamental para a vida económica e institucional.
</p>
</section>

<section>
<h2>Direito Administrativo e Direito Constitucional</h2>
<p>
O Direito Administrativo está muito ligado ao Direito Constitucional.
</p>

<p>
A Constituição define princípios fundamentais do Estado, da Administração Pública, dos direitos dos cidadãos
e do controlo da atuação pública.
</p>

<p>
O Direito Administrativo concretiza muitos desses princípios na atividade quotidiana da Administração.
</p>
</section>

<section>
<h2>Direito Administrativo e Direito Civil</h2>
<p>
O Direito Civil regula muitas relações entre particulares em posição de igualdade jurídica.
</p>

<p>
O Direito Administrativo, por sua vez, regula frequentemente relações em que a Administração atua com poderes
de autoridade pública.
</p>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Uma compra e venda entre particulares é matéria de Direito Civil. Uma licença administrativa para construir
é matéria de Direito Administrativo.
</div>
</section>

<section>
<h2>Poderes da Administração</h2>
<p>
A Administração Pública pode ter poderes especiais para prosseguir o interesse público.
</p>

<p>
Esses poderes podem incluir:
</p>

<ul>
<li>Emitir atos administrativos.</li>
<li>Aprovar regulamentos administrativos.</li>
<li>Conceder licenças ou autorizações.</li>
<li>Fiscalizar atividades.</li>
<li>Aplicar sanções administrativas.</li>
<li>Executar decisões, nos termos da lei.</li>
</ul>

<p>
Mas estes poderes não são ilimitados.
</p>
</section>

<section>
<h2>Limites da Administração</h2>
<p>
A Administração Pública está sujeita à lei e aos princípios fundamentais da atividade administrativa.
</p>

<p>
Entre os limites mais importantes estão:
</p>

<ul>
<li>Legalidade.</li>
<li>Igualdade.</li>
<li>Proporcionalidade.</li>
<li>Justiça.</li>
<li>Imparcialidade.</li>
<li>Boa-fé.</li>
<li>Proteção dos direitos dos particulares.</li>
</ul>
</section>

<section>
<h2>Legalidade administrativa</h2>
<p>
A Administração não pode agir apenas porque quer. Deve ter fundamento legal para atuar.
</p>

<p>
O princípio da legalidade significa que a Administração Pública está subordinada à Constituição, à lei
e ao Direito.
</p>

<div class="destaque">
<strong>Ideia simples:</strong><br>
No Direito Administrativo, o poder público só é legítimo quando é exercido dentro dos limites da lei.
</div>
</section>

<section>
<h2>Atividade administrativa</h2>
<p>
A atividade administrativa pode assumir várias formas.
</p>

<ul>
<li><strong>Atos administrativos:</strong> decisões concretas da Administração.</li>
<li><strong>Regulamentos administrativos:</strong> normas gerais aprovadas pela Administração.</li>
<li><strong>Contratos administrativos:</strong> acordos com regime público específico.</li>
<li><strong>Operações materiais:</strong> atuações práticas da Administração.</li>
<li><strong>Procedimentos administrativos:</strong> sequência de atos que conduz a uma decisão.</li>
</ul>
</section>

<section>
<h2>Exemplo prático simples</h2>
<div class="exemplo">
<p>
João pede à câmara municipal uma licença para realizar obras na sua casa. A câmara analisa o pedido,
consulta os serviços técnicos e decide deferir ou indeferir a licença.
</p>

<p>
Neste caso, estamos perante uma relação jurídico-administrativa entre João e a Administração.
</p>

<ul>
<li><strong>Particular:</strong> João.</li>
<li><strong>Entidade administrativa:</strong> câmara municipal.</li>
<li><strong>Matéria:</strong> licenciamento urbanístico.</li>
<li><strong>Decisão possível:</strong> ato administrativo.</li>
</ul>
</div>
</section>

<section>
<h2>Controlo da Administração</h2>
<p>
A Administração Pública pode ser controlada de várias formas.
</p>

<ul>
<li>Controlo administrativo interno.</li>
<li>Reclamações e recursos administrativos.</li>
<li>Controlo pelos tribunais administrativos.</li>
<li>Fiscalização por entidades independentes.</li>
<li>Controlo político e financeiro, quando aplicável.</li>
</ul>

<p>
Este controlo é essencial para evitar arbitrariedade e proteger os cidadãos.
</p>
</section>

<section>
<h2>Importância para a Solicitadoria</h2>
<p>
O Direito Administrativo é muito importante para a Solicitadoria.
</p>

<p>
O solicitador pode intervir em matérias como licenças, requerimentos, reclamações, recursos administrativos,
urbanismo, contraordenações, contratação pública, registos, certidões e relações entre particulares e entidades públicas.
</p>

<p>
Saber interpretar uma decisão administrativa, cumprir prazos e preparar requerimentos claros é essencial.
</p>
</section>

<section>
<h2>Erros Frequentes</h2>
<ul>
<li>Pensar que Direito Administrativo é apenas estudo de repartições públicas.</li>
<li>Confundir Administração Pública com Governo.</li>
<li>Ignorar que a Administração está subordinada à lei.</li>
<li>Não distinguir interesse público de interesse privado.</li>
<li>Assumir que uma decisão administrativa não pode ser contestada.</li>
</ul>
</section>

<section class="quiz">
<h2>Mini-Quiz</h2>
<ol>
<li>O que é o Direito Administrativo?</li>
<li>O que é a Administração Pública?</li>
<li>Qual é a finalidade principal da Administração Pública?</li>
<li>Porque o princípio da legalidade é importante?</li>
<li>Dá um exemplo de situação prática de Direito Administrativo.</li>
</ol>
</section>

<section class="respostas">
<h2>Respostas Comentadas</h2>
<ol>
<li>É o ramo do Direito que regula a organização, funcionamento e atividade da Administração Pública.</li>
<li>É o conjunto de entidades, órgãos, serviços e agentes que atuam para prosseguir o interesse público.</li>
<li>Prosseguir o interesse público, respeitando a lei e os direitos dos cidadãos.</li>
<li>Porque impede a Administração de atuar arbitrariamente e exige fundamento legal para a atuação pública.</li>
<li>Pedido de licença, contraordenação, reclamação administrativa, pedido de certidão ou concurso público.</li>
</ol>
</section>

<section>
<h2>Resumo em 5 Pontos</h2>
<ol>
<li>O Direito Administrativo regula a Administração Pública.</li>
<li>A Administração Pública atua para prosseguir o interesse público.</li>
<li>A atuação administrativa deve respeitar a lei e os direitos dos cidadãos.</li>
<li>A Administração pode emitir atos, regulamentos e decisões com efeitos jurídicos.</li>
<li>O Direito Administrativo é essencial para lidar com entidades públicas na prática jurídica.</li>
</ol>
</section>

<section>
<h2>⚖ Base Legal e Ligações Oficiais</h2>
<ul>
<li><a href="https://diariodarepublica.pt/" target="_blank">Diário da República</a></li>
<li><a href="https://www.pgdlisboa.pt/leis/lei_main.php" target="_blank">Procuradoria-Geral Distrital de Lisboa — Legislação</a></li>
<li><a href="https://www.dgsi.pt/" target="_blank">DGSI — Jurisprudência</a></li>
<li><a href="../../biblioteca/codigos-juridicos.html">Biblioteca Jurídica do Repositório</a></li>
</ul>
</section>

<section>
<h2>📚 Leitura Recomendada</h2>
<ul>
<li>Introdução ao Direito Administrativo.</li>
<li>Administração Pública e interesse público.</li>
<li>Princípio da legalidade administrativa.</li>
<li>Atos administrativos e procedimento administrativo.</li>
</ul>
</section>

<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-09-direito-administrativo-i.html">📚 Cadeira</a> |
<a href="aula-02.html">➡ Próxima aula</a>
</nav>

</main>

<a href="#" class="back-to-top">↑ Topo</a>
</body>
</html>
EOF

# ==========================================================
# Atualizar cadeiras.html
# ==========================================================

python3 <<'PY'
from pathlib import Path
import re

path = Path("cadeiras.html")
html = path.read_text(encoding="utf-8")

cartao_novo = (
    '<div class="cadeira-card"><h3>📚 Direito Administrativo I</h3>'
    '<p>1 / 10 aulas concluídas</p>'
    '<span class="badge em-desenvolvimento">🟡 Em desenvolvimento</span>'
    '<br><br><a class="botao" href="cadeiras/cadeira-09-direito-administrativo-i.html">Entrar</a></div>'
)

padrao = (
    r'<div class="cadeira-card"><h3>📚 Direito Administrativo I</h3>'
    r'<p>.*?</p>'
    r'<span class="badge .*?">.*?</span>'
    r'(?:<br><br><a class="botao" href=".*?">Entrar</a>)?'
    r'</div>'
)

html, n = re.subn(padrao, cartao_novo, html, count=1, flags=re.DOTALL)

if n == 0:
    raise SystemExit("ERRO: não consegui atualizar o cartão de Direito Administrativo I em cadeiras.html.")

path.write_text(html, encoding="utf-8")
print("cadeiras.html atualizado com Direito Administrativo I.")
PY

# ==========================================================
# Atualizar index.html
# ==========================================================

python3 <<'PY'
from pathlib import Path
import re

path = Path("index.html")
html = path.read_text(encoding="utf-8")

html = re.sub(
    r'<div class="stat-card"><strong>\d+ / 380</strong><br>Aulas concluídas</div>',
    '<div class="stat-card"><strong>81 / 380</strong><br>Aulas concluídas</div>',
    html,
    count=1
)

# 81/380 = 21,3%, mantém 21%
path.write_text(html, encoding="utf-8")
print("index.html atualizado para 81 / 380 aulas.")
PY

# ==========================================================
# Git
# ==========================================================

git add aulas/direito-administrativo-i/aula-01.html \
        cadeiras/cadeira-09-direito-administrativo-i.html \
        cadeiras.html \
        index.html

git commit -m "Iniciar Direito Administrativo I com Aula 01" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "Direito Administrativo I criada."
echo "Aula 01 criada."
echo "Total: 81 / 380 aulas."
echo "Progresso mantém 21%."
echo "=========================================="
