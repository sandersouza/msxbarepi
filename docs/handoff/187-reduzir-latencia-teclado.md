# Handoff - Branch 187-reduzir-latencia-teclado

Data: 2026-03-13
Base: `176-fix-msx2p-boot-screen-slow`
Issue: #187 (latência e estabilidade de teclado)

## Objetivo da iteração
- Reduzir latência perceptível de teclado.
- Eliminar cenário de tecla "presa" por falha de release.

## Atualizacao 2026-03-23 - remocao do toggle `Real Clock`

### Objetivo desta rodada
- Remover completamente o A/B de `Real Clock` do runtime, menu e persistencia.
- Voltar ao contrato fixo do projeto:
  - base `3.579545 MHz`
  - `PAN = 1.5x`
  - `MAX = 2.0x`

### Mudancas implementadas
Arquivos:
- `src/fmsx_runtime.h`
- `src/fmsx_runtime.c`
- `src/kernel.h`
- `src/kernel.cpp`
- `src/tools/menu/combo_menu.h`
- `src/tools/menu/combo_menu.cpp`
- `src/tools/menu/combo_menu_items.h`
- `src/tools/menu/combo_menu_items.cpp`
- `src/tools/locale/combo_locale.h`
- `src/tools/locale/combo_locale_en.cpp`
- `src/tools/locale/combo_locale_pt.cpp`
- `src/tools/locale/combo_locale_es.cpp`
- `docs/debug-layer.md`

O que entrou:
- remocao do item `Real Clock [ON/OFF]` de `Settings`
- remocao da chave `real_clock=` de `MSXBARE.CFG`
- remocao do estado correspondente no kernel/pause menu
- `fmsx_runtime_get_base_cpu_clock_hz()` voltou a ser fixo em `3579545 Hz`

### Impacto
- o projeto volta a operar com clock base exato unico
- o toggle de diagnostico nao existe mais na UI nem no runtime
- o eixo de investigacao do `Knightmare Gold` fica restrito ao VDP/raster, sem reabrir o desvio de clock

### Build desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232359-realclock-remove`: OK
- `BUILD_HASH`: `cd6e34b-03fa838f01a4c4db969ccc97a03d6899baec2a56`
- `BUILD_BID`: `202603232359-realclock-remove`
- `BUILD_ID`: `2764`

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

### Atualizacao 2026-03-23 - integracao da issue #224 na branch #187

#### Objetivo desta rodada
- Absorver a trilha da `#224` (`Knightmare Gold`) no fluxo normal da branch `#187`, sem manter worktree separada e sem regressao nas mudancas locais ja existentes.

#### Mudancas integradas
Arquivos principais:
- `src/fmsx_local/MSX.c`
- `src/fmsx_runtime.c`
- `src/fmsx_runtime.h`
- `src/kernel.cpp`
- `src/kernel.h`
- `src/tools/menu/combo_menu.cpp`
- `src/tools/menu/combo_menu_items.cpp`
- `docs/debug-layer.md`
- `docs/handoff/224-knightmare-gold-msx2plus-scroll-fino.md`
- `docs/milestones/m17/224-bug-knightmare-gold-falha-deteccao-msx2plus-scroll-fino.md`

O que entrou:
- suporte ao bloco Panasonic/S1985 no runtime fMSX para a trilha do `Knightmare Gold`
- trace UART `KMG EVT` drenado pelo kernel
- restauracao da opcao `Refresh [NTSC/PAL]` em `Settings` apenas com `DEBUG=1`, posicionada logo abaixo de `Disk ROM`
- persistencia de `refresh=<50|60>` em `MSXBARE.CFG`
- aplicacao de `m_RefreshRateHz` ao runtime sem sobrescrever o chaveamento legitimo por `R#9` do VDP

#### Guardrails preservados
- as mudancas locais preexistentes do usuario em `Makefile`, `sdcard/cmdline.txt`, locais e ROM/disassembly nao foram revertidas
- a otimizacao segura do dimming LCD/CRT em `kernel.cpp` foi mantida
- o contrato principal de refresh permanece:
  - boot default `NTSC`
  - software pode chavear `PAL/NTSC` via `R#9`

#### Proximo passo
- validar build no repositorio principal
- remover a worktree separada da `#224`

### Atualizacao 2026-03-23 - regressao de timing apos integracao da #224

#### Sintoma em hardware
- `Knightmare Gold` passou a rodar um pouco mais lento, com audio "tremido" e espacamento entre notas.
- O overlay ficava travado em `V:59.9`, mas o ritmo de gameplay/audio nao batia com o baseline.

#### Diagnostico fechado
- A premissa da issue `#224` foi refinada:
  - o gate do `SCROLL SMOOTH` nao e "MSX2+" em si
  - a documentacao do proprio `Knightmare Gold` indica:
    - `MSX2 + 7MHz` em maquinas `60Hz`
    - `MSX2 3.57MHz` pode liberar em `50Hz`
- A regressao veio da calibracao agressiva aplicada na trilha da `#224`:
  - turbo Panasonic virtual em `224%`
  - wait de VDP Panasonic aplicado tambem no caminho de leitura
- Isso desviava do comportamento de referencia de `openMSX`.

#### Correcao aplicada
Arquivos:
- `src/fmsx_runtime.c`
- `src/fmsx_local/MSX.c`

O que mudou:
- turbo Panasonic virtual voltou para `150%` (`3.58MHz -> 5.37MHz`), alinhado ao `openMSX`
- o wait Panasonic do VDP deixou de penalizar leituras; permanece apenas no caminho de escrita, como na referencia

#### Intencao tecnica
- remover a regressao de gameplay/audio sem abandonar a trilha do `Knightmare Gold`
- continuar usando `Refresh [NTSC/PAL]` em `DEBUG=1` como ferramenta de diagnostico para o gate `50/60Hz`
- `make -j4 DEBUG=1 BUILD_BID=202603221405-3572e72`: OK

### Atualizacao 2026-03-23 - foco em raster VDP do Knightmare Gold

#### Sintoma atual
- O audio global voltou ao normal depois da correcao do clock efetivo no produtor de audio.
- Permanece um glitch grafico no `Knightmare Gold` durante o `scroll fino` vertical:
  - ao cruzar o limite do proximo bloco de `8x8`, certos elementos parecem reutilizar/sobrepor a linha anterior;
  - o usuario descreve isso como "voltar o bloco" ou "duplicar" o grafico.

#### Diagnostico fechado nesta rodada
- O problema nao esta mais no `Real Clock`; o A/B `3.579545` vs `3.58` nao alterou o glitch.
- O caminho de gameplay do `Knightmare Gold` esta em `screen mode 4` (`GRAPHIC3`), portanto o alvo principal e `RefreshLine4()`.
- Comparando o nosso VDP com o `fMSX` original, ficou identificado um desvio concreto no compare de `IE1`:
  - upstream usa `(((ScanLine + VScroll) & 0xFF) - R#19) == 2`;
  - o runtime local estava armando `IE1` em `(R#19 - VScroll)`, ou seja, `2` linhas cedo.

#### Correcao aplicada
Arquivos:
- `src/fmsx_local/MSX.c`
- `src/fmsx_runtime.h`
- `src/kernel.cpp`
- `src/kernel.h`
- `docs/debug-layer.md`

O que mudou:
- `IE1` agora usa o mesmo alvo logico do `fMSX` original: `R#19 - VScroll + 2`.
- Ao sair da janela ativa de coincidencia de linha, o latch/IRQ de `IE1` volta a ser limpo como no upstream.
- O trace VDP ganhou eventos de UART para:
  - `R#19`
  - `R#23`
  - `0x98` write
  - `0x99` address
  - `0x99` register
- O logger sai como `VDP EVT` e fica gated por `F10` / `UART Log`.

#### Build desta rodada
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232355-vdp-ie1-trace`: OK
- `BUILD_HASH`: `e61e86e-06c695cd162a9f4f99f739afbced997cfef4cce4`
- `BUILD_BID`: `202603232355-vdp-ie1-trace`
- `BUILD_ID`: `9072`

#### Proximo passo
- Validar em hardware se a correcao de `IE1` remove ou reduz a duplicacao.
- Se o glitch persistir, usar `VDP EVT` para fechar o segundo suspeito forte:
  - falta de sincronizacao do VDP antes de writes em `0x98/0x99`, comparando com `blueMSX/openMSX`.

### Atualizacao 2026-03-23 - toggle de teste `Real Clock`

#### Objetivo desta rodada
- Permitir A/B rapido entre clock base exato (`3.579545 MHz`) e clock arredondado (`3.58 MHz`) sem recompilar a cada teste.

#### Mudancas implementadas
Arquivos:
- `src/kernel.cpp`
- `src/kernel.h`
- `src/fmsx_runtime.c`
- `src/fmsx_runtime.h`
- `src/fmsx_local/MSX.c`
- `src/fmsx_local_sound.c`
- `src/tools/menu/combo_menu.cpp`
- `src/tools/menu/combo_menu.h`
- `src/tools/menu/combo_menu_items.cpp`
- `src/tools/menu/combo_menu_items.h`
- `src/tools/locale/combo_locale.h`
- `src/tools/locale/combo_locale_pt.cpp`
- `src/tools/locale/combo_locale_en.cpp`
- `src/tools/locale/combo_locale_es.cpp`

O que entrou:
- novo item `Real Clock [ON/OFF]` em `Settings`, visivel somente em `DEBUG=1`
- posicionado logo abaixo de `Debugger [ON/OFF]`
- persistencia em `MSXBARE.CFG` via chave `real_clock=<0|1>`
- `ON` usa base `3579545 Hz`
- `OFF` usa base `3580000 Hz`

#### Observacao operacional
- Esse toggle existe apenas para diagnostico.
- O contrato de `PAL/NTSC` continua vindo do VDP (`R#9`); o item nao deve bloquear o chaveamento por software.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240015-realclock-toggle`: OK
- `BUILD_HASH`: `e61e86e-b4c25124e4fe3add840297fa73824b7d00cf7b23`
- `BUILD_BID`: `202603240015-realclock-toggle`
- `BUILD_ID`: `4EEA`

