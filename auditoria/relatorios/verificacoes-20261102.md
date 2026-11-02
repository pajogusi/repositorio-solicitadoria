# Verificações dos lotes iniciais — 02/11/2026

Estado de conteúdo: 26/266 relatórios concluídos, incluindo seis recuperados; 240 pendentes. A existência de 266 relatórios não significa 266 auditorias concluídas.

- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s auditoria -v`: sete testes passaram, incluindo divergência de hash, duplicação de ID, conclusão com modelo por preencher, fonte inexistente e prioridade de análise incompleta. São verificações de registo, não de correção jurídica.
- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v`: dez testes do site passaram, incluindo ligações internas/âncoras, pesquisa, progresso, navegação, quiz, viewport e preservação original das aulas.
- `python3 auditoria/continuar.py --check`: sucesso; 38 disciplinas, 266 unidades e 269 HTML preservados byte a byte contra o snapshot inicial da Fase 2.
- `python3 auditoria/continuar.py --proximo`: primeira pendente `introducao-economia:aula-01`.
- `git diff --check`: sem erros.
- Comparação contra 1f91b283243e0a88c027e4daf12d91a70e20bf51 excluindo auditoria/: diferença vazia. Aulas, exercícios, avaliações, dados de progresso, configuração e funcionamento do site não foram modificados.

Durante a atualização, um teste do mecanismo de continuidade ainda apontava à primeira unidade, que entretanto deixou de estar pendente. A fixture foi corrigida para selecionar uma unidade efetivamente pendente; os sete testes voltaram a passar. Não foi alterado qualquer teste do site ou aula para obter aprovação.

Não se executaram testes que alterassem bases de dados ou sistemas externos. Não foram feitas instalações. Não houve validação com estudantes ou publicação de propostas jurídicas. Apenas commits e push da branch de auditoria são autorizados nesta fase. O relatório não garante ausência de todo e qualquer problema não abrangido pelos testes.
