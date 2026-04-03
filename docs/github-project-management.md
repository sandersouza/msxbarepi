# GitHub Project Management

## Objetivo
Padronizar a gestão do projeto no GitHub (Issues, Milestones, Branches e PRs) e manter espelho local em `docs/milestones/` sincronizado com o remoto.

Data de referência desta versão: 5 de março de 2026.

## Integração MCP (GitHub)
- Guia de implementação/configuração do MCP no Codex: [`docs/github-mcp-setup.md`](./github-mcp-setup.md)
- Política operacional: usar **GitHub MCP como padrão** para gestão de Issues/PRs/Projects/Milestones; usar `gh` CLI somente como fallback quando o MCP não estiver funcional ou não suportar a operação.

## Regras operacionais
- Descrições de milestones e issues devem ser claras, objetivas, conter checklist de progresso (sub-tasks).
- Toda issue deve ter `DoR` (Definition of Ready) e `DoD` (Definition of Done) explícitos; quando ainda houver descoberta pendente, registrar `DoR/DoD` como sugestão inicial.
- As descrições, comentários e textos em geral, precisam ser em formato markdown compatível com o GitHub, utilizando recursos como links, imagens, tabelas e formatação para melhor clareza.
- Criar primeiro o espelho local (`docs/milestones/...`) e usar esses `.md` como fonte da milestone/issue remota; publicar no GitHub vem depois.
- Evitar comandos longos inline no terminal para criar issues; preferir corpo oriundo de arquivo `.md` previamente preparado.
- Criar branch de issue somente quando formos atuar nela.
- Toda branch criada para trabalho deve ser criada/vinculada pela issue de origem via `gh issue develop`.
- Quando uma issue funcionar como umbrella/epic com branch propria, cada sub-issue deve usar branch derivada da branch umbrella, e nao sair direto de `main`.
- Todo PR deve ser criado somente a partir de uma branch vinculada a uma issue ativa.
- Quando houver umbrella branch ativa, o PR da sub-issue deve mirar a branch umbrella; somente a branch umbrella abre PR para `main` ao consolidar a trilha.
- Todo PR deve ser vinculado a milestone e ao projeto origem da issue, além ter as mesmas labels da issue de origem.
- Sempre atualizar as tasks concluídas diretamente na issue remota.
- Para cada milestone, manter `docs/milestones/m<numero>/CHALLENGES.md` atualizado com uma entrada por issue contendo: desafio, solução final (ou mitigação), status (`Resolvido`/`Parcial`/`Futuro`) e referência de continuidade quando houver.
- Em cada build entregue para teste de hardware (incluindo iterações A/B/debug), publicar no comentário/status um identificador curto de rastreio no formato `BTID:<timestamp>-<git>-<sha8>` para permitir referência exata de qual artefato foi testado.
- Ao terminar uma milestone e/ou issue, sincronize-a localmente e feche-a no GitHub, garantindo que todas as issues associadas estejam fechadas ou movidas para outra milestone.
- Para issues de performance (`type:performance`), anexar evidência da suíte em `docs/performance-regression-suite.md` antes de mover para `In review`.
- Sempre atualizar o campo `Status` do item no projeto `MSX BarePI` durante o ciclo:
  - ao criar uma issue: iniciar em `Backlog`
  - ao ativar uma milestone: mover todas as issues abertas da milestone para `Ready`
  - ao iniciar trabalho: `In progress`
  - ao estabilizar e entrar em testes: `In review`
  - se testes falharem: voltar para `In progress`
  - ao concluir/fechar issue e seguir para a próxima: `Done`
- Ao estabilizar uma issue sem umbrella ativa, abrir PR `issue-branch -> main` e registrar o link para review.
- Ao estabilizar uma sub-issue sob umbrella branch ativa, abrir PR `subissue-branch -> umbrella-branch` e registrar o link para review.
- Ao concluir/estabilizar uma issue, é obrigatório abrir o PR da branch da issue para o target correto (`main` ou branch umbrella ativa) e enviar o link de aprovação ao usuário antes de avançar para a próxima issue; faça isso em `Plan Mode` no agente local, aguardando com a pergunta `O PR foi aprovado?`.
- Ao confirmar a aprovação do PR, avance para a próxima issue, atualizando o status da issue anterior para `Done` e da nova issue para `In progress`.
- Caso não hajam mais issues abertas na milestone atual, avance para a próxima milestone, garantindo que as issues estejam organizadas e o status atualizado no projeto.
- Antes de avançar para a próxima issue/milestone, verifique se a anterior foi concluída, o PR aprovado e o status atualizado para `Done` no projeto; entre em `Plan Mode` para confirmar cada etapa e perguntar se deve seguir para a próxima issue/milestone.
- Ao abrir o PR, aplicar as mesmas labels relevantes da issue no PR (ex.: `priority:*`, `type:*`, `area:*`, `beta:*`).
- Sincronizar branches locais/remotas com `git fetch --prune`.
- Se uma branch remota for deletada, a branch local correspondente deve ser removida somente após confirmação explícita do usuário em `Plan Mode`, perguntando `A branch remota <nome-da-branch> foi deletada. Deseja remover a branch local correspondente?`.
- Nunca alterar/deletar/reescrever a branch `main`.
- Antes de iniciar uma nova milestone, rodar uma etapa de sanitização do repo atual, limpando arquivos desnecessários, builds, artifacts, branches órfãs, atualizando as documentações e garantindo que a branch `main` esteja atualizada e sem alterações locais.
- Para releases, garantir que a branch remota siga o padrão `release/<versao>` e ajustar o `target` da release/tag para essa branch, evitando usar branches de release fora do prefixo `release/`.