### Atualizacao 2026-03-23 - diagnostico da fila de audio e semantica de turbo

#### Evidencia coletada
- A instrumentacao `AUDQ` mostrou que o audio quebrado nao vinha de falta de dados na HDMI:
  - `OW:0` consistente
  - `LP:128/128` consistente
  - `UP` baixo e estavel
  - `TR` crescendo continuamente
- Conclusao: o problema dominante e `trim` de backlog na ring interna do host, nao `underrun`.

#### Correcao aplicada nesta rodada
Arquivos:
- `src/fmsx_runtime.h`
- `src/fmsx_runtime.c`
- `src/fmsx_host_stubs.c`
- `src/kernel.cpp`
- `docs/debug-layer.md`

O que mudou:
- `Z80 Turbo` agora volta a respeitar o contrato de UI:
  - `OFF = 100%`
  - `PAN = 150%`
  - `MAX = 200%`
- O `TM1 T:` passa a refletir o turbo configurado no menu, nao o turbo Panasonic virtual ativado por software.
- O host de audio ganhou `fmsx_audio_reset_stream_timing()` para resetar ancora/ring/watermarks em transicoes de turbo e refresh.
- `fmsx_runtime` agora aplica esse reset ao mudar:
  - turbo do menu
  - turbo Panasonic virtual
  - refresh de runtime
  - saida do turbo forcado de boot

#### Intencao tecnica
- Eliminar backlog herdado de mudancas de timing que acabava virando `trim` continuo.
- Separar corretamente o significado de `T:` no overlay para nao misturar configuracao do usuario com estado de hardware emulado.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232020-turbo-audioreset`: OK
- `BUILD_HASH`: `e61e86e-5a8aaa805c321be9a63fe624b922029abe617fb6`
- `BUILD_ID`: `1DCA`
- Artefato: `artifacts/kernel8-issue187.img`
- `BUILD_HASH`: `3572e72-13a3a053bcbb762f4b0941e6df0045720034cf46`

### Atualizacao 2026-03-23 - clock exato do Z80

#### Objetivo desta rodada
- Parar de modelar o clock do Z80 apenas como escala percentual inteira.
- Tratar o clock base do MSX como `3.579545MHz` exatos, preservando `PAL/NTSC` apenas no VDP.

#### Mudancas implementadas
Arquivos:
- `src/fmsx_local/MSX.c`
- `src/fmsx_runtime.c`
- `src/kernel.cpp`

O que mudou:
- o core local passou a manter um clock efetivo em Hz (`FmsxTurboHz`) em vez de depender apenas de `%`
- `DES` agora referencia explicitamente `3579545Hz`
- `PAN` agora referencia explicitamente `5369318Hz`
- `MAX` agora referencia explicitamente `8000000Hz`
- `VPeriod`, `HPeriod` e `CPU.IPeriod` passaram a ser recalculados com razao exata `target_hz / 3579545`, com arredondamento inteiro, em vez de multiplicacao por `%`
- `PAL/NTSC` continua vindo de `R#9` do VDP; a CPU nao muda de frequencia entre `50Hz` e `60Hz`

#### Intencao tecnica
- reduzir pequenos desvios acumulados de sincronismo em caminhos sensiveis
- preservar compatibilidade do menu/overlay, que continuam mostrando os mesmos modos de turbo

#### Ajuste posterior na mesma rodada
- a tentativa de propagar `target_hz / 3579545` diretamente para `VPeriod/HPeriod/IPeriod` abriu regressao visivel em hardware:
  - duplicacao no fim do scroll fino
  - audio global levemente entrecortado
- o problema nao estava no clock base exato em si, e sim em contaminar o scheduler inteiro de scanline/interrupt com uma modelagem nova
- o caminho foi revertido para o escalonamento inteiro legado por `%` no scheduler
- o clock exato `3579545Hz` continua sendo a referencia correta para caminhos de tempo continuo ja baseados em `CPU_CLOCK`, mas o scheduler voltou ao baseline compativel

#### Proximo passo
- Validar em hardware se esse segundo corte elimina perda de `press/release` curto.
- Se ainda falhar, o proximo alvo deixa de ser fila e passa a ser a politica de estabilizacao do `KeyState[]`.

### Atualizacao 2026-03-23 - instrumentacao da fila de audio para diagnostico de cortes

#### Sintoma em hardware
- Mesmo com velocidade geral boa, alguns cenarios passaram a apresentar:
  - corte entre ciclos em todo audio da emulacao (nao so PSG/SCC);
  - impressao de "vibrato";
  - glitches de scroll fino/duplicacao visual correlacionados a timing.

#### Objetivo desta rodada
- Descobrir se o problema vem de:
  - subproducao do core;
  - overwrite/trim da ring interna do host;
  - `pull` curto ao abastecer a HDMI;
  - ou esvaziamento da fila HDMI em si.

#### Mudancas implementadas
Arquivos:
- `src/fmsx_runtime.h`
- `src/fmsx_host_stubs.c`
- `src/kernel.h`
- `src/kernel.cpp`
- `docs/debug-layer.md`

O que mudou:
- `TFmsxAudioStats` passou a expor contadores separados de:
  - overwrite na ring interna;
  - trim por latencia excessiva;
  - `pull` curto / underrun samples;
  - ultimo batch renderizado e pico de batch;
  - ultimo pull solicitado/retornado;
  - ultimo trim aplicado;
  - pico da ocupacao da ring.
- O overlay HDMI foi reconfigurado para mostrar essas informacoes em:
  - `EV1`: perdas (`overwrite`, `trim`, `pull` curto);
  - `EV2`: ultimo batch, ultimo pull e ocupacao da ring;
  - `JY2`: trim mais recente e drops acumulados.
- O kernel agora emite snapshot UART `AUDQ ...` com throttle quando houver:
  - overwrite;
  - trim;
  - `pull` curto;

### Atualizacao 2026-03-23 - hotkeys de snapshot removidos e gate de UART no F10

#### Objetivo desta rodada
- Isolar o impacto da UART frequente no diagnostico de audio sem mexer no scheduler da emulacao.

#### Mudancas implementadas
Arquivos:
- `src/kernel.h`
- `src/kernel.cpp`
- `docs/debug-layer.md`
- `CONTEXT.md`

O que mudou:
- `F10` agora liga/desliga apenas as telemetrias UART frequentes:
  - `AUDQ`
  - `SCC EVT`
  - `AUD EVT`
  - `KMG EVT`
- `F9` saiu de uso.
- O fluxo antigo de snapshot manual/telemetry view por `F9/F10` foi removido do kernel.
- O pause menu continua capturando snapshot do viewport normalmente para o fundo do menu; a remocao foi apenas do atalho manual.

#### Intencao tecnica
- Permitir comparar audio com e sem a pressao da UART em tempo real.
- Eliminar codigo morto/parcial que ainda mantinha referencias a `F9`, `TelemetryView` e snapshot manual.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232130-uartf10`: OK

### Atualizacao 2026-03-23 - AUDQ removido da UART e tentativa de correção do glitch de scanline

#### Estado observado em hardware antes desta rodada
- O audio global ficou limpo apos o ajuste do clock efetivo do produtor de audio.
- O glitch visual do `SCROLL SMOOTH` permaneceu:
  - duplicacao/sobreposicao de objetos;
  - salto aleatorio quando a atualizacao de linha acontece;
  - sintoma mais visivel ao cruzar limites de `8x8`.

#### Mudancas implementadas
Arquivos:
- `src/kernel.cpp`
- `src/fmsx_local/MSX.c`
- `docs/debug-layer.md`

O que mudou:
- `AUDQ` deixou de ser emitido na UART.
  - Os contadores continuam vivos no overlay (`EV1/EV2/JY2`), mas a UART nao recebe mais snapshots da fila de audio.
- O render da scanline do VDP saiu do bloco de `HBlank` e passou para o inicio da fase visivel (`HRefresh`) da propria linha.
- A primeira linha de border inferior (`192/212`) agora desliga `Drawing` antes da composicao da scanline, para evitar que a linha de transicao ainda seja renderizada como area util.

#### Intencao tecnica
- Eliminar a possibilidade de a linha ser desenhada tarde demais, ja depois de writes de VRAM/scroll ocorridos na propria linha ativa.
- Testar a hipotese de que o glitch residual vem de mistura de estado antigo/novo na mesma scanline, e nao mais de audio/scheduler.
- Limpar a UART agora que o diagnostico de `AUDQ` ja cumpriu o papel.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232315-vdp-linephase`: OK
- `BUILD_HASH`: `e61e86e-68469b3541e4671ff8fb74f9daf4b3be7e65c490`
- `BUILD_BID`: `202603232315-vdp-linephase`
- `BUILD_ID`: `80F1`
- Artefato: `artifacts/kernel8-issue187.img`

