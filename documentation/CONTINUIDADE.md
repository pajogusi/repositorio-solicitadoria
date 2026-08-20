# Continuidade — Repositório de Solicitadoria

Atualizado em: **20/08/2026 — 10:58 BST**

## Estado fechado

O repositório encontra-se com **Direito da Família e das Sucessões II concluída** e **Direito do Notariado em curso**.

Estado global:

```text
26 / 38 cadeiras concluídas
266 / 380 aulas concluídas
Direito do Notariado — 6 / 10 — Em curso
```

## Cadeira atual

```text
Direito do Notariado — próxima aula: Aula 06
```

## Regras para continuar

Na próxima conversa ou sessão de trabalho:

1. Começar com data e hora.
2. Confirmar estado do Git.
3. Confirmar contadores.
4. Confirmar que Direito do Notariado está em 5 / 10 — Em curso.
5. Continuar Direito do Notariado com a Aula 07.
6. Criar Aula 06.
7. Atualizar `cadeiras.html`.
8. Atualizar `index.html`.
9. Atualizar `paginas/mapa.html`.
10. Validar links.
11. Commit/push.
12. Confirmar repositório limpo.

## Comandos úteis

### Ver estado

```bash
cd ~/universidade-da-vida-direito
git status
grep -n "Cadeiras concluídas\|Aulas concluídas" index.html
grep -n "Direito do Notariado" cadeiras.html
ls -1 aulas/direito-notariado/
```

### A partir do Centro

```bash
ssh paulo@192.168.1.195 'cd ~/universidade-da-vida-direito && git status'
```

## Notas importantes

- Autor público: **Paulo Silva (Pàjó)**.
- Não usar Paulo Gusi como autor público.
- Projeto independente.
- Não substitui licenciatura, formação oficial nem aconselhamento jurídico.
- GoatCounter obrigatório em páginas novas.
- Trabalhar uma aula de cada vez.

<!-- REGISTO_2026_07_09_REVISAO_JURIDICA:START -->

## Registo de Continuidade — Revisão Jurídica e Jurisprudência

Registo estratégico feito após conclusão de Direito Fiscal II.

Estado confirmado:
- Direito Processual Civil III concluída — 10 / 10.
- Total global: 26 / 38 cadeiras.
- Aulas oficiais: 266 / 380.
- Progresso: 70,0%.
- Cadeira atual: Direito do Notariado — 6 / 10 — Em curso.

Métricas técnicas confirmadas:
- 246 páginas HTML publicáveis.
- 213 ficheiros HTML em `aulas/`.
- 21 páginas de apresentação de cadeiras.
- 5 páginas em `paginas/`.
- 3 páginas adicionais de apoio: glossário, biblioteca e casos.
- Site sem `.git`: 5,3 MB.
- HTML total: 4,1 MB.

Decisão de produtividade:
- Concluir primeiro as 38 cadeiras e as 380 aulas.
- Deixar jurisprudência para fase posterior.
- Melhorar quizzes depois de concluída a estrutura principal.
- Criar futuramente páginas próprias de jurisprudência ligadas à apresentação de cada cadeira.

Workflow técnico consolidado:
- Centro `dell@overdrive-core`: produção, Git, scripts, commits e push.
- Portátil `paulo-755XDA`: validação visual do site online.
- Regra: criar → validar localmente → commit/push → confirmar online → só depois avançar.


<!-- REGISTO_2026_07_09_REVISAO_JURIDICA:END -->



## Regra de jurisprudência do 3.º ano

A partir do 3.º ano, as cadeiras podem incluir uma página própria de jurisprudência essencial.

Regra operacional:
- 1 página de jurisprudência por cadeira.
- Máximo de 3 acórdãos por cadeira.
- Cada acórdão deve ter: tema, questão jurídica, entendimento do tribunal, nota de estudo e ligação oficial.
- A jurisprudência é complemento de estudo, não substitui lei, doutrina, formação oficial ou aconselhamento jurídico.
- Não afundar as aulas com acórdãos longos; manter a matéria principal nas aulas e a jurisprudência numa página própria.
