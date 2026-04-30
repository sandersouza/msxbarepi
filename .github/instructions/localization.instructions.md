---
description: "Use quando criar ou alterar labels visiveis em menus, overlay ou file browser."
name: "MSXBarePi Localization Guardrails"
applyTo:
  - "src/tools/locale/**"
  - "src/tools/menu/**"
  - "src/tools/debug/**"
  - "src/tools/file_browser/**"
  - "docs/debug-layer.md"
---
# MSXBarePi Localization Guardrails

## Regras

- Toda nova string visivel deve entrar no sistema de locale.
- Atualizar PT, EN e ES na mesma mudanca.
- Evitar strings hardcoded fora das tabelas de traducao.
- Manter chaves de locale estaveis, curtas e sem duplicacao semantica.
- Se mudar hotkey, label ou campo de debug/menu, atualizar `docs/debug-layer.md`.

## Validacao minima

- Confirmar que os tres idiomas carregam sem fallback inesperado.
- Revisar rapidamente truncamento ou string ausente no fluxo afetado.