#### Proximo passo
- Validar em hardware se a duplicacao no `SCROLL SMOOTH` some, diminui ou muda de padrao.
- Se o glitch persistir, o proximo alvo deixa de ser a fila de audio e passa a ser a temporalidade do renderer do VDP por linha/VRAM, possivelmente exigindo latch adicional de estado ou snapshot de tabela/VRAM.
- `BUILD_HASH`: `e61e86e-343fadc5131a7dfc98ad7472defed9aad4602fa4`
- `BUILD_BID`: `202603232130-uartf10`
- `BUILD_ID`: `F536`
  - ou fila/ring perigosamente baixas.

#### Intencao tecnica
- Preservar o caminho de timing preciso como objeto de investigacao, sem voltar a "chutar" scheduler/audio.
- Obter evidencia objetiva para saber se o corte vem do core, da ring intermediaria ou do write/pacing da HDMI.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603231940-audioqdiag`: OK

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

### Atualizacao 2026-03-23 - diagnostico de audio picotado e correcao de clock efetivo

#### Sintoma em hardware
- Audio global da emulacao seguia picotado, nao apenas PSG/SCC.
- A UART `AUDQ` mostrava:
  - `LP:128/128` de forma consistente;
  - `OW:0`;
  - `UP` baixo e estavel;
  - `TR` crescendo continuamente.

#### Diagnostico fechado
- O problema nao era `underrun` da fila HDMI.
- O problema era `trim` continuo da ring interna do host, indicando superproducao de amostras.
- Causa raiz:
  - `fmsx_audio_render_to_cpu_now()` convertia ciclos escalados do scheduler para amostras usando `CPU_CLOCK` fixo (`3.579.545 Hz`);
  - quando o turbo efetivo do core subia por caminho Panasonic/S1985, o scheduler passava a contar ciclos em clock maior, mas o render de audio continuava dividindo pelo clock base;
  - isso fazia o produtor de audio rodar mais rapido que o consumidor HDMI e acumulava backlog.

#### Correcao implementada
Arquivos:
- `src/fmsx_runtime.h`
- `src/fmsx_local/MSX.c`
- `src/fmsx_host_stubs.c`

O que mudou:
- Novo helper `fmsx_audio_effective_cpu_clock_hz()`.
- O clock efetivo do Z80 para o render de audio agora e calculado a partir de `CPU_CLOCK * FmsxTurboPercent`, com arredondamento inteiro:
  - `100% -> 3579545 Hz`
  - `150% -> 5369318 Hz`
  - `200% -> 7159090 Hz`
- `fmsx_audio_render_to_cpu_now()` passou a converter ciclos para amostras usando esse clock efetivo, sem mexer no scheduler preciso (`HPeriod`, `VPeriod`, `CPU.IPeriod`).

#### Validacao local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232055-audiohz-fix`: OK

#### Build
- `BUILD_HASH: e61e86e-16c6f8f77376ad07810c4e62f8765dcab399978a`
- `BUILD_BID: 202603232055-audiohz-fix`
- `BUILD_ID: 105C`

### Atualizacao 2026-03-23 - correcao de glitch VDP em scroll fino vertical

#### Sintoma em hardware
- Com o audio ja limpo pela build `105C`, restou um glitch visual no `Knightmare Gold` com `SCROLL SMOOTH`:
  - elementos de fundo e parte do HUD apareciam duplicados/sobrepostos;
  - o defeito ficava mais visivel quando o scroll fino vertical cruzava o limite de `8x8`.

#### Diagnostico fechado
- O scheduler preciso foi preservado; o defeito passou a apontar para o caminho de render do VDP.
- A comparacao com `openMSX` mostrou dois desvios relevantes no core local:
  1. o renderer consumia `R#23` (`VScroll`) ao fim da linha, nao o valor efetivo no inicio da linha;
  2. writes em `R#19/R#23` nao reprogramavam corretamente o compare de `IE1` para a linha corrente, apesar de `Knightmare Gold` depender desse fluxo de split/raster.
- Como a linha e desenhada no nosso `LoopZ80()` durante a meia-fase de HBlank, usar `VDP[23]` vivo nesse ponto permite que um write feito no meio da linha contamine retroativamente toda a linha renderizada.

#### Correcao implementada
Arquivos:
- `src/fmsx_local/Common.h`
- `src/fmsx_local/MSX.c`

O que mudou:
- Adicionado latch de scroll vertical por scanline:
  - novo estado global `FmsxVDPVScrollLatched`;
  - atualizado em `fmsx_vdp_commit_line_display_state()`;
  - o renderer e a avaliacao de sprites em `Common.h` passaram a usar `FMSX_RENDER_VSCROLL`, nao mais `VDP[23]` vivo.
- Ajustado o compare de `IE1` para writes em `R#19/R#23`:
  - novo helper `fmsx_vdp_cancel_ie1_edge_only()` cancela somente o edge pendente sem limpar o latch de `S#1`;
  - novo helper `fmsx_vdp_reschedule_ie1_compare()` rearma `IE1` na linha corrente quando o compare atualizado cai na scanline ativa;
  - `VDPOut()` agora reschedule o compare apos commit de `R#19` e `R#23`, aproximando a semantica do `scheduleHScan()` do `openMSX`.

#### Justificativa tecnica
- Isso separa dois contratos que antes estavam misturados:
  - `R#23` vivo continua valendo para o scheduler/compare de `IE1`;
  - `R#23` latched por linha passa a valer para o renderer, evitando tearing e duplicacao no cruzamento do tile row.
- O latch de `S#1` permanece sticky; a reprogramacao de `R#19/R#23` nao volta a limpar o evento ja observado.

#### Validacao local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232230-vdp-r23-latch`: OK

#### Build
- `BUILD_HASH: e61e86e-6c158abc0be7b3dc19a18185db5649c82b93a5e3`
- `BUILD_BID: 202603232230-vdp-r23-latch`
- `BUILD_ID: 87C9`

### Atualizacao 2026-03-23 - item `UART Log` no menu de Settings

#### Objetivo
- Expor no menu o mesmo toggle operacional hoje controlado pela tecla `F10`, para permitir testes em hardware sem depender do atalho.

#### Mudancas implementadas
Arquivos:
- `src/tools/menu/combo_menu_items.cpp`
- `src/tools/menu/combo_menu.cpp`
- `src/kernel.h`
- `src/kernel.cpp`
- `src/tools/locale/combo_locale_pt.cpp`
- `src/tools/locale/combo_locale_en.cpp`
- `src/tools/locale/combo_locale_es.cpp`
- `docs/debug-layer.md`

O que mudou:
- `Settings` agora mostra `UART Log [ON/OFF]` logo abaixo de `Debugger [ON/OFF]`.
- O item aparece somente em `DEBUG=1`, seguindo o mesmo gate de build do fluxo de debug.
- O item usa exatamente o mesmo boolean/runtime da tecla `F10` (`m_UartTelemetryEnabled`).
- `F10` e o menu agora passam pelo mesmo helper no kernel (`SetUartTelemetryEnabled()`), mantendo comportamento unico.
- Os textos de locale foram ajustados de `Log SD` para `UART Log`.

#### Semantica
- Esta opcao nao cria um sistema novo.
- Ela so espelha no menu a mesma acao de `F10`.
- O estado continua sendo runtime/debug; nao foi adicionado persistencia nova em `MSXBARE.CFG`.

#### Validacao local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232345-uartlog-menu`: OK

#### Build
- `BUILD_HASH: e61e86e-b79d6f5c504c8a1cfcc6945ca2172b167f04a292`
- `BUILD_BID: 202603232345-uartlog-menu`
- `BUILD_ID: 07BC`

- O gate de `VDP EVT` foi destravado para `Knightmare Gold`: o trace deixa de depender do `PC` do loader e passa a ativar `W=KG` quando um `DSK` com `kmaregold/kmare` esta carregado e a gameplay esta em `screen mode 4`.
- A capacidade da ring de VDP foi ampliada para `1024` eventos para nao perder o raster de `0x98/0x99` durante o scroll fino.

### Atualizacao 2026-03-23 - VDP do Knightmare Gold (round HBlank)

#### Diagnostico
- O log `/tmp/msx2p-boot-serial.log` da build `D21E` nao mostrou nenhuma linha `VDP EVT`.
- O glitch do `scroll fino` vertical do `Knightmare Gold` permaneceu sem mudanca perceptivel.
- O desvio tecnico mais forte em relacao ao `fMSX` upstream continuava sendo o ponto de composicao da scanline: nosso local ainda desenhava a linha no inicio da fase visivel, enquanto o upstream compoe em `HBlank` apos `LoopVDP()`.

#### Mudanca implementada
Arquivo:
- `src/fmsx_local/MSX.c`

