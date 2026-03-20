# Handoff - Branch 187-reduzir-latencia-teclado

Data: 2026-03-13
Base: `176-fix-msx2p-boot-screen-slow`
Issue: #187 (latência e estabilidade de teclado)

## Objetivo da iteração
- Reduzir latência perceptível de teclado.
- Eliminar cenário de tecla "presa" por falha de release.

## Mudanças implementadas

### 1) Fila de reports USB HID (em vez de snapshot único)
Arquivos:
- `src/tools/usb_hid_keyboard.h`
- `src/tools/usb_hid_keyboard.cpp`

O que mudou:
- Substituído modelo `pending/latest` por fila ring-buffer (`kReportQueueSize=16`) de reports raw HID.
- Callback raw agora enfileira cada report recebido.
- Em overflow, descarta o report mais antigo para preservar progresso do estado atual.
- `ConsumeLatest()` passa a consumir o próximo report pendente da fila (FIFO).

Impacto esperado:
- Menor perda de transições rápidas press/release.
- Melhor robustez para sequência de eventos sob carga.

### 2) Processamento de backlog no loop principal
Arquivo:
- `src/kernel.cpp`

O que mudou:
- Enquanto houver reports HID pendentes, processa todos no ciclo (`while ConsumeLatest(...)`).
- Só executa caminho de repeat com último estado quando não houve report novo no ciclo.

Impacto esperado:
- Redução de latência média de entrada.
- Menor risco de eventos "atrasados" em bursts de input.

### 3) Estabilização de matriz com prioridade para release imediato
Arquivo:
- `src/fmsx_host_stubs.c`

O que mudou:
- Reescrita da lógica de filtro de glitch da matriz:
  - Mudanças com release (ou mistas press+release) aplicadas imediatamente.
  - Apenas transições "press-only" exigem uma confirmação adicional.

Impacto esperado:
- Evita tecla presa/repetição contínua por release retardado.
- Mantém uma proteção leve contra glitch espúrio de press único.

## Build
- `make -j4` OK
- Artefato: `artifacts/kernel8-issue187.img`
- BUILD_HASH: `57a469c-69a5f0bc5498631ad8540976a05d112aa61c3d47`
- INT_BUILD: `9CC8`

## Teste de hardware (comando)
```bash
KERNEL_IMG=artifacts/kernel8-issue187.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

## Pontos para validar no hardware
1. Press/release repetidos rápidos em BASIC (digitação contínua e apagamento).
2. Jogos com input contínuo (movimento + tiro) sem tecla "presa".
3. Menu F12: navegação com setas/ESC/ENTER sem delay perceptível.
4. Repetir teste por alguns minutos para observar estabilidade.

## Riscos/observações
- Fila HID reduz perda de evento, mas o pipeline ainda depende do cadence do loop principal.
- Se ainda houver glitch raro, próximo passo é telemetria de fila (ocupação/overflow) no overlay.
