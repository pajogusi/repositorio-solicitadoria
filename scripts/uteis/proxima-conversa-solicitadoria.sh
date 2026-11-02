#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.."
printf 'Data e hora: %s\n\n' "$(TZ=Europe/London date '+%d/%m/%Y — %H:%M %Z')"
printf 'Estado local (leitura):\n'
git status --short --branch
printf '\nEstado de referência e continuidade:\n'
cat documentation/PROXIMA_CONVERSA.md
printf '\nSincronização do catálogo e da pesquisa (sem escrita):\n'
python3 scripts/atualizar_dados.py --check
