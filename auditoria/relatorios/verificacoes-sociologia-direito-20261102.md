# Verificações — Sociologia do Direito — 02/11/2026

Branch `codex/fase2-auditoria-integral`; referência anterior `3020c942ed2b644b2e4c2b01f68fd726a14a4ed4`. Main confirmada em leitura em `1f91b283243e0a88c027e4daf12d91a70e20bf51`.

## Executadas

- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s auditoria -v`: **7/7 passaram**. Estados independentes, relatórios, fontes, IDs, hashes e continuidade. Não certifica rigor jurídico por automatismo.
- `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v`: **10/10 passaram**. Ligações/âncoras públicas, navegação, dados gerados, pesquisa, comportamento JavaScript, progresso e preservação. O teste viewport/IDs é estrutural; não equivale a novo ensaio visual em aparelhos físicos.
- `python3 auditoria/continuar.py --check`: sucesso; **38 disciplinas, 266 unidades e 269 HTML preservados byte a byte**. Hashes iniciais mantidos.
- `python3 auditoria/continuar.py --proximo`: `analise-producao-textos:aula-01`, pendente.
- Comparação independente contra o commit anterior: **256 registos e respetivos relatórios fora de Sociologia intactos**, incluindo as 46 análises anteriormente concluídas. Mapa de preservação original idêntico.
- Contagens independentes: **56 concluídas, 210 pendentes**; 0 validadas, 34 correções menores, 17 correções jurídicas, 0 revisão profunda, 5 não verificadas. Lote de Sociologia: 9 menores e 1 não verificada. Correções deste lote apenas propostas.
- Diferença fora de `auditoria/` contra a referência anterior: **vazia**. Aulas, exercícios, avaliações, progresso académico, site e configuração não alterados.
- Destinos locais dos links Markdown da auditoria verificados quanto à existência; isso não valida fontes externas. `git diff --check` sem erros.

## Revisão substantiva e limites

Leitura integral das dez unidades. Foram inspecionados exemplos, perguntas de exame de 01–08, sete casos de 02–08 com quatro questões e resposta cada, seis questões/análise/resposta do caso 09, quarenta perguntas e quarenta respostas dos mini-quizzes de 01–08 e quinze perguntas/quinze soluções do quiz final. A pergunta de desenvolvimento de 10 não tem solução. Scripts locais sem mecanismo próprio de avaliação automática; não se transportou o patamar de 60% de outras disciplinas.

As conclusões resultam da leitura e confronto conceptual/jurídico, não de deteção automática de palavras. Foram delimitadas as fontes primárias dos autores, normas selecionadas e referências não verificadas. Falhas de acesso ao EUR-Lex e à página da Universidade de Viena estão registadas; a tipologia de Weber recebeu outra fonte primária efetivamente lida. O caso local da aula 09 continua sem solução jurídica completa por falta de factos e atos aplicáveis. Não se certificou conformidade digital de uma empresa ou causalidade empírica dos exemplos hipotéticos.

Não houve ensaio com estudantes ou nova certificação pedagógica/profissional. Não se instalaram dependências, modificaram bases de dados, iniciaram serviços ou alteraram testes para obter aprovação. Commit e push autorizados apenas na branch de auditoria; nenhum merge para main ou publicação de correções jurídicas.
