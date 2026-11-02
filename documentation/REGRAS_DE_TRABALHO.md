# Regras de Trabalho — Repositório de Solicitadoria

Atualização técnica: 02/11/2026. A secção de conteúdo abaixo foi preservada.

## Preparação

- Confirmar máquina, pasta, branch e `git status --short --branch`.
- Preservar alterações existentes; nunca sobrescrever trabalho local.
- Criar branch própria e guardar o SHA de base antes de alterar ficheiros.
- Alterar apenas o âmbito autorizado. Merge e publicação exigem autorização explícita.

## Manutenção técnica

1. Atualizar apenas os HTML autorizados e confirmar destinos de links.
2. Manter o plano em `cadeiras.html` coerente com os ficheiros reais.
3. Executar `python3 scripts/atualizar_dados.py` para regenerar catálogo, pesquisa e resumo.
4. Executar `python3 scripts/atualizar_dados.py --check` e `PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v`.
5. Testar pesquisa, progresso, navegação e quiz no navegador em computador, tablet e telemóvel.
6. Rever o diff antes de adicionar ficheiros específicos ao commit.
7. Enviar apenas a branch autorizada. A raiz de `main` é a origem do Pages.

## HTML e dados

- Usar UTF-8, `lang`, viewport, CSS partilhado e navegação com destinos existentes.
- Preservar avisos, rodapés, exercícios e avaliações.
- Páginas futuras aparecem como texto sem ligação até o destino existir.
- As páginas públicas são os HTML da raiz e de `aulas`, `biblioteca`, `cadeiras`, `casos`, `glossario`, `jurisprudencia` e `paginas`.
- Não editar manualmente os índices gerados em `data/cadeiras.js` e `data/pesquisa.js`.
- Os scripts em `scripts/arquivo-raiz/` e `criar_aula04_notariado.py` são históricos e podem sobrescrever ficheiros e/ou fazer commit/push. Não os executar como rotina atual.
- Testes permanentes em `tests/` fazem parte da manutenção; backups e ficheiros temporários não devem ser adicionados.

## Regras de conteúdo

As aulas devem ser desenvolvidas e não meros apontamentos.

Estrutura recomendada:

1. Objetivos
2. Competências
3. Introdução
4. Base legal
5. Conceitos-chave
6. Desenvolvimento
7. Exemplos práticos
8. Nota prática processual
9. Passo-a-passo do solicitador
10. Caso prático orientado
11. Resolução comentada
12. Erros frequentes
13. Aplicação na Solicitadoria
14. Mini-quiz
15. Respostas comentadas
16. Resumo
17. Leitura recomendada
18. Navegação final
19. Aviso legal

---

## Referência e continuidade

Estado de referência em 02/11/2026: 38 disciplinas, 26 concluídas, uma em curso, 11 por iniciar; 266/380 aulas, 70,0%.
Notariado tem seis aulas; a próxima aula editorial é a 07, cuja criação está fora da Fase 1.
As referências normativas e o conteúdo pedagógico dependem da Fase 2. A classificação editorial «concluída» não comprova validação jurídica.
