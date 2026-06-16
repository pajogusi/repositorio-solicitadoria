#!/bin/bash

set -e

cd ~/universidade-da-vida-direito

echo "A verificar links internos do Repositório de Solicitadoria..."
echo ""

python3 <<'PY'
from pathlib import Path
from urllib.parse import urljoin, urlparse, unquote
import re

ROOT = Path(".").resolve()
BASE_URL = "https://pajogusi.github.io/repositorio-solicitadoria/"

html_files = sorted(ROOT.rglob("*.html"))

broken = []
external = []
checked = 0

def clean_href(href):
    href = href.strip()
    href = href.split("#")[0]
    href = href.split("?")[0]
    return href

for file in html_files:
    text = file.read_text(encoding="utf-8", errors="ignore")
    hrefs = re.findall(r'href=["\']([^"\']+)["\']', text)

    for href in hrefs:
        raw = href
        href = clean_href(href)

        if not href:
            continue

        if href.startswith(("mailto:", "tel:", "javascript:", "#")):
            continue

        parsed = urlparse(href)

        # Links externos
        if parsed.scheme in ("http", "https"):
            if "pajogusi.github.io/repositorio-solicitadoria" not in href:
                external.append((str(file.relative_to(ROOT)), raw))
                continue

            # Converter URL pública do próprio site para caminho local
            rel = href.replace(BASE_URL, "")
            target = ROOT / unquote(rel)

        # Links absolutos internos tipo /repositorio-solicitadoria/...
        elif href.startswith("/repositorio-solicitadoria/"):
            rel = href.replace("/repositorio-solicitadoria/", "")
            target = ROOT / unquote(rel)

        # Links relativos
        else:
            target = (file.parent / unquote(href)).resolve()

        checked += 1

        # Se for diretório, procurar index.html
        if target.is_dir():
            target = target / "index.html"

        if not target.exists():
            broken.append((str(file.relative_to(ROOT)), raw, str(target.relative_to(ROOT)) if ROOT in target.parents or target == ROOT else str(target)))

print("=== RESULTADO ===")
print(f"Ficheiros HTML analisados: {len(html_files)}")
print(f"Links internos verificados: {checked}")
print(f"Links externos ignorados: {len(external)}")
print(f"Links internos partidos: {len(broken)}")
print("")

if broken:
    print("=== LINKS PARTIDOS ===")
    for source, href, target in broken:
        print(f"[ERRO] {source}")
        print(f"       href: {href}")
        print(f"       alvo: {target}")
        print("")
else:
    print("✅ Nenhum link interno partido encontrado.")

print("")
print("=== LINKS EXTERNOS IGNORADOS ===")
for source, href in external[:50]:
    print(f"[EXTERNO] {source} -> {href}")

if len(external) > 50:
    print(f"... mais {len(external) - 50} links externos não listados.")
PY

