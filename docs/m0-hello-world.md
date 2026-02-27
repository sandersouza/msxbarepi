# M0 - Hello World (baseline Circle port)

Data: 26/02/2026

## Objetivo

Validar o baseline baremetal compilável com:

- boot AArch64 (`kernel8.img`)
- log serial UART
- saída de vídeo via HDMI (framebuffer por mailbox)
- loop principal com heartbeats (base para áudio/input)

## Arquivos-base implementados

- `boot/start.S`
- `linker/linker.ld`
- `src/kernel.c`
- `src/uart.c`
- `src/platform.c`
- `src/mailbox.c`
- `src/framebuffer.c`
- `src/audio_stub.c`
- `src/input_stub.c`

## Build

```bash
make clean && make
make m0
```

Resultado esperado:

- `build/kernel8.img`
- `artifacts/kernel8-m0.img`

## Deploy SD (modo seguro)

Dry-run obrigatório antes de gravar:

```bash
DRY_RUN=1 KERNEL_IMG=artifacts/kernel8-m0.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

## Teste manual objetivo (RPi 3B)

1. Preparar SD/USB boot com `kernel8.img` do artefato M0.
2. Conectar HDMI e adaptador serial UART (3.3V).
3. Energizar a placa.

### Critérios de aceite

- UART deve exibir:
  - `[msxbare][m0] boot start`
  - `[msxbare][m0] init framebuffer: ok`
  - heartbeat periódico com contador `polls`.
- HDMI deve mostrar:
  - tela preenchida com barras/retângulos;
  - barra amarela em movimento (heartbeat visual).
- Sistema deve permanecer estável em loop (sem reboot espontâneo).

## Próximo passo direto (M0.1)

- Trocar `audio_stub` por saída real HDMI/PWM baseada em referências Circle.
- Trocar `input_stub` por backend USB/HID (sample `08-usbkeyboard` como base conceitual).

## Spikes práticos para fechar M0 (Circle standalone)

Build USB/HID teclado:

```bash
make circle-usbkeyboard-debug
```

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-circle-usbkeyboard-debug.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Build áudio (sample sounddevices; selecionar HDMI com `cmdline.txt`):

```bash
make circle-sounddevices-debug
```

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-circle-sounddevices-debug.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

## M0.1 - Input USB/HID do Circle integrado no kernel principal

Build do kernel principal com runtime Circle de teclado USB (modo seguro):

```bash
make m0-circle-input
```

Artefato gerado:

- `artifacts/kernel8-m0-circle-input.img`

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m0-circle-input.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Build experimental (init completo do Circle USB no kernel principal):

```bash
make m0-circle-input-full
```

Artefato gerado:

- `artifacts/kernel8-m0-circle-input-full.img`

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m0-circle-input-full.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Sinais esperados em runtime:

- UART deve exibir linha periódica com `circle ready`, `kbd`, `ev` e `mod`.
- Na HDMI, o indicador inferior esquerdo fica:
  - verde quando teclado USB está anexado;
  - vermelho quando não há teclado detectado.

Notas de diagnóstico:

- `circle ready=0x00000020` indica modo seguro (boot preservado, sem init USB completo).
- `circle ready=0x000000FF` indica init completo finalizado.

## M0.2 - Áudio HDMI do Circle integrado no kernel principal

Build seguro recomendado (standalone Circle, caminho mais estável):

```bash
make m0-hdmi-audio
```

Artefato gerado:

- `artifacts/kernel8-m0-hdmi-audio.img`

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m0-hdmi-audio.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Observação importante:

- Para o sample standalone de áudio HDMI, o projeto agora copia automaticamente `sdcard/cmdline.txt` no SD com `sounddev=sndhdmi`.
- Sem esse `cmdline.txt`, o sample pode tocar em saída padrão diferente (ex.: PWM/P2), resultando em "sem som" na HDMI.

Build experimental de integração no kernel principal (safe):

```bash
make m0-hdmi-audio-integrated
```

Artefato gerado:

- `artifacts/kernel8-m0-hdmi-audio-integrated.img`

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m0-hdmi-audio-integrated.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Build experimental (init/start completo do áudio HDMI integrado):

```bash
make m0-hdmi-audio-full
```

Artefato gerado:

- `artifacts/kernel8-m0-hdmi-audio-full.img`

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m0-hdmi-audio-full.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Sinais esperados em runtime:

- UART com telemetria periódica: `audio ready`, `active`, `q`, `avail`, `wr`, `drop`.
- Indicador HDMI no rodapé:
  - ciano quando áudio ativo;
  - azul escuro quando áudio inativo.

Notas de diagnóstico:

- `audio ready=0x00000020` indica modo seguro (sem start do HDMI áudio integrado).
- `audio ready=0x000000FF` indica init/start completo finalizado.

Referências Circle usadas como base conceitual:

- `third_party/circle/sample/34-sounddevices/kernel.cpp`
- `third_party/circle/include/circle/sound/hdmisoundbasedevice.h`
- `third_party/circle/lib/sound/hdmisoundbasedevice.cpp`

## M0.3 - Build combinado (input + áudio no mesmo kernel)

Build combinado recomendado (standalone Circle: áudio HDMI + teclado USB no mesmo kernel):

```bash
make m0-combo
```

Artefato gerado:

- `artifacts/kernel8-m0-combo.img`

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m0-combo.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Build combinado full (input+áudio ativos, mais agressivo):

```bash
make m0-combo-full
```

Artefato gerado:

- `artifacts/kernel8-m0-combo-full.img`

Comando para preparar SD:

```bash
KERNEL_IMG=artifacts/kernel8-m0-combo-full.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Opcional experimental (integração híbrida no kernel C próprio):

```bash
make m0-combo-integrated
```

Artefato gerado:

- `artifacts/kernel8-m0-combo-integrated.img`