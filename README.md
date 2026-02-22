# msxbare

Projeto de emulação de MSX em baremetal no Raspberry Pi 3B.

## Escolha de linguagem

- Kernel/runtime: `C` (controle baixo nível, toolchain madura e previsível em baremetal)
- Bootstrap inicial: `AArch64 Assembly` (vetor de entrada e setup mínimo da stack)

## Meta inicial

Gerar `kernel8.img` com um `Hello World` via HDMI (framebuffer), bootando sem sistema operacional no Raspberry Pi 3B.

## Estrutura

- `boot/`: ponto de entrada em assembly
- `src/`: código C do kernel
- `include/`: headers
- `linker/`: script de link
- `scripts/`: utilitários de build/deploy
- `docs/`: documentação técnica

## Build rápido

Requer toolchain baremetal AArch64 no PATH.
Prefixos suportados por auto-detecção:

- `aarch64-none-elf-*`
- `aarch64-elf-*` (Homebrew)

```bash
make
```

Artefatos em `build/`.

Opcoes uteis de build (estado atual do bring-up do core):

- `DEBUG=1`: reativa logs detalhados de diagnostico (`fMSX` + glue code)
- `FMSX_FRONTEND_OPT=0|1|2`: nivel de otimizacao apenas do `src/fmsx/fmsx_frontend.c`
- `FMSX_FRAME_SKIP=N`: apresenta 1 frame a cada `N+1` frames (apos boot)
- `FMSX_BOOT_FRAME_SKIP=N`: frame skip temporario durante o boot
- `FMSX_BOOT_FRAME_COUNT=N`: limite maximo de frames para `FMSX_BOOT_FRAME_SKIP` (tambem desliga ao fim da inicializacao do core)
- `FB_WIDTH=N FB_HEIGHT=N`: resolucao do framebuffer solicitada ao firmware (impacta custo de blit no CPU)
- `ENABLE_AUDIO=1`: reativa pipeline de audio em modo PSG-only (teste; backend atual via P2/PWM)

Perfil recomendado atual (estavel):

```bash
make DEBUG=0 FMSX_FRONTEND_OPT=0
```

Preset recomendado atual (hardware real, boot mais rapido):

```bash
make fastboot
```

Esse preset gera `artifacts/kernel8-fastboot.img` e usa:

- `ENABLE_MMU=1` (MMU + caches)
- `FMSX_FRONTEND_OPT=1`
- `FMSX_BOOT_FRAME_SKIP=7`
- `FMSX_BOOT_FRAME_COUNT=1200`
- frame pacing por timer ARM (50/60Hz)

Observacao:
- O frame-skip de fast boot agora e desligado assim que `StartMSX()` termina (antes do loop principal da BIOS/cartucho), evitando persistir por varios segundos apos a tela ja ter subido.

Benchmark observado em hardware (RPi 3B, BIOS Expert 1.1):

- baseline otimizado estavel (`O1 + blit3x`): ~25s ate o BASIC
- preset `fastboot`: ~17s ate o BASIC
- atualizado: com MMU+cache+pacing, a velocidade percebida voltou ao patamar correto

Preset alternativo para teste de gameplay/performance (apresentacao em 1/2 taxa apos boot):

```bash
make fastplay
```

Esse preset gera `artifacts/kernel8-fastplay.img` e usa `ENABLE_MMU=1` + `FMSX_FRAME_SKIP=1`
(apresenta 1 a cada 2 frames apos o boot), mantendo o fast boot na inicializacao.

Preset experimental para audio (PSG-only, pipeline/mixagem):

```bash
make audio-test
```

Esse preset gera `artifacts/kernel8-audio-test.img` e usa:

- `ENABLE_MMU=1`
- `ENABLE_AUDIO=1`
- runtime de audio do fMSX em modo `PSG-only`
- fila PCM (`audio_pcm`) + backend PWM analogico no P2 (sem DMA)

Smoke test da rota analogica P2 (tom direto por PWM, sem depender do core):

```bash
make audio-p2-smoketest
```

Gera `artifacts/kernel8-audio-p2-smoketest.img`.

Presets para teste com framebuffer menor (reduz custo de blit):

```bash
make fastboot-fb960x720
make fastboot-fb800x600
```

Geram:

- `artifacts/kernel8-fastboot-fb960x720.img`
- `artifacts/kernel8-fastboot-fb800x600.img`

Nota sobre `config.txt`:
- A forma pratica de selecionar variantes em baremetal e via `kernel=...` no `config.txt`.
- No fluxo atual, `scripts/prepare-sd.sh` com `KERNEL_IMG=...` faz A/B rapido copiando a variante escolhida como `kernel8.img`.

## Saída de vídeo

- O projeto adota HDMI como saída principal.
- UART permanece ativa para diagnóstico, mas toda evolução funcional deve considerar exibição em HDMI.
- A "borda externa" fora da imagem MSX e o preenchimento de letterbox do framebuffer do projeto.
- A "borda interna" faz parte da imagem gerada pelo VDP/MSX (emulação).

## Performance no RPi 3B (clock)

- Em baremetal, nao existe governor do Linux para subir clock dinamicamente.
- Sem `arm_freq` no `config.txt`, o Pi 3B pode ficar em clock baixo (ex.: ~600MHz), causando percepcao de "meia velocidade".
- O `sdcard/config.txt` do projeto fixa `arm_freq=1200` (clock nominal do Pi 3B) como baseline de testes.

## M1.1 Core Bring-up

- Core upstream avaliado: `third_party/fmsx/` (commit fixado em `third_party/fmsx/UPSTREAM.md`).
- Boot passa ponteiro DTB para o kernel e o projeto já consegue detectar `initramfs` para ROM.
- Execução real do núcleo fMSX já integrada no build baremetal.
- Para fornecer BIOS/ROM ao core sem driver SD nativo, use initramfs CPIO:
  - gere `msx.cpio` com `scripts/make-initramfs.sh`
  - inclua no initramfs ao menos `MSX.ROM` e `CARTA.ROM`
  - habilite no `config.txt`: `initramfs msx.cpio followkernel`

Detalhes técnicos em `docs/m1-1-core-bringup.md`.
Procedimento de teste em `docs/m1-1-hardware-test.md`.

## Preparar microSD (macOS)

Script interativo com TUI (`fzf`) e protecoes para evitar disco incorreto:

```bash
brew install fzf
scripts/prepare-sd.sh
```

Opcionalmente, para copiar firmwares no mesmo passo:

```bash
FIRMWARE_DIR=/caminho/para/firmware scripts/prepare-sd.sh
```

Exemplo com preset fastboot:

```bash
KERNEL_IMG=artifacts/kernel8-fastboot.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Exemplos A/B com framebuffer menor:

```bash
KERNEL_IMG=artifacts/kernel8-fastboot-fb960x720.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
KERNEL_IMG=artifacts/kernel8-fastboot-fb800x600.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```
