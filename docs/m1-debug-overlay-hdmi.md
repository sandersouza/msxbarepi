# M1 — HDMI Debug Overlay (histórico e base de referência)

## Objetivo original do M1

Estabelecer um overlay HDMI legível em runtime para debug sem dependência exclusiva de UART.

## Resultado consolidado

- Overlay no `circle_combo/kernel.cpp` com métricas de runtime.
- Redesenho após blit do emulador para manter legibilidade.
- Uso de caixa/área local (sem faixa global opaca contínua).
- Limpeza e redraw controlados para reduzir flicker.

## Mapeamento de teclas (estado atual)

- `F11`: toggle do overlay de debug (quando compilado com `COMBO_ENABLE_DEBUG_OVERLAY=1`)
- `F12`: pausa/retoma emulação
- `Pause`: mapeado para `STOP` do MSX

## Layout de referência

O template de layout e regras visuais fica em:

- `docs/debug-overlay-hdmi-template.md`

## Teste manual rápido

Build:

```bash
make m2-fmsx-bootstrap
```

Preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m2-fmsx-bootstrap.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Critérios esperados:

- Overlay legível sobre o frame do emulador.
- Toggle em runtime sem travar vídeo/input/áudio.
- Em pausa, menu e overlay não corrompem o framebuffer.

## Referências upstream

- Circle screen/framebuffer: `third_party/circle/include/circle/screen.h`
- Base conceitual de áudio/fila: `third_party/circle/sample/34-sounddevices/kernel.cpp`
