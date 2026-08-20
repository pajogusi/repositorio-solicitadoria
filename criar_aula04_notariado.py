from pathlib import Path
import re

ROOT = Path(".")
AULA_ANTERIOR = ROOT / "aulas/direito-notariado/aula-03.html"
AULA_NOVA = ROOT / "aulas/direito-notariado/aula-04.html"

TITULO_ANTIGO = "Direito do Notariado — Aula 03"
TITULO_NOVO = "Direito do Notariado — Aula 04"
SUBTITULO_NOVO = "Identificação, capacidade, representação e poderes dos intervenientes"

AULA03 = "Aula 03 — Instrumentos notariais: escrituras, termos, reconhecimentos, autenticações e certidões"
AULA04 = "Aula 04 — Identificação, capacidade, representação e poderes dos intervenientes"
AULA05 = "Aula 05 — Formalidades comuns dos atos notariais e leitura/assinatura"

def read(p):
    return p.read_text(encoding="utf-8")

def write(p, txt):
    p.write_text(txt, encoding="utf-8")

def replace_required(txt, old, new, file):
    if old not in txt:
        raise SystemExit(f"ERRO: não encontrei em {file}: {old}")
    return txt.replace(old, new, 1)

def replace_optional(txt, old, new):
    return txt.replace(old, new)

def insert_after_required(txt, marker, insert, file):
    if insert in txt:
        return txt
    if marker not in txt:
        raise SystemExit(f"ERRO: não encontrei marcador em {file}: {marker}")
    return txt.replace(marker, marker + "\n" + insert, 1)

# 1) Criar Aula 04 a partir da estrutura da Aula 03
if not AULA_ANTERIOR.exists():
    raise SystemExit("ERRO: Aula 03 não existe.")

template = read(AULA_ANTERIOR)

if "<main>" not in template or "</main>" not in template:
    raise SystemExit("ERRO: Aula 03 não contém <main>...</main>.")

