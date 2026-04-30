---
description: "Use para alinhar implementacao com referencias internas, third_party e projetos MSX relacionados."
name: "Code Reference and Implementation Alignment"
applyTo:
  - "src/**"
  - "include/**"
  - "docs/**"
  - "third_party/**"
---
# Code Reference and Implementation Alignment

## Objetivo

- Evitar retrabalho e manter comportamento tecnico alinhado a referencias confiaveis.

## Regras

- Antes de implementar comportamento complexo, consultar referencias relevantes em `src/`, `docs/`, `third_party/fmsx` e `third_party/circle`.
- Para comportamento MSX/MSX2+/V9958, tratar `blueMSX` como referencia semantica primaria quando disponivel.
- Usar referencias adicionais para desempate: `blueberrymsx`, `ocm-pld-dev`, `V9958-Super` e outros codigos/RTL presentes no projeto.
- Adaptar referencias ao ambiente baremetal; nao copiar cegamente quando houver restricao de desempenho, memoria, licenca ou arquitetura.
- Registrar no handoff/docs quando uma referencia influenciar a solucao.

## Backend local

- O caminho oficial e aproximar incrementalmente o backend local derivado de fMSX do comportamento do `blueMSX`.
- Quando houver divergencia, auditar/diffar contra a referencia antes de criar heuristica local.
- Registrar comportamento alvo, referencias secundarias e limites que impediram espelhamento literal.
