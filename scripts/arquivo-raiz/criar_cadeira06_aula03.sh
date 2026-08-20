#!/bin/bash

# ==========================================================
# Repositório de Solicitadoria
# Cadeira 6: Análise e Produção de Textos
# Aula 03: Estrutura de documentos jurídicos
# Autor oficial: Paulo Silva
# ==========================================================

set -e

echo "=========================================="
echo "A criar Aula 03 - Estrutura de documentos jurídicos"
echo "=========================================="

mkdir -p aulas/analise-producao-textos

cat > aulas/analise-producao-textos/aula03.html <<'EOF'
<!DOCTYPE html>
<html lang="pt-PT">
<head>
  <meta charset="UTF-8">
  <title>Aula 03 — Estrutura de documentos jurídicos</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../style.css">
</head>

<body>
  <header>
    <h1>Análise e Produção de Textos</h1>
    <p>Aula 03 — Estrutura de documentos jurídicos</p>
  </header>

  <nav>
    <a href="../../index.html">Início</a>
    <a href="../../cadeiras.html">Cadeiras</a>
    <a href="../../biblioteca.html">Biblioteca Jurídica</a>
    <a href="../../glossario.html">Glossário Jurídico</a>
    <a href="../../casos-praticos.html">Casos Práticos</a>
    <a href="../../quiz.html">Quiz Interativo</a>
    <a href="../../mapa-site.html">Mapa do Site</a>
    <a href="../../aviso-legal.html">Aviso Legal</a>
  </nav>

  <main>
    <section class="card">
      <h2>1. A importância da estrutura no documento jurídico</h2>

      <p>
        Um documento jurídico não deve ser apenas um conjunto de frases corretas. Deve ter uma
        estrutura organizada, lógica e adequada ao objetivo que pretende atingir.
      </p>

      <p>
        A estrutura ajuda o leitor a perceber quem escreve, a quem se dirige o documento, qual é
        o assunto, quais são os factos relevantes, qual é o fundamento jurídico e qual é o pedido
        ou conclusão.
      </p>

      <p>
        Um documento mal estruturado pode dificultar a compreensão, enfraquecer a argumentação e
        prejudicar a defesa de uma posição jurídica.
      </p>
    </section>

    <section class="card">
      <h2>2. Elementos comuns de um documento jurídico</h2>

      <p>
        Nem todos os documentos jurídicos têm a mesma forma, mas muitos apresentam elementos comuns.
      </p>

      <ul>
        <li><strong>Identificação das partes:</strong> quem intervém no documento.</li>
        <li><strong>Destinatário:</strong> pessoa, entidade ou tribunal a quem o documento é dirigido.</li>
        <li><strong>Assunto:</strong> indicação clara do tema tratado.</li>
        <li><strong>Exposição dos factos:</strong> descrição dos acontecimentos relevantes.</li>
        <li><strong>Fundamentação jurídica:</strong> referência às normas, princípios ou argumentos aplicáveis.</li>
        <li><strong>Pedido ou conclusão:</strong> aquilo que se pretende obter ou demonstrar.</li>
        <li><strong>Data e assinatura:</strong> elementos formais de encerramento.</li>
      </ul>

      <p>
        A presença destes elementos torna o documento mais completo, mais claro e mais fácil de analisar.
      </p>
    </section>

    <section class="card">
      <h2>3. Identificação das partes</h2>

      <p>
        A identificação das partes permite saber quem intervém no documento. Conforme o tipo de
        documento, pode incluir nome, morada, número de identificação civil, número de contribuinte,
        qualidade em que intervém ou representação de outra pessoa ou entidade.
      </p>

      <p>
        Num contexto jurídico, identificar bem as partes é essencial. Um erro na identificação pode
        criar dúvidas sobre quem tem direitos, deveres ou responsabilidades.
      </p>

      <p>
        Exemplo:
      </p>

      <blockquote>
        “Maria Fernandes, residente na Rua das Oliveiras, n.º 20, em Évora, vem expor e requerer...”
      </blockquote>
    </section>

    <section class="card">
      <h2>4. O assunto do documento</h2>

      <p>
        O assunto deve indicar, de forma breve e clara, o tema principal do documento.
      </p>

      <p>
        Um bom assunto ajuda o destinatário a perceber imediatamente o conteúdo do texto. Deve ser
        direto, específico e adequado.
      </p>

      <p>
        Exemplos:
      </p>

      <ul>
        <li>Assunto: Pedido de pagamento de renda em atraso.</li>
        <li>Assunto: Reclamação relativa a incumprimento contratual.</li>
        <li>Assunto: Pedido de emissão de certidão.</li>
        <li>Assunto: Comunicação de denúncia de contrato.</li>
      </ul>

      <p>
        Assuntos vagos como “Pedido”, “Informação” ou “Problema” devem ser evitados quando não
        permitem perceber o conteúdo do documento.
      </p>
    </section>

    <section class="card">
      <h2>5. Exposição dos factos</h2>

      <p>
        A exposição dos factos é uma das partes mais importantes de qualquer documento jurídico.
        É aqui que se descreve o que aconteceu.
      </p>

      <p>
        Os factos devem ser apresentados por ordem lógica ou cronológica, com indicação de datas,
        pessoas envolvidas, locais, valores e acontecimentos relevantes.
      </p>

      <p>
        Deve evitar-se misturar factos com opiniões. Primeiro apresentam-se os factos. Depois faz-se
        a análise.
      </p>

      <p>
        Exemplo fraco:
      </p>

      <blockquote>
        “O senhor António portou-se mal e não cumpriu nada.”
      </blockquote>

      <p>
        Exemplo melhor:
      </p>

      <blockquote>
        “No dia 5 de abril de 2026, o senhor António comprometeu-se a entregar o equipamento até
        ao dia 15 de abril de 2026. Até à presente data, o equipamento não foi entregue.”
      </blockquote>
    </section>

    <section class="card">
      <h2>6. Fundamentação jurídica</h2>

      <p>
        A fundamentação jurídica liga os factos ao Direito aplicável. Nesta parte, explica-se por
        que razão os factos apresentados têm relevância jurídica.
      </p>

      <p>
        A fundamentação pode incluir normas legais, princípios jurídicos, cláusulas contratuais,
        jurisprudência ou doutrina, dependendo do tipo de documento e do grau de complexidade.
      </p>

      <p>
        Para um estudante ou para um documento simples, o essencial é perceber a lógica:
      </p>

      <ol>
        <li>Existe um facto relevante.</li>
        <li>Existe uma norma ou obrigação aplicável.</li>
        <li>O facto deve ser analisado à luz dessa norma ou obrigação.</li>
        <li>Dessa análise resulta uma consequência jurídica.</li>
      </ol>
    </section>

    <section class="card">
      <h2>7. Pedido ou conclusão</h2>

      <p>
        O pedido ou conclusão é a parte em que se indica claramente o que se pretende.
      </p>

      <p>
        Um erro comum é apresentar muitos factos e argumentos, mas terminar sem formular um pedido
        claro. O destinatário deve perceber exatamente o que se espera dele.
      </p>

      <p>
        Exemplos:
      </p>

      <ul>
        <li>“Requer-se a emissão da certidão solicitada.”</li>
        <li>“Solicita-se o pagamento da quantia em dívida no prazo de 10 dias.”</li>
        <li>“Pede-se a apreciação da presente reclamação.”</li>
        <li>“Conclui-se que houve incumprimento da obrigação contratual.”</li>
      </ul>
    </section>

    <section class="card">
      <h2>8. Organização visual do documento</h2>

      <p>
        A forma visual também influencia a leitura. Um documento jurídico deve evitar blocos de
        texto demasiado longos e desorganizados.
      </p>

      <p>
        É útil usar parágrafos curtos, numeração, títulos intermédios e espaçamento adequado.
        Isto não é apenas uma questão estética. É uma questão de compreensão.
      </p>

      <p>
        Um documento bem apresentado transmite maior profissionalismo e facilita a análise do seu
        conteúdo.
      </p>
    </section>

    <section class="card">
      <h2>9. Modelo simples de estrutura</h2>

      <p>
        Um documento jurídico simples pode seguir esta estrutura:
      </p>

      <ol>
        <li><strong>Destinatário</strong></li>
        <li><strong>Identificação de quem escreve</strong></li>
        <li><strong>Assunto</strong></li>
        <li><strong>Exposição dos factos</strong></li>
        <li><strong>Enquadramento jurídico ou contratual</strong></li>
        <li><strong>Pedido ou conclusão</strong></li>
        <li><strong>Data</strong></li>
        <li><strong>Assinatura</strong></li>
      </ol>

      <p>
        Esta estrutura pode ser adaptada conforme o tipo de documento: requerimento, reclamação,
        comunicação, parecer ou petição.
      </p>
    </section>

    <section class="card">
      <h2>10. Exemplo prático simplificado</h2>

      <p>
        <strong>Assunto:</strong> Pedido de pagamento de renda em atraso.
      </p>

      <p>
        “João Martins, arrendatário do imóvel sito na Rua do Mercado, n.º 15, vem expor que a renda
        vencida no dia 1 de maio de 2026, no valor de 600 euros, ainda não foi paga.
      </p>

      <p>
        Nos termos do contrato de arrendamento celebrado entre as partes, o pagamento da renda deve
        ocorrer até ao dia 1 de cada mês.
      </p>

      <p>
        Assim, solicita-se o pagamento da quantia em dívida no prazo de 10 dias.”
      </p>

      <p>
        Este exemplo mostra uma estrutura simples: identificação, facto, obrigação e pedido.
      </p>
    </section>

    <section class="card">
      <h2>11. Erros frequentes na estrutura</h2>

      <ul>
        <li>Começar pelo pedido sem explicar os factos.</li>
        <li>Misturar factos, opiniões e conclusões no mesmo parágrafo.</li>
        <li>Não indicar datas, valores ou elementos concretos.</li>
        <li>Fazer um texto demasiado longo sem divisões.</li>
        <li>Não terminar com um pedido ou conclusão clara.</li>
        <li>Usar modelos sem adaptar ao caso concreto.</li>
      </ul>
    </section>

    <section class="card">
      <h2>12. Resumo da aula</h2>

      <ul>
        <li>A estrutura é essencial para tornar o documento jurídico compreensível.</li>
        <li>Um documento jurídico deve identificar partes, assunto, factos, fundamentos e pedido.</li>
        <li>Os factos devem ser apresentados de forma clara e organizada.</li>
        <li>A fundamentação jurídica liga os factos ao Direito aplicável.</li>
        <li>O pedido ou conclusão deve ser claro e direto.</li>
      </ul>
    </section>

    <section class="card">
      <h2>13. Mini-questões</h2>

      <ol>
        <li>Porque é importante estruturar bem um documento jurídico?</li>
        <li>Quais são os elementos comuns de um documento jurídico?</li>
        <li>Qual é a diferença entre exposição dos factos e fundamentação jurídica?</li>
        <li>Porque deve o pedido final ser claro?</li>
        <li>Que erros devem ser evitados na estrutura de um documento jurídico?</li>
      </ol>
    </section>

    <section class="card">
      <h2>14. Exercício prático</h2>

      <p>
        Organiza a seguinte informação numa estrutura jurídica simples:
      </p>

      <blockquote>
        “A Ana comprou um telemóvel usado ao Bruno por 150 euros. O Bruno prometeu entregar o
        telemóvel no dia seguinte, mas passaram duas semanas e ainda não entregou nada. A Ana quer
        pedir a entrega do telemóvel ou a devolução do dinheiro.”
      </blockquote>

      <p>
        Deves separar:
      </p>

      <ul>
        <li>Identificação das partes.</li>
        <li>Factos relevantes.</li>
        <li>Obrigação assumida.</li>
        <li>Pedido final.</li>
      </ul>
    </section>

    <section class="card">
      <p>
        <a href="aula02.html">Aula anterior</a> |
        <a href="../../cadeiras/analise-producao-textos/index.html">Voltar à cadeira</a>
      </p>
    </section>
  </main>

  <footer>
    <p>&copy; 2026 Paulo Silva — Repositório de Solicitadoria</p>
  </footer>
