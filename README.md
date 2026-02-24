# MSX BarePI

Projeto de emulação de MSX em baremetal no Raspberry Pi 3B.

> demais versões do RPi podem ser suportadas, mas o foco inicial é o 3B (SoC BCM2837, AArch64, 1GB RAM).

## Ambiente de desenvolvimento

Atualmente o desenvolvimento é focado em macOS, com toolchain de compilação cruzada AArch64 baremetal (ex.: `aarch64-none-elf-gcc`). O projeto é organizado para ser portátil, mas o suporte a outros sistemas operacionais (ex.: Linux) e toolchains pode exigir ajustes manuais (ex.: scripts de build, configuração do ambiente).

### RPi em modo boot USB / Ethernet (sem microSD)
- RPi 3B suporta boot por USB (ex.: pendrive) ou Ethernet (PXE), eliminando a necessidade de um microSD.
- Requer configuração prévia do RPi usando `Raspberry OS` para habilitar o boot por USB/Ethernet (ex.: via `raspi-config` ou editando `config.txt`).
- O processo de preparação do dispositivo de boot (ex.: pendrive) é similar ao do microSD, copiando a imagem gerada (`kernel8.img`) para a partição de boot.
- Para Ethernet, é necessário configurar um servidor PXE na rede para fornecer a imagem de boot ao RPi.

### Debug e logs
- Logs de diagnóstico são exibidos via HDMI (limitado e com flag específica de build) e UART.
- Para debug mais detalhado, é recomendado usar a UART, especialmente durante o desenvolvimento inicial e otimizações de performance.
- Para montar um debugger JTAG, é necessário hardware adicional (ex.: Raspberry Pi Debug Probe) e configuração específica, o que pode ser considerado em fases posteriores do projeto.
- Para console serial, é possível usar um adaptador USB-serial conectado aos pinos GPIO do RPi para acessar os logs de diagnóstico e interagir com o sistema em tempo real.

### Hardware adicional
- Para desenvolvimento avançado, pode ser útil um osciloscópio para analisar sinais de áudio e vídeo, especialmente ao implementar a saída de vídeo composto e otimizar a pipeline de áudio.
- Um analisador lógico pode ser útil para depurar a comunicação via mailbox e outros protocolos de hardware entre o kernel e o firmware do RPi.
- Para testes de áudio, um amplificador e alto-falantes ou fones de ouvido são necessários para avaliar a qualidade do som gerado pelo backend HDMI ou P2.


## Escolha de linguagem

- Kernel/runtime: `C` (controle baixo nível, toolchain madura e previsível em baremetal)
- Bootstrap inicial: `AArch64 Assembly` (vetor de entrada e setup mínimo da stack)
- Scripts de build/deploy: `Bash` (simplicidade e portabilidade, sem dependências externas)

## Estrutura do projeto ( scaffold )

- `boot/`: ponto de entrada em assembly
- `src/`: código C do kernel
- `include/`: headers
- `linker/`: script de link
- `scripts/`: utilitários de build/deploy
- `docs/`: documentação técnica
- `docs/legal`: licenças e atribuições de código de terceiros

## Third-party
A pasta `third_party/` inclui código de terceiros usado no projeto, organizado por componente e precisa ser populada manualmente ( ver third_party/README.md para detalhes ).

- `third_party/fmsx/`: código do emulador fMSX (GPLv2)
- `third_party/circle/`: código de referência para audio HDMI (Circle, MIT)
- Spike USB/HID com Circle: `artifacts/kernel8-circle-usbkeyboard-debug.img` (sample `08-usbkeyboard`, standalone)

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
- `AUDIO_BACKEND=p2|hdmi`: seleciona backend de saida de audio (`p2` padrao)

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

Preset alternativo para teste de gameplay/performance ( apresentação em 1/2 taxa apos boot ):

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

Preset estável de audio HDMI (backend funcional):

```bash
make audio-hdmi
```

Gera `artifacts/kernel8-audio-hdmi.img`.

- Usa `audio_pcm` como fonte PCM (igual ao P2)
- Backend HDMI atual e **exclusivo** (ao testar HDMI, o backend P2 nao e usado)
- Backend HDMI atual usa MAI + DMA ciclico (referencia Circle) e buffers PCM via `audio_pcm`
- Preset compilado com `ENABLE_MMU=1` e coerencia de cache para buffers/CBs de DMA
- Neste preset, o reset de audio do `ResetMSX()` segue desabilitado e o PSG e reinicializado no `late init` (workaround estavel)
- Implementacao real sera baseada em referencia conceitual de:
  - `third_party/circle/include/circle/sound/hdmisoundbasedevice.h`
  - `third_party/circle/lib/sound/hdmisoundbasedevice.cpp`

Preset de debug overlay para audio HDMI (diagnostico em runtime):

