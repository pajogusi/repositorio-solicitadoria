#!/bin/bash

# ==========================================================
# Repositório de Solicitadoria
# Cadeira 7: Introdução ao Direito II
# Aula 01: Revisão da estrutura do sistema jurídico
# Autor oficial: Paulo Silva
# Modelo oficial: top-menu, style.css?v=90, main, botão topo
# ==========================================================

set -e

echo "=========================================="
echo "A criar Cadeira 7 - Introdução ao Direito II"
echo "Aula 01 - Revisão da estrutura do sistema jurídico"
echo "=========================================="

mkdir -p aulas/introducao-direito-ii

# ==========================================================
# Página da cadeira
# ==========================================================

cat > cadeiras/cadeira-07-introducao-direito-ii.html <<'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>Introdução ao Direito II</title>
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

<h1>Introdução ao Direito II</h1>

<section class="box">
<h2>Apresentação da Cadeira</h2>
<p>
A cadeira de Introdução ao Direito II dá continuidade ao estudo iniciado em Introdução ao Direito I,
aprofundando conceitos fundamentais da teoria geral do Direito e da relação jurídica.
</p>

<p>
Nesta cadeira serão estudados temas como a relação jurídica, os seus sujeitos, o objeto, os factos
jurídicos, os atos jurídicos, o negócio jurídico e a invalidade dos atos jurídicos.
</p>
</section>

<section>
<h2>Objetivos da Cadeira</h2>
<ul>
<li>Consolidar conhecimentos fundamentais sobre o sistema jurídico.</li>
<li>Compreender o conceito de relação jurídica.</li>
<li>Identificar sujeitos, objeto e conteúdo da relação jurídica.</li>
<li>Distinguir factos jurídicos, atos jurídicos e negócios jurídicos.</li>
<li>Compreender noções básicas de validade e invalidade dos atos jurídicos.</li>
<li>Aplicar os conceitos estudados a casos práticos simples.</li>
</ul>
</section>

<section>
<h2>Aulas</h2>
<ol>
<li><a href="../aulas/introducao-direito-ii/aula-01.html">Aula 01 - Revisão da estrutura do sistema jurídico</a></li>
<li>Aula 02 - Relação jurídica</li>
<li>Aula 03 - Sujeitos da relação jurídica</li>
<li>Aula 04 - Objeto da relação jurídica</li>
<li>Aula 05 - Factos jurídicos</li>
<li>Aula 06 - Atos jurídicos</li>
<li>Aula 07 - Negócio jurídico</li>
<li>Aula 08 - Invalidade dos atos jurídicos</li>
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
<a href="../aulas/introducao-direito-ii/aula-01.html">📘 Aula 01</a>
</nav>

</main>

<a href="#" class="back-to-top">↑ Topo</a>
</body>
</html>
EOF

# ==========================================================
# Aula 01
# ==========================================================

cat > aulas/introducao-direito-ii/aula-01.html <<'EOF'
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aula 01 - Revisão da estrutura do sistema jurídico</title>
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

<h1>Aula 01 - Revisão da estrutura do sistema jurídico</h1>

<section class="box">
<h2>Objetivos da Aula</h2>
<ul>
<li>Rever o conceito geral de Direito.</li>
<li>Recordar a função das normas jurídicas.</li>
<li>Compreender a organização básica do sistema jurídico.</li>
<li>Rever a distinção entre Direito público e Direito privado.</li>
<li>Preparar a entrada no estudo da relação jurídica.</li>
</ul>
</section>

<section>
<h2>Introdução</h2>
<p>
Antes de avançar para os temas próprios de Introdução ao Direito II, é importante rever a estrutura
essencial do sistema jurídico.
</p>

<p>
O Direito não é apenas um conjunto disperso de normas. É um sistema organizado de regras, princípios,
instituições e mecanismos de aplicação, destinado a regular a vida em sociedade.
</p>

<p>
Esta revisão serve de ponte entre Introdução ao Direito I e os novos temas desta cadeira, especialmente
a relação jurídica, os factos jurídicos, os atos jurídicos e o negócio jurídico.
</p>
</section>

<section>
<h2>O Direito como sistema</h2>
<p>
O Direito funciona como um sistema porque as normas jurídicas não existem isoladamente. Elas relacionam-se
entre si e integram uma ordem jurídica.
</p>

