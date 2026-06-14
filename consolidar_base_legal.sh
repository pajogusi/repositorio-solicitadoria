#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A aplicar secções jurídicas às aulas existentes..."

python3 << 'PY'
from pathlib import Path

bloco = '''
<section>
<h2>⚖️ Base Legal</h2>

<ul>
<li><a href="https://diariodarepublica.pt/dr/legislacao-consolidada/lei/1976-34520775" target="_blank">Constituição da República Portuguesa</a></li>
<li><a href="https://diariodarepublica.pt/" target="_blank">Diário da República</a></li>
<li><a href="https://eur-lex.europa.eu/" target="_blank">EUR-Lex</a></li>
<li><a href="https://www.dgsi.pt/" target="_blank">DGSI – Jurisprudência</a></li>
<li><a href="../../biblioteca/codigos-juridicos.html">Biblioteca Jurídica do Repositório</a></li>
</ul>
</section>

<section>
<h2>📚 Leitura Recomendada</h2>

<ul>
<li>Constituição da República Portuguesa.</li>
<li>Código Civil.</li>
<li>Legislação complementar aplicável.</li>
</ul>
</section>

<section>
<h2>🔗 Ligações Oficiais</h2>

<ul>
<li><a href="https://diariodarepublica.pt/" target="_blank">Diário da República</a></li>
<li><a href="https://www.dgsi.pt/" target="_blank">DGSI – Jurisprudência</a></li>
<li><a href="https://eur-lex.europa.eu/" target="_blank">EUR-Lex</a></li>
</ul>
</section>
'''

pastas = [
    Path("aulas/introducao-direito"),
    Path("aulas/direito-constitucional")
]

for pasta in pastas:
    if not pasta.exists():
        continue

    for ficheiro in pasta.glob("*.html"):
        html = ficheiro.read_text(encoding="utf-8")

        if "⚖️ Base Legal" in html:
            continue

        if "<hr>" in html:
            html = html.replace("<hr>", bloco + "\n<hr>", 1)
        else:
            html = html.replace("</main>", bloco + "\n</main>")

        ficheiro.write_text(html, encoding="utf-8")

print("Consolidação concluída.")
PY

git add .
git commit -m "Adicionar Base Legal as cadeiras antigas"
git push

echo "Consolidação jurídica concluída."
