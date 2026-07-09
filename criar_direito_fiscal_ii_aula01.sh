#!/usr/bin/env bash
set -euo pipefail

cd ~/universidade-da-vida-direito

if [[ -n "$(git status --short)" ]]; then
  echo "ERRO: O Git não está limpo. Resolve primeiro:"
  git status --short
  exit 1
fi

mkdir -p aulas/direito-fiscal-ii

cat > cadeiras/cadeira-21-direito-fiscal-ii.html <<'HTML'
<!DOCTYPE html>
<html lang="pt-PT">
<head>
  <meta charset="UTF-8">
  <title>Direito Fiscal II | Repositório de Solicitadoria</title>
  <link rel="stylesheet" href="../style.css?v=90">
</head>
<body id="topo">

<header>
  <h1>Direito Fiscal II</h1>
  <p>2.º Ano — 2.º Semestre | 108h totais | 50h de contacto | 4 ECTS</p>
</header>

<nav class="top-menu">
  <a href="../index.html">Início</a>
  <a href="../cadeiras.html">Cadeiras</a>
  <a href="../paginas/mapa.html">Mapa</a>
  <a href="../paginas/biblioteca.html">Biblioteca</a>
</nav>

<main>

<section>
  <h2>1. Apresentação da Cadeira</h2>
  <p>
    Direito Fiscal II dá continuidade ao estudo iniciado em Direito Fiscal I, passando da compreensão geral do sistema fiscal para uma análise mais aplicada dos principais impostos, da relação jurídico-tributária e dos meios de reação dos contribuintes.
  </p>
  <p>
    A cadeira é essencial para a formação em Solicitadoria porque muitos atos da vida civil, comercial, patrimonial e sucessória têm impacto fiscal: compra e venda de imóveis, arrendamento, atividade empresarial, transmissão de bens, rendimentos pessoais, sociedades e cobrança coerciva de dívidas fiscais.
  </p>
</section>

<section>
  <h2>2. Objetivos da Cadeira</h2>
  <ul>
    <li>Compreender a estrutura do sistema fiscal português.</li>
    <li>Identificar os principais impostos: IRS, IRC, IVA, IMT, IMI, Imposto do Selo e benefícios fiscais.</li>
    <li>Relacionar factos jurídicos com consequências tributárias.</li>
    <li>Distinguir liquidação, cobrança, pagamento, incumprimento e execução fiscal.</li>
    <li>Conhecer os principais direitos e garantias dos contribuintes.</li>
    <li>Preparar a leitura prática da legislação fiscal aplicável a casos concretos.</li>
  </ul>
</section>

<section>
  <h2>3. Competências a Desenvolver</h2>
  <ul>
    <li>Leitura orientada de normas fiscais.</li>
    <li>Identificação do sujeito passivo e do facto tributário.</li>
    <li>Reconhecimento de obrigações declarativas e de pagamento.</li>
    <li>Análise de situações simples de tributação pessoal, empresarial e patrimonial.</li>
    <li>Compreensão dos mecanismos de reclamação, impugnação e execução fiscal.</li>
  </ul>
</section>

<section>
  <h2>4. Programa Geral</h2>
  <ol>
    <li>Revisão estrutural do sistema fiscal português.</li>
    <li>Relação jurídico-tributária, sujeitos e obrigações fiscais.</li>
    <li>IRS: incidência, categorias de rendimentos e noções essenciais.</li>
    <li>IRC: sujeitos passivos, lucro tributável e enquadramento das sociedades.</li>
    <li>IVA: operações tributáveis, sujeitos passivos, isenções e deduções.</li>
    <li>Tributação do património: IMI, IMT e Imposto do Selo.</li>
    <li>Benefícios fiscais e regimes especiais.</li>
    <li>Procedimento tributário e garantias dos contribuintes.</li>
    <li>Processo tributário, execução fiscal e oposição.</li>
    <li>Revisão global e casos práticos integrados.</li>
  </ol>
