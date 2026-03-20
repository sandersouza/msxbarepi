---
description: "Use para regras de gestao de issues/milestones/branches/PRs e sincronizacao do espelho local em docs/milestones."
name: "MSXBarePi Project Management"
applyTo:
  - "docs/github-project-management.md"
  - "docs/milestones/**"
  - "AGENTS.md"
  - "CONTEXT.md"
  - "docs/handoff/**"
---
# MSXBarePi Project Management

## Objetivo

- Manter fluxo previsivel de trabalho entre issues, branches, PRs e milestones.

## Fonte de verdade

- Seguir `docs/github-project-management.md` como referencia principal de processo.
- Este arquivo define guardrails compactos; comandos detalhados/checklists operacionais ficam no documento de gestao.

## Ferramentas GitHub

- Preferir **GitHub MCP** para operacoes de gestao (issues, PRs, projeto, milestones) sempre que estiver disponivel/funcional.
- Usar **`gh` CLI apenas como fallback** quando MCP estiver indisponivel, com erro de autenticacao/permissao, ou sem suporte para a operacao desejada.

## Branches

- Branch de issue deve ser vinculada a issue de origem.
- Branch de release deve seguir padrao `release/<versao>`.
- Nunca reescrever historico da `main`.
- Antes de remover branch local, confirmar com o usuario.

## Ciclo de issue/board

- Atualizar status de item no projeto: `In progress` -> `In review` -> `Done`.
- Se testes falharem, voltar item para `In progress`.
- Ao concluir issue, mover item para `Done` no mesmo ciclo.
- Ao iniciar milestone, preparar board movendo abertas para `Ready` e manter apenas a ativa em `In progress`.

## PRs

- Ao concluir issue estavel, abrir PR da branch da issue para `main`.
- Enviar link do PR para aprovacao/review antes de seguir para proxima issue.
- Garantir labels coerentes entre issue e PR (prioridade/tipo/area/beta).

## Espelho local de milestones/issues

- Manter `docs/milestones/` sincronizado com remoto.
- Cada milestone remota deve ter pasta local com `README.md` e campo `Milestone remota: #<numero>`.
- Cada pasta de milestone deve conter `CHALLENGES.md` com desafios/solucao/encaminhamento por issue.
- Cada issue da milestone deve ter arquivo `<numero>-<slug>.md`, inclusive fechadas para historico.
