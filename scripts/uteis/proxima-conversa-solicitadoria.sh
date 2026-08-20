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
- 265 / 380 aulas concluídas
- Progresso global: 69,7%
- Semestres concluídos: 4 / 6
- Última cadeira concluída: Direito da Família e das Sucessões II — 10 / 10
- Cadeira atual: Direito do Notariado — 5 / 10 aulas concluídas
- Próxima aula: Aula 06 — Escritura pública e documentos particulares autenticados

PROGRAMA DE DIREITO DO NOTARIADO
1. Aula 01 — Função notarial, fé pública e sistema do notariado português
2. Aula 02 — Notário, cartório notarial, competência e deveres profissionais
3. Aula 03 — Instrumentos notariais: escrituras, termos, reconhecimentos, autenticações e certidões
4. Aula 04 — Identificação, capacidade, representação e poderes dos intervenientes
5. Aula 05 — Formalidades comuns dos atos notariais e leitura/assinatura
6. Aula 06 — Escritura pública e documentos particulares autenticados
7. Aula 07 — Procurações, substabelecimentos, autorizações e representação voluntária
8. Aula 08 — Atos notariais em matéria de família, sucessões e imóveis
9. Aula 09 — Arquivo notarial, certidões, recusas e responsabilidade
10. Aula 10 — Caso prático integrado e revisão final

REGRAS
- Começar novas conversas com data e hora.
- Confirmar sempre primeiro em que máquina estamos.
- Se for paulo@paulo-755XDA: já está no portátil, não usar SSH para 192.168.1.195.
- Se for dell@overdrive-core: está no Centro.
- Criar uma aula de cada vez.
- Atualizar apresentação da cadeira, cadeiras.html, index.html e paginas/mapa.html.
- Validar sempre git diff -- cadeiras.html antes do commit.
- Não iniciar nova cadeira antes de concluir Direito do Notariado.

VALIDAÇÃO ATUAL
TXT

grep -n "26 / 38\|265 / 380\|69,7%\|Semestres concluídos" index.html || true
grep -n "Direito do Notariado" cadeiras.html || true
grep -n "Direito do Notariado\|aula-03.html\|jurisprudencia/direito-notariado" paginas/mapa.html || true
grep -n "265 / 380\|69,7%\|Direito do Notariado — 5 / 10\|Aula 06" README.md documentation/ESTADO_ATUAL.md documentation/CONTINUIDADE.md documentation/PROXIMA_CONVERSA.md || true