</section>

<section>
  <h2>5. Metodologia</h2>
  <p>
    A cadeira será estudada com uma abordagem prática: conceitos essenciais, base legal, exemplos, erros comuns, perguntas de exame e mini-quizzes. O objetivo não é decorar artigos, mas aprender a localizar, interpretar e aplicar a norma fiscal certa.
  </p>
</section>

<section>
  <h2>6. Avaliação no Repositório</h2>
  <ul>
    <li>10 aulas sequenciais.</li>
    <li>Mini-quiz em cada aula.</li>
    <li>Casos práticos progressivos.</li>
    <li>Quiz final da cadeira.</li>
    <li>Revisão final antes da passagem para a cadeira seguinte.</li>
  </ul>
</section>

<section>
  <h2>7. Plano das 10 Aulas</h2>
  <ol>
    <li><a href="../aulas/direito-fiscal-ii/aula-01.html">Aula 01 — Sistema fiscal português e ponte com Direito Fiscal I</a></li>
    <li>Aula 02 — Sujeitos, residência fiscal e incidência</li>
    <li>Aula 03 — IRS: categorias de rendimentos e estrutura geral</li>
    <li>Aula 04 — IRC: sociedades, lucro tributável e obrigações fiscais</li>
    <li>Aula 05 — IVA: operações tributáveis, isenções e dedução</li>
    <li>Aula 06 — IMI, IMT e Imposto do Selo</li>
    <li>Aula 07 — Benefícios fiscais e regimes especiais</li>
    <li>Aula 08 — Procedimento tributário e garantias dos contribuintes</li>
    <li>Aula 09 — Processo tributário, execução fiscal e oposição</li>
    <li>Aula 10 — Casos práticos integrados e revisão final</li>
  </ol>
</section>

<section>
  <h2>8. Base Legal Essencial</h2>
  <ul>
    <li>Constituição da República Portuguesa — princípios fiscais fundamentais.</li>
    <li>Lei Geral Tributária.</li>
    <li>Código de Procedimento e de Processo Tributário.</li>
    <li>Código do IRS.</li>
    <li>Código do IRC.</li>
    <li>Código do IVA.</li>
    <li>Código do IMI.</li>
    <li>Código do IMT.</li>
    <li>Código do Imposto do Selo.</li>
    <li>Estatuto dos Benefícios Fiscais.</li>
  </ul>
</section>

<section>
  <h2>9. Ligação com Direito Fiscal I</h2>
  <p>
    Direito Fiscal I funcionou como base: imposto, taxa, contribuição, legalidade tributária, capacidade contributiva, relação jurídico-tributária e princípios estruturantes. Direito Fiscal II entra com maior detalhe nos impostos concretos e na aplicação prática.
  </p>
</section>

<section>
  <h2>10. Recursos de Consulta</h2>
  <ul>
    <li><a href="https://diariodarepublica.pt/" target="_blank" rel="noopener">Diário da República</a></li>
    <li><a href="https://info.portaldasfinancas.gov.pt/" target="_blank" rel="noopener">Portal das Finanças — Informação Fiscal</a></li>
    <li><a href="https://www.dgsi.pt/" target="_blank" rel="noopener">DGSI — Jurisprudência</a></li>
    <li><a href="https://www.ipbeja.pt/cursos/estig-sol/Paginas/PlanodeEstudos.aspx" target="_blank" rel="noopener">Plano de Estudos — IPBeja</a></li>
  </ul>
</section>

<section>
  <h2>11. Estado da Cadeira</h2>
  <p><strong>Estado atual:</strong> em curso.</p>
  <p><strong>Aulas concluídas:</strong> 1 / 10.</p>
  <p><strong>Próxima aula:</strong> Aula 02 — Sujeitos, residência fiscal e incidência.</p>
</section>

<hr>

