# GitHub Project Management

## Objetivo
Padronizar a gestão do projeto no GitHub (Issues, Milestones, Branches e PRs) e manter espelho local em `docs/milestones/` sincronizado com o remoto.

Data de referência desta versão: 27 de fevereiro de 2026.

## Regras operacionais
- Criar branch de issue somente quando formos atuar nela.
- Sempre atualizar as tasks concluídas diretamente na issue remota.
- Manter `docs/milestones/` sincronizado com milestones/issues remotas.
- Ao estabilizar uma issue, abrir PR `issue-branch -> main` e registrar o link para review.
- Sincronizar branches locais/remotas com `git fetch --prune`.
- Se uma branch remota for deletada, a branch local correspondente deve ser removida somente após confirmação explícita do usuário.
- Nunca alterar/deletar/reescrever a branch `main`.

## Convenções
- Repositório: `sandersouza/msxbarepi`
- Projeto oficial (GitHub Projects): `MSX BarePI`
- URL do projeto: `https://github.com/users/sandersouza/projects/3`
- Branch de trabalho por issue ativa: `issue/<numero>-<slug-curto>`
- Estrutura local:
  - `docs/milestones/m<numero-da-milestone>/`
  - Arquivo por issue: `<numero>-<slug>.md`
- Exemplo:
  - `docs/milestones/m1/21-debug-overlay-hdmi.md`
  - `docs/milestones/m1/22-debug-audio-hdmi-passthru.md`
  - `docs/milestones/m2/fmsx-bootstrap-status.md`

## Fluxo padrão por issue
1. Selecionar issue alvo no GitHub.
2. Criar branch somente nesse momento:
```bash
git checkout main
git pull --ff-only
git checkout -b issue/<numero>-<slug>
```
3. Implementar, validar build e atualizar docs locais da issue/milestone.
4. Marcar progresso/checklists na issue remota (`gh issue comment` e checklist no corpo da issue).
5. Garantir vínculo da issue ao projeto `MSX BarePI`:
```bash
gh issue edit <numero> -R sandersouza/msxbarepi --add-project "MSX BarePI"
```
6. Quando estabilizada em hardware, abrir PR para `main`:
```bash
gh pr create -B main -H issue/<numero>-<slug> --fill
```
7. Vincular também o PR ao projeto `MSX BarePI` e registrar link para review na issue e no arquivo local:
```bash
gh pr edit <numero-pr> -R sandersouza/msxbarepi --add-project "MSX BarePI"
```

## Rotina de sincronização
- Sincronização de leitura (início/fim de ciclo):
```bash
gh issue list -R sandersouza/msxbarepi -L 200
gh api repos/sandersouza/msxbarepi/milestones --paginate
git fetch --prune
```
- Sincronização local:
  - Criar/atualizar arquivos em `docs/milestones/m*/` para cada issue remota aberta.
  - Ajustar estado local quando issue fechar/mudar milestone.
- Sincronização remota:
  - Manter checklist e status técnico na issue (não só local).
- Sincronização de branches:
  - Identificar branches locais órfãs (remota deletada) após `fetch --prune`.
  - Antes de apagar branch local órfã, solicitar confirmação do usuário.
  - Não executar nenhuma ação destrutiva na `main`.

## Escopos do GitHub CLI
- Escopos atuais detectados: `repo`, `read:org`, `gist`.
- Para projetos (GitHub Projects), habilitar também:
```bash
gh auth refresh -s read:project -s project
```

## Snapshot atual (remoto)
Milestones abertas:
- `m2` Core (open)
- `m4` Jogabilidade Básica MSX1 (open, due date definida em 2026-02-23)
- `m5` Estabilização e Performance (open)
- `m7` Beta pública v0.1 - Performance e Boot (open)

Issues abertas mapeadas localmente:
- `m2`: nenhuma (0 abertas)
- `m4`: #14, #17, #18
- `m5`: #19, #21, #22
- `m7`: #34, #35, #36, #37, #38, #39, #40, #41, #42

## Comandos úteis
Listar issues com metadados:
```bash
gh issue list -R sandersouza/msxbarepi -L 200 --json number,title,state,milestone,assignees,url,updatedAt
```

Criar branch da issue ativa:
```bash
git checkout -b issue/29-circle-usb-hid-runtime
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
gh pr create -R sandersouza/msxbarepi -B main -H issue/29-circle-usb-hid-runtime --title "Issue #29: runtime Circle USB/HID no binário principal" --body "Closes #29"
```

Vincular PR ao projeto:
```bash
gh pr edit <numero-pr> -R sandersouza/msxbarepi --add-project "MSX BarePI"
```
