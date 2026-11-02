# Estado Atual — Repositório de Solicitadoria

Referência técnica: 02/11/2026, branch da Fase 1. A publicação continua a depender de autorização de merge.

| Indicador | Valor confirmado nos HTML e ficheiros |
|---|---:|
| Disciplinas previstas | 38 |
| Concluídas | 26 |
| Em curso | 1 |
| Por iniciar | 11 |
| Aulas do percurso existentes | 266 / 380 |
| Progresso das aulas | 70,0% |
| Semestres concluídos no plano | 4 / 6 |
| Última cadeira concluída | Direito da Família e das Sucessões II |
| Cadeira em curso | Direito do Notariado — 6 / 10 |
| Próxima aula ainda inexistente | Notariado — Aula 07 |

Há 309 páginas públicas: 269 em `aulas/`, 26 em `cadeiras/`, cinco em `paginas/`, três em `jurisprudencia/`, três páginas de biblioteca/glossário/casos e três na raiz.
Os 269 HTML de aulas incluem 266 aulas oficiais e três complementos de Obrigações. Os 12 quizzes que substituem a aula 10 são contados como aulas; o quiz adicional de Obrigações não duplica o progresso.

## Componentes técnicos

- HTML/CSS/JavaScript estáticos, sem backend, base de dados ou autenticação própria.
- Pesquisa gerada a partir dos títulos, conteúdo e rótulos das aulas, sem serviço externo.
- Catálogo gerado a partir do plano e dos ficheiros de aulas; progresso calculado no navegador e fallback HTML sincronizado.
- Geração: `python3 scripts/atualizar_dados.py`.
- Verificação: `python3 scripts/atualizar_dados.py --check`.
- Regressões: `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v`.

## Âmbito

A Fase 1 mantém o conteúdo jurídico, exercícios e avaliações. As alterações às aulas limitam-se a viewport e navegação.
A navegação para a aula 07 de Notariado permanece indisponível até a página existir; não foi criada uma aula fictícia.
O conteúdo aguarda auditoria jurídica e pedagógica da Fase 2. As auditorias anteriores são documentos de referência, não validação concluída.