<nav class="navegacao-final">
  <a class="botao" href="../cadeiras.html">← Voltar às cadeiras</a>
  <a class="botao" href="../aulas/direito-fiscal-ii/aula-01.html">Ir para a Aula 01 →</a>
  <a class="botao" href="#topo">Topo</a>
</nav>

</main>

<footer>
  <p>© Paulo Silva (Pàjó) — Repositório de Solicitadoria</p>
  <p>Projeto independente de estudo. Não substitui formação oficial nem aconselhamento jurídico.</p>
</footer>

<script data-goatcounter="https://pajogusi.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>
</body>
</html>
HTML

cat > aulas/direito-fiscal-ii/aula-01.html <<'HTML'
<!DOCTYPE html>
<html lang="pt-PT">
<head>
  <meta charset="UTF-8">
  <title>Aula 01 — Direito Fiscal II | Repositório de Solicitadoria</title>
  <link rel="stylesheet" href="../../style.css?v=90">
</head>
<body id="topo">

<header>
  <h1>Direito Fiscal II — Aula 01</h1>
  <p>Sistema fiscal português e ponte com Direito Fiscal I</p>
</header>

<nav class="top-menu">
  <a href="../../index.html">Início</a>
  <a href="../../cadeiras.html">Cadeiras</a>
  <a href="../../cadeiras/cadeira-21-direito-fiscal-ii.html">Direito Fiscal II</a>
  <a href="../../paginas/mapa.html">Mapa</a>
</nav>

<main>

<section>
  <h2>Objetivos da Aula</h2>
  <ul>
    <li>Rever a função do Direito Fiscal no sistema jurídico português.</li>
    <li>Distinguir imposto, taxa e contribuição financeira.</li>
    <li>Compreender a relação jurídico-tributária.</li>
    <li>Identificar a importância prática dos principais impostos portugueses.</li>
    <li>Preparar o estudo aplicado de IRS, IRC, IVA, tributação patrimonial e garantias dos contribuintes.</li>
  </ul>
</section>

<section>
  <h2>Competências</h2>
  <ul>
    <li>Usar corretamente a linguagem fiscal básica.</li>
    <li>Localizar o problema fiscal dentro do sistema tributário.</li>
    <li>Separar factos jurídicos de consequências fiscais.</li>
    <li>Perceber quando existe uma obrigação fiscal declarativa, de pagamento ou de colaboração.</li>
  </ul>
</section>

<section>
  <h2>Introdução</h2>
  <p>
    Direito Fiscal II começa onde Direito Fiscal I terminou. Já não estamos apenas na pergunta “o que é um imposto?” ou “quais são os princípios fiscais?”. Agora a questão passa a ser mais prática: perante um facto da vida real, que imposto pode estar em causa, quem é o sujeito passivo, qual é a base legal e que obrigações existem?
  </p>
  <p>
    Para um solicitador, esta matéria aparece em muitos momentos: transmissão de imóveis, partilhas, sociedades, arrendamentos, atividade profissional, dívidas fiscais, notificações da Autoridade Tributária, execução fiscal e reclamações. Não é necessário transformar o solicitador num contabilista, mas é indispensável saber reconhecer o problema fiscal e encaminhá-lo corretamente.
  </p>
</section>

<section>
  <h2>Base Legal</h2>
  <ul>
    <li>Constituição da República Portuguesa — princípios da legalidade, igualdade e justiça fiscal.</li>
    <li>Lei Geral Tributária — enquadramento geral da relação jurídico-tributária.</li>
    <li>Código de Procedimento e de Processo Tributário — procedimento, processo e execução fiscal.</li>
    <li>Código do IRS — tributação do rendimento das pessoas singulares.</li>
    <li>Código do IRC — tributação do rendimento das pessoas coletivas.</li>
    <li>Código do IVA — tributação do consumo.</li>
    <li>Códigos do IMI, IMT e Imposto do Selo — tributação patrimonial e atos jurídicos.</li>
    <li>Estatuto dos Benefícios Fiscais — regimes de desagravamento fiscal.</li>
  </ul>
</section>