O que mudou:
- `fmsx_vdp_commit_line_display_state()` deixou de ocorrer na fase visivel e voltou para o bloco de `HBlank`.
- `fmsx_vdp_render_scanline()` deixou de ocorrer no inicio da fase visivel e voltou para `HBlank`, alinhado ao contrato do `fMSX` upstream.
- O corte para o border inferior (`Drawing=0` em `192/212`) tambem voltou para o bloco de `HBlank`.

Racional:
- O `Knightmare Gold` reescreve VRAM/registradores durante a fase ativa para sustentar o `scroll fino` vertical em `screen mode 4`.
- Com a composicao antecipada no inicio da linha, a emulacao podia usar dados antigos justamente ao cruzar o limite de `8x8`, reaproveitando bloco/linha errados.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232355-vdp-hblank-compose`: OK
- `BUILD_HASH`: `e61e86e-d9fa97f097053843d1893b3db7861c779df20446`
- `BUILD_BID`: `202603232355-vdp-hblank-compose`
- `BUILD_ID`: `555F`

### Atualizacao 2026-03-24 - VDP do Knightmare Gold (pre-sync em 0x98/0x99/0x9A/0x9B)

#### Diagnostico
- O `Knightmare Gold` continuou com o glitch de duplicacao/retrocesso de blocos no `scroll fino` vertical mesmo apos o realinhamento de composicao em `HBlank`.
- A comparacao com `blueMSX/openMSX` mostrou que o passo ainda faltando na adaptacao era sincronizar o VDP imediatamente antes das mutacoes por CPU em `0x98/0x99/0x9A/0x9B`.
- O helper `fmsx_vdp_sync_before_cpu_write()` ja existia, mas ainda nao estava ligado aos caminhos reais de escrita no `OutZ80()`.

#### Mudanca implementada
Arquivo:
- `src/fmsx_local/MSX.c`

O que mudou:
- `case 0x98` agora chama `fmsx_vdp_sync_before_cpu_write()` antes de alterar VRAM/`VAddr`.
- `case 0x99` agora chama `fmsx_vdp_sync_before_cpu_write()` no segundo latch, antes de alterar endereco ou registrador.
- `case 0x9A` agora sincroniza antes de efetivar a nova entrada de paleta.
- `case 0x9B` agora sincroniza antes de efetivar `VDPOut()` em acesso direto a registrador.

Racional:
- `blueMSX/openMSX` sincronizam o VDP antes de mutacoes por CPU; sem isso, o raster local podia continuar compondo a linha corrente com estado misto de antes/depois do write.
- No `Knightmare Gold`, isso e exatamente o tipo de artificio usado para sustentar o `scroll fino` vertical adaptado em `screen mode 4`.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240120-vdp-presync`: OK
- `BUILD_HASH`: `e61e86e-bd2c95b6e43f1f06370ff1c0de56f17316c75269`
- `BUILD_BID`: `202603240120-vdp-presync`
- `BUILD_ID`: `A638`

### Atualizacao 2026-03-24 - VDP do Knightmare Gold (latch de linha no inicio da scanline)

#### Diagnostico
- O `pre-sync` em `0x98/0x99/0x9A/0x9B` nao resolveu sozinho.
- O padrao observado em hardware permaneceu amarrado ao cruzamento de blocos de `8x8`, o que aponta para erro no estado latched da linha, nao para jitter aleatorio.
- O helper de `pre-sync` ainda tinha um problema estrutural: ele relatchava `R#23`/`ScreenOn` no meio da linha, e o render de `HBlank` ainda usava `Drawing/UCount` vivos, nao os da linha ja aberta.

#### Mudanca implementada
Arquivo:
- `src/fmsx_local/MSX.c`

O que mudou:
- `fmsx_vdp_sync_before_cpu_write()` deixou de relatchar estado de display; agora ele apenas compoe a linha corrente usando o estado ja congelado no inicio da scanline.
- O latch de estado da linha (`R#23`, `ScreenOn`) foi movido para o inicio da scanline, na entrada de `HRefresh`, antes de writes de VDP poderem preparar a linha seguinte.
- O render de `HBlank` passou a usar `FmsxVDPDrawingLatched` e `FmsxVDPUCountLatched`, em vez de `Drawing/UCount` vivos.
- A decisao de borda inferior (`Drawing=0` na primeira linha do border inferior) tambem foi movida para o inicio da scanline, para manter coerencia do latch por linha inteira.

Racional:
- Se `R#23` mudar durante a fase ativa, a linha corrente nao pode "nascer de novo" com o scroll da linha seguinte.
- Esse desvio explica exatamente o padrao de erro ao atravessar o limite de `8x8`.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240155-vdp-linestart-latch`: OK
- `BUILD_HASH`: `e61e86e-223541867e283d63eeff49dce16cd868a05807ab`
- `BUILD_BID`: `202603240155-vdp-linestart-latch`
- `BUILD_ID`: `2934`

### Atualizacao 2026-03-23 - engenharia reversa do `KMG.COM` e mecanismo real do `SCROLL SMOOTH`

#### Diagnostico fechado
- O `scroll fino` do `Knightmare Gold` nao e um simples uso de `R#23`.
- O loader `KMG.COM`:
  - carrega `KMARE.ROM`;
  - copia a propria payload para `0xC000..`;
  - aplica tabelas de patch na ROM carregada e em RAM baixa;
  - substitui rotinas originais do jogo por hooks em RAM que escrevem direto no VDP.

#### Evidencia principal
- `sub_3152h` em `KMG.COM` e um aplicador de patch-table:
  - formato: `[count][dst_lo][dst_hi][count bytes...]`
  - termina em `count == 0`
- `sub_3192h` copia a payload do loader para `0xF700`:
  - `DE=F700h`, `HL=2383h`, `BC=0116h`, `LDIR`
- A rotina seletora em `2CFBh` escolhe a trilha do scroll:
  - `l2212 == 1` usa a tabela `2C68h`
  - caso contrario usa `2CB0h`
  - so aplica a tabela `2C0Bh` quando `l2212 != 0` e `l2219 == 1`

#### Patches decisivos do `SCROLL SMOOTH`
- A tabela `2C0Bh` aplica:
  - `046Ch <- ED A3 ED A3 ED A3 ED A3`
  - `8DF1h <- JP D995h`
  - `6A12h <- JP D995h`
  - `8CF0h <- JP D995h`
  - `8D20h <- CALL D995h`
- Isso prova que o loader troca o caminho original de atualizacao de mapa por uma rotina nova em RAM (`D995h`).

#### O que faz `D995h`
- `D995h` e uma rotina de transferencia retangular para VRAM:
  - converte `HL` para endereco de VRAM via `D9C2h`
  - programa o endereco do VDP
  - executa `OUTI` em burst
  - avanca o destino em `+0x20` por linha
  - repete por `B` linhas, copiando `C` bytes por linha
- Na pratica:
  - `B = numero de linhas`
  - `C = bytes por linha`
- O efeito e “copiar a proxima faixa de tiles” da name table linha a linha, em vez de depender so do scroll do registrador.

#### Relacao com o codigo original do jogo
- Na ROM original, os pontos patchados ja usavam uma rotina retangular equivalente em `8DF1h`.
- O loader a substitui por `D995h`, que faz a mesma ideia, mas escrevendo direto no VDP e com sincronismo proprio.
- Exemplos de chamadores originais:
  - em `8CC0h`, o jogo prepara `BC=0303h` e salta para `8DF1h`
  - em `6A00h`, o jogo prepara `BC=0202h` e salta para `8DF1h`
- Isso combina com a observacao em hardware:
  - o glitch aparece exatamente no cruzamento de blocos de `8x8`, quando a rotina precisa publicar a proxima linha de tiles na name table.

#### Macete real do `scroll fino`
- O loader faz um “pseudo smooth scroll” em `screen mode 4` combinando:
  - hooks em pontos especificos do jogo;
  - transferencia retangular direta para VRAM (`D995h`);
  - polling/sincronismo de VDP em `D90F/D912/D936`;
  - bursts curtos de `OUTI`, inclusive um patch em RAM baixa (`046Ch`) com `4x OUTI`.
- Conclusao: o bug atual nao esta no conceito de `R#23` em si; ele esta no contrato fino do VDP/raster enquanto o jogo atualiza a name table em tempo real.

#### Impacto no plano tecnico
- Parar de insistir em toggles de clock como explicacao principal do glitch do `Knightmare Gold`.
- O proximo alvo tecnico precisa ser o comportamento do VDP durante esse padrao:
  - writes em `0x98/0x99` durante a fase ativa;
  - linha efetiva e latch de name-table ao cruzar `8x8`;
  - sincronismo do compare/raster usado pelo jogo para disparar a copia.

### Atualizacao 2026-03-24 - SCREEN 4: caminho upstream quando scroll horizontal V9958 nao esta ativo

#### Hipotese consolidada
- O `Knightmare Gold` faz `scroll fino` vertical em `screen mode 4`, mas nao depende do compositor horizontal expandido por `R25/R26/R27`.
- O `RefreshLine4()` local tinha se afastado bastante do `fMSX` upstream para suportar scroll horizontal V9958 em `SCREEN 4`.
- Como o glitch do `KMG` permanece exatamente no cruzamento de `8x8`, a suspeita mais forte passou a ser o proprio compositor expandido de `SCREEN 4`, nao mais `Real Clock` ou a fila de audio.

