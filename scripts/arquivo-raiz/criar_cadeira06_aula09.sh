#!/bin/bash

# ==========================================================
# Repositório de Solicitadoria
# Cadeira 6: Análise e Produção de Textos
# Aula 09: Caso prático orientado
# Autor oficial: Paulo Silva
# ==========================================================

set -e

echo "=========================================="
echo "A criar Aula 09 - Caso prático orientado"
echo "=========================================="

mkdir -p aulas/analise-producao-textos

cat > aulas/analise-producao-textos/aula09.html <<'EOF'
<!DOCTYPE html>
<html lang="pt-PT">
<head>
  <meta charset="UTF-8">
  <title>Aula 09 — Caso prático orientado</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../style.css">
</head>

<body>
  <header>
    <h1>Análise e Produção de Textos</h1>
    <p>Aula 09 — Caso prático orientado</p>
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
      <h2>1. Objetivo da aula</h2>

      <p>
        Esta aula aplica os conteúdos estudados nas aulas anteriores através de um caso prático
        orientado. O objetivo é treinar a leitura, análise, organização dos factos, identificação
        do problema jurídico e produção de um texto claro e fundamentado.
      </p>

      <p>
        Não se pretende aqui resolver uma questão jurídica complexa. Pretende-se praticar o método:
        ler, separar, organizar, argumentar e escrever.
      </p>
    </section>

    <section class="card">
      <h2>2. O caso prático</h2>

      <p>
        Lê atentamente a seguinte situação:
      </p>

      <blockquote>
        Ana contratou Bruno para reparar o seu computador portátil. Ficou acordado que o serviço
        seria concluído até ao dia 10 de maio de 2026, pelo preço de 180 euros. Ana pagou 90 euros
        no momento da entrega do computador, ficando o restante valor para pagar no final do serviço.
        No dia 10 de maio, Bruno não entregou o computador reparado. Ana tentou contactar Bruno nos
        dias 12, 15 e 20 de maio, mas não obteve resposta. No dia 25 de maio, Bruno informou que
        ainda não tinha iniciado a reparação. Ana pretende saber o que pode escrever para exigir uma
        solução.
      </blockquote>
    </section>

    <section class="card">
      <h2>3. Primeira leitura: compreender a situação</h2>

      <p>
        Antes de escrever qualquer documento, é necessário compreender bem a situação.
      </p>

      <p>
        Neste caso, temos:
      </p>

      <ul>
        <li>Uma prestação de serviços combinada entre Ana e Bruno.</li>
        <li>Um prazo acordado para conclusão do serviço.</li>
        <li>Um pagamento parcial efetuado por Ana.</li>
        <li>Falta de entrega do computador na data combinada.</li>
        <li>Falta de resposta a várias tentativas de contacto.</li>
        <li>Informação posterior de que a reparação nem sequer tinha sido iniciada.</li>
      </ul>

      <p>
        Estes elementos devem ser separados antes da redação do texto.
      </p>
    </section>

    <section class="card">
      <h2>4. Identificação das partes</h2>

      <p>
        As partes são as pessoas envolvidas na situação.
      </p>

      <ul>
        <li><strong>Ana:</strong> cliente, interessada na reparação do computador.</li>
        <li><strong>Bruno:</strong> prestador do serviço, responsável pela reparação.</li>
      </ul>

      <p>
        Num documento jurídico, a identificação completa poderia incluir nome completo, morada,
        contacto e número de identificação fiscal, se esses dados fossem conhecidos.
      </p>
    </section>

    <section class="card">
      <h2>5. Factos relevantes</h2>

      <p>
        Os factos relevantes são aqueles que importam para compreender o problema.
      </p>

      <ol>
        <li>Ana entregou o computador a Bruno para reparação.</li>
        <li>O preço acordado foi de 180 euros.</li>
        <li>Ana pagou 90 euros antecipadamente.</li>
        <li>O serviço deveria estar concluído até 10 de maio de 2026.</li>
        <li>Bruno não entregou o computador nessa data.</li>
        <li>Ana tentou contactar Bruno nos dias 12, 15 e 20 de maio.</li>
        <li>No dia 25 de maio, Bruno informou que ainda não tinha iniciado a reparação.</li>
      </ol>

      <p>
        Estes factos devem ser apresentados de forma objetiva, sem exageros nem linguagem emocional.
      </p>
    </section>

    <section class="card">
      <h2>6. Problema principal</h2>

      <p>
        O problema principal é o incumprimento do prazo acordado para a prestação do serviço.
      </p>

      <p>
        Além disso, há outro elemento importante: Ana já pagou parte do preço, mas o serviço não foi
        realizado.
      </p>

      <p>
        A questão prática pode ser formulada assim:
      </p>

      <blockquote>
        “Como deve Ana escrever a Bruno para exigir a conclusão imediata do serviço ou a devolução
        do valor pago?”
      </blockquote>
    </section>

    <section class="card">
      <h2>7. Escolha do tipo de documento</h2>

      <p>
        Neste caso, o documento mais adequado é uma comunicação formal ou requerimento simples,
        dirigido a Bruno.
      </p>

      <p>
        O texto deve:
      </p>

      <ul>
        <li>Identificar a situação.</li>
        <li>Indicar os factos principais.</li>
        <li>Referir o incumprimento do prazo.</li>
        <li>Formular um pedido claro.</li>
        <li>Fixar um prazo razoável para resposta ou solução.</li>
      </ul>
    </section>

    <section class="card">
      <h2>8. Estrutura recomendada</h2>

      <p>
        O documento pode seguir esta estrutura:
      </p>

      <ol>
        <li><strong>Assunto:</strong> incumprimento de prestação de serviços.</li>
        <li><strong>Identificação da cliente:</strong> Ana.</li>
        <li><strong>Exposição dos factos:</strong> contrato, preço, prazo e pagamento.</li>
        <li><strong>Incumprimento:</strong> serviço não concluído e reparação não iniciada.</li>
        <li><strong>Pedido:</strong> conclusão do serviço ou devolução do valor pago.</li>
        <li><strong>Prazo:</strong> resposta ou solução dentro de prazo definido.</li>
        <li><strong>Encerramento:</strong> data e assinatura.</li>
      </ol>
    </section>

    <section class="card">
      <h2>9. Modelo de texto possível</h2>

      <blockquote>
        <p><strong>Assunto:</strong> Pedido de resolução de incumprimento na prestação de serviços</p>

        <p>
          Exmo. Senhor Bruno,
        </p>

        <p>
          Ana vem expor que, no âmbito do serviço de reparação de computador portátil acordado entre
          as partes, entregou o referido equipamento para reparação, tendo sido combinado que o serviço
          estaria concluído até ao dia 10 de maio de 2026, pelo preço total de 180 euros.
        </p>

        <p>
          No momento da entrega do equipamento, foi pago o valor de 90 euros, correspondente a parte
          do preço acordado.
        </p>

        <p>
          Contudo, o computador não foi entregue reparado na data combinada. Foram ainda efetuadas
          tentativas de contacto nos dias 12, 15 e 20 de maio de 2026, sem resposta. No dia 25 de maio
          de 2026, foi informado que a reparação ainda não tinha sido iniciada.
        </p>

        <p>
          Face ao exposto, solicita-se que, no prazo de 5 dias, seja concluída a reparação acordada
          ou, em alternativa, seja devolvido o valor já pago.
        </p>

        <p>
          Com os melhores cumprimentos,
        </p>

        <p>
          Ana
        </p>
      </blockquote>
    </section>

    <section class="card">
      <h2>10. Análise do modelo</h2>

      <p>
        O modelo apresentado é eficaz porque:
      </p>

      <ul>
        <li>Identifica o assunto.</li>
        <li>Apresenta os factos por ordem lógica.</li>
        <li>Refere datas concretas.</li>
        <li>Evita linguagem agressiva.</li>
        <li>Explica o incumprimento.</li>
        <li>Formula um pedido claro.</li>
        <li>Define um prazo para resposta ou solução.</li>
      </ul>

      <p>
        O texto não acusa de forma emocional. Limita-se a expor os factos e a pedir uma solução.
      </p>
    </section>

    <section class="card">
      <h2>11. Versão fraca do mesmo texto</h2>

      <blockquote>
        “Bruno, isto já passou dos limites. Ficaste com o computador, não fizeste nada e agora quero
        que resolvas isto depressa ou devolvas o dinheiro.”
      </blockquote>

      <p>
        Esta versão é fraca porque:
      </p>

      <ul>
        <li>É emocional.</li>
        <li>Não identifica datas.</li>
        <li>Não apresenta estrutura.</li>
        <li>Não refere o valor pago.</li>
        <li>Não fixa prazo concreto.</li>
        <li>Tem menor força formal.</li>
      </ul>
    </section>

    <section class="card">
      <h2>12. Exercício orientado</h2>

      <p>
        Agora reescreve o caso usando uma estrutura própria. O teu texto deve conter:
      </p>

      <ol>
        <li>Assunto.</li>
        <li>Identificação das partes.</li>
        <li>Factos principais.</li>
        <li>Indicação do incumprimento.</li>
        <li>Pedido final.</li>
        <li>Prazo para resposta ou solução.</li>
      </ol>

      <p>
        Evita linguagem emocional. Usa datas, valores e factos concretos.
      </p>
    </section>

    <section class="card">
      <h2>13. Mini-questões</h2>

      <ol>
        <li>Qual é o problema principal no caso apresentado?</li>
        <li>Quais são os factos juridicamente relevantes?</li>
        <li>Que tipo de documento é adequado para esta situação?</li>
        <li>Porque é importante indicar datas e valores concretos?</li>
        <li>Qual é a diferença entre a versão formal e a versão fraca do texto?</li>
      </ol>
    </section>

    <section class="card">
      <h2>14. Resumo da aula</h2>

      <ul>
        <li>Um caso prático deve ser lido com método.</li>
        <li>Antes de escrever, é necessário separar partes, factos, problema e pedido.</li>
        <li>A escrita jurídica deve ser objetiva, clara e organizada.</li>
        <li>O pedido final deve ser concreto e compreensível.</li>
        <li>Datas, valores e prazos fortalecem o texto.</li>
      </ul>
    </section>

    <section class="card">
      <p>
        <a href="aula08.html">Aula anterior</a> |
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