<section>
  <h2>Conceitos-chave</h2>

  <h3>1. Direito Fiscal</h3>
  <p>
    É o ramo do Direito Público que regula a criação, liquidação, cobrança e controlo dos tributos, bem como os direitos e garantias dos contribuintes.
  </p>

  <h3>2. Imposto</h3>
  <p>
    Prestação pecuniária, coativa, unilateral e definitiva, exigida por uma entidade pública para financiamento das necessidades coletivas, sem uma contraprestação direta e individualizada.
  </p>

  <h3>3. Taxa</h3>
  <p>
    Prestação exigida em troca de uma utilização concreta de um serviço público, de um bem público ou da remoção de um obstáculo jurídico.
  </p>

  <h3>4. Contribuição financeira</h3>
  <p>
    Figura intermédia entre imposto e taxa, normalmente associada ao financiamento de entidades, setores ou encargos públicos relacionados com determinados grupos de sujeitos.
  </p>

  <h3>5. Relação jurídico-tributária</h3>
  <p>
    Relação estabelecida entre a administração tributária e o contribuinte ou outros sujeitos legalmente obrigados, envolvendo direitos, deveres, poderes de fiscalização, liquidação, cobrança e garantias.
  </p>

  <h3>6. Sujeito ativo</h3>
  <p>
    Entidade pública titular do direito à prestação tributária ou responsável pela sua liquidação e cobrança.
  </p>

  <h3>7. Sujeito passivo</h3>
  <p>
    Pessoa singular, pessoa coletiva ou entidade equiparada sobre quem recai a obrigação tributária principal ou obrigações fiscais acessórias.
  </p>

  <h3>8. Facto tributário</h3>
  <p>
    Situação prevista na lei que faz nascer a obrigação tributária: receber rendimentos, vender bens, prestar serviços, adquirir imóvel, deter património ou praticar certos atos jurídicos.
  </p>
</section>

<section>
  <h2>Desenvolvimento</h2>

  <h3>1. O sistema fiscal português</h3>
  <p>
    O sistema fiscal português combina impostos sobre o rendimento, sobre o consumo, sobre o património e sobre certos atos. Cada imposto tem regras próprias de incidência, liquidação, pagamento, prazos e garantias.
  </p>

  <h3>2. Impostos sobre o rendimento</h3>
  <p>
    O IRS incide sobre rendimentos das pessoas singulares. O IRC incide sobre rendimentos das pessoas coletivas, especialmente sociedades comerciais. Ambos exigem atenção à residência fiscal, ao tipo de rendimento e à forma de determinação da matéria coletável.
  </p>

  <h3>3. Impostos sobre o consumo</h3>
  <p>
    O IVA é o imposto central sobre o consumo. Surge em transmissões de bens, prestações de serviços, importações e certas operações intracomunitárias. Para muitas atividades económicas, o IVA é uma das áreas fiscais mais importantes.
  </p>

  <h3>4. Impostos sobre o património</h3>
  <p>
    O IMI incide sobre a titularidade de imóveis. O IMT incide, em regra, sobre transmissões onerosas de imóveis. O Imposto do Selo pode incidir sobre atos, contratos, documentos e transmissões gratuitas.
  </p>

  <h3>5. Procedimento e processo tributário</h3>
  <p>
    Quando existe desacordo com a administração tributária, o contribuinte pode usar meios próprios de reação. Há uma diferença importante entre procedimento tributário, processo judicial tributário e execução fiscal.
  </p>
</section>