## Convenções
- Repositório: `sandersouza/msxbarepi`
- Projeto oficial (GitHub Projects): `MSX BarePI`
- URL do projeto: `https://github.com/users/sandersouza/projects/3`
- Branch de trabalho por issue ativa: preferencialmente `<numero>-<slug-curto>` (ex.: `77-p1-validar-vdp9938-e-modos-de-vídeo-msx2-prioritários`) criada via `gh issue develop`.
- Em trilhas com umbrella branch ativa, a branch da sub-issue deve ser derivada da branch umbrella e o merge intermediario deve voltar para essa umbrella antes do PR final para `main`.
- Branch de release: `release/<versao>` (obrigatório; não usar branch de release fora do prefixo `release/`)
- Estrutura local:
  - `docs/milestones/m<numero-da-milestone>/`
  - Arquivo por issue: `<numero>-<slug>.md`
- Exemplo:
  - `docs/milestones/m1/21-debug-overlay-hdmi.md`
  - `docs/milestones/m1/22-debug-audio-hdmi-passthru.md`
  - `docs/milestones/m2/fmsx-bootstrap-status.md`

## Fluxo padrão por issue
1. Preparar/atualizar primeiro o espelho local da milestone/issue em `docs/milestones/`.
2. Publicar ou atualizar a issue remota usando o conteúdo do `.md` local, preferindo GitHub MCP; usar `gh` CLI apenas como fallback e, nesse caso, apontando para arquivo (`--body-file`) em vez de comandos longos inline.
3. Selecionar issue alvo no GitHub.
4. Criar branch somente nesse momento:
```bash
gh issue develop <numero> -R sandersouza/msxbarepi --name <numero>-<slug> --base main --checkout
git pull --ff-only
```
4.0 Se a issue estiver sob uma umbrella branch ativa, trocar o `--base main` pela branch umbrella correspondente.
4.1 Validar vínculo branch <-> issue:
```bash
gh issue develop --list <numero> -R sandersouza/msxbarepi
```
5. Implementar, validar build e atualizar docs locais da issue/milestone.
5.1 Se a issue for `type:performance`, gerar sessão baseline/candidate com `scripts/perf-regression.sh` e registrar comparação no comentário da issue/PR.
6. Marcar progresso/checklists na issue remota (`gh issue comment` e checklist no corpo da issue).
7. Garantir vínculo da issue ao projeto `MSX BarePI`:
```bash
gh issue edit <numero> -R sandersouza/msxbarepi --add-project "MSX BarePI"
```
7.1 Issue recem-criada deve permanecer em `Backlog` ate a milestone ser ativada ou o trabalho de fato iniciar.
7.2 Atualizar `Status` no projeto para `In progress` ao começar:
```bash
# 1) localizar IDs
PROJECT_ID=$(gh project view 3 --owner sandersouza --format json --jq '.id')
STATUS_FIELD_ID=$(gh project field-list 3 --owner sandersouza --format json --jq '.fields[] | select(.name=="Status") | .id')
ITEM_ID=$(gh project item-list 3 --owner sandersouza --limit 200 --format json --jq '.items[] | select(.content.type=="Issue" and .content.number==<numero>) | .id')

# 2) setar In progress
INPROGRESS_OPTION_ID=$(gh project field-list 3 --owner sandersouza --format json --jq '.fields[] | select(.name=="Status") | .options[] | select(.name=="In progress") | .id')
gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$STATUS_FIELD_ID" --single-select-option-id "$INPROGRESS_OPTION_ID"
```
7.3 Ao ativar milestone, preparar board em massa para `Ready` (issues abertas da milestone):
```bash
READY_OPTION_ID=$(gh project field-list 3 --owner sandersouza --format json --jq '.fields[] | select(.name=="Status") | .options[] | select(.name=="Ready") | .id')
for N in $(gh issue list -R sandersouza/msxbarepi --state open -L 200 --json number,milestone --jq '.[] | select(.milestone!=null and .milestone.title=="<milestone-title>") | .number'); do
  ITEM_ID=$(gh project item-list 3 --owner sandersouza --limit 200 --format json --jq ".items[] | select(.content.type==\"Issue\" and .content.number==$N) | .id")
  gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$STATUS_FIELD_ID" --single-select-option-id "$READY_OPTION_ID"
done
```
8. Quando estabilizada em hardware, abrir PR para o target correto:
```bash
gh pr create -B <main-ou-branch-umbrella> -H <branch-da-issue> --fill
```
8.1 Ao entrar em fase de teste/review, atualizar `Status` para `In review`:
```bash
INREVIEW_OPTION_ID=$(gh project field-list 3 --owner sandersouza --format json --jq '.fields[] | select(.name=="Status") | .options[] | select(.name=="In review") | .id')
gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$STATUS_FIELD_ID" --single-select-option-id "$INREVIEW_OPTION_ID"
```
8.2 Se teste falhar, rollback de status para `In progress`:
```bash
gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$STATUS_FIELD_ID" --single-select-option-id "$INPROGRESS_OPTION_ID"
```
9. Aplicar labels do PR, vincular o PR ao projeto `MSX BarePI` e definir a milestone do PR igual à milestone da issue de origem; registrar link para review na issue e no arquivo local:
```bash
gh pr edit <numero-pr> -R sandersouza/msxbarepi --add-label "priority:P0" --add-label "type:performance" --add-label "area:video"
gh pr edit <numero-pr> -R sandersouza/msxbarepi --add-project "MSX BarePI"
gh pr edit <numero-pr> -R sandersouza/msxbarepi --milestone "<titulo-da-milestone>"
```
10. Após abrir o PR e compartilhar o link de review com o usuário, ao concluir a issue e iniciar a próxima, atualizar `Status` para `Done`:
```bash
DONE_OPTION_ID=$(gh project field-list 3 --owner sandersouza --format json --jq '.fields[] | select(.name=="Status") | .options[] | select(.name=="Done") | .id')
gh project item-edit --id "$ITEM_ID" --project-id "$PROJECT_ID" --field-id "$STATUS_FIELD_ID" --single-select-option-id "$DONE_OPTION_ID"
```