novo_main = f"""<main>
    <section class="hero">
      <h1>{TITULO_NOVO}</h1>
      <p>{SUBTITULO_NOVO}</p>
    </section>

    <section class="box">
      <h2>1. Objetivo da aula</h2>
      <p>
        Esta aula estuda a fase inicial e essencial de qualquer ato notarial:
        confirmar quem intervém, em que qualidade intervém, se tem capacidade
        para o ato e se possui poderes suficientes para produzir os efeitos
        jurídicos pretendidos.
      </p>
      <p>
        No notariado, a identificação não é uma formalidade secundária. É uma
        condição de segurança jurídica. Antes de redigir, autenticar ou certificar,
        o notário deve saber quem declara, quem representa, quem é representado
        e se existe legitimidade bastante para o ato.
      </p>
    </section>

    <section class="box">
      <h2>2. Ideia central</h2>
      <p>
        Um ato notarial só é seguro se assentar em quatro verificações:
      </p>
      <ul>
        <li><strong>Identidade</strong> — saber quem é a pessoa que comparece;</li>
        <li><strong>Capacidade</strong> — saber se pode praticar validamente o ato;</li>
        <li><strong>Qualidade</strong> — saber se atua em nome próprio ou em nome de terceiro;</li>
        <li><strong>Poderes</strong> — saber se tem autorização legal, voluntária ou orgânica bastante.</li>
      </ul>
      <p>
        A falta de uma destas verificações pode comprometer a validade, eficácia
        ou segurança do ato notarial.
      </p>
    </section>

    <section class="box">
      <h2>3. Quem são os intervenientes no ato notarial</h2>
      <p>
        Os intervenientes principais são os <strong>outorgantes</strong>, isto é,
        as pessoas que praticam o ato, emitem declarações negociais ou assumem
        posições jurídicas no instrumento.
      </p>
      <p>
        Mas podem existir outros intervenientes:
      </p>
      <ul>
        <li>procuradores;</li>
        <li>representantes legais;</li>
        <li>representantes de sociedades ou pessoas coletivas;</li>
        <li>testemunhas instrumentárias;</li>
        <li>abonadores;</li>
        <li>intérpretes;</li>
        <li>peritos médicos;</li>
        <li>leitores, quando legalmente necessários.</li>
      </ul>
      <p>
        Cada intervenção deve ter uma razão jurídica. Ninguém deve aparecer no
        instrumento sem que se compreenda a sua função.
      </p>
    </section>

    <section class="box">
      <h2>4. Identificação dos outorgantes</h2>
      <p>
        A identificação serve para ligar a declaração constante do instrumento
        a uma pessoa concreta. O notário deve verificar a identidade dos
        outorgantes, testemunhas instrumentárias e abonadores por meios
        admitidos legalmente.
      </p>
      <p>
        A identificação pode resultar, designadamente, de conhecimento pessoal
        do notário, de documento de identificação adequado, de passaporte ou,
        em certos casos, da intervenção de abonadores.
      </p>
      <p>
        No instrumento deve ficar mencionada a forma como a identidade foi
        verificada. Esta menção é importante porque permite controlar, no futuro,
        de que modo o notário confirmou quem interveio no ato.
      </p>
    </section>

    <section class="box">
      <h2>5. Documentos de identificação</h2>
      <p>
        O documento apresentado deve permitir uma identificação segura. Não basta
        apresentar “algum documento”; é necessário que os dados coincidam com os
        elementos fornecidos pelo interessado e que o documento seja válido.
      </p>
      <p>
        Quando a identificação é feita por documento, devem ser recolhidos e
        mencionados os elementos relevantes, como número, data e entidade emitente,
        nos termos exigidos para o ato.
      </p>
      <p>
        A residência ou o estado civil podem exigir cuidado adicional quando a
        informação declarada não coincide totalmente com o documento exibido.
      </p>
    </section>

    <section class="box">
      <h2>6. Capacidade dos intervenientes</h2>
      <p>
        A capacidade respeita à aptidão da pessoa para praticar o ato em causa.
        Não basta saber quem a pessoa é; é preciso saber se ela pode, juridicamente
        e no momento do ato, emitir aquela declaração.
      </p>
      <p>
        A capacidade deve ser apreciada em concreto. Há atos simples e há atos
        que exigem especial cuidado, como alienações, renúncias, partilhas,
        testamentos, procurações com poderes amplos ou atos com impacto
        patrimonial significativo.
      </p>
      <p>
        Se existirem dúvidas sérias sobre compreensão, vontade ou faculdades
        mentais, o notário não deve tratar a questão como mero detalhe formal.
        A segurança do ato exige prudência.
      </p>
    </section>

    <section class="box">
      <h2>7. Vontade livre e esclarecida</h2>
      <p>
        O ato notarial pressupõe que os intervenientes compreendem o sentido do
        ato e querem produzir os respetivos efeitos. A função notarial não é
        apenas receber assinaturas; é assegurar que o instrumento corresponde
        a uma vontade juridicamente relevante.
      </p>
      <p>
        Por isso, o notário deve explicar o conteúdo do ato em termos adequados,
        sobretudo quando estejam em causa pessoas vulneráveis, atos complexos,
        renúncias, garantias, transmissões de bens ou poderes de representação
        muito amplos.
      </p>
    </section>

    <section class="box">
      <h2>8. Representação voluntária</h2>
      <p>
        Há representação voluntária quando alguém atua em nome de outra pessoa
        com base numa declaração de vontade desta, normalmente uma procuração.
      </p>
      <p>
        Nestes casos, o notário deve verificar:
      </p>
      <ul>
        <li>se a procuração existe;</li>
        <li>se é formalmente adequada ao ato pretendido;</li>
        <li>se ainda está válida;</li>
        <li>se confere poderes suficientes;</li>
        <li>se o representante atua dentro dos limites conferidos.</li>
      </ul>
      <p>
        Uma procuração genérica pode não bastar para determinados atos. O ponto
        decisivo é comparar o conteúdo dos poderes com o ato concreto que se
        pretende praticar.
      </p>
    </section>

    <section class="box">
      <h2>9. Representação legal</h2>
      <p>
        A representação legal resulta diretamente da lei. Pode ocorrer, por
        exemplo, quando alguém intervém em nome de menor, maior acompanhado,
        herança, massa insolvente ou outra situação legalmente prevista.
      </p>
      <p>
        Nestes casos, o notário deve verificar a fonte da representação e, quando
        necessário, a existência de autorização judicial, decisão, certidão ou
        documento bastante.
      </p>
      <p>
        O facto de uma pessoa dizer que representa outra não basta. A qualidade
        representativa deve ser demonstrada e ficar juridicamente enquadrada.
      </p>
    </section>

    <section class="box">
      <h2>10. Representação orgânica de sociedades e pessoas coletivas</h2>
      <p>
        Nas sociedades e demais pessoas coletivas, quem intervém não atua apenas
        como pessoa singular. Atua como titular de um órgão, gerente,
        administrador, presidente, mandatário ou representante com poderes
        próprios.
      </p>
      <p>
        A prova da qualidade e dos poderes deve resultar dos documentos
        adequados, em especial certidões de registo comercial, códigos de acesso
        a certidões permanentes, atas, deliberações ou outros documentos
        justificativos, conforme o caso.
      </p>
      <p>
        O notário deve verificar se a pessoa coletiva está corretamente
        identificada e se quem assina tem poderes para vincular essa entidade
        naquele ato concreto.
      </p>
    </section>

    <section class="box">
      <h2>11. Poderes necessários para o ato</h2>
      <p>
        A verificação dos poderes é uma das tarefas mais importantes da atividade
        notarial. Não basta existir uma procuração ou uma certidão. É necessário
        saber se o documento apresentado permite aquele ato específico.
      </p>
      <p>
        Exemplo: quem tem poderes para administrar pode não ter poderes para
        vender; quem tem poderes para vender pode não ter poderes para hipotecar;
        quem pode representar uma sociedade em atos correntes pode precisar de
        deliberação para atos extraordinários.
      </p>
      <p>
        O instrumento deve mencionar as procurações e documentos que justificam
        a qualidade de procurador ou representante e, nos casos de representação
        legal ou orgânica, a verificação dos poderes necessários.
      </p>
    </section>

    <section class="box">
      <h2>12. Documentos exibidos e documentos arquivados</h2>
      <p>
        Alguns documentos são apenas exibidos ao notário; outros ficam arquivados.
        Esta distinção deve ser clara no instrumento.
      </p>
      <p>
        Os documentos exibidos servem para comprovar elementos necessários ao ato.
        Os documentos arquivados passam a integrar o suporte documental do ato
        notarial, permitindo futura verificação.
      </p>
      <p>
        A referência à natureza do documento, data, entidade emitente e demais
        elementos relevantes permite reconstruir a base documental do ato.
      </p>
    </section>

    <section class="box">
      <h2>13. Quando o notário deve recusar ou advertir</h2>
      <p>
        O notário não deve praticar atos nulos, atos fora da sua competência ou
        atos relativamente aos quais exista impedimento legal.
      </p>
      <p>
        Quando exista anulabilidade, ineficácia ou outro vício que não imponha
        necessariamente a recusa, o notário deve advertir os interessados e
        consignar essa advertência no instrumento, quando aplicável.
      </p>
      <p>
        A intervenção notarial protege a confiança no documento. Por isso, a
        pressa dos interessados não justifica ignorar dúvidas sérias sobre
        identidade, capacidade, legitimidade ou poderes.
      </p>
    </section>

    <section class="box">
      <h2>14. Caso prático orientado</h2>
      <p><strong>Situação:</strong> António comparece no cartório para vender um
      imóvel pertencente à sociedade Alfa, Lda. Apresenta-se como gerente e traz
      uma certidão comercial antiga. Diz que “sempre tratou de tudo” pela empresa.</p>

      <p><strong>Questões a resolver:</strong></p>
      <ol>
        <li>António intervém em nome próprio ou como representante?</li>
        <li>Que entidade deve ser identificada no instrumento?</li>
        <li>Que documento deve comprovar a qualidade de gerente?</li>
        <li>É suficiente dizer que António sempre tratou da empresa?</li>
        <li>O notário deve verificar se os poderes abrangem a venda do imóvel?</li>
      </ol>

      <p><strong>Resposta orientada:</strong> António atua como representante da
      sociedade. O instrumento deve identificar António e também a sociedade
      representada. O notário deve verificar a certidão comercial ou outro meio
      documental adequado, confirmar a qualidade de gerente e a suficiência dos
      poderes para vender o imóvel. A prática habitual não substitui a prova
      jurídica dos poderes.</p>
    </section>

    <section class="box">
      <h2>15. Esquema de raciocínio para o solicitador</h2>
      <ol>
        <li>Quem comparece?</li>
        <li>Comparece em nome próprio ou em nome de terceiro?</li>
        <li>Está devidamente identificado?</li>
        <li>Tem capacidade para o ato?</li>
        <li>Se representa alguém, qual é a fonte da representação?</li>
        <li>Os poderes são suficientes para este ato concreto?</li>
        <li>Que documentos foram exibidos?</li>
        <li>Que documentos devem ficar arquivados?</li>
        <li>Existe motivo de recusa, advertência ou pedido de documentos adicionais?</li>
      </ol>
    </section>

    <section class="box">
      <h2>16. Síntese da aula</h2>
      <p>
        A identificação, capacidade, representação e poderes dos intervenientes
        são elementos estruturantes do ato notarial. O notário deve confirmar
        quem intervém, em que qualidade intervém, se pode intervir e se tem
        poderes suficientes para o ato pretendido.
      </p>
      <p>
        A segurança do documento notarial nasce desta verificação prévia. Um ato
        bem redigido, mas praticado por pessoa sem poderes ou sem capacidade,
        fica juridicamente comprometido.
      </p>
    </section>

    <section class="box">
      <h2>17. Quiz rápido</h2>
      <ol>
        <li>
          <strong>A identificação dos outorgantes é apenas uma formalidade administrativa?</strong><br>
          Não. É uma garantia essencial de segurança jurídica.
        </li>
        <li>
          <strong>Quem representa uma sociedade deve provar a sua qualidade e poderes?</strong><br>
          Sim. O notário deve verificar a qualidade representativa e a suficiência dos poderes.
        </li>
        <li>
          <strong>Uma procuração serve sempre para qualquer ato?</strong><br>
          Não. É necessário verificar se os poderes conferidos abrangem o ato concreto.
        </li>
        <li>
          <strong>O notário pode ignorar dúvidas sérias sobre capacidade?</strong><br>
          Não. Deve agir com prudência e, quando exista fundamento, recusar ou exigir os elementos legalmente necessários.
        </li>
      </ol>
    </section>

    <section class="box">
      <h2>18. Ligação com a próxima aula</h2>
      <p>
        Depois de identificados os intervenientes e verificados os seus poderes,
        importa estudar as formalidades comuns dos atos notariais: leitura,
        explicação, assinatura, menções obrigatórias e encerramento formal do
        instrumento.
      </p>
    </section>

    <div class="nav-aulas">
      <a href="aula-03.html">Aula anterior</a>
      <a href="../../cadeiras/cadeira-27-direito-notariado.html">Voltar à cadeira</a>
      <a href="aula-05.html">Próxima aula</a>
    </div>
  </main>"""

