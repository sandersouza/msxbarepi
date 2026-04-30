---
description: "Use quando alterar overlay/debug HDMI, UART de diagnostico, hotkeys, labels de telemetria ou comportamento visual do menu/pause."
name: "MSXBarePi Debug Layer Guardrails"
applyTo:
  - "src/tools/debug/**"
  - "src/tools/menu/**"
  - "src/kernel.cpp"
  - "docs/debug-layer.md"
---
# MSXBarePi Debug Layer Guardrails

## Build

- Em desenvolvimento de debug, preferir `DEBUG=1`; usar `DEBUG=0` quando solicitado ou em checkpoint estavel.
- Hotkeys de debug so devem atuar quando compiladas com suporte de debug.

## Runtime/overlay

- Nao misturar `console_puts()` com painel de debug em runtime.
- Desenhar overlay apos o blit do emulador.
- Usar caixas opacas curtas; evitar faixa global sem necessidade.
- Flush de cache apenas na area necessaria, com throttle.
- Preferir getters escalares; evitar copiar structs grandes para debug.
- Limitar linhas do overlay HDMI a 64 caracteres visiveis.
- `TXTDBG BUILD:XXXX` e o identificador visual canonico da build.

## Diagnostico

- Em freeze com RPi responsivo ou investigacao de memoria/estado, complementar HDMI com UART objetiva.
- Logs UART devem trazer ponto temporal, endereco/estado, valor esperado e valor lido quando aplicavel.

## Limpeza visual

- Ao adicionar linha no overlay, atualizar a limpeza correspondente.
- Limpar pelo comprimento real previamente renderizado, nao por padding exagerado.
- Alternar `MAX/MIN/OFF` deve limpar framebuffer visivel e superficies auxiliares para evitar vestigios.

## Docs

- Mudou hotkey, label, item de menu, semantica de campo ou fluxo de debug: atualizar `docs/debug-layer.md`.
