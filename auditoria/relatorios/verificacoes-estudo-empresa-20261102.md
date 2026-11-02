# Verificações — Introdução ao Estudo da Empresa — 02/11/2026

Branch `codex/fase2-auditoria-integral`; referência anterior `d00cc1028a52de3b260d49032048d6903a9a3d7b`.

## Executadas

- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s auditoria -v`: **7/7 passaram**. Validação estrutural, estados, hashes, IDs, fontes e continuidade; não certifica as conclusões jurídicas.
- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v`: **10/10 passaram**. Ligações/âncoras, navegação, pesquisa, quiz, progresso, viewport, geração atual e preservação das aulas.
- `python3 auditoria/continuar.py --check`: sucesso; 38 disciplinas, 266 unidades e **269 HTML preservados byte a byte**. A hash de referência não foi atualizada para ocultar alterações.
- `python3 auditoria/continuar.py --proximo`: `sociologia-direito:aula-01`, pendente.
- Comparação independente dos registos e bytes dos relatórios fora de estudo-empresa com o commit anterior: **intactos**, incluindo as 36 análises concluídas anteriormente e os modelos pendentes das outras disciplinas.
- Contagens independentes: **46 concluídas, 220 pendentes**; 0 validadas, 25 correções menores, 17 correções jurídicas, 0 revisão profunda, 4 não verificadas. Lote: 6 menores, 3 jurídicas, 1 não verificada. Correções apenas propostas.
- Diferença fora de `auditoria/` contra o commit anterior: **vazia**. Nenhuma alteração a aula, exercício, avaliação, contador, código ou configuração.
- `git diff --check`: sem erros. Referências locais Markdown verificadas quanto à existência dos destinos; essa verificação não certifica fontes jurídicas externas.

## Revisão substantiva e limites

Leitura integral das dez unidades, incluindo nove casos e respetivas respostas orientadoras, perguntas de exame existentes e quiz final (cinco perguntas, vinte alternativas e cinco respostas assinaladas). A pergunta de desenvolvimento final não tem solução; ausência registada. Não se usou o patamar de 60% de outras disciplinas, inexistente neste ficheiro. As conclusões provêm da leitura e confronto jurídico/pedagógico, não de análise automática por palavras-chave.

Foram distinguidas entradas, personalidade e responsabilidade social, participação/controlo, classificações didáticas/legais, concorrência desleal e regimes concorrenciais, risco e responsabilidade. As limitações do CSC em atualização, efeitos diferidos de alteração e falha de acesso ao RGPD constam do registo. A solução jurídica completa de 09 permanece não verificada. Não houve ensaio com estudantes, certificação de conformidade ou aconselhamento a cliente real.

Não se instalaram dependências, modificaram bases de dados ou reiniciaram serviços. Não se alteraram testes para obter aprovação. Só se autorizam commit e push da branch de auditoria; nenhum merge ou publicação de correções jurídicas. Os testes não garantem ausência de todo o problema fora do âmbito verificado.
