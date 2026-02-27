# M2 — Bootstrap do core fMSX (status atual)

## Resumo

- Target principal: `make m2-fmsx-bootstrap`
- Artefato: `artifacts/kernel8-m2-fmsx-bootstrap.img`
- Status: **build estável localmente**, com validações frequentes no hardware RPi 3B

## O que já está consolidado

- Integração do core fMSX no app `circle_combo`.
- Loop principal com frame-step + pacing no runtime.
- Pipeline de vídeo para HDMI com blit RGB565 direto no framebuffer.
- Overlay de debug HDMI com telemetria de runtime.
- Input via teclado USB (Circle) com bridge para matriz MSX.
- Áudio do fMSX roteado para HDMI com fila PCM/ring buffer.
- Loader de `initramfs` CPIO (`msx.cpio`) para BIOS/ROM/DSK.
- Guardrail de upstream ativo (`make guard-third-party`).

## Estado do menu de pausa

- Tecla `F12`: pausa/retoma emulação.
- Submenu `Settings` atualizado com ações reais:
  - `Overscan ON/OFF`
  - `Scanlines ON/OFF`
  - `Overlay DBG ON/OFF`
  - `Audio Mute ON/OFF`

## Artefatos e fluxo de teste

Build:

```bash
make m2-fmsx-bootstrap
```

Preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m2-fmsx-bootstrap.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

## Limitações atuais (abertas)

- Ajuste fino de performance/latência ainda depende de validação em hardware por cenário (ROM/DSK específicos).
- Alguns knobs de tuning exigem calibração por jogo (mapper/boot profile/ganho de áudio).
- A trilha de documentação histórica do M2 está majoritariamente em `docs/ai-handoff-context.md`.

## Próximos incrementos recomendados

1. Fechar checklist de regressão em hardware para os toggles de `Settings`.
2. Consolidar preset "estável de uso" no README com parâmetros recomendados por cenário.
3. Evoluir submenu `Settings` com opções de vídeo adicionais (ex.: filtro/escala), mantendo layout validado.

## Referências upstream consultadas

- fMSX core: `third_party/fmsx/fMSX/MSX.c`, `third_party/fmsx/Z80/Z80.c`
- Circle áudio HDMI: `third_party/circle/include/circle/sound/hdmisoundbasedevice.h`, `third_party/circle/lib/sound/hdmisoundbasedevice.cpp`
- Circle USB teclado: `third_party/circle/sample/08-usbkeyboard`