#### Correcao aplicada
- `src/fmsx_local/Common.h`
  - novo helper `V9958ScrollActive256()`
  - `RefreshLine4()` agora faz bifurcacao:
    - sem `R25/R26/R27` ativos para scroll horizontal, usa o caminho original do `fMSX` upstream;
    - com scroll horizontal V9958 realmente ativo, continua no compositor expandido local
- Isso isola a trilha do `Knightmare Gold` do caminho multi-page/horizontal introduzido anteriormente, sem desmontar o suporte necessario para cenarios como `GRADIUS2E`.

#### Objetivo desta rodada
- Validar se o glitch do `KMG` vem do compositor expandido de `SCREEN 4` e nao do mecanismo de latch/raster do VDP em si.
- Preservar o caso de uso onde `R25/R26/R27` precisam continuar funcionando em `SCREEN 4`.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240145-kmg-screen4-upstream-gate`: OK
- `BUILD_HASH`: `e61e86e-2857d6c9399555072903e06b5d73240f9dc445a7`
- `BUILD_BID`: `202603240145-kmg-screen4-upstream-gate`
- `BUILD_ID`: `C03F`

### Atualizacao 2026-03-24 - restauracao do baseline de IE1 para nao quebrar GRADIUS2E

#### Diagnostico
- A regressao reportada no `GRADIUS2E` bate exatamente com o deslocamento global de `IE1` que tinha sido introduzido para tentar corrigir o `Knightmare Gold`:
  - `fmsx_vdp_ie1_target_line()` passou para `R#19 - VScroll + 2`
  - o sintoma em hardware virou precisamente "as 2 primeiras linhas do placar scrollam junto com a area principal"
- Isso e forte demais para tratar como coincidencia. O ajuste de `+2` saiu do caminho global.

#### Correcao aplicada
- `src/fmsx_local/MSX.c`
  - `fmsx_vdp_ie1_target_line()` voltou para o baseline estavel do projeto:
    - `R#19 - VScroll`
- Direcao tecnica consolidada:
  - `GRADIUS2E` volta a depender do baseline de split-raster que ja estava estabilizado
  - o problema remanescente do `Knightmare Gold` deve ser perseguido no caminho de `S#2`/polling e das copias retangulares em VRAM (`D995h`), nao deslocando `IE1` para todos os titulos

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240210-ie1-baseline-restore`: OK
- `BUILD_HASH`: `cd6e34b-a3285ff58eccd9c4f340c9d1c4098f898aa37e48`
- `BUILD_BID`: `202603240210-ie1-baseline-restore`
- `BUILD_ID`: `BC67`

### Atualizacao 2026-03-24 - S#2/HR no tempo do acesso para o raster do Knightmare Gold

#### Diagnostico consolidado
- O `Knightmare Gold` continuou com o glitch de `8x8` mesmo apos restaurar o baseline global de `IE1`.
- A engenharia reversa do `KMG.COM` mostrou que o caminho de `SCROLL SMOOTH` depende de polling do `S#2 bit5` (`HR`) nos hooks de raster em RAM, e nao de um ajuste global de line interrupt.
- O runtime local ainda tinha dois desvios concretos em relacao a `blueMSX/openMSX`:
  - `S#2 bit5` era derivado de um corte simplificado demais entre fase ativa e `HBlank`;
  - `0x99` estava amostrando `S#2` antes do wait efetivo do acesso de I/O, isto e, cedo demais para loops de polling finos.

#### Correcao aplicada
- `src/fmsx_local/MSX.c`
  - `fmsx_vdp_status2_hr()` passou a usar a mesma janela de `HBlank` das referencias:
    - `312` ticks em modos graficos
    - `404` ticks em modos texto
    - o restante da linha vira border esquerdo
  - `0x99` agora aplica o wait de I/O antes de calcular `live_status1/live_status2`
  - `0x98` read e `0x98` write tambem foram alinhados ao timestamp do acesso:
    - wait primeiro
    - efetivacao/leitura depois
- Isso preserva o invariavel ja confirmado:
  - `fmsx_vdp_ie1_target_line()` permanece em `R#19 - VScroll`
  - nada do ajuste desta rodada reabre o caso do `GRADIUS2E`

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240305-vdp-s2-access-window`: OK
- `BUILD_HASH`: `cd6e34b-984dcbd03dd718828adffaa8bf30d22ca8e9efda`
- `BUILD_BID`: `202603240305-vdp-s2-access-window`
- `BUILD_ID`: `9529`

### Atualizacao 2026-03-23 - alinhamento com blueMSX no turbo Matsushita sem atraso extra de VDP

#### Diagnostico consolidado
- O `Knightmare Gold` continuou com o glitch de `8x8`.
- O usuario reportou um padrao forte: `TURBO MAX` reduz um pouco o efeito visual.
- Isso desloca a suspeita de `raster aleatorio` para `throughput do blitter de VRAM`.
- A comparacao com as referencias fechou um delta objetivo:
  - `openMSX` injeta atraso fixo de `46` ciclos nos writes do VDP quando o turbo Matsushita esta ativo;
  - `blueMSX` altera apenas a frequencia da CPU (`1.5x`) e **nao** introduz atraso adicional em `0x98/0x99`.
- Como o `Knightmare Gold` funciona no `blueMSX`, e o efeito melhora quando a CPU fica mais rapida, o atraso fixo do VDP passou a ser o melhor candidato restante para o gargalo do blit por `OUTI`.

#### Correcao aplicada
- `src/fmsx_local/MSX.c`
  - `fmsx_panasonic_vdp_io_wait_cycles()` passou a retornar `0`
  - o runtime preserva apenas o atraso explicito de polling em `S#0`, usado pelo `MSXDIAG`
- Invariaveis preservados:
  - `IE1` global continua em `R#19 - VScroll`
  - a regressao do `GRADIUS2E` nao pode ser reaberta
  - `Real Clock` continua fora do foco, pois o A/B nao alterou o glitch do `KMG`

#### Referencias
- `third_party/bluemsx/blueMSX/Src/Memory/sramMapperMatsuchita.c`
- `third_party/bluemsx/blueMSX/Src/Board/MSX.c`
- `third_party/openMSX/src/MSXMatsushita.cc`

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603232350-kmg-blue-msx-vdpwait`: OK
- `BUILD_HASH`: `cd6e34b-3f7b85cd4addd4a0d26982ecfa48f987700d5512`
- `BUILD_BID`: `202603232350-kmg-blue-msx-vdpwait`
- `BUILD_ID`: `9AC6`

### Atualizacao 2026-03-24 - A/B de R#23 vivo no renderer de SCREEN 4

#### Diagnostico consolidado
- O glitch remanescente do `Knightmare Gold` permaneceu concentrado no cruzamento de `8x8`, com reaproveitamento visual da faixa anterior.
- Comparando o renderer local com o `fMSX` upstream e a semantica de `openMSX`, sobrou um desvio claro:
  - o projeto passou a usar `R#23` (`VScroll`) latched por scanline;
  - as referencias consomem o scroll vertical vivo no momento do render, sincronizando o VDP antes de mutacoes no registrador.
- Como o `GRADIUS2E` ja tinha ficado protegido pelo baseline de `IE1`, este A/B foi isolado para testar somente o consumo de `R#23` no renderer.

#### Correcao aplicada
- `src/fmsx_local/Common.h`
  - `FMSX_RENDER_VSCROLL` deixou de usar o latch local e voltou a ler `VDP[23]` vivo.
- `src/fmsx_local/MSX.c`
  - removido o armazenamento de `FmsxVDPVScrollLatched` em `fmsx_vdp_commit_line_display_state()`.