</body>
</html>
EOF

# ==========================================================
# Atualizar página da cadeira
# ==========================================================

python3 <<'PY'
from pathlib import Path

path = Path("cadeiras/analise-producao-textos/index.html")

if not path.exists():
    print("ERRO: página da cadeira não encontrada.")
    raise SystemExit(1)

html = path.read_text(encoding="utf-8")

html = html.replace(
    "<li>Aula 03 — Estrutura de documentos jurídicos</li>",
    '<li><a href="../../aulas/analise-producao-textos/aula03.html">Aula 03 — Estrutura de documentos jurídicos</a></li>'
)

# Acrescentar link para aula seguinte na Aula 02, se ainda não existir
aula02 = Path("aulas/analise-producao-textos/aula02.html")
if aula02.exists():
    a2 = aula02.read_text(encoding="utf-8")
    if 'aula03.html' not in a2:
        a2 = a2.replace(
            '<a href="../../cadeiras/analise-producao-textos/index.html">Voltar à cadeira</a>',
            '<a href="../../cadeiras/analise-producao-textos/index.html">Voltar à cadeira</a> | <a href="aula03.html">Próxima aula</a>'
        )
        aula02.write_text(a2, encoding="utf-8")

path.write_text(html, encoding="utf-8")
print("Página da cadeira atualizada com link da Aula 03.")
PY