<p>
Uma norma sobre contratos, por exemplo, não deve ser lida sem ligação às regras gerais do Direito Civil,
aos princípios da boa-fé, à capacidade das partes e às consequências do incumprimento.
</p>

<div class="destaque">
<strong>Ideia principal:</strong><br>
O sistema jurídico organiza normas, princípios e instituições para regular relações sociais e resolver conflitos.
</div>
</section>

<section>
<h2>Normas jurídicas</h2>
<p>
A norma jurídica é uma regra de conduta reconhecida pela ordem jurídica. Define comportamentos,
atribui direitos, impõe deveres ou estabelece consequências.
</p>

<p>
As normas jurídicas distinguem-se de outras normas sociais porque estão ligadas à autoridade do Estado
e podem ser aplicadas coercivamente.
</p>

<p>Uma norma jurídica pode:</p>

<ul>
<li>Permitir uma conduta.</li>
<li>Proibir uma conduta.</li>
<li>Impor uma obrigação.</li>
<li>Atribuir um direito.</li>
<li>Definir uma consequência jurídica.</li>
</ul>
</section>

<section>
<h2>Ordem jurídica</h2>
<p>
A ordem jurídica é o conjunto organizado de normas e princípios que regulam uma sociedade em determinado
momento histórico.
</p>

<p>
Em Portugal, a ordem jurídica inclui a Constituição, as leis, os regulamentos, os tratados internacionais,
o Direito da União Europeia e outras fontes reconhecidas pelo sistema jurídico.
</p>

<p>
A ordem jurídica procura garantir segurança, previsibilidade e justiça nas relações sociais.
</p>
</section>

<section>
<h2>Hierarquia das normas</h2>
<p>
As normas jurídicas não têm todas o mesmo valor. Existe uma hierarquia normativa.
</p>

<p>
No topo encontra-se a Constituição, que é a lei fundamental do Estado. As restantes normas devem
respeitar a Constituição.
</p>

<ul>
<li><strong>Constituição:</strong> lei fundamental.</li>
<li><strong>Direito da União Europeia:</strong> normas aplicáveis no quadro da União Europeia.</li>
<li><strong>Leis e decretos-leis:</strong> normas legislativas internas.</li>
<li><strong>Regulamentos:</strong> normas de execução e administração.</li>
<li><strong>Atos individuais:</strong> decisões aplicadas a casos concretos.</li>
</ul>

<div class="exemplo">
<strong>Exemplo:</strong><br>
Um regulamento municipal não pode contrariar uma lei, e uma lei não pode contrariar a Constituição.
</div>
</section>

<section>
<h2>Direito público e Direito privado</h2>
<p>
Uma das grandes divisões do Direito é a distinção entre Direito público e Direito privado.
</p>

<h3>Direito público</h3>
<p>
O Direito público regula relações em que intervém o Estado ou outras entidades públicas no exercício
de poderes de autoridade.
</p>

<p>Exemplos:</p>
<ul>
<li>Direito Constitucional.</li>
<li>Direito Administrativo.</li>
<li>Direito Fiscal.</li>
<li>Direito Penal.</li>
</ul>

<h3>Direito privado</h3>
<p>
O Direito privado regula relações entre particulares ou entidades colocadas em posição de igualdade jurídica.
</p>

<p>Exemplos:</p>
<ul>
<li>Direito Civil.</li>
<li>Direito Comercial.</li>
<li>Direito das Obrigações.</li>
<li>Direito das Coisas.</li>
</ul>
</section>

<section>
<h2>Relações jurídicas</h2>
<p>
O Direito regula relações entre pessoas, entidades e bens. Quando uma relação social é reconhecida e
disciplinada pelo Direito, pode transformar-se numa relação jurídica.
</p>

<p>
Por exemplo, uma compra e venda não é apenas uma troca económica. Juridicamente, cria direitos e deveres:
o vendedor deve entregar a coisa e o comprador deve pagar o preço.
</p>

<div class="destaque">
<strong>Ponto de ligação com a próxima aula:</strong><br>
A relação jurídica será o tema central da Aula 02.
</div>
</section>

<section>
<h2>Importância para a Solicitadoria</h2>
<p>
O solicitador trabalha com normas, documentos, contratos, registos, processos, dívidas, bens e relações
entre pessoas.
</p>