python3 <<'PY'
from pathlib import Path

path = Path("cadeiras/analise-producao-textos/index.html")

if not path.exists():
    print("ERRO: página da cadeira não encontrada.")
    raise SystemExit(1)

html = path.read_text(encoding="utf-8")

html = html.replace(
    "<li>Aula 09 — Caso prático orientado</li>",
    '<li><a href="../../aulas/analise-producao-textos/aula09.html">Aula 09 — Caso prático orientado</a></li>'
)

path.write_text(html, encoding="utf-8")
print("Página da cadeira atualizada com link da Aula 09.")

aula08 = Path("aulas/analise-producao-textos/aula08.html")
if aula08.exists():
    a8 = aula08.read_text(encoding="utf-8")
    if 'aula09.html' not in a8:
        a8 = a8.replace(
            '<a href="../../cadeiras/analise-producao-textos/index.html">Voltar à cadeira</a>',
            '<a href="../../cadeiras/analise-producao-textos/index.html">Voltar à cadeira</a> | <a href="aula09.html">Próxima aula</a>'
        )
        aula08.write_text(a8, encoding="utf-8")
        print("Aula 08 atualizada com link para Aula 09.")
PY

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
    '<p>9 / 10 aulas concluídas</p>'
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
print("cadeiras.html atualizado para 9 / 10.")
PY

python3 <<'PY'
from pathlib import Path
import re

path = Path("index.html")

if not path.exists():
    print("AVISO: index.html não encontrado.")
    raise SystemExit

html = path.read_text(encoding="utf-8")
original = html

html = html.replace("58 aulas", "59 aulas")
html = html.replace("58 Aulas", "59 Aulas")
html = re.sub(r'(<[^>]*>\s*)58(\s*</[^>]*>)', r'\g<1>59\2', html, count=1)

if html != original:
    path.write_text(html, encoding="utf-8")
    print("index.html atualizado para 59 aulas.")
else:
    print("index.html não atualizado automaticamente.")
PY

git add .

git commit -m "Adicionar Aula 09 de Análise e Produção de Textos" || echo "Nada novo para commit."

git push

echo "=========================================="
echo "Aula 09 criada com sucesso."
echo "Cadeira 6 atualizada para 9 / 10."
echo "Total previsto: 59 aulas."
echo "=========================================="
