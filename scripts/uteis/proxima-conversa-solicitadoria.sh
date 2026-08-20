#!/usr/bin/env bash
set -euo pipefail

printf 'Data e hora: %s\n\n' "$(TZ=Europe/London date '+%d/%m/%Y — %H:%M %Z')"

cat <<'TXT'
CONTEXTO PARA A PRÓXIMA CONVERSA

Projeto: Repositório de Solicitadoria
Autor público: Paulo Silva (Pàjó)
URL: https://pajogusi.github.io/repositorio-solicitadoria/
Pasta local: ~/universidade-da-vida-direito

ESTADO ATUAL
- 26 / 38 cadeiras concluídas
- 260 / 380 aulas concluídas
- Progresso global: 68,4%
- Semestres concluídos: 4 / 6
- Última cadeira concluída: Direito da Família e das Sucessões II — 10 / 10
- Próxima cadeira: Direito do Notariado
- Próxima aula: Aula 01 — apresentação e início de Direito do Notariado

SEQUÊNCIA CORRETA
21. Direito Fiscal II
22. Direito da Família e das Sucessões I
23. Direito das Sociedades
24. Princípios de Finanças
25. Direito Processual Civil III
26. Direito da Família e das Sucessões II
27. Direito do Notariado

REGRAS
- Começar novas conversas com data e hora.
- Confirmar sempre primeiro em que máquina estamos.
- Se for paulo@paulo-755XDA: já está no portátil, não usar SSH para 192.168.1.195.
- Se for dell@overdrive-core: está no Centro.
- Criar uma aula de cada vez.
- Atualizar apresentação da cadeira, cadeiras.html, index.html e paginas/mapa.html.
- Validar sempre git diff -- cadeiras.html antes do commit.
- Não iniciar nova cadeira sem confirmar que Direito da Família e das Sucessões II está 10 / 10 e concluída.

VALIDAÇÃO ATUAL
TXT

grep -n "26 / 38\|260 / 380\|68,4%\|Semestres concluídos" index.html || true
grep -n "Direito Processual Civil III\|Direito da Família e das Sucessões II\|Direito do Notariado" cadeiras.html || true
grep -n "Direito da Família e das Sucessões II\|aula-10.html\|jurisprudencia/direito-familia-sucessoes-ii" paginas/mapa.html || true
grep -n "260 / 380\|68,4%\|Direito da Família e das Sucessões II — 10 / 10\|Direito do Notariado" README.md documentation/ESTADO_ATUAL.md documentation/CONTINUIDADE.md documentation/PROXIMA_CONVERSA.md || true