<section>
  <h2>Exemplos Práticos</h2>

  <h3>Exemplo 1 — Compra de imóvel</h3>
  <p>
    A compra de uma casa pode envolver IMT, Imposto do Selo, IMI futuro e obrigações declarativas associadas. O problema não é apenas civil ou registral; também é fiscal.
  </p>

  <h3>Exemplo 2 — Trabalhador independente</h3>
  <p>
    Uma pessoa que inicia atividade pode ter obrigações em IRS, IVA e Segurança Social. Em Direito Fiscal II interessa perceber o enquadramento fiscal básico e os riscos de incumprimento.
  </p>

  <h3>Exemplo 3 — Sociedade comercial</h3>
  <p>
    Uma sociedade pode estar sujeita a IRC, IVA, retenções na fonte, obrigações contabilísticas e declarações periódicas. O solicitador deve reconhecer estas camadas para não tratar o ato jurídico como se fosse fiscalmente neutro.
  </p>

  <h3>Exemplo 4 — Dívida fiscal</h3>
  <p>
    Se um contribuinte não paga uma dívida fiscal, pode ser instaurado processo de execução fiscal. A reação adequada pode passar por pagamento, reclamação, impugnação, oposição ou pedido de pagamento em prestações, dependendo do caso.
  </p>
</section>

<section>
  <h2>Erros Comuns</h2>
  <ul>
    <li>Confundir imposto com taxa.</li>
    <li>Assumir que todos os atos jurídicos são fiscalmente neutros.</li>
    <li>Ignorar a diferença entre obrigação principal e obrigação acessória.</li>
    <li>Confundir liquidação com pagamento.</li>
    <li>Tratar uma notificação fiscal como se fosse apenas uma carta administrativa sem prazos relevantes.</li>
    <li>Esquecer que a falta de entrega de declarações pode gerar coimas, juros e execução fiscal.</li>
  </ul>
</section>

<section>
  <h2>Pergunta de Exame</h2>
  <p>
    Explique a importância da relação jurídico-tributária no sistema fiscal português e distinga, com exemplos, imposto, taxa e contribuição financeira.
  </p>

  <h3>Resposta orientadora</h3>
  <p>
    A relação jurídico-tributária liga a administração tributária aos contribuintes e demais obrigados tributários. Nela surgem poderes da administração, como liquidação e cobrança, e deveres dos contribuintes, como declarar, pagar e colaborar. O imposto é uma prestação coativa sem contraprestação direta, como o IRS. A taxa pressupõe uma contraprestação individualizada, como uma taxa municipal por determinado serviço. A contribuição financeira situa-se entre estas figuras, associando-se ao financiamento de encargos públicos relacionados com determinados grupos ou setores.
  </p>
</section>

<section>
  <h2>Resumo</h2>
  <p>
    Direito Fiscal II parte da estrutura geral estudada em Direito Fiscal I e avança para a aplicação concreta dos impostos. A chave está em identificar o facto tributário, o sujeito passivo, o imposto aplicável, a obrigação fiscal e os meios de reação disponíveis.
  </p>
</section>

<section>
  <h2>Mini-quiz</h2>
  <ol>
    <li>Qual é a principal diferença entre imposto e taxa?</li>
    <li>O que é o facto tributário?</li>
    <li>Que imposto incide, em regra, sobre o rendimento das pessoas singulares?</li>
    <li>Que imposto está associado ao consumo?</li>
    <li>Porque é que uma compra de imóvel pode ter relevância fiscal?</li>
  </ol>
</section>

<section>
  <h2>Respostas ao Mini-quiz</h2>
  <ol>
    <li>O imposto não tem contraprestação direta individualizada; a taxa pressupõe uma prestação concreta ou utilização de serviço/bem público.</li>
    <li>É o facto previsto na lei que faz nascer a obrigação tributária.</li>
    <li>IRS.</li>
    <li>IVA.</li>
    <li>Porque pode envolver IMT, Imposto do Selo, IMI e obrigações declarativas.</li>
  </ol>
</section>