# ==========================================================
# Atualizar cadeiras.html com estrutura correta
# ==========================================================

python3 <<'PY'
from pathlib import Path
import re

path = Path("cadeiras.html")

if not path.exists():
    print("ERRO: cadeiras.html não encontrado.")
    raise SystemExit(1)

html = path.read_text(encoding="utf-8")

cartao_novo = (
    '<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3>'
    '<p>3 / 10 aulas concluídas</p>'
    '<span class="badge em-desenvolvimento">🟡 Em desenvolvimento</span>'
    '<br><br><a class="botao" href="cadeiras/analise-producao-textos/index.html">Entrar</a></div>'
)

padrao = (
    r'<div class="cadeira-card"><h3>📚 Análise e Produção de Textos</h3>'
    r'<p>.*?</p>'
    r'<span class="badge .*?">.*?</span>'
    r'(?:<br><br><a class="botao" href=".*?">Entrar</a>)?'
    r'</div>'
)

html, n = re.subn(padrao, cartao_novo, html, count=1, flags=re.DOTALL)

if n == 0:
    print("ERRO: não consegui atualizar o cartão da Cadeira 6.")
    raise SystemExit(1)

path.write_text(html, encoding="utf-8")
print("cadeiras.html atualizado para 3 / 10.")
PY

# ==========================================================
# Atualizar index.html quando possível
# ==========================================================

python3 <<'PY'
from pathlib import Path
import re

path = Path("index.html")

if not path.exists():
    print("AVISO: index.html não encontrado.")
    raise SystemExit

html = path.read_text(encoding="utf-8")
original = html

# Atualizar total de aulas para 53, se encontrar padrões simples
html = html.replace("52 aulas", "53 aulas")
html = html.replace("52 Aulas", "53 Aulas")
html = re.sub(r'(<[^>]*>\s*)52(\s*</[^>]*>)', r'\g<1>53\2', html, count=1)

if html != original:
    path.write_text(html, encoding="utf-8")
    print("index.html atualizado para 53 aulas.")
else:
    print("index.html não atualizado automaticamente.")
PY

# ==========================================================
# Git
# ==========================================================

git add .

git commit -m "Adicionar Aula 03 de Análise e Produção de Textos" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "Aula 03 criada com sucesso."
echo "Cadeira 6 atualizada para 3 / 10."
echo "Total previsto: 53 aulas."
echo "=========================================="
