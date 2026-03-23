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

---

## Atualizacao 2026-03-22

### Objetivo desta rodada
- Separar explicitamente o consumidor da UI/hotkeys do consumidor do core/emulador.
- Parar de colapsar `press/release` em um unico snapshot final do loop principal.

### Mudancas implementadas

#### 1) Tool nova de fila HID com dois consumidores
Arquivos:
- `src/tools/input/usb_hid_input_queue.h`
- `src/tools/input/usb_hid_input_queue.cpp`
- `src/Makefile`

O que mudou:
- Nova tool reutilizavel em `src/tools/input/` com ring buffer fixo de reports HID.
- A fila mantem dois cursores independentes:
  - `UI`: consumido pelo loop principal para menu/hotkeys/joystick virtual;
  - `Runtime`: consumido pelo emulador no passo do frame.
- Politica atual de overflow:
  - preserva sempre os reports mais recentes;
  - avanca o cursor atrasado e contabiliza `drop` por consumidor.
- A tool ja expoe estatisticas minimas:
  - `queued_ui`
  - `queued_runtime`
  - `dropped_ui`
  - `dropped_runtime`
  - `high_watermark`

#### 2) `CUsbHidKeyboard` migrou para a nova tool
Arquivos:
- `src/tools/usb_hid_keyboard.h`
- `src/tools/usb_hid_keyboard.cpp`

O que mudou:
- O callback raw nao gerencia mais ring buffer manual proprio.
- Agora ele empilha reports na `CUsbHidInputQueue`.
- `ConsumeLatest()` passa a drenar o cursor da UI.
- Novo `ConsumeForRuntime()` drena o cursor do emulador.

#### 3) O backend deixa de usar o ultimo snapshot da UI
Arquivos:
- `src/kernel.h`
- `src/kernel.cpp`

O que mudou:
- `PushKeyboardStateToRuntime()` agora consome do cursor `Runtime`, nao do estado mais recente da UI.
- O kernel passa a manter duas copias de estado:
  - ultima entrada vista pela UI (`m_LastKeyboard*`)
  - ultima entrada realmente entregue ao backend (`m_RuntimeKeyboard*`)
- Em detach do teclado USB, os dois estados sao limpos.

### Efeito esperado
- `press/release` curtos deixam de sumir simplesmente porque a UI drenou varios reports e o backend recebeu apenas o ultimo.
- O consumo do core fica explicitamente desacoplado do clock de captura USB.

### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221300-e35b064`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `BUILD_HASH`: `e35b064-2e6de2aef96f1bef75f3ea7db09f53d6feb0ac06`

### Revalidacao apos commit
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221330-a969d52`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `BUILD_HASH`: `a969d52-383d0995fd90075e3ebe4d186f145dad9c09885f`

### Proximo passo
- Validar em hardware se a fila dual-consumer ja reduz perda de `press/release`.
- Se ainda houver falha, mover a proxima iteracao para consumo temporal mais fino no core em vez de apenas `1 report/frame`.

### Atualizacao 2026-03-22 - iteracao 2

#### Objetivo desta rodada
- Parar de colapsar os reports antes do `step_frame()`.
- Fazer o runtime aplicar reports de teclado ao longo do frame, em vez de receber apenas um estado consolidado antes da emulacao inteira.

#### Mudancas implementadas
Arquivos:
- `src/kernel.cpp`
- `src/fmsx_host_stubs.c`
- `src/fmsx_runtime.c`
- `src/fmsx_runtime.h`
- `src/fmsx_local/MSX.c`

O que mudou:
- `PushKeyboardStateToRuntime()` agora drena todos os reports pendentes do cursor `Runtime` e os empilha no backend em ordem, em vez de consumir apenas um snapshot novo.
- `fmsx_runtime_set_keyboard_raw()` deixou de aplicar `KeyState[]` imediatamente; agora ele enfileira reports raw numa fila fixa do runtime.
- O fMSX passou a drenar essa fila com `fmsx_runtime_keyboard_drain_step()` ao longo dos scanlines.
- Reset/menu reset/load-state/shutdown agora limpam explicitamente o pipeline de teclado do runtime.

#### Efeito esperado
- Press/release curtos deixam de ser comprimidos num unico estado final antes do `step_frame()`.
- O core passa a observar transicoes mais proximas do tempo em que realmente chegaram do USB.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221405-3572e72`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `BUILD_HASH`: `3572e72-13a3a053bcbb762f4b0941e6df0045720034cf46`

#### Proximo passo
- Validar em hardware se esse segundo corte elimina perda de `press/release` curto.
- Se ainda falhar, o proximo alvo deixa de ser fila e passa a ser a politica de estabilizacao do `KeyState[]`.

### Validacao de hardware reportada apos o build
- A branch anterior de audio/voz pode ser considerada concluida:
  - `START!`: presente
  - `CONTINUE!`: presente
- A `#187` tambem recebeu validacao inicial positiva:
  - teclado bem mais responsivo
  - mais testes de hardware ainda pendentes antes de encerrar a issue

### Atualizacao 2026-03-22 - iteracao 3

#### Problema observado em hardware
- A questao principal deixou de ser apenas latencia media.
- O problema dominante eh falha perceptivel de `key release`:
  - `keypress` atrasado ainda e jogavel;
  - `key release` perdido ou tardio deixa tecla "presa" e atrapalha fortemente o gameplay.