```bash
make audio-hdmi-test
```

Gera `artifacts/kernel8-audio-hdmi-test.img` com overlay de diagnostico na HDMI.

Plano da trilha HDMI:
- `docs/m1-2-audio-hdmi-plan.md`

Preset de diagnostico para audio HDMI (standalone, logs de bring-up):

```bash
make audio-hdmi-debug
```

Gera `artifacts/kernel8-audio-hdmi-debug.img` com `DEBUG=1` em modo standalone
(sem entrar no emulador), para exibir mensagens `[audio][hdmi]` que ajudam a
localizar a falha (sink sem audio, init MAI, polling etc.).

- Logs sao espelhados em HDMI e UART
- Inclui pausa curta no boot (5s)
- Inicializa backend HDMI e injeta tom de teste via `audio_pcm`, sem sobrescrever a tela com o renderer do fMSX

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
- O framebuffer é gerenciado pelo firmware do RPi, e o kernel interage com ele via mailbox (sem acesso direto ao hardware de vídeo).
- Futuramente, será implementada saída de vídeo composto via GPIO visando compatibilidade com TVs antigas, mas isso é um plano de médio prazo.
- UART permanece ativa para diagnóstico, mas toda evolução funcional deve considerar exibição em HDMI.
- A "borda externa" fora da imagem MSX e o preenchimento de letterbox do framebuffer do projeto.
- A "borda interna" faz parte da imagem gerada pelo VDP/MSX (emulação). Ver src/mailbox.c para detalhes.

## Performance no RPi 3B (clock)

- Em baremetal, nao existe governor do Linux para subir clock dinamicamente.
- Sem `arm_freq` no `config.txt`, o Pi 3B pode ficar em clock baixo (ex.: ~600MHz), causando percepcao de "meia velocidade".
- O `sdcard/config.txt` do projeto fixa `arm_freq=1200` (clock nominal do Pi 3B) como baseline de testes.
- Para garantir performance consistente, é recomendado manter essa configuração, especialmente durante o desenvolvimento e testes de otimização.

## Preparar microSD ou USB (macOS)

Script interativo com TUI (`fzf`) e proteções para evitar seleção de disco incorretamente formatado ou com dados importantes ( ex.: disco do sistema ):

```bash
brew install fzf
scripts/prepare-sd.sh
```

Opcionalmente, para copiar firmwares alternativos no mesmo passo:

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
## Suporte a RPMC v9 (Rasperry Pi MSX Clone)
- O projeto prevê compatíbilidade com a placa de slots do RPMC v9, permitindo o uso de cartuchos físicos de MSX.
- O suporte a RPMC v9 é um plano de médio prazo, e pode exigir ajustes na implementação do slot e na BIOS para lidar com as peculiaridades do hardware de cartucho real.


## Spike USB/HID (Circle)

Build do sample `08-usbkeyboard` do Circle (RPI3/AArch64) para validar USB host + hub interno + teclado HID fora da pilha USB custom:

```bash
make circle-usbkeyboard-debug
KERNEL_IMG=artifacts/kernel8-circle-usbkeyboard-debug.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Referências usadas: `third_party/circle/sample/08-usbkeyboard`, `third_party/circle/include/circle/usb/usbhcidevice.h`, `third_party/circle/include/circle/usb/usbkeyboard.h`.


## Spike Circle USB->MSX Input Bridge

Standalone fora de `third_party` usando a pilha USB/HID do Circle e a bridge compartilhada `msx_hid_bridge` (`include/msx_hid_bridge.h`, `src/msx_hid_bridge.c`) para raw HID -> estado de input MSX (`joystick_bits`).

O backend `INPUT_BACKEND=circle` no `msxbare` já consome essa bridge; falta integrar o runtime Circle dentro do binário principal.

```bash
make circle-usb-msxinput-debug
KERNEL_IMG=artifacts/kernel8-circle-usb-msxinput-debug.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Referencias usadas: `third_party/circle/sample/08-usbkeyboard`, `third_party/circle/include/circle/usb/usbkeyboard.h`, `third_party/fmsx/fMSX/MSX.h` (layout `JST_*`).

Preset experimental (msxbare + audio HDMI estavel + runtime Circle input integrado):
```bash
make audio-hdmi-no-circle
KERNEL_IMG=artifacts/kernel8-audio-hdmi-no-circle.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Preset provisório para seguir desenvolvimento sem o runtime Circle integrado (input Circle desativado por flag de build, vídeo+áudio HDMI mantidos estáveis).


```bash
make audio-hdmi-circle-input
KERNEL_IMG=artifacts/kernel8-audio-hdmi-circle-input.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Observacao: integra bibliotecas do Circle com shims de link/runtime locais (fora de `third_party`) e ainda requer validacao funcional em hardware da entrada no binario principal.
