# Fluxograma do boot baremetal no Raspberry Pi 3B

![Fluxograma do boot baremetal no Raspberry Pi 3B](diagrams/fluxograma-boot-baremetal-rpi-msx.svg)

## Objetivo

Registrar, em uma unica arte, como a carga do `msxbarepi` sai do firmware do Raspberry Pi e chega ao ponto em que a emulacao MSX ja esta rodando com video, input, audio, menu e debug layer no mesmo kernel baremetal.

## Leitura rapida

1. O firmware do Raspberry Pi le os arquivos da particao FAT do SD e entrega o controle para `kernel8.img`.
2. O bootstrap do Circle sobe o ambiente baremetal AArch64 e entra em `main()`, que instancia `CComboKernel`.
3. O kernel sobe `Interrupt + Timer` e prioriza `screen` + audio HDMI antes do backend, para reduzir latencia visual/auditiva do fastboot.
4. Com video e audio prontos, o projeto sobe `SD/eMMC`, monta `FatFs`, le `msxbarepi.cfg` e normaliza os settings antes do init do backend.
5. O boot monta apenas o `initramfs` minimo de boot, aplica a configuracao no runtime e inicializa o backend selecionado.
6. Em `DEBUG=1`, `UART + Logger` e o debug overlay so entram depois do backend; em seguida o kernel inicializa `USB HID`.
7. O loop principal faz `step_frame`, blit do frame para o framebuffer, aplica scanline/viewport, desenha overlay/menu apos o blit e completa tarefas diferidas, incluindo o restante do `initramfs`.

## Fontes tecnicas usadas

- `scripts/prepare-sd.sh`
- `Makefile`
- `src/main.cpp`
- `src/kernel.cpp`
- `src/backend/runtime/runtime.h`
- `src/backend/msx/backend.c`
- `src/backend/msx/modules/fmsx/fmsx_initramfs.cpp`

## Observacoes de modelagem

- `BT6` continua sendo um gate funcional do boot porque o `msxbarepi.cfg` precisa ser aplicado antes do init do backend.
- O kernel nao inclui mais um backend publico MSX diretamente; ele fala com a adaptacao neutra em `src/backend/runtime/runtime.h`.
- O fastboot atual monta apenas o `initramfs` minimo antes do backend; o restante entra diferido no loop principal, depois da fase de `USB HID`.
- O SVG do fluxograma ainda precisa ser regenerado para refletir essa ordem nova de fastboot.