<p>
Por isso, precisa de compreender não apenas normas isoladas, mas também a estrutura do sistema jurídico
e a forma como as relações jurídicas se formam, produzem efeitos e se extinguem.
</p>
</section>

<section>
<h2>Erros Frequentes</h2>
<ul>
<li>Pensar que o Direito é apenas memorização de leis.</li>
<li>Ignorar a hierarquia das normas.</li>
<li>Confundir Direito público com Direito privado.</li>
<li>Analisar normas sem olhar para o sistema em que se inserem.</li>
<li>Não perceber que uma relação social pode produzir efeitos jurídicos.</li>
</ul>
</section>

<section class="quiz">
<h2>Mini-Quiz</h2>
<ol>
<li>O que significa dizer que o Direito é um sistema?</li>
<li>O que é uma norma jurídica?</li>
<li>Qual é a norma que ocupa o topo da hierarquia normativa em Portugal?</li>
<li>Qual é a diferença básica entre Direito público e Direito privado?</li>
<li>Porque a noção de relação jurídica é importante para a Solicitadoria?</li>
</ol>
</section>

<section class="respostas">
<h2>Respostas Comentadas</h2>
<ol>
<li>Significa que as normas, princípios e instituições se relacionam de forma organizada.</li>
<li>É uma regra de conduta reconhecida pela ordem jurídica, podendo impor deveres, atribuir direitos ou estabelecer consequências.</li>
<li>A Constituição.</li>
<li>O Direito público regula relações com intervenção do Estado em posição de autoridade; o Direito privado regula relações entre particulares em igualdade jurídica.</li>
<li>Porque a atividade do solicitador envolve contratos, direitos, deveres, bens, dívidas, registos e outras relações juridicamente relevantes.</li>
</ol>
</section>

<section>
<h2>Resumo em 5 Pontos</h2>
<ol>
<li>O Direito é um sistema organizado de normas, princípios e instituições.</li>
<li>As normas jurídicas regulam comportamentos e produzem consequências jurídicas.</li>
<li>A Constituição ocupa o topo da hierarquia normativa.</li>
<li>O Direito divide-se, entre outras formas, em Direito público e Direito privado.</li>
<li>A relação jurídica será o ponto de partida para compreender muitos efeitos jurídicos.</li>
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
<li>Teoria geral do Direito.</li>
<li>Fontes do Direito e hierarquia normativa.</li>
<li>Distinção entre Direito público e Direito privado.</li>
<li>Introdução ao estudo da relação jurídica.</li>
</ul>
</section>

<hr>

<nav>
<a href="../../index.html">🏠 Início</a> |
<a href="../../cadeiras/cadeira-07-introducao-direito-ii.html">📚 Cadeira</a> |
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
    '<div class="cadeira-card"><h3>📚 Introdução ao Direito II</h3>'
    '<p>1 / 10 aulas concluídas</p>'
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
print("cadeiras.html atualizado com Introdução ao Direito II.")
PY

# ==========================================================
# Atualizar index.html
# ==========================================================

python3 <<'PY'
from pathlib import Path

path = Path("index.html")
html = path.read_text(encoding="utf-8")

# 61 aulas
html = html.replace("<strong>60</strong><br>Aulas concluídas", "<strong>61</strong><br>Aulas concluídas")

# Semestres iniciados continua 2 / 6 agora, porque iniciámos o 2.º semestre
html = html.replace("<strong>1 / 6</strong><br>Semestres iniciados", "<strong>2 / 6</strong><br>Semestres iniciados")

# Progresso aproximado: 61/180 = 33.8%, arredondado visualmente para 34%
html = html.replace('<div class="progress-bar">33%</div>', '<div class="progress-bar">34%</div>')

path.write_text(html, encoding="utf-8")
print("index.html atualizado: 61 aulas, 2 / 6 semestres, 34%.")
PY

# ==========================================================
# Git
# ==========================================================

git add .

git commit -m "Iniciar 2 semestre com Introdução ao Direito II Aula 01" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "2.º semestre iniciado."
echo "Introdução ao Direito II criada."
echo "Aula 01 criada."
echo "Total previsto: 61 aulas."
echo "Progresso previsto: 34%."
echo "=========================================="