html = template
html = re.sub(r"<title>.*?</title>", f"<title>{TITULO_NOVO} — {SUBTITULO_NOVO}</title>", html, count=1, flags=re.S)
html = html.replace(TITULO_ANTIGO, TITULO_NOVO)
html = html.replace("Instrumentos notariais: escrituras, termos, reconhecimentos, autenticações e certidões", SUBTITULO_NOVO)

start = html.index("<main>")
end = html.index("</main>") + len("</main>")
html = html[:start] + novo_main + html[end:]

if "goatcounter" not in html:
    html = html.replace("</body>", '<script data-goatcounter="https://pajogusi.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>\n</body>')

write(AULA_NOVA, html)
print(f"OK: criada {AULA_NOVA}")

# 2) Atualizar navegação da Aula 03
p = AULA_ANTERIOR
txt = read(p)
if "aula-04.html" not in txt:
    txt = txt.replace(
        '<a href="../../cadeiras/cadeira-27-direito-notariado.html">Voltar à cadeira</a>',
        '<a href="../../cadeiras/cadeira-27-direito-notariado.html">Voltar à cadeira</a>\n      <a href="aula-04.html">Próxima aula</a>',
        1
    )
write(p, txt)
print("OK: navegação da Aula 03 verificada/atualizada")

# 3) Atualizar página da cadeira
p = ROOT / "cadeiras/cadeira-27-direito-notariado.html"
txt = read(p)

