# [P1][BUG] Rensha Turbo (auto-fire SPACE) parou de funcionar

Issue remota: #186
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/186

## Descrição

## Problema
O recurso **Rensha Turbo** (auto-fire da barra de espaço) parou de funcionar e precisa ser restaurado.

## Sintoma observado
- Auto-fire não dispara/oscila como esperado quando habilitado.
- Regressão em relação ao comportamento anterior já validado no projeto.

## Objetivo
- Corrigir o Rensha Turbo mantendo compatibilidade com o fluxo atual de input USB-HID/keyboard bridge.

## Escopo técnico
- Revisar caminho completo de input (USB HID -> decode -> bridge -> joy/fire bits).
- Revisar edge/hold/debounce para SPACE e geração periódica de auto-fire.
- Garantir que o comportamento não quebre hotkeys/menu/pause.

## Critérios de aceite
- [ ] Rensha Turbo volta a funcionar de forma estável.
- [ ] Sem regressão em press/release do teclado.
- [ ] Validado em hardware com teste objetivo documentado.

## Referências obrigatórias
- Consultar e comparar com referências em `third_party/` antes de alterar lógica.
