#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A aplicar Base Legal específica por cadeira..."

python3 << 'PY'
from pathlib import Path

def aplicar_base_legal(pasta, bloco):
    pasta = Path(pasta)
    if not pasta.exists():
        print(f"Pasta não encontrada: {pasta}")
        return

    for ficheiro in pasta.glob("*.html"):
        html = ficheiro.read_text(encoding="utf-8")

        if "⚖️ Base Legal Específica" in html:
            continue

        if "⚖️ Base Legal" in html:
            html = html.replace("<h2>⚖️ Base Legal</h2>", "<h2>⚖️ Base Legal Específica</h2>", 1)
            continue

        if "<hr>" in html:
            html = html.replace("<hr>", bloco + "\n<hr>", 1)
        else:
            html = html.replace("</main>", bloco + "\n</main>")

        ficheiro.write_text(html, encoding="utf-8")


base_introducao_direito = '''
<section>
<h2>⚖️ Base Legal Específica</h2>
<ul>
<li><a href="https://diariodarepublica.pt/dr/legislacao-consolidada/lei/1976-34520775" target="_blank">Constituição da República Portuguesa</a></li>
<li><a href="https://www.pgdlisboa.pt/leis/lei_mostra_articulado.php?nid=775&tabela=leis" target="_blank">Código Civil</a></li>
<li><a href="../../biblioteca/codigos-juridicos.html">Biblioteca Jurídica do Repositório</a></li>
</ul>
</section>

<section>
<h2>📚 Leitura Recomendada</h2>
<ul>
<li>Constituição da República Portuguesa.</li>
<li>Código Civil — normas introdutórias e princípios gerais.</li>
<li>Fontes do Direito, interpretação da lei e aplicação da norma jurídica.</li>
</ul>
</section>
'''

base_constitucional = '''
<section>
<h2>⚖️ Base Legal Específica</h2>
<ul>
<li><a href="https://diariodarepublica.pt/dr/legislacao-consolidada/lei/1976-34520775" target="_blank">Constituição da República Portuguesa</a></li>
<li><a href="https://www.tribunalconstitucional.pt/" target="_blank">Tribunal Constitucional</a></li>
<li><a href="https://diariodarepublica.pt/" target="_blank">Diário da República</a></li>
<li><a href="../../biblioteca/codigos-juridicos.html">Biblioteca Jurídica do Repositório</a></li>
</ul>
</section>

<section>
<h2>📚 Leitura Recomendada</h2>
<ul>
<li>Constituição da República Portuguesa.</li>
<li>Jurisprudência do Tribunal Constitucional.</li>
<li>Princípios fundamentais, direitos fundamentais e fiscalização da constitucionalidade.</li>
</ul>
</section>
'''

base_economia = '''
<section>
<h2>⚖️ Base Legal Específica</h2>
<ul>
<li><a href="https://diariodarepublica.pt/dr/legislacao-consolidada/lei/1976-34520775" target="_blank">Constituição da República Portuguesa</a></li>
<li><a href="https://info.portaldasfinancas.gov.pt/" target="_blank">Autoridade Tributária e Aduaneira</a></li>
<li><a href="https://www.concorrencia.pt/" target="_blank">Autoridade da Concorrência</a></li>
<li><a href="https://eur-lex.europa.eu/" target="_blank">EUR-Lex — Direito da União Europeia</a></li>
<li><a href="../../biblioteca/codigos-juridicos.html">Biblioteca Jurídica do Repositório</a></li>
</ul>
</section>

<section>
<h2>📚 Leitura Recomendada</h2>
<ul>
<li>Constituição da República Portuguesa — organização económica e sistema fiscal.</li>
<li>Lei Geral Tributária, Código do IRS, Código do IRC e Código do IVA.</li>
<li>Legislação sobre concorrência e mercado.</li>
</ul>
</section>
'''

aplicar_base_legal("aulas/introducao-direito-i", base_introducao_direito)
aplicar_base_legal("aulas/direito-constitucional", base_constitucional)
aplicar_base_legal("aulas/introducao-economia", base_economia)

print("Base Legal específica aplicada.")
PY

git add .
git commit -m "Aplicar Base Legal especifica por cadeira"
git push

echo "Base Legal específica aplicada às cadeiras."