marker = f'    <li><a href="../aulas/direito-notariado/aula-03.html">{AULA03}</a></li>'
insert = f'    <li><a href="../aulas/direito-notariado/aula-04.html">{AULA04}</a></li>'
txt = insert_after_required(txt, marker, insert, p)

txt = replace_optional(txt, "Aulas concluídas:</strong> 3 / 10", "Aulas concluídas:</strong> 4 / 10")
txt = replace_optional(txt, "3 / 10 aulas concluídas", "4 / 10 aulas concluídas")
txt = replace_optional(txt, f"Próxima aula:</strong> {AULA04}", f"Próxima aula:</strong> {AULA05}")
txt = replace_optional(txt, f"Próxima aula: {AULA04}", f"Próxima aula: {AULA05}")
write(p, txt)
print("OK: página da cadeira atualizada")

# 4) Atualizar cadeiras.html com substituição exata do cartão
p = ROOT / "cadeiras.html"
txt = read(p)
old = '<div class="cadeira-card"><h3>📚 Direito do Notariado</h3><p>3 / 10 aulas concluídas</p><span class="badge em-curso">🟡 Em curso</span><br><br><a class="botao" href="cadeiras/cadeira-27-direito-notariado.html">Entrar</a></div>'
new = '<div class="cadeira-card"><h3>📚 Direito do Notariado</h3><p>4 / 10 aulas concluídas</p><span class="badge em-curso">🟡 Em curso</span><br><br><a class="botao" href="cadeiras/cadeira-27-direito-notariado.html">Entrar</a></div>'
txt = replace_required(txt, old, new, p)
write(p, txt)
print("OK: cadeiras.html atualizado por substituição exata")