- Invariaveis preservados:
  - `IE1` global continua em `R#19 - VScroll`
  - o fix do audio por clock efetivo do produtor permanece intacto
  - o atraso extra de VDP no turbo Matsushita continua removido

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240345-kmg-live-r23`: OK
- `BUILD_HASH`: `cd6e34b-81aea316e2114fb2e5c35e858c4c888dedd04074`
- `BUILD_BID`: `202603240345-kmg-live-r23`
- `BUILD_ID`: `47AC`

### Atualizacao 2026-03-24 - pre-sync do VDP tambem em HBlank para o blitter do Knightmare Gold

#### Diagnostico consolidado
- O `Knightmare Gold` continuou com o glitch no cruzamento de `8x8`, mas o padrao ficou mais claro:
  - a duplicacao reaproveita a faixa anterior por um instante;
  - o salto visual aparece exatamente na troca de bloco vertical;
  - `TURBO MAX` reduz o defeito, o que reforca a suspeita de throughput/visibilidade do blitter em VRAM.
- A comparacao com `blueMSX/openMSX` e com o nosso fluxo local mostrou um gap objetivo:
  - o helper `fmsx_vdp_sync_before_cpu_write()` so preservava a linha corrente quando o write em `0x98/0x99/0x9A/0x9B` ocorria na fase ativa;
  - se o write caia em `HBlank`, a linha ainda era composta mais tarde no mesmo `HBlank`, ja vendo os bytes/registradores da linha seguinte.
- Esse eh exatamente o tipo de contaminação que explica o `-8px` momentaneo na virada do proximo bloco de `8x8`.

#### Correcao aplicada
- `src/fmsx_local/MSX.c`
  - `fmsx_vdp_sync_before_cpu_write()` passou a preservar a linha corrente antes do primeiro write do `Knightmare Gold` tanto na fase ativa quanto em `HBlank`.
  - o gate continua restrito a:
    - `Knightmare Gold` em `screen mode 4`
    - linha ainda nao renderizada
    - linha util (`Drawing/UCount`)
- Invariaveis preservados:
  - `IE1` global permanece em `R#19 - VScroll`
  - `GRADIUS2E` continua protegido da regressao do HUD
  - o fix do audio por clock efetivo do produtor permanece intacto

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240430-vdp-hblank-presync`: OK
- `BUILD_HASH`: `cd6e34b-a39b44ded1240413771342a053a56d35323d8e38`
- `BUILD_BID`: `202603240430-vdp-hblank-presync`
- `BUILD_ID`: `F3FF`

### Atualizacao 2026-03-24 - partial render de SCREEN 4 por colunas para o Knightmare Gold

#### Diagnostico consolidado
- O ajuste anterior em `HBlank` nao mudou o padrao do `Knightmare Gold`.
- A comparacao com `blueMSX` mostra um delta mais profundo:
  - o `blueMSX` sincroniza o VDP em sub-linha, preservando apenas a parte ja varrida da scanline e deixando o restante ver o novo estado de VRAM;
  - o nosso renderer ainda tratava a linha inteira como atomica.
- Isso combina melhor com o sintoma restante:
  - o defeito fica preso na virada de `8x8`;
  - `TURBO MAX` quase mascara o problema;
  - o `GRADIUS2E` permanece correto enquanto o split global de `IE1` nao e tocado.

#### Correcao aplicada
- `src/fmsx_local/Common.h`
  - novo helper `RefreshLine4PlainRange()` para compor apenas um intervalo de colunas do `SCREEN 4` no caminho sem scroll horizontal V9958.
- `src/fmsx_local/MSX.c`
  - novo estado `FmsxVDPLineChunkEnd`
  - `fmsx_vdp_sync_before_cpu_write()` agora, na janela do `Knightmare Gold`, preserva apenas as colunas ja varridas da scanline
  - o `HBlank` finaliza o restante da linha se houve pre-sync parcial
- O escopo continua restrito ao caso que interessa:
  - `Knightmare Gold`
  - `screen mode 4`
  - sem scroll horizontal V9958 ativo

#### Invariaveis preservados
- `IE1` global continua em `R#19 - VScroll`
- `GRADIUS2E` continua protegido do bug das duas linhas do HUD
- o fix do audio por clock efetivo do produtor permanece intacto

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240500-vdp-screen4-partial`: OK
- `BUILD_HASH`: `cd6e34b-7532d689f606d9abc02066a061aaaab594d2dd49`
- `BUILD_BID`: `202603240500-vdp-screen4-partial`
- `BUILD_ID`: `1108`

### Atualizacao 2026-03-24 - SCREEN 4 do Knightmare Gold com VScroll latched por scanline

#### Diagnostico consolidado
- A rodada `1108` melhorou muito o defeito:
  - o salto de `-8px` ficou curtissimo;
  - o `GRADIUS2E` permaneceu estavel.
- O residuo que sobrou bate com o contrato do `blueMSX` para `SCREEN 4`:
  - o renderer trabalha em degraus de `8px`;
  - o `vscroll` (`R#23`) da linha e capturado no inicio da scanline e reutilizado em todos os chunks daquela linha.
- O nosso `partial render` ainda recompunha cada chunk com `VDP[23]` vivo, o que permitia que uma mudanca de `R#23` no meio da linha contaminasse o bloco seguinte e reabrisse um salto residual por `8x8`.

#### Correcao aplicada
- `src/fmsx_local/Common.h`
  - `FMSX_RENDER_VSCROLL` agora pode usar override local do renderer quando necessario.
- `src/fmsx_local/MSX.c`
  - novo `FmsxVDPRenderVScrollOverride`
  - novo `FmsxVDPLineVScrollLatched`
  - o `Knightmare Gold` em `SCREEN 4` sem scroll horizontal agora renderiza todos os chunks da linha com o `R#23` capturado no inicio da scanline
  - o fallback global continua usando `VDP[23]` vivo fora desse caminho

#### Invariaveis preservados
- `IE1` global continua em `R#19 - VScroll`
- `GRADIUS2E` continua protegido contra a regressao das duas linhas do HUD
- o fix do audio permanece intacto
- `Real Clock` permanece removido

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240620-kmg-screen4-latched-vscroll`: OK
- `BUILD_HASH`: `cd6e34b-dd3954f6a04ad94f6dd87869c667fed5ebae212d`
- `BUILD_BID`: `202603240620-kmg-screen4-latched-vscroll`
- `BUILD_ID`: `8CFD`

### Atualizacao 2026-03-24 - HRefresh fracionario por scanline no SCREEN 4

#### Diagnostico consolidado
- A rodada `8CFD` manteve o ganho visual do `Knightmare Gold`, mas o residuo permaneceu:
  - primeira linha com flicker rapido;
  - salto residual de `-8px` curtissimo;
  - `GRADIUS2E` continuou estavel.
- A diferenca mais forte que restou para um `SCREEN 4` sensivel a raster esta na quantizacao do `HRefresh`:
  - o total da linha (`HPERIOD`) ja e inteiro;
  - mas a fase ativa de `256` pixels em CPU clocks e fracionaria (`1024/6`);
  - o runtime ainda a truncava por scanline.
- Isso afeta exatamente o ponto em que o `partial render` decide qual chunk de `8px` ja foi varrido, reabrindo um erro residual no limite de tile row.

#### Correcao aplicada
- `src/fmsx_local/MSX.c`
  - novo acumulador fracionario para `HRefresh` de `240` e `256` pixels
  - novo cache `g_fmsx_active_cpu_cycles_current_line`
  - o `HRefresh` ativo agora distribui a fracao correta entre scanlines sucessivas
  - o `HBlank` usa o restante da mesma linha, sem recalcular com outro arredondamento

#### Invariaveis preservados
- `IE1` global continua em `R#19 - VScroll`
- `GRADIUS2E` continua protegido
- o fix do audio permanece intacto
- `Real Clock` permanece removido

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240710-vdp-fractional-hrefresh`: OK
- `BUILD_HASH`: `cd6e34b-a6b4b1caf70c134904163937f0b400a3cc26526e`
- `BUILD_BID`: `202603240710-vdp-fractional-hrefresh`
- `BUILD_ID`: `97C5`


### Atualizacao 2026-03-23 - Restricao publicada do Knightmare Gold (50Hz x 60Hz)

- O material publico do `Knightmare Gold` muda o diagnostico do glitch remanescente:
  - `MSX2 com 7MHz ou mais`: `SCROLL SMOOTH` em `60Hz`;
  - `MSX2 de 3.57MHz`: `SCROLL SMOOTH` so em `50Hz`.
- Isso bate com a observacao em hardware:
  - `Turbo OFF` + `NTSC/60Hz`: glitch residual continua;
  - `Turbo MAX`: quase perfeito.
- Conclusao operacional desta rodada:
  - a abertura/logo novos podem usar `SCREEN 5`, mas a gameplay do scroll suave continua no caminho `SCREEN 4` patchado pelo loader (`D995h`);
  - antes de continuar mexendo no VDP, o caso decisivo a validar e `PAL/50Hz + Turbo OFF`;
  - se em `PAL/50Hz` o glitch sumir, o comportamento atual em `NTSC/60Hz + 3.579545MHz` deixa de ser bug de emulacao e passa a ser limitacao assumida pelo proprio jogo.

### Atualizacao 2026-03-24 - gate canonico do menu `SCROLL SMOOTH` do Knightmare Gold

- Regra consolidada a partir do material do proprio projeto:
  - `3.579545MHz` em `50Hz` => `SCROLL SMOOTH` permitido;
  - `7MHz-class` em `60Hz` => `SCROLL SMOOTH` permitido;
  - qualquer outra combinacao => `SCROLL ORIGINAL`.
- Implementacao local:
  - `src/fmsx_local/MSX.c`
    - `fmsx_kmg_smooth_scroll_allowed()`
    - `fmsx_kmg_apply_scroll_gate()`
- O gate usa apenas:
  - `Refresh` efetivo (`50/60Hz`)
  - `Z80 Turbo` do menu (`OFF/PAN/MAX`)
- Ele nao usa o turbo Panasonic transitorio do loader, para nao confundir probing com a regra real do titulo.
- Efeito desejado:
  - `50Hz + OFF` => menu pode manter `SMOOTH`
  - `60Hz + MAX` => menu pode manter `SMOOTH`
  - qualquer outro caso => o loader deve permanecer em `ORIGINAL`, em vez de expor `SMOOTH` com glitch residual

### Atualizacao 2026-03-24 - Knightmare Gold: preservar a linha inteira no primeiro write do VDP

#### Diagnostico consolidado
- A rodada `1108` melhorou visivelmente o `Knightmare Gold`, mas o residuo permaneceu:
  - primeira linha da area de jogo com flicker rapido;
  - salto curtissimo de `-8px` no rollover de tile row;
  - em `TURBO MAX`, o problema fica quase imperceptivel;
  - `GRADIUS2E` permanece estavel.
- Isso indica que o `partial render` por colunas ainda esta expondo mutacoes intra-linha demais para o scroll vertical patchado do `KMG`.
- O padrao restante combina melhor com este contrato:
  - ao primeiro write do VDP na linha, a linha atual deve ficar congelada inteira;
  - os bytes novos de VRAM devem aparecer apenas a partir da proxima scanline.

#### Correcao aplicada
- `src/fmsx_local/MSX.c`
  - `fmsx_vdp_sync_before_cpu_write()` deixou de usar `partial render` por colunas no caminho `SCREEN 4` sem scroll horizontal do `Knightmare Gold`;
  - no primeiro write do VDP da scanline, a linha inteira agora e composta de uma vez;
  - `FmsxVDPLineRendered=1` e `FmsxVDPLineChunkEnd=32` impedem que o restante da linha seja recomposto com VRAM ja mutada.

#### Invariaveis preservados
- `IE1` global continua em `R#19 - VScroll`
- `GRADIUS2E` continua protegido
- o fix do audio permanece intacto
- `Real Clock` permanece removido

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603240815-kmg-full-line-preserve`: OK
- `BUILD_HASH`: `cd6e34b-6e0cccf33652e265bbd24fdd1b41ee7bb78214e5`
- `BUILD_BID`: `202603240815-kmg-full-line-preserve`
- `BUILD_ID`: `057F`

### Atualizacao 2026-03-24 - Audio PAL: pacing exato por `VPeriod`

#### Diagnostico consolidado
- O audio global em `PAL` ainda apresentava microcortes entre notas, com cara de fila HDMI esvaziando cedo.
- A instrumentacao anterior ja tinha fechado que o problema principal nao era `underrun` bruto da HDMI.
- O desvio remanescente estava no host:
  - o kernel ainda fazia frame pacing por `50/60Hz` inteiros (`20000us` / `16667us`);
  - o core ja roda com `VPeriod` exato;
  - em `PAL`, isso cria drift suficiente para pequenos cortes recorrentes.
- Exemplo relevante:
  - `PAL` usa `VPeriod=71364` ciclos;
  - com base `3.579545MHz`, o frame real fica em aproximadamente `19936us`, nao `20000us`.

#### Correcao aplicada
- `src/fmsx_runtime.c`
  - novo helper interno de frame interval exato em microssegundos a partir de `VPeriod` e do clock efetivo do CPU;
  - fallback de audio por frame agora usa a mesma razao `VPeriod / cpu_hz`, em vez de `44100 / 50` ou `44100 / 60`.
- `src/fmsx_runtime.h`
  - novo `fmsx_runtime_get_frame_interval_us_exact()`.
- `src/kernel.cpp`
  - frame pacing do host agora usa o intervalo exato retornado pelo runtime, em vez de `20.000us` / `16.667us` fixos.

#### Invariaveis preservados
- o clock base continua `3.579545MHz`
- `PAN=1.5x`
- `MAX=2.0x`
- o baseline do `GRADIUS2E` nao foi tocado
- o diagnostico do `Knightmare Gold` continua separado no VDP

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603241130-pal-audio-exact-pacing`: OK
- `BUILD_HASH`: `cd6e34b-4a64585f1beb624a848c6d9e0337067bdb5fea61`
- `BUILD_BID`: `202603241130-pal-audio-exact-pacing`
- `BUILD_ID`: `C2AD`

