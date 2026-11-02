# Verificações — Análise e Produção de Textos — 02/11/2026

Branch `codex/fase2-auditoria-integral`; referência anterior `e5e73b8f6ef828f4be3d0acbe192b56c98640805`. Main confirmada em leitura em `1f91b283243e0a88c027e4daf12d91a70e20bf51`.

## Executadas

- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s auditoria -v`: **7/7 passaram**. Estados, fontes, relatórios, IDs, hashes e continuidade. Não certifica conteúdo jurídico automaticamente.
- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v`: **10/10 passaram**. Links/âncoras, navegação, dados gerados, pesquisa, comportamento JavaScript, progresso e preservação. Viewport/IDs verificados estruturalmente; não houve novo ensaio visual em aparelhos físicos.
- `python3 auditoria/continuar.py --check`: sucesso; **38 disciplinas, 266 unidades, 269 HTML preservados byte a byte**. Não se alteraram hashes iniciais para ocultar mudanças.
- `python3 auditoria/continuar.py --proximo`: `introducao-direito-ii:aula-01`, pendente.
- Comparação independente com o commit anterior: **256 registos e respetivos relatórios fora desta disciplina intactos**, incluindo os 56 anteriormente concluídos. Mapa de preservação idêntico.
- Contagens independentes: **66 concluídas, 200 pendentes**; 0 validadas, 40 correções menores, 19 correções jurídicas, 0 revisão profunda, 7 não verificadas. Neste lote: 6 menores, 2 jurídicas e 2 não verificadas. Correções apenas propostas.
- Diferença fora de `auditoria/` contra a referência anterior: **vazia**. Nenhuma alteração a aulas, exercícios, avaliações, progresso académico, site ou configurações.
- Destinos locais dos links Markdown da auditoria verificados quanto à existência; não certifica fontes externas. `git diff --check`: sem erros.

## Revisão substantiva e limites

Leitura integral das dez unidades. Quarenta e cinco mini-questões de 01–09, sem respostas autónomas, e nove exercícios principais foram analisados. Modelos e análise orientadora de 09 foram lidos e não confundidos com ausência de toda orientação. Em 10 foram lidas cinco tarefas do caso, modelo, dez questões abertas e dez correções. Não há escolha múltipla, nota mínima de 60% ou script local de correção automática. As conclusões provêm da leitura/confronto, não de pesquisa por palavras-chave.

Foram verificados os papéis na obrigação de renda, limites dos prazos de denúncia de defeitos, regras selecionadas de CCG, requisitos específicos por contexto e distinção entre pedido negocial e exercício de remédio jurídico. Os cinco dias dos modelos finais e a solução jurídica completa continuam não verificados. O erro de âmbito do exemplo de trinta dias foi distinguido da sua leitura literal correta. Não se declarou ilegal todo pedido de reembolso ou toda cláusula hipotética.

A redação futura do CPC e as reservas de atualização das fontes estão discriminadas no registo. As orientações da Justiça sobre escrita são guias, não normas universais ou prova de aprendizagem. Não houve ensaio com estudantes, certificação profissional ou novo aconselhamento sobre caso real.

Não se instalaram dependências, modificaram bases de dados, reiniciaram serviços ou alteraram testes para obter aprovação. Commit e push apenas na branch de auditoria; nenhum merge para main ou publicação de correções jurídicas.