## Empacotamento para testes
- Para builds de distribuição rápida, usar:
```bash
DEBUG=0|1 OWNER="<nome>" make package
```
- `OWNER` nomeia o artefato final como `artifacts/sdcard-package-<OWNER>.zip`.

## Rotina de sincronização
- Sincronização de leitura (início/fim de ciclo):
```bash
gh issue list -R sandersouza/msxbarepi -L 200
gh api repos/sandersouza/msxbarepi/milestones --paginate
git fetch --prune
```
- Sincronização local:
  - Criar/atualizar arquivos em `docs/milestones/m*/` para cada issue remota aberta.
  - Garantir que cada pasta de milestone tenha `README.md` e `CHALLENGES.md`.
  - Atualizar o `CHALLENGES.md` ao concluir, estabilizar ou postergar uma issue.
  - Ajustar estado local quando issue fechar/mudar milestone.
- Sincronização remota:
  - Manter checklist e status técnico na issue (não só local).
- Sincronização de branches:
  - Identificar branches locais órfãs (remota deletada) após `fetch --prune`.
  - Antes de apagar branch local órfã, solicitar confirmação do usuário.
  - Não executar nenhuma ação destrutiva na `main`.
  - Em releases, garantir que a branch remota siga `release/<versao>` e ajustar `target` da release/tag para essa branch.

## Escopos do GitHub CLI
- Escopos atuais detectados: `repo`, `read:org`, `gist`.
- Para projetos (GitHub Projects), habilitar também:
```bash
gh auth refresh -s read:project -s project
```
## Comandos úteis
Listar issues com metadados:
```bash
gh issue list -R sandersouza/msxbarepi -L 200 --json number,title,state,milestone,assignees,url,updatedAt
```

Criar branch da issue ativa:
```bash
gh issue develop 29 -R sandersouza/msxbarepi --name 29-circle-usb-hid-runtime --base main --checkout
```

Atualizar issue com progresso:
```bash
gh issue comment 29 -R sandersouza/msxbarepi --body "Status: build local OK, iniciando testes em hardware."
```

Vincular issue ao projeto:
```bash
gh issue edit 29 -R sandersouza/msxbarepi --add-project "MSX BarePI"
```

Abrir PR da issue estabilizada:
```bash
gh pr create -R sandersouza/msxbarepi -B main -H 29-circle-usb-hid-runtime --title "Issue #29: runtime Circle USB/HID no binário principal" --body "Closes #29"
```

Vincular PR ao projeto:
```bash
gh pr edit <numero-pr> -R sandersouza/msxbarepi --add-project "MSX BarePI"
```