<section>
  <h2>Base Legal, Diário da República e Jurisprudência</h2>
  <ul>
    <li><a href="https://diariodarepublica.pt/dr/legislacao-consolidada/decreto-lei/1998-34438775" target="_blank" rel="noopener">Lei Geral Tributária — Diário da República</a></li>
    <li><a href="https://diariodarepublica.pt/dr/legislacao-consolidada/decreto-lei/1999-34577575" target="_blank" rel="noopener">Código de Procedimento e de Processo Tributário — Diário da República</a></li>
    <li><a href="https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/codigo-do-irs-indice.aspx" target="_blank" rel="noopener">Código do IRS — Portal das Finanças</a></li>
    <li><a href="https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/CIRC_2R/Pages/circ-codigo-do-irc-indice.aspx" target="_blank" rel="noopener">Código do IRC — Portal das Finanças</a></li>
    <li><a href="https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/pages/codigo-do-iva-indice.aspx" target="_blank" rel="noopener">Código do IVA — Portal das Finanças</a></li>
    <li><a href="https://www.dgsi.pt/" target="_blank" rel="noopener">DGSI — Jurisprudência tributária</a></li>
  </ul>
</section>

<section>
  <h2>Leitura Recomendada</h2>
  <ul>
    <li>Rever Direito Fiscal I antes de avançar.</li>
    <li>Ler a estrutura inicial da Lei Geral Tributária.</li>
    <li>Consultar os índices dos Códigos do IRS, IRC e IVA para perceber a organização interna.</li>
    <li>Guardar noções: sujeito ativo, sujeito passivo, facto tributário, liquidação, cobrança e garantias.</li>
  </ul>
</section>

<hr>

<nav class="navegacao-final">
  <a class="botao" href="../../cadeiras/cadeira-21-direito-fiscal-ii.html">← Voltar à cadeira</a>
  <a class="botao" href="../../cadeiras.html">Cadeiras</a>
  <a class="botao" href="#topo">Topo</a>
</nav>

</main>

<footer>
  <p>© Paulo Silva (Pàjó) — Repositório de Solicitadoria</p>
  <p>Projeto independente de estudo. Não substitui formação oficial nem aconselhamento jurídico.</p>
</footer>

<script data-goatcounter="https://pajogusi.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>
</body>
</html>
HTML

python3 <<'PY'
from pathlib import Path
import re

def read(path):
    return Path(path).read_text(encoding="utf-8")

def write(path, text):
    Path(path).write_text(text, encoding="utf-8")

# cadeiras.html
p = Path("cadeiras.html")
txt = read(p)
old = '<div class="cadeira-card"><h3>📚 Direito Fiscal II</h3><p>0 / 10 aulas concluídas</p><span class="badge nao-iniciada">⚪ Não iniciada</span></div>'
new = '<div class="cadeira-card"><h3>📚 Direito Fiscal II</h3><p>1 / 10 aulas concluídas</p><span class="badge em-curso">🟡 Em curso</span><br><br><a class="botao" href="cadeiras/cadeira-21-direito-fiscal-ii.html">Entrar</a></div>'
if old in txt:
    txt = txt.replace(old, new)
elif 'cadeira-21-direito-fiscal-ii.html' not in txt:
    raise SystemExit("Não consegui atualizar cadeiras.html automaticamente.")
write(p, txt)

# index.html — contadores globais
p = Path("index.html")
txt = read(p)
txt = txt.replace("200 / 380", "201 / 380")
txt = txt.replace("52,6%", "52,9%")
write(p, txt)

# documentação de continuidade
for name in [
    "README.md",
    "documentation/ESTADO_ATUAL.md",
    "documentation/CONTINUIDADE.md",
    "documentation/PROXIMA_CONVERSA.md",
]:
    p = Path(name)
    if not p.exists():
        continue
    txt = read(p)
    txt = txt.replace("200 / 380", "201 / 380")
    txt = txt.replace("Progresso global: 52,6%", "Progresso global: 52,9%")
    txt = txt.replace("Percentagem aproximada do percurso | **52,6%**", "Percentagem aproximada do percurso | **52,9%**")
    txt = txt.replace("Próxima cadeira correta: Direito Fiscal II", "Cadeira atual: Direito Fiscal II — 1 / 10 aulas concluídas")
    txt = txt.replace("Iniciar **Direito Fiscal II**.", "Continuar **Direito Fiscal II** com a Aula 02.")
    txt = txt.replace("Iniciar Direito Fiscal II.", "Continuar Direito Fiscal II com a Aula 02.")
    if "Próxima aula: Aula 02" not in txt and "Direito Fiscal II" in txt and "PROXIMA_CONVERSA" in name:
        txt += "\n- Próxima aula: Aula 02 — Sujeitos, residência fiscal e incidência\n"
    write(p, txt)

