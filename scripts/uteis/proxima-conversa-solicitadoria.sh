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
- 25 / 38 cadeiras concluídas
- 256 / 380 aulas concluídas
- Progresso global: 67,4%
- Semestres concluídos: 4 / 6
- Última cadeira concluída: Direito Processual Civil III — 10 / 10
- Cadeira atual: Direito da Família e das Sucessões II — 6 / 10 aulas concluídas
- Próxima aula: Aula 07 — Testamento, legados e capacidade sucessória

SEQUÊNCIA CORRETA
21. Direito Fiscal II
22. Direito da Família e das Sucessões I
23. Direito das Sociedades
24. Princípios de Finanças
25. Direito Processual Civil III
26. Direito da Família e das Sucessões II

REGRAS
- Começar novas conversas com data e hora.
- Confirmar sempre primeiro em que máquina estamos.
- Se for paulo@paulo-755XDA: já está no portátil, não usar SSH para 192.168.1.195.
- Se for dell@overdrive-core: está no Centro.
- Criar uma aula de cada vez.
- Atualizar apresentação da cadeira, cadeiras.html, index.html e paginas/mapa.html.
- Validar sempre git diff -- cadeiras.html antes do commit.
- Não iniciar nova cadeira antes de concluir Direito da Família e das Sucessões II.

VALIDAÇÃO ATUAL
TXT

grep -n "25 / 38\|256 / 380\|67,4%\|Semestres concluídos" index.html || true
grep -n "Direito Processual Civil III\|Direito da Família e das Sucessões II" cadeiras.html || true
grep -n "Direito da Família e das Sucessões II\|aula-06.html\|jurisprudencia/direito-familia-sucessoes-ii" paginas/mapa.html || true
grep -n "256 / 380\|67,4%\|Direito da Família e das Sucessões II — 6 / 10\|Aula 07" README.md documentation/ESTADO_ATUAL.md documentation/CONTINUIDADE.md documentation/PROXIMA_CONVERSA.md || true
