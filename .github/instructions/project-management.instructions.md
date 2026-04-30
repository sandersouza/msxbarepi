---
description: "Use para gestao de issues, milestones, branches, PRs, board e espelho local em docs/milestones ou docs/issues."
name: "MSXBarePi Project Management"
applyTo:
  - "docs/github-project-management.md"
  - "docs/milestones/**"
  - "docs/issues/**"
  - "AGENTS.md"
  - "CONTEXT.md"
  - "docs/handoff/**"
---
# MSXBarePi Project Management

## Fonte

- `docs/github-project-management.md` e a fonte detalhada de processo.
- Este arquivo mantem apenas guardrails operacionais curtos.

## GitHub

- Para tarefas de GitHub, tentar primeiro o GitHub MCP; usar `gh` CLI somente quando o MCP nao tiver funcao aplicavel ou falhar.
- Ao usar `gh` para texto longo, usar arquivo `.md` local como fonte; nao passar descricoes grandes inline.
- Toda issue deve ter milestone adequada. Se nao houver uma, usar/criar `FIX: Minor Issues / Other Issues`; essa milestone e permanente.

## Issues e board

- Criar espelho local antes de publicar issue/milestone remota.
- Issue nova entra em `Backlog`; mover para `In progress`, `In review` e `Done` conforme o ciclo real.
- Toda issue deve ter DoR e DoD; checklist nao substitui criterio de aceite.

## Branches e commits

- Branch de issue deve ser vinculada a issue de origem.
- Se houver umbrella, sub-issues nascem da umbrella e abrem PR para ela; a umbrella abre PR para `main`.
- Nao reescrever historico da `main`.
- Nao fazer commit/push em iteracao experimental. Commit/push so quando o usuario declarar que a issue esta estavel.
- Se um commit local for feito antes da estabilidade por engano, desfazer o commit de volta ao worktree.
- Antes de remover branch local, confirmar, exceto quando o usuario pedir explicitamente sincronizacao/limpeza apos merge.

## PRs

- Quando o usuario disser `estavel`/`estável`, abrir PR da branch atual e aguardar review.
- PR de issue normal vai para `main`; PR de sub-issue vai para a umbrella ativa.
- Quando o usuario disser `mergeado`, sincronizar remotos/locais e voltar para a umbrella ativa ou `main`.
- Garantir labels coerentes entre issue e PR quando aplicavel.

## Espelho local

- Milestone remota: `docs/milestones/m<numero>/README.md` com `Milestone remota: #<numero>` e `CHALLENGES.md`.
- Issue com milestone: `docs/milestones/m<numero>/<numero>-<slug>.md`.
- Issue standalone: `docs/issues/<numero>-<slug>.md`.
- Manter arquivos locais inclusive para historico de issues fechadas.