# mapa.html — inserir secção simples se ainda não existir
p = Path("paginas/mapa.html")
if p.exists():
    txt = read(p)
    if "../aulas/direito-fiscal-ii/aula-01.html" not in txt and "aulas/direito-fiscal-ii/aula-01.html" not in txt:
        bloco = """
<section>
  <h2>Direito Fiscal II</h2>
  <ul>
    <li><a href="../cadeiras/cadeira-21-direito-fiscal-ii.html">Apresentação — Direito Fiscal II</a></li>
    <li><a href="../aulas/direito-fiscal-ii/aula-01.html">Aula 01 — Sistema fiscal português e ponte com Direito Fiscal I</a></li>
  </ul>
</section>
"""
        if "</main>" in txt:
            txt = txt.replace("</main>", bloco + "\n</main>")
        else:
            txt += bloco
        write(p, txt)

# atualizar script de próxima conversa
script = Path("scripts/uteis/proxima-conversa-solicitadoria.sh")
script.parent.mkdir(parents=True, exist_ok=True)
script.write_text("""#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../.."

echo "Data e hora: $(date +'%d/%m/%Y — %H:%M %Z')"
echo
cat <<'TXT'
CONTEXTO PARA A PRÓXIMA CONVERSA

Projeto: Repositório de Solicitadoria
Autor público: Paulo Silva (Pàjó)
URL: https://pajogusi.github.io/repositorio-solicitadoria/
Pasta local: ~/universidade-da-vida-direito

ESTADO ATUAL
- 20 / 38 cadeiras concluídas
- 201 / 380 aulas concluídas
- Progresso global: 52,9%
- Última cadeira concluída: Direito Processual Civil II — 10 / 10
- Cadeira atual: Direito Fiscal II — 1 / 10 aulas concluídas
- Próxima aula: Aula 02 — Sujeitos, residência fiscal e incidência

SEQUÊNCIA CORRETA
21. Direito Fiscal II
22. Direito da Família e das Sucessões I
23. Direito das Sociedades
24. Princípios de Finanças
25. Direito Processual Civil III

REGRAS
- Começar novas conversas com data e hora.
- Confirmar sempre primeiro em que máquina estamos.
- Se for paulo@paulo-755XDA: já está no portátil, não usar SSH para 192.168.1.195.
- Se for dell@overdrive-core: está no Centro.
- Criar uma aula de cada vez.
- Atualizar apresentação da cadeira, cadeiras.html, index.html e paginas/mapa.html.
- Não iniciar Direito Processual Civil III agora.
- Continuar Direito Fiscal II até 10 / 10.

VALIDAÇÃO ATUAL
TXT

grep -n "201 / 380\\|52,9\\|Direito Fiscal II\\|aula-01" index.html cadeiras.html paginas/mapa.html README.md documentation/ESTADO_ATUAL.md documentation/CONTINUIDADE.md documentation/PROXIMA_CONVERSA.md 2>/dev/null || true

echo
echo "GIT"
git status --short
""", encoding="utf-8")
script.chmod(0o755)
PY

echo
echo "VALIDAÇÃO"
git status --short
echo
grep -n "201 / 380\|52,9\|Direito Fiscal II" index.html cadeiras.html README.md documentation/ESTADO_ATUAL.md documentation/CONTINUIDADE.md documentation/PROXIMA_CONVERSA.md || true
echo
find aulas/direito-fiscal-ii -maxdepth 1 -type f -print
