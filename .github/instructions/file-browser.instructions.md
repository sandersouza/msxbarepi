---
description: "Use quando alterar combo_file_browser ou sua integracao com menu/pause."
name: "MSXBarePi File Browser Guardrails"
applyTo:
  - "src/tools/file_browser/**"
  - "src/tools/menu/**"
  - "docs/file-browser-component.md"
---
# MSXBarePi File Browser Guardrails

## Contrato

- Manter API publica estavel (`Open`, `ProcessInput`, getters), salvo mudanca planejada.
- Navegacao deve ficar confinada ao root do modo ativo.
- Manter suporte a `..`, diretorios antes de arquivos e ignorar entradas iniciadas por `.`.
- `combo_menu` orquestra estado visual/acoes; catalogo e navegacao ficam no componente.
- Mudancas de auto-repeat/scroll devem preservar previsibilidade em diretorios grandes.

## Docs/locales

- Alterou comportamento ou API: atualizar `docs/file-browser-component.md`.
- Nova label visivel: aplicar PT/EN/ES.