### Atualizacao 2026-03-24 - Knightmare Gold: neutralizar turbo Panasonic real em `50Hz + OFF`

#### Diagnostico consolidado
- O `KMG.COM` realmente usa o bloco Matsushita em `40h/41h` e chega a escrever `41h=00h` no probe do loader, ligando o turbo Panasonic por software.
- Isso conflita com a regra documentada do proprio jogo para `SCROLL SMOOTH` em MSX2:
  - `3.579545MHz` em `50Hz`
  - `7MHz-class` em `60Hz`
- O gate do menu ja tinha sido corrigido para usar apenas:
  - `Refresh` efetivo
  - turbo explicito do menu
- Mas o runtime ainda deixava o turbo Panasonic transitorio do loader afetar o clock real do core no caminho `50Hz + OFF`.
- Esse caminho explica o sintoma reportado em hardware:
  - em `PAL/50Hz + OFF`, a musica as vezes some ou trava antes da gameplay;
  - em `60Hz + MAX`, o problema nao aparece do mesmo jeito, porque o turbo efetivo ja fica dominado pelo menu (`200%`) e nao oscila com o `41h`.

#### Correcao aplicada
- `src/fmsx_local/MSX.c`
  - novo latch `FmsxS1985TurboLatched` para refletir fielmente o bit escrito em `41h`;
  - `fmsx_s1985_read(0x01)` agora expone esse latch, nao o turbo efetivo do runtime;
  - novo helper `fmsx_kmg_block_panasonic_runtime_turbo()`:
    - bloqueia apenas o turbo Panasonic **real** quando:
      - `Knightmare Gold` esta ativo
      - `Refresh=50Hz`
      - `Z80 Turbo=OFF`
  - novo helper `fmsx_kmg_apply_panasonic_turbo_gate()`:
    - preserva o latch de leitura do `41h` para o probe do loader;
    - impede que esse probe altere o clock efetivo do core no caso `50Hz + OFF`.
- `fmsx_kmg_apply_scroll_gate()` passou a reaplicar tambem esse gate de turbo, para o runtime convergir ao estado correto quando o usuario muda `Refresh` ou `Z80 Turbo`.

#### Invariaveis preservados
- `GRADIUS2E` continua protegido com `IE1 = R#19 - VScroll`
- o gate canonico do menu continua:
  - `50Hz + OFF` => `SMOOTH`
  - `60Hz + MAX` => `SMOOTH`
  - qualquer outro caso => `ORIGINAL`
- o bloco `40h/41h` continua funcional para probe/deteccao
- o `Real Clock` segue removido

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603241320-kmg-panasonic-gate`: OK
- `BUILD_HASH`: `cd6e34b-352d0fc91cb550c7af7439729f6bfd0eb41f0dea`
- `BUILD_BID`: `202603241320-kmg-panasonic-gate`
- `BUILD_ID`: `F3AD`


### Atualizacao 2026-03-24 - follow-up do Knightmare Gold movido para issue dedicada de pacing

- A parte de deteccao/gate do `Knightmare Gold` permanece na `#224`.
- Os sintomas restantes foram separados para uma nova issue em `Minor issues`, focada apenas no modo valido `50Hz + Turbo OFF`:
  - audio com cortes/atrasos na transicao para gameplay;
  - flicker forte na primeira faixa de `8px`;
  - salto visual de `-8px` no rollover do scroll fino;
  - revalidacao de teclado nesse cenario.
- Invariantes registradas para as proximas iteracoes:
  - nao reabrir a regressao do `GRADIUS2E`;
  - nao deslocar globalmente `IE1`;
  - nao reabrir o gate de deteccao do menu do `KMG`.

### Atualizacao 2026-03-24 - pipeline de teclado orientado a evento e prioridade de gameplay

#### Corte implementado
- `src/kernel.cpp`
  - `PushKeyboardStateToRuntime()` deixou de reenviar o mesmo snapshot a cada ciclo sem evento novo.
  - O backend agora recebe update apenas quando:
    - chega report novo do cursor `Runtime`;
    - o estado sintetico do `rensha` altera o snapshot efetivo;
    - ocorre limpeza explicita de teclado em reset/removal.
  - reset/removal agora empurram snapshot vazio explicitamente para evitar tecla presa atraves de reset hotplug.
- `src/fmsx_host_stubs.c`
  - fila runtime aumentada de `64` para `128`.
  - cada report agora deriva e armazena tambem a matriz MSX `desired_state[16]`.
  - deduplicacao passou a comparar a matriz MSX desejada, nao apenas `modifiers + raw_keys`.
  - estabilizacao foi ajustada:
    - `release` continua imediato;
    - `press` imediato para teclas criticas de gameplay (`arrows`, `SPACE`, `SHIFT`, `CTRL`, `GRAPH`);
    - `press-only` nao critico ainda exige confirmacao adicional.
  - drenagem do runtime passou de `1` para ate `4` reports por passo.
- `src/fmsx_runtime.c`
  - `TFmsxTimingDebug` agora expoe contadores objetivos do pipeline de teclado.
- `src/kernel.cpp` / `docs/debug-layer.md`
  - `TM5` foi reaproveitada para diagnostico do teclado runtime:
    - fila atual/high-water
    - drops
    - candidatos criados/promovidos/descartados
    - releases imediatos
    - presses imediatos de gameplay

