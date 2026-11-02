# Auditoria jurídica e pedagógica — Fase 2

Branch exclusiva: `codex/fase2-auditoria-integral`. Referência preservada: `1f91b283243e0a88c027e4daf12d91a70e20bf51`. Apenas `auditoria/` pode mudar nesta fase. Não alterar aulas, exercícios, site, dados académicos ou Pages; não integrar em main.

## Continuidade entre sessões

A partir da raiz executar `python3 auditoria/continuar.py --check` e `python3 auditoria/continuar.py --proximo`. Sem opções mostra contagens por disciplina. Só lê ficheiros, não inicia serviços nem modifica estados. O estado é partilhado pelo Git; requer que a sessão consulte esta branch. Não há execução automática sem uma sessão ativa do Codex.

1. Rever hashes e eventuais alterações detetadas antes de confiar em auditorias anteriores.
2. Retomar a primeira unidade em análise; na ausência desta, a primeira pendente pela ordem do catálogo.
3. Ler integralmente HTML, exemplos, exercícios e respostas, incluindo scripts que determinem respostas. Não usar apenas pesquisa por termos.
4. Confrontar conceitos, diplomas, artigos, vigência, alterações, revogações, transição, prazos, procedimentos, competências e exceções com fontes oficiais. Distinguir data de consulta da vigência; registar o que não se verificou. Não assumir validade pelo funcionamento de um URL.
5. Preencher o relatório próprio e os problemas com ID estável `<disciplina>:aula-NN:Pnn`. Atualizar progresso.json e resumo. Não sobrescrever observações anteriores; acrescentar revisões datadas. A hash representa os bytes efetivamente lidos; não a atualizar para ocultar alterações.
6. Avaliar clareza, sequência, aplicação, exercícios, respostas fundamentadas e coerência; não recomendar mudanças só por estilo. Não validar conteúdo com questões jurídicas relevantes em aberto.
7. Executar consistência e testes do site; confirmar que a diferença fora de auditoria/ está vazia. Criar commit do lote e enviar apenas esta branch. Registar a recuperação pelo histórico Git.

## Estados independentes

Auditoria: `pendente`, `em análise`, `concluída`. Conteúdo: null enquanto pendente; depois `validada`, `correções menores`, `correções jurídicas`, `revisão profunda`, `não verificada`. Correções: `não iniciadas`, `propostas`, `aprovadas`, `aplicadas`, `verificadas`. Auditoria concluída não significa correção aplicada. Uma verificação insuficiente recebe não verificada, com limites explícitos; não esconder uma análise incompleta como concluída.

## Inventário e preservação

[inventário](inventario.md), [estado por unidade](progresso.json), [resumo](relatorios/resumo-geral.md), [fontes](fontes/referencias-legislativas.md). 38 disciplinas; 266 unidades existentes; 269 HTML preservados contando três complementos. Onze disciplinas ainda não têm aulas, não são consideradas validadas. Para os quizzes que ocupam a décima unidade, conservar ID aula-10 e caminho real quiz-final.html.

As seis análises de Notariado recuperam o relatório de 02/11/2026 do snapshot indicado. Não se repetiu a consulta nem se eliminaram reservas. Datas de consulta das fontes não são datas de entrada em vigor. Os relatórios que permanecem pendentes são modelos sem avaliação de conteúdo; os lotes novos constam do resumo e do histórico em progresso.json. A última unidade concluída está em ultima_aula_concluida. Nenhuma correção está aprovada ou aplicada.

## Recuperação

`git log --oneline -- auditoria/` identifica os commits dos lotes. Pode consultar ou recriar uma branch a partir de um commit sem alterar main. Para desfazer um lote, propor um revert apenas na branch de auditoria, preservando o histórico; nunca aplicar reset destrutivo nem sobrescrever trabalho de outra sessão.