# 5) Atualizar index.html
p = ROOT / "index.html"
txt = read(p)
txt = replace_required(txt, '<div class="stat-card"><strong>263 / 380</strong><br>Aulas concluídas</div>', '<div class="stat-card"><strong>264 / 380</strong><br>Aulas concluídas</div>', p)
txt = replace_required(txt, '<div class="progress-bar">69,2%</div>', '<div class="progress-bar">69,5%</div>', p)
write(p, txt)
print("OK: index.html atualizado")

# 6) Atualizar mapa
p = ROOT / "paginas/mapa.html"
txt = read(p)
marker = f'  <li><a href="../aulas/direito-notariado/aula-03.html">{AULA03}</a></li>'
insert = f'  <li><a href="../aulas/direito-notariado/aula-04.html">{AULA04}</a></li>'
if marker not in txt:
    marker = f'    <li><a href="../aulas/direito-notariado/aula-03.html">{AULA03}</a></li>'
    insert = f'    <li><a href="../aulas/direito-notariado/aula-04.html">{AULA04}</a></li>'
txt = insert_after_required(txt, marker, insert, p)
write(p, txt)
print("OK: mapa atualizado")

# 7) Atualizar README e documentação simples
for file in ["README.md", "documentation/CONTINUIDADE.md", "documentation/PROXIMA_CONVERSA.md", "documentation/ESTADO_ATUAL.md"]:
    p = ROOT / file
    if not p.exists():
        continue
    txt = read(p)
    txt = replace_optional(txt, "263 / 380", "264 / 380")
    txt = replace_optional(txt, "69,2%", "69,5%")
    txt = replace_optional(txt, "Direito do Notariado — 3 / 10", "Direito do Notariado — 4 / 10")
    txt = replace_optional(txt, "3 / 10 aulas concluídas", "4 / 10 aulas concluídas")
    txt = replace_optional(txt, f"Próxima aula: Aula 04 — {SUBTITULO_NOVO}", f"Próxima aula: {AULA05}")
    txt = replace_optional(txt, f"Continuar **Direito do Notariado** com a Aula 04.", "Continuar **Direito do Notariado** com a Aula 05.")
    txt = replace_optional(txt, "Criar apenas a Aula 04.", "Criar apenas a Aula 05.")
    txt = replace_optional(txt, f"4. {AULA04}", f"4. {AULA04}\n5. {AULA05}")
    txt = replace_optional(txt, "- `aulas/direito-notariado/aula-03.html`", "- `aulas/direito-notariado/aula-03.html`\n- `aulas/direito-notariado/aula-04.html`")
    write(p, txt)
print("OK: README/documentação base atualizados")

# 8) Atualizar script de continuidade
p = ROOT / "scripts/uteis/proxima-conversa-solicitadoria.sh"
if p.exists():
    txt = read(p)
    txt = replace_optional(txt, "263 / 380", "264 / 380")
    txt = replace_optional(txt, "69,2%", "69,5%")
    txt = replace_optional(txt, "Direito do Notariado — 3 / 10", "Direito do Notariado — 4 / 10")
    txt = replace_optional(txt, "3 / 10 aulas concluídas", "4 / 10 aulas concluídas")
    txt = replace_optional(txt, f"Próxima aula: Aula 04 — {SUBTITULO_NOVO}", f"Próxima aula: {AULA05}")
    txt = replace_optional(txt, f"Continuar **Direito do Notariado** com a Aula 04.", "Continuar **Direito do Notariado** com a Aula 05.")
    txt = replace_optional(txt, f"<strong>263 / 380</strong>", "<strong>264 / 380</strong>")
    txt = replace_optional(txt, '<div class="progress-bar">69,2%</div>', '<div class="progress-bar">69,5%</div>')
    txt = replace_optional(txt, '<div class="cadeira-card"><h3>📚 Direito do Notariado</h3><p>3 / 10 aulas concluídas</p>', '<div class="cadeira-card"><h3>📚 Direito do Notariado</h3><p>4 / 10 aulas concluídas</p>')
    txt = insert_after_required(
        txt,
        "4. Aula 04 — Identificação, capacidade, representação e poderes dos intervenientes",
        "5. Aula 05 — Formalidades comuns dos atos notariais e leitura/assinatura",
        p
    )
    write(p, txt)
    print("OK: script de continuidade atualizado")

print("CONCLUÍDO: Aula 04 de Direito do Notariado preparada.")
