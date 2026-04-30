---
description: "Use para manter docs, handoff, CONTEXT e espelhos locais sincronizados com codigo e GitHub."
name: "MSXBarePi Docs Sync"
applyTo:
  - "docs/**"
  - "AGENTS.md"
  - "CONTEXT.md"
---
# MSXBarePi Docs Sync

## Regra geral

- Mudanca relevante de codigo deve atualizar a documentacao minima aplicavel.
- Atualizar docs em lote no checkpoint estavel sempre que isso reduzir ruido sem perder rastreabilidade.

## Handoff e contexto

- Manter `docs/handoff/<branch>.md` como contexto persistente da branch.
- Manter `CONTEXT.md` apontando para o handoff ativo.
- Registrar decisoes tecnicas com contexto, trade-off, impacto e riscos/proximos passos verificaveis.

## Issues e milestones

- Seguir `project-management.instructions.md` para estrutura de espelhos locais.
- Criar/atualizar `docs/issues/**` ou `docs/milestones/**` no mesmo ciclo da mudanca remota relevante.

## Qualidade

- Evitar texto redundante e historico excessivo.
- Referenciar arquivos/classes consultados quando `third_party/circle`, `third_party/fmsx` ou outra referencia influenciar a implementacao.
- Alteracoes de guardrail/fluxo devem refletir em `AGENTS.md` apenas quando mudarem a regra canonica para humanos/agentes.