#### Objetivo desta rodada
- reduzir backlog redundante no caminho runtime;
- dar prioridade semantica a `release` e a `press` de gameplay;
- melhorar tap curto sem reabrir o caso de tecla que "nao entra" no emulador.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603241900-keyboard-pipeline-v2`: OK
- `BUILD_HASH`: `cd6e34b-e6036c1f056b32121f4fd343a069647ab1ee2399`
- `BUILD_BID`: `202603241900-keyboard-pipeline-v2`
- `BUILD_ID`: `E059`

#### Validacao pendente
- gameplay continuo com direcao + fogo
- taps curtos de direcao e `SPACE`
- hold + release prolongado
- menu/pause sem regressao

### Atualizacao 2026-03-24 - confirmacao unica controlada para `press-only`

#### Diagnostico
- O corte `v2` removeu o reenvio continuo do kernel, mas acabou quebrando o caso de emulacao para teclas nao-criticas.
- Causa provavel: o callback raw do teclado e orientado a mudanca de estado, entao alguns `press-only` nao recebiam a "segunda confirmacao" esperada pela estabilizacao do runtime.
- Sintoma em hardware:
  - menu/UI continuavam funcionando;
  - emulacao deixava de receber corretamente parte das teclas.

#### Correcao aplicada
- `src/kernel.cpp` / `src/kernel.h`
  - novo `m_RuntimeKeyboardReplayPending`.
  - cada snapshot novo entregue ao backend ganha uma unica reemissao controlada no ciclo seguinte.
  - isso devolve uma confirmacao extra para o caso `press-only`, sem reintroduzir o flood antigo de snapshots identicos a cada frame.
  - reset/removal limpam explicitamente esse pending replay.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603241940-keyboard-pipeline-v3`: OK
- `BUILD_HASH`: `cd6e34b-8707413c1b98a915041f5b77ca0d827655cce090`
- `BUILD_BID`: `202603241940-keyboard-pipeline-v3`
- `BUILD_ID`: `863E`

### Atualizacao 2026-03-24 - restaurado bridge minimo de gameplay para ROMs

#### Diagnostico
- O pipeline de matriz MSX voltou a funcionar no `BASIC`, mas `ROMs` carregadas continuavam sem responder a `SPACE` e setas.
- Causa objetiva:
  - o bridge `teclado -> joystick` havia sido zerado em `03471c9`;
  - `ComboKeyboardJoyMask()` retornava `0`;
  - `bridge_bits` permanecia sempre `0`;
  - jogos que leem joystick em vez de matriz de teclado ficavam sem `UP/DOWN/LEFT/RIGHT/FIRE`.

#### Correcao aplicada
- `src/tools/input/keyboard_input.cpp`
  - restaurado um bridge minimo e explicito de gameplay:
    - `RIGHT` -> bit `0`
    - `LEFT` -> bit `1`
    - `DOWN` -> bit `2`
    - `UP` -> bit `3`
    - `SPACE` -> `FIRE A` bit `4`
  - `ComboKeyboardJoyMask()` volta a expor `0x1F`.
- O menu/UI continua usando as mesmas setas; a restauracao ficou limitada ao bridge minimo de gameplay.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603242030-keyboard-joybridge-min`: OK
- `BUILD_HASH`: `cd6e34b-bc404791c19e4ed4d395dea4f2a30dc2c318b988`
- `BUILD_BID`: `202603242030-keyboard-joybridge-min`
- `BUILD_ID`: `C308`


### Atualizacao 2026-03-24 - bridge de joystick restaurado ao contrato legado

#### Diagnostico
- A restauracao minima de `arrows + SPACE` ainda foi insuficiente para alguns ROMs.
- O baseline historico anterior ao corte `03471c9` usava um contrato mais amplo de bridge de gameplay.

#### Correcao aplicada
- `src/tools/input/keyboard_input.cpp`
  - bridge legado restaurado:
    - `RIGHT/LEFT/DOWN/UP` -> direcoes
    - `SPACE` -> `FIRE A`
    - `SHIFT` fisico -> `FIRE A`
    - `Z` -> `FIRE B`
  - `ComboKeyboardJoyMask()` volta a expor `0x3F`.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603242115-keyboard-joybridge-legacy`: OK
- `BUILD_HASH`: `cd6e34b-dc7bed6801a0f1dde6e55916d6a81782f9406537`
- `BUILD_BID`: `202603242115-keyboard-joybridge-legacy`
- `BUILD_ID`: `291D`
- Ajuste adicional: em builds `DEBUG=1`, o item `Debugger` voltou a aparecer sempre no menu `Settings`, operando diretamente como `ON/OFF`.
- `BUILD_HASH`: `cd6e34b-b1e57cafc38cfdf462c9006740704e1b194d72de`
- `BUILD_BID`: `202603250010-debugger-menu-restore`
- `BUILD_ID`: `38CF`

### Atualizacao 2026-03-25 - restauracao do item Debugger como ON/OFF

#### Diagnostico
- Em `DEBUG=1`, o item `Debugger` tinha passado a depender indevidamente do estado de unlock do overlay.
- Isso fez o menu mostrar `N/A`, o que quebrou um contrato antigo do projeto: em build de debug, `Debugger` deve sempre ser `ON/OFF`.

#### Correcao aplicada
- `src/tools/menu/combo_menu_items.cpp`
  - o label de `Debugger` voltou a mostrar apenas `ON/OFF`
  - o item voltou a ser sempre selecionavel em `DEBUG=1`
- `src/kernel.cpp`
  - o toggle do menu voltou a gravar o estado desejado mesmo antes do unlock do runtime
  - o unlock do runtime deixou de controlar a disponibilidade normal do item no menu

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603250025-debugger-onoff-restore`: OK
- `BUILD_HASH`: `cd6e34b-32856e162d3127013b20cf0e27dde829b411e1c0`
- `BUILD_BID`: `202603250025-debugger-onoff-restore`
- `BUILD_ID`: `A150`

### Atualizacao 2026-03-25 - rollback logico para o ponto F3AD

#### Objetivo
- Recuar o codigo para o estado logico da rodada `202603241320-kmg-panasonic-gate` apos as regressões posteriores no pipeline de teclado e no menu de debug.

#### Rollback aplicado
- `src/kernel.cpp`
  - `PushKeyboardStateToRuntime()` voltou ao comportamento anterior ao pipeline `v2/v3`: reenvio continuo do snapshot runtime sem a janela de replay controlado.
- `src/fmsx_host_stubs.c`
  - fila runtime de teclado voltou ao comportamento anterior: capacidade `64`, deduplicacao por report cru canonicalizado, estabilizacao sem fast-path de gameplay, drenagem de um report por passo.
  - contadores extras do experimento novo foram neutralizados.
- `src/tools/input/keyboard_input.cpp`
  - removido o bridge legado reintroduzido tardiamente; o arquivo voltou ao baseline do `HEAD` desta branch.
- O restante do estado da rodada `F3AD` foi preservado, especialmente o gate Panasonic do `Knightmare Gold` e os ajustes anteriores de audio.

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603241320-kmg-panasonic-gate`: OK
- `BUILD_HASH`: `cd6e34b-0e382a5c6dc5777c74c897a80b2ab622d1baaaad`
- `BUILD_BID`: `202603241320-kmg-panasonic-gate`
- `BUILD_ID`: `F3AD`

#### Observacao
- O `BUILD_ID` foi preservado por usar o mesmo `BUILD_BID`.

### Atualizacao 2026-03-25 - overlay de debug sempre disponivel em DEBUG=1

#### Diagnostico
- O rollback para `F3AD` recuperou o teclado em ROM, mas o overlay continuou invisivel.
- Causa: `m_DebugOverlayUnlocked` ainda nascia `FALSE`, e o draw do overlay seguia dependendo do antigo unlock por `load_diag`.

#### Correcao aplicada
- `src/kernel.cpp`
  - `m_DebugOverlayUnlocked` passa a nascer `TRUE`
  - o hotkey/toggle do overlay nao depende mais de unlock por runtime
- O contrato volta a ser simples em build `DEBUG=1`:
  - `Debugger [ON/OFF]`
  - overlay desenha sempre que estiver `ON`

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603250105-debug-overlay-unlockless`: OK
- `BUILD_HASH`: `cd6e34b-43816612b4848ced66b6421d5ae4e6607ca1cde5`
- `BUILD_BID`: `202603250105-debug-overlay-unlockless`
- `BUILD_ID`: `5E5B`

### Atualizacao 2026-03-25 - hard reset do menu saindo do pause antes do backend

#### Diagnostico
- `Reset` no menu falhava enquanto o menu permanecia aberto:
  - `Menu: hard reset failed`
- Ao fechar o menu, o reset finalmente ocorria.
- Causa: o backend so completava o reset depois de sair do estado `paused`, mas o caminho do menu estava chamando o reset ainda com `m_EmulationPaused = TRUE`.

#### Correcao aplicada
- `src/kernel.h`
  - novo helper `ExitPauseForBackendAction()`
- `src/kernel.cpp`
  - `ComboMenuActionReset` e `ComboMenuActionMsxBasic` agora saem do pause antes de chamar o backend
  - isso alinha o comportamento com o sintoma observado em hardware, sem mexer no runtime do emulador

#### Build
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603250145-menu-reset-unpause`: OK
- `BUILD_HASH`: `cd6e34b-d69c6bad84a77841c0fb8e21b94c904dc89dc954`
- `BUILD_BID`: `202603250145-menu-reset-unpause`
- `BUILD_ID`: `C3CE`
- O `BUILD_HASH` do artefato recompilado nao bate byte-a-byte com o hash historico anotado anteriormente.