#### Hipotese atacada
- O pipeline ainda reenfileirava snapshots repetidos do mesmo estado de teclado no runtime do fMSX.
- Quando uma tecla ficava pressionada por alguns frames, o runtime podia acumular varios reports identicos de "tecla ainda pressionada".
- O `release` real entrava no fim dessa fila e passava a parecer falha ou atraso severo.

#### Mudancas implementadas
Arquivo:
- `src/fmsx_host_stubs.c`

O que mudou:
- A fila interna do runtime do fMSX agora deduplica reports identicos antes de enfileirar.
- A deduplicacao cobre dois casos:
  - report igual ao ultimo ainda pendente na fila;
  - report igual ao ultimo report efetivamente aplicado em `KeyState[]` quando a fila esta vazia.
- O runtime continua aceitando transicoes reais imediatamente; so snapshots redundantes sao descartados.

#### Efeito esperado
- `release` deixa de ficar preso atras de uma cauda de estados repetidos "tecla ainda pressionada".
- Menor risco de tecla "presa" em gameplay continuo.
- Sem mudar a semantica de `KeyState[]` nem a politica de prioridade de release imediato.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221455-issue187-ab38eb9`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `kernel8.img`: `659544` bytes

### Atualizacao 2026-03-22 - iteracao 4

#### Problema residual
- A deduplicacao de snapshots identicos melhorou a precisao, mas ainda havia poucos casos residuais de tecla presa.
- Uma causa plausivel restante era a ordem arbitraria dos `raw_keys[6]` no report HID USB.
- Dois reports logicamente identicos podiam entrar com ordem diferente e escapar da deduplicacao.

#### Mudancas implementadas
Arquivo:
- `src/fmsx_host_stubs.c`

O que mudou:
- Antes de comparar/enfileirar no runtime do fMSX, os `raw_keys[6]` agora sao canonicalizados:
  - remove zeros intermediarios
  - ordena as teclas nao-zero
  - recompacta o vetor
- Com isso, reports logicamente equivalentes passam a ser de fato iguais para a deduplicacao do runtime queue.

#### Efeito esperado
- Menos backlog artificial gerado por reordenacao do report HID.
- Menor chance de `release` ficar atras de snapshots redundantes.
- Menos casos residuais de tecla "presa" sem alterar a matriz MSX nem a politica de release imediato.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221510-issue187-ab38eb9`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `kernel8.img`: `661592` bytes

#### Correcao imediata apos regressao
- A primeira versao dessa iteracao tambem deduplicava contra o "ultimo report ja aplicado".
- Isso quebrou a segunda confirmacao do caso `press-only`, e as teclas deixaram de entrar no emulador.
- O ajuste seguro final ficou assim:
  - manter canonicalizacao do report HID;
  - manter deduplicacao apenas contra o ultimo report ainda pendente na fila;
  - nao deduplicar contra o ultimo report ja aplicado.

#### Revalidacao apos correcao
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603221530-issue187-ab38eb9`: OK
- Artefato: `artifacts/kernel8-issue187.img`
- `kernel8.img`: `659544` bytes

### Atualizacao 2026-03-22 - rodada de otimizacao de boot/kernel

#### Objetivo desta rodada
- Reduzir custo do boot do Raspberry Pi.
- Trazer o primeiro frame do emulador para mais cedo.
- Enxugar o footprint efetivo do kernel e reduzir o teto de `KERNEL_MAX_SIZE` usado pelo Circle.

#### Mudancas implementadas
Arquivos:
- `Makefile`
- `src/Makefile`
- `src/kernel.cpp`

O que mudou:
- O `Makefile` raiz continua propagando explicitamente `MSXBARE_KERNEL_MAX_SIZE=$(CIRCLE_KERNEL_MAX_SIZE)` para o submake de `src`, mantendo a configuracao coerente entre Circle e kernel.
- O dimming de scanline do modo LCD deixou de usar LUT estatica de `128 KiB`:
  - agora usa operacao inline `((sample & 0xF7DEu) >> 1)`;
  - a LUT de CRT continua existindo, mas passou a ser lazy e so eh alocada quando o modo CRT realmente for usado.

#### Impacto esperado
- Menor ocupacao estatica de memoria.

#### Medicoes locais
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=0 BUILD_BID=202603221215-bootsafe-ab38eb9`: OK
- `make -C src DEBUG=1 MSXBARE_BUILD_BID=202603221216-bootsafe-ab38eb9`: OK
- `kernel8.img` (`DEBUG=0`, fluxo raiz): `659544` bytes
- `kernel8.img` (`DEBUG=1`, build direto em `src`): `659544` bytes

#### Observacoes
- A tentativa de otimizar o boot real adiando `initramfs_mount_remaining()` e a inicializacao de USB, junto com a reducao agressiva de `KERNEL_MAX_SIZE`, foi revertida porque falhou em hardware.
- O estado atual seguro voltou para:
  - `KERNEL_MAX_SIZE=0x400000`
  - montagem completa do initramfs no caminho original
  - inicializacao de USB no caminho original
- A otimizacao mantida desta rodada eh a reducao de memoria estatica do dimming LCD/CRT em `kernel.cpp`.
- O alvo prático agora eh medir no Raspberry Pi quanto a deferencia de initramfs e USB encurtou o tempo ate a tela util.
