# Continuidade — Repositório de Solicitadoria

Referência técnica: 02/11/2026.

## Estado confirmado

38 disciplinas previstas; 26 concluídas, uma em curso e 11 por iniciar.
266 aulas do percurso existentes em 380 previstas: 70,0%.
Última cadeira concluída: Direito da Família e das Sucessões II.
Cadeira atual: Direito do Notariado, aulas 01 a 06 existentes. A próxima é a aula 07.

## Retomar trabalho

1. Confirmar pasta, branch e alterações existentes sem sobrescrever trabalho.
2. Consultar `ESTADO_ATUAL.md`, `REGRAS_DE_TRABALHO.md` e o README.
3. Executar `python3 scripts/atualizar_dados.py --check` para detetar divergências entre HTML e dados gerados.
4. Consultar o diff e os testes antes de qualquer alteração adicional.
5. Respeitar o âmbito autorizado: Fase 1 técnica; conteúdos jurídicos e pedagógicos reservados à Fase 2.

Os contadores do navegador são calculados a partir de `data/cadeiras.js`, gerado por verificação dos ficheiros de aulas.
Depois de editar páginas pesquisáveis, regenerar o índice com `python3 scripts/atualizar_dados.py`.
Não executar os geradores antigos ou os scripts arquivados para continuar o projeto.

## Recuperação e publicação

Base da Fase 1: `6497eb2fe04a7639a5160b2ede1e0eee9ccf1663`.
Tag local: `fase1-base-20261102`.
Branch de intervenção: `codex/fase1-correcoes-tecnicas-20261102`.
O GitHub Pages serve `main` na raiz. Não fazer merge nem publicar sem autorização.
Para consultar a base, criar uma nova branch a partir do SHA; não fazer reset ou force-push.
