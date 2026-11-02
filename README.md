# Repositório de Solicitadoria

Projeto independente de estudo jurídico criado por **Paulo Silva (Pàjó)**.
Organiza um percurso pessoal de estudo inspirado numa Licenciatura em Solicitadoria.
Não substitui formação académica oficial, legislação vigente ou aconselhamento jurídico profissional.

## Estado verificado em 02/11/2026

| Indicador | Valor |
|---|---:|
| Disciplinas previstas | 38 |
| Disciplinas concluídas | 26 |
| Disciplinas em curso | 1 |
| Disciplinas por iniciar | 11 |
| Aulas contabilizadas | 266 / 380 |
| Progresso das aulas | 70,0% |
| Semestres concluídos no plano | 4 / 6 |
| Cadeira em curso | Direito do Notariado — 6 / 10 |
| Próxima aula ainda não criada | Notariado — Aula 07 |

O estado editorial resulta do plano e dos ficheiros existentes. «Concluída» não certifica validação jurídica ou pedagógica.
Existem 269 HTML em `aulas/`: 266 aulas do percurso e três complementos (apresentação, reforço e quiz adicional de Obrigações).
Em 12 cadeiras, `quiz-final.html` corresponde à décima aula; Obrigações tem `aula-10.html` e um quiz adicional.

## Funcionalidades

- Plano de estudos por anos e semestres, apresentações e navegação entre aulas.
- Pesquisa local nos títulos e conteúdo das 309 páginas públicas, incluindo as aulas, com normalização de acentos.
- Progresso calculado a partir do catálogo gerado e apresentado por um elemento HTML `progress`.
- Biblioteca jurídica, glossário, casos práticos e quiz geral com correção automática.
- Três páginas de jurisprudência; a de Notariado contém temas de pesquisa, ainda sem seleção concreta de acórdãos.
- Mapa, atualizações, sobre, contacto e aviso legal.
- GoatCounter e ligações externas de apoio; a pesquisa não usa serviços externos.

## Estrutura

```text
index.html, cadeiras.html, quiz-interativo.html
style.css, script.js
assets/                 # logótipo, favicon e QR
aulas/                  # 27 disciplinas com materiais; 269 HTML
cadeiras/               # 26 apresentações; Obrigações apresenta-se dentro de aulas/
biblioteca/, glossario/, casos/
jurisprudencia/         # três páginas complementares
paginas/                # cinco páginas de apoio
data/cadeiras.js        # catálogo gerado: disciplinas, aulas previstas e existentes
data/progresso.js       # cálculo e atualização do progresso no navegador
data/pesquisa.js        # índice gerado de todas as páginas públicas
scripts/atualizar_dados.py
scripts/uteis/          # utilitário de leitura para continuidade
scripts/arquivo-raiz/   # arquivo histórico; não executar como manutenção atual
tests/                  # regressões Python e JavaScript e referência de preservação
documentation/          # estado, manutenção, continuidade e documentos históricos
```

## Consultar e executar localmente

O site é estático: HTML, CSS e JavaScript nativo. Não tem backend, base de dados ou contas de utilizador.
A consulta do site publicado não exige instalação. Para servir uma cópia local, usar Python 3:

```bash
python3 -m http.server 8000 --bind 127.0.0.1
```

Abrir `http://127.0.0.1:8000/`. Não usar os scripts históricos para iniciar o site.
A pré-visualização normal carrega GoatCounter; para testes sem analytics, bloquear o domínio externo no ambiente de teste.

## Manutenção e validação

Requer Python 3.9+ e Node.js 18+ para os testes, sem bibliotecas adicionais.
Usar as ferramentas já disponíveis; estes comandos não instalam dependências.

1. Confirmar branch, estado e alterações existentes; trabalhar numa branch específica.
2. Atualizar os HTML relevantes, o plano e o mapa quando houver alterações editoriais autorizadas.
3. Gerar o catálogo, índice e resumo HTML:

   ```bash
   python3 scripts/atualizar_dados.py
   ```

4. Verificar sincronização e executar as regressões:

   ```bash
   python3 scripts/atualizar_dados.py --check
   PYTHONDONTWRITEBYTECODE=1 python3 -m unittest discover -s tests -v
   node tests/test_script.js
   ```

5. Verificar no navegador computador, tablet e telemóvel; testar pesquisa, navegação e quiz.
6. Rever o diff. Commit e envio apenas da branch autorizada. Merge e publicação exigem autorização própria.

O gerador escreve apenas `data/cadeiras.js`, `data/pesquisa.js` e o resumo de `index.html`.
Confirma que a contagem declarada no plano coincide com a sequência real de aulas. Uma aula em falta interrompe a geração.
Executar novamente após qualquer alteração de HTML pesquisável. `--check` deteta dados desatualizados sem os modificar.

Os testes de preservação mantêm uma referência do conteúdo anterior à Fase 1. Uma futura alteração jurídica autorizada exigirá revisão explícita dessa referência; não a regenerar para ocultar regressões.

## Publicação e recuperação

O GitHub Pages existente serve a raiz de `main`, com HTTPS obrigatório.
O envio de uma branch de correção não altera essa origem. Esta intervenção não autoriza merge ou publicação.
Ponto de recuperação da Fase 1: commit `6497eb2fe04a7639a5160b2ede1e0eee9ccf1663`; tag local `fase1-base-20261102`.
Antes do merge basta manter `main` inalterada. Para consultar a versão base sem apagar trabalho:

```bash
git switch -c recuperacao/fase1-base 6497eb2fe04a7639a5160b2ede1e0eee9ccf1663
```

Após eventual integração autorizada, reverter o commit da Fase 1 com `git revert` numa nova branch e submeter o resultado para aprovação. Não usar reset ou force-push.

## Limites e documentação

A Fase 1 corrige aspetos técnicos. Conteúdos jurídicos, exercícios, avaliações e estrutura pedagógica foram preservados.
O Código Comercial da biblioteca aponta para o diploma original disponibilizado pela DGPJ, identificado como tal; não é apresentado como versão consolidada.
Auditorias e estratégias antigas estão em `documentation/`, identificadas no mapa documental. A revisão jurídica e pedagógica pertence à Fase 2.
Consultar `documentation/REGRAS_DE_TRABALHO.md` e `documentation/ESTADO_ATUAL.md` antes de continuar.
Licença e direitos de autor: `LICENSE.md` e `COPYRIGHT.md`.
