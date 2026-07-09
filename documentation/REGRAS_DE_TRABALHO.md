# Regras de Trabalho — Repositório de Solicitadoria

Atualizado em: **09/07/2026 — 10:47 BST**

## Regra inicial das novas conversas

Sempre que se iniciar uma nova conversa dentro dos projetos, a primeira resposta deve incluir a data e hora atuais:

```text
Data e hora: DD/MM/AAAA — HH:MM
```

Timezone padrão: **Europe/London**.

---

## Workflow obrigatório para novas aulas

Antes de criar uma nova aula:

```bash
git status
```

O repositório deve estar limpo:

```text
nothing to commit, working tree clean
```

Para cada aula:

1. Criar a página HTML da aula.
2. Atualizar a apresentação da cadeira.
3. Atualizar `cadeiras.html`.
4. Atualizar `index.html`.
5. Atualizar `paginas/mapa.html`.
6. Validar links e navegação.
7. Fazer commit.
8. Fazer push.
9. Confirmar `git status` limpo.

---

## Regras de HTML

Todas as novas páginas devem incluir:

- `style.css?v=91` ou versão superior.
- Menu superior.
- Estrutura `<main>`.
- Link para o mapa.
- Navegação final.
- Botão `↑ Topo`.
- Aviso legal.
- Rodapé com Paulo Silva.
- Script GoatCounter antes de `</body>`.

Script obrigatório:

```html
<script data-goatcounter="https://pajogusi.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>
```

---

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

## Regras de Git

- Não usar `git add -A` por defeito.
- Adicionar ficheiros específicos.
- Não deixar scripts temporários no repositório.
- Não commitar backups `.bak`, `.backup` ou scripts de teste.
- Confirmar estado limpo no final.

---

## Regras de cadeiras fechadas

- Não alterar cadeiras já concluídas, salvo erro real.
- Se houver correção, documentar claramente o motivo.
- Manter consistência entre:
  - página da cadeira;
  - `cadeiras.html`;
  - `index.html`;
  - `paginas/mapa.html`.

---

## Estado de referência atual

- Cadeiras concluídas: **20 / 38**
- Aulas concluídas: **200 / 380**
- Última cadeira concluída: **Direito Processual Civil II**
- Próxima cadeira: **Direito Fiscal II**
