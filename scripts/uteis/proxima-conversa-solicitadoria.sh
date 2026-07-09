#!/usr/bin/env bash
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
- 208 / 380 aulas concluídas
- Progresso global: 54,7%
- Última cadeira concluída: Direito Processual Civil II — 10 / 10
- Cadeira atual: Direito Fiscal II — 8 / 10 aulas concluídas
- Próxima aula: Aula 09 — Infrações tributárias e responsabilidade fiscal

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

grep -n "208 / 380\|53,2\|Direito Fiscal II\|aula-08" index.html cadeiras.html paginas/mapa.html README.md documentation/ESTADO_ATUAL.md documentation/CONTINUIDADE.md documentation/PROXIMA_CONVERSA.md 2>/dev/null || true

echo
echo "GIT"
git status --short
