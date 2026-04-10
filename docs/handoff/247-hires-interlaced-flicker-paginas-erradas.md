# Handoff Persistente da Branch 247-hires-interlaced-flicker-paginas-erradas

Ultima atualizacao: 09/04/2026 (19:10 -03)

## Atualizacao 2026-04-09 - ring de `AUD EVT` permanente em debug, dump filtrado por frame

Leitura consolidada da UART anterior:

- a build `DFDC` entrou corretamente
- `AUDC` apareceu e confirmou o comportamento de mascaras por frame
- `AUD EVT` continuou `0` no arquivo inteiro

Isso mostrou que o problema nao era mais o `#if` de compilacao. O trace seguia vazio porque a captura de writes ainda dependia da janela fixa em `fmsx_audio_port_trace_log()`. Como as vozes faltantes parecem ser armadas antes da janela absoluta `F:5680 +/- 32`, os eventos acabavam nao entrando no ring.

Corte local atual:

- `src/fmsx_local/MSX.c`
  - o ring `AUD EVT` em `DEBUG=1` agora captura writes de `FM/PSG` continuamente
  - o trace deixa de depender do frame absoluto para existir
  - a agregacao por `frame/pc/chip/op/reg` continua igual
- `src/kernel.cpp`
  - `LogAudioPortTraceUart()` passou a filtrar por `F:` na hora de despejar a UART
  - eventos fora da janela investigada sao descartados do backlog sem serem impressos

Racional:

- manter o ring sempre preenchido em debug permite recuperar writes que ocorreram pouco antes da mudanca de mascara observada em `AUDC`
- filtrar no kernel preserva a UART enxuta, mesmo com o trace de registradores sempre ativo no backend

Build local desta iteracao:

- `BUILD_BID=202604091910-issue247-audevt-ring-window`
- `BUILD_ID=69FF`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 f156a4aea13a31502f9e847df733af97be955b1f`

## Atualizacao 2026-04-09 - `AUD EVT` estava compilado fora; trace de registradores reativado

O bloqueio da trilha de audio perto de `F:5680` nao estava no logger do kernel. O problema era anterior: o trace por registrador de `FM/PSG` continuava inteiro atras de `#if FMSX_SMANBOW_AUDIO_TRACE_ENABLED`, e esse macro ainda estava em `0`.

Leitura consolidada:

- `AUDQ/AUDM/AUDC` ja estavam ativos e ajudaram a mostrar que o sintoma e de 1 ou 2 vozes faltando, nao de um chip inteiro mutado
- `AUD EVT` permanecia vazio porque `fmsx_audio_port_trace_log()` estava literalmente compilado fora do binario

Corte local atual:

- `src/fmsx_runtime.h`
  - `FMSX_SMANBOW_AUDIO_TRACE_ENABLED` agora liga automaticamente em build `DEBUG=1`
  - `FMSX_AUDIO_PORT_TRACE_CAPACITY` subiu de `1024` para `4096`
- `src/fmsx_local/MSX.c`
  - a janela alvo do trace de audio foi apertada para `F:5680 +/- 32`, reduzindo ruido e risco de overflow

Racional:

- reativar o trace so em debug evita custo permanente no runtime estavel
- ampliar a capacidade reduz a chance de perder bursts de writes exatamente na janela critica
- apertar a janela concentra a UART no ponto que o usuario percebe a falta de vozes

Build local desta iteracao:

- `BUILD_BID=202604091845-issue247-audevt-enable`
- `BUILD_ID=DFDC`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 e76368e736e5990f150148a3fe6928deade8371a`

## Atualizacao 2026-04-09 - telemetria de audio por frame/canal em torno de `F:5680`

O foco operacional da branch saiu momentaneamente do video para fechar uma duvida de audio no `UNKNOWN REALITY`: o usuario percebe falta de 1 ou 2 canais, nao de um chip inteiro, perto de `F:5680`.

Leitura consolidada da UART anterior:

- `AUDM` provou que o mix continua somando `PSG + FM`
- `SCC1/SCC2` ficaram zerados na janela capturada
- isso nao basta para o bug percebido, porque o sintoma reportado nao e "sumiu o FM/PSG/SCC inteiro", e sim "faltam 1 ou 2 vozes"

Corte local atual:

- `src/fmsx_local_sound.c`
  - `AUDM` agora carrega `frame_number`
- `src/fmsx_local/MSX.c`
  - o trace de portas `FM/PSG` deixa de ficar preso ao fluxo antigo do `Manbow`
  - no entorno de `F:5680 +/- 64`, ele passa a capturar genericamente `0x7C/0x7D/0xA0/0xA1`
- `src/fmsx_runtime.h`
  - novo `TFmsxAudioChannelDebug`
- `src/fmsx_runtime.c`
  - novo getter com mascara de canais ativos por chip:
    - `AY`
    - `FM`
    - `SCC primary`
    - `SCC secondary`
- `src/kernel.cpp`
  - `AUDQ` e `AUDM` agora carregam `F:<frame>`
  - novo `AUDC` com mascara de canais ativos por frame
  - `AUD EVT` passa a sair no loop principal apenas no entorno de `F:5680`

Objetivo do proximo round:

- distinguir "faltou write de registrador" de "houve write mas a voz nao apareceu no mix"
- fazer isso exatamente no trecho suspeito do demo, sem poluir o restante da UART

## Atualizacao 2026-04-09 - crash ao sair de `HIRES` era `log_cb` legado

Depois do ajuste visual do `HIRES/interlaced`, apareceu um novo problema funcional no `UNKNOWN REALITY`:

- por volta de `F:12520`, na saida de `HIRES` para outro modo, o Raspberry Pi caia em excecao sincronica
- o UART mostrava:
  - `PC = 0xFFFFFFFFFFFFFFFF`
  - `LR = 0xB03BC`

Mapeamento do `LR` no `kernel8.elf` da build em campo:

- `LoopZ80()` em `src/fmsx_local/MSX.c:5917`
- exatamente em um `blr x2` para `log_cb`

Leitura consolidada:

- o travamento nao estava na troca de modo do VDP em si
- havia telemetria legada do caminho `libretro` ainda viva dentro do hot path do core local
- o callback global `log_cb` apareceu invalido nessa transicao, e o branch para ele derrubava o Pi

Corte local atual:

- `src/fmsx_local/MSX.c`
- `src/fmsx_local/Z80.c`
- `src/fmsx_local/V9938.c`
- `src/fmsx_local_wd1793.c`

Nesses arquivos locais, `log_cb` foi neutralizado em compile-time:

- o baremetal continua usando apenas o logger do Circle em `src/kernel.cpp`
- o core local deixa de depender do callback legado `libretro` em startup/hot path

Racional:

- remove o call path fatal identificado no `LoopZ80`
- evita reabrir esse mesmo risco em `ResetMSX`, `ResetZ80`, `LoopVDP` e afins
- nao toca no logger oficial `VDPM/VDPH`, que continua saindo pelo Circle logger

Build local desta iteracao:

- `BUILD_BID=202604092335-issue247-disable-logcb-hotpath`
- `BUILD_ID=6A29`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 307e907b73d1c7783ab2ee3c692d243fbedda5be`

## Atualizacao 2026-04-09 - woven hi-res orientado por `FP`

O corte anterior no `kernel.cpp` nao moveu o sintoma porque ainda tratava o buffer woven como `even-first` em todos os frames.

Leitura consolidada desta rodada:

- a UART ja tinha fechado que:
  - `Screen:07` permanece estavel
  - `BH/LH` do host ja nao alternam mais
  - `AB/A1` e `H0/H1` alternam entre `FP:0` e `FP:1`
  - `FE/FO` divergem no frame inteiro
- isso enfraquece pagina, modo e altura como causa
- o padrao visual reportado pelo usuario ficou mais especifico:
  - uma pagina/`FP` parece correta
  - a outra continua com linhas intercaladas
- isso combina melhor com o blit do host ainda assumir ordem fixa `even -> odd` no buffer woven, sem considerar qual campo (`FP`) esta ativo naquele frame

Corte local atual:

- `src/fmsx_runtime.h`
  - `TFmsxVideoPresentation` ganhou `field_parity_odd`
- `src/emulator_backend.h`
  - `EmulatorBackendVideoPresentation` ganhou `field_parity_odd`
- `src/fmsx_host_stubs.c`
  - o host agora publica `field_parity_odd` a partir de `FmsxVDPLineInterlaceOddFieldLatched`
- `src/fmsx_backend_shim.c`
  - propaga `field_parity_odd` do runtime para o backend generico
- `src/emulator_backend.c`
  - inicializa esse novo campo no caminho comum
- `src/kernel.cpp`
  - `MapWovenHiResPhysicalY()` agora recebe a paridade do campo atual
  - em `woven_hires`, o `y-map` deixa de assumir `even-first` fixo
  - quando `FP` atual e impar, o grupo logico passa a priorizar `odd-first`

Racional:

- em `1x`, o mapeamento antigo escolhia sempre a sublinha fisica par do grupo logico
- em `4x`, ele ainda mantinha a ordem `even,even,odd,odd` em todos os frames
- isso casa exatamente com o sintoma observado:
  - um `FP` parece coerente
  - o outro parece espacando linhas ou desencaixando os campos

Build local desta iteracao:

- `BUILD_BID=202604091955-issue247-woven-field-priority`
- `BUILD_ID=BFE0`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 5f153388b69a523b53ae387865483ac81bc2cf41`

## Objetivo da branch

Corrigir o bug funcional remanescente de `HIRES/interlaced` observado no demo `UNKNOWN REALITY`, onde o runtime nao alterna apenas entre campos/paginas `odd/even` coerentes e acaba flickando entre:

- um quadro com geometria aparente correta
- outro quadro verticalmente esticado

## Atualizacao 2026-04-09 - telemetria do path real `Screen 7`

O ultimo round em hardware manteve o mesmo sintoma residual:

- uma das `FP` continua com intervalos entre as linhas
- a geometria do host segue estavel
- o logger `VDPH` atual ainda nao basta para dizer se o campo ruim esta:
  - lendo o par de paginas errado
  - ou escrevendo o weave fisico errado

Leitura consolidada desta rodada:

- `CB/P1` do `VDPH` ainda vinham de `FmsxVDPLineChrTabLatched`, isto e, do `ChrTab` generico
- isso nao representa com fidelidade o helper especial de `Screen 7 / HIRES / interlaced`
- o proximo logger util precisava sair do path real do renderer, nao do latch generico do host

Corte local atual:

- `src/fmsx_host_stubs.c`
  - adiciona captura persistente do path real do `Screen 7` wide:
    - `g_screen7_wide_actual_base_offset`
    - `g_screen7_wide_actual_plane1_offset`
    - hashes FNV dos primeiros `64` bytes de `plane0/plane1`
  - adiciona hashes do buffer tecido final por paridade fisica:
    - `physical_even_hash`
    - `physical_odd_hash`
- `src/fmsx_local/Wide.h`
  - `RefreshLine7()` e `RefreshLine7WideRange()` agora chamam
    - `fmsx_debug_capture_screen7_wide_source()`
  - a captura ocorre na linha amostral fixa `Y=96`, no path real do `Screen 7`
- `src/kernel.cpp`
  - `VDPH` passa a publicar:
    - `AY`
    - `AB`
    - `A1`
    - `H0`
    - `H1`
    - `PE`
    - `PO`

Racional:

- `AB/A1` mostram a base real e o plane1 real usados pelo helper wide/interlaced
- `H0/H1` mostram se `plane0/plane1` realmente alternam entre campos
- `PE/PO` mostram o estado final do buffer tecido nas linhas fisicas pares/impares
- com isso, o proximo round deixa de responder "qual era o ChrTab generico" e passa a responder:
  - qual base o renderer realmente leu
  - e como ficaram as duas paridades do buffer final

Build local desta iteracao:

- `BUILD_BID=202604091955-issue247-screen7-actual-base-hash`
- `HEAD=af38697`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 367dcab5c8ff39274a15c8a28974becb546f112e`

## Atualizacao 2026-04-09 - hash do frame inteiro por paridade

Leitura do UART desta rodada:

- `AB/A1` alternam de fato entre campos
- `H0/H1` tambem alternam, entao a pagina fonte real nao ficou travada
- mas `PE/PO` permaneceram iguais na linha amostral fixa

Isso ainda nao fecha o problema, porque uma linha isolada pode ser estatica. O logger foi entao ampliado mais uma vez para o nivel do frame inteiro:

- `src/fmsx_host_stubs.c`
  - adiciona:
    - `physical_even_frame_hash`
    - `physical_odd_frame_hash`
  - esses hashes varrem todas as linhas logicas do buffer `HIRES` por paridade fisica
- `src/fmsx_runtime.h`
  - `TFmsxVideoHostDebug` ganhou `physical_even_frame_hash` e `physical_odd_frame_hash`
- `src/kernel.cpp`
  - `VDPH` agora publica:
    - `FE`
    - `FO`

Racional:

- se `FE/FO` sairem iguais, o erro esta no weave fisico final
- se `FE/FO` sairem diferentes enquanto o visual continuar ruim, o bug passa a ser alinhamento horizontal entre campos ja tecidos

Build local desta iteracao:

- `BUILD_BID=202604092030-issue247-screen7-parity-frame-hash`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 c4a14c35a96ad6c68070902f83816552f51036d5`

## Atualizacao 2026-04-09 - `Screen 7` page pair / logger `VDPH`

O estado atual da `#247` ja saiu da fase de viewport/host-height:

- a geometria do host ficou estavel
- `BH/LH` ja nao alternam mais entre `456/228` e `228/114`
- o sintoma remanescente passou a ser estritamente de conteudo:
  - o `HIRES/interlaced` continua visualmente distorcido
  - o desencaixe aparece em qualquer tamanho de viewport
  - `R25/R26/R27` ficam em `00`, entao o problema nao e hscroll do demo

Leitura consolidada desta rodada:

- o `UNKNOWN REALITY` continua em `Screen:07` quando entra em `HIRES`
- a disassembly do `disk1` e o helper `SWAPR-VR.PRG` reforcam que a cena usa:
  - um modo hi-res estavel
  - swap/copia de paginas de VRAM
  - nao uma alternancia literal entre `Screen 7` e `Screen 8`
- o ponto mais provavel do desencaixe ficou no path `SCREEN 7` wide/interlaced:
  - o renderer local ainda podia herdar `ChrTab` ja mascarado por `R#2`
  - no `blueMSX`, `SCREEN 7` resolve a linha a partir de `chrTabBase = (R#2 << 10)` e so depois aplica `odd page`

Corte local atual:

- `src/fmsx_local/Wide.h`
  - adiciona `V9958BitmapLinePtrWideScreen7Latched()`
  - o helper usa semantica blueMSX-like:
    - `R#2 << 10` completo
    - neutralizacao de `bit15` apenas por `R25 bit0`
    - `odd page` aplicado no mask final
  - `V9958WideBitmapPages()` passa a usar esse helper so para:
    - `ScrMode == 7`
    - `FmsxVDPLineInterlaceOnLatched == 1`
- `src/fmsx_host_stubs.c`
  - `TFmsxVideoHostDebug` ganhou:
    - `reg2`
    - `display_page`
    - `render_page`
    - `chr_base_offset`
    - `chr_plane1_offset`
- `src/kernel.cpp`
  - `VDPH` agora publica:
    - `R2`
    - `DP`
    - `RP`
    - `CB`
    - `P1`

Racional:

- com `R25/R26/R27 = 0`, o desencaixe horizontal entre campos nao fecha mais com scroll
- o candidato mais forte passa a ser um dos campos lendo o par de paginas errado em `Screen 7`
- esta rodada deixa o proximo round de hardware conclusivo, porque a UART passa a mostrar exatamente qual base/pagina o renderer esta usando em cada campo

Build local desta iteracao:

- `BUILD_BID=202604091930-issue247-screen7-pagepair`
- `HEAD=af38697`
- build local: OK com `CROSS=aarch64-elf-`
- artefato: `artifacts/kernel8-issue247.img`

## Sintoma em campo

- o bug acontece no `UNKNOWN REALITY`
- o modo `HIRES/interlaced` nao se comporta como weave progressivo estavel
- o flicker alterna entre um frame correto e outro reapresentado com geometria errada

## Hipotese consolidada

O problema mais forte desta trilha nao esta no weave por scanline em si, mas no contrato entre o frame ja renderizado em `XBuf/WBuf` e o metadata exportado pelo host no inicio do frame seguinte.

Hoje, `PutImage()` e chamado em `src/fmsx_local/MSX.c` no inicio do frame, logo apos o toggle de `S#2 bit1`. Nesse ponto:

- o buffer ainda contem o frame terminado no ciclo anterior
- o estado vivo do VDP (`ScrMode`, `R#9`, `InterlaceON`) ja pode refletir o proximo frame

Antes do corte atual, `src/fmsx_host_stubs.c:set_image_buffer_size()` derivava `g_image_buffer_height`, `g_image_hires_mode`, `g_image_interlaced_mode` e `g_image_woven_hires` do estado vivo do VDP. Isso permitia exportar o frame antigo com a geometria do frame novo, abrindo exatamente o sintoma de alternancia entre:

- um frame hi-res correto
- o mesmo conteudo reapresentado como se a altura/contrato fosse outro

## Referencias tecnicas usadas

- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `onVStart()` / `onDisplay()` mostram que o pipeline do `blueMSX` separa o estado apresentado do estado vivo que passa a valer no frame seguinte
- `third_party/bluemsx/blueMSX/Src/VideoChips/FrameBuffer.c`
  - `frameBufferDeinterlace()` trabalha sobre metadata do frame ja produzido, nao sobre estado vivo mutavel do VDP
- `third_party/V9958-Super/src/vdp/vdp_double_buffer.v`
  - o modelo HDL usa buffers even/odd separados, reforcando que o host nao deve reinterpretar um campo antigo com o contrato do campo seguinte

## Corte local atual

Arquivos alterados:

- `src/fmsx_local/MSX.c`
- `src/fmsx_host_stubs.c`

Mudancas principais:

- `src/fmsx_local/MSX.c`
  - adiciona snapshot do frame apresentado:
    - `FmsxVDPFramePresentedScreenMode`
    - `FmsxVDPFramePresentedHiResMode`
    - `FmsxVDPFramePresentedInterlacedMode`
  - adiciona acumulador do frame em render:
    - `FmsxVDPFrameRenderedScreenMode`
    - `FmsxVDPFrameRenderedHiResMode`
    - `FmsxVDPFrameRenderedInterlacedMode`
  - no inicio do frame, promove o snapshot do frame recem-renderizado para o host antes do novo `PutImage()`
  - ao longo das scanlines visiveis, acumula o contrato do frame realmente produzido

- `src/fmsx_host_stubs.c`
  - `set_image_buffer_size()` deixa de usar `ScrMode`/`HiResMode`/`InterlacedMode` vivos
  - o host passa a derivar a geometria/presentation do snapshot:
    - `FmsxVDPFramePresentedScreenMode`
    - `FmsxVDPFramePresentedHiResMode`
    - `FmsxVDPFramePresentedInterlacedMode`
  - `PutImage()` passa a chamar `set_image_buffer_size(FmsxVDPFramePresentedScreenMode)`

## Build local desta iteracao

- `BUILD_BID=202604082215-issue247-hires-present-snapshot`
- `BUILD_ID=9017`
- `BUILD_HASH=af38697-d77cbe44229b620305cb3de3608790d63ac6780d`
- artefato: `artifacts/kernel8-issue247.img`

## Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604082215-issue247-hires-present-snapshot`

## Estado atual

- a hipotese ficou coerente com o sintoma do `UNKNOWN REALITY`
- a correcao local compila e preserva o pipeline atual do host
- ainda falta validacao em hardware

## Atualizacao incremental - desencaixe horizontal entre campos

Depois que a alternancia entre quadro "normal" e quadro verticalmente esticado foi eliminada, o sintoma remanescente ficou mais fino:

- o `HIRES/interlaced` segue funcional
- mas as linhas intercaladas ficam levemente desencaixadas na horizontal
- o usuario confirmou que isso acontece em qualquer tamanho de viewport, nao apenas em `Scale 4x`

Isso derruba a hipotese de viewport/scaler e recoloca o foco no renderer `Screen 7`.

Comparacao direta com o `blueMSX`:

- no path `SCREEN 7` wide, `vdpHScroll(vdp)` ja entra em unidade fisica correta para o scanout de `512` pixels
- o renderer local em `src/fmsx_local/Wide.h` ainda dobrava esse deslocamento so para `Screen 7`, por:
  - `V9958WidePhysicalCoarseScrollLatched()`
  - `V9958WidePhysicalFineScrollLatched()`
- isso introduz um deslocamento horizontal extra entre campos, coerente com o desencaixe visual observado no `UNKNOWN REALITY`

Corte local aplicado:

- `src/fmsx_local/Wide.h`
  - `RefreshLine7()`
  - `RefreshLine7WideRange()`
- ambos passaram a usar:
  - `V9958WideCoarseScrollLatched()`
  - `V9958WideFineScrollLatched()`
- o ajuste foi mantido cirurgico e nao mexe no `Screen 6`, reduzindo risco de regressao no boot logo do `MSX2+`

Build local desta iteracao:

- `BUILD_BID=202604091820-issue247-screen7-hscroll-unscaled`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091820-issue247-screen7-hscroll-unscaled`

## Atualizacao incremental - rollback do hscroll unscaled

O reteste em hardware mostrou que o ultimo corte abriu uma regressao clara fora da `#247`:

- a animacao do boot logo do `MSX2+` foi danificada

Com isso, a hipotese "hscroll de `Screen 7` wide sem doubling" foi descartada como baseline seguro desta branch.

Rollback local aplicado:

- `src/fmsx_local/Wide.h`
  - `RefreshLine6()`
  - `RefreshLine6WideRange()`
- ambos voltaram a usar:
  - `V9958WidePhysicalCoarseScrollLatched()`
  - `V9958WidePhysicalFineScrollLatched()`

Racional:

- o experimento tinha atingido o path do `Screen 6`, que e exatamente a base do boot logo estabilizado pela `#238`
- a branch volta ao estado imediatamente anterior para preservar o baseline visual do logo antes de continuar a investigacao do `UNKNOWN REALITY`

Build local desta iteracao:

- `BUILD_BID=202604091905-issue247-screen7-hscroll-rollback`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091905-issue247-screen7-hscroll-rollback`

## Atualizacao incremental - preservar o campo oposto no buffer HIRES

O relato de campo fechou uma leitura bem mais forte do sintoma residual:

- `FP:0 IL:1` aparenta grafico correto
- `FP:1 IL:1` aparenta linhas com intervalos entre elas
- o host continua em `LH:228`, entao o problema nao e mais a geometria exportada

Isso aponta para o proprio weave local: um dos campos esta apagando o outro antes da apresentacao.

Auditoria do renderer:

- `src/fmsx_local/Common.h:RefreshBorder()`
- `src/fmsx_local/Wide.h:RefreshBorder512()`

Ambos ainda faziam exatamente isso em `lineInterlacedMode`:

- ao desenhar um campo, limpavam a linha fisica do campo oposto
- no topo/fundo da tela, tambem zeravam a outra metade do par de linhas

Para um host `HIRES_PROGRESSIVE` que trata o buffer como ja tecido/fisico, isso e incorreto: o campo atual deve refrescar apenas a sua propria linha fisica e preservar a linha do campo anterior.

Corte local aplicado:

- `src/fmsx_local/Common.h`
- `src/fmsx_local/Wide.h`

Mudancas:

- em `lineInterlacedMode`, o topo da tela deixa de zerar a linha do campo oposto
- no inicio de cada scanline, o renderer deixa de limpar a linha fisica do campo oposto
- no fundo da tela, o preenchimento tambem deixa de zerar a linha oposta

Racional:

- o buffer hi-res tecido deve manter o campo anterior intacto ate o proximo frame
- esse ajuste nao mexe no host nem no viewport; ele corrige so a preservacao de linhas fisicas no core

Build local desta iteracao:

- `BUILD_BID=202604091955-issue247-preserve-opposite-field`
- `BUILD_ID=AAA3`
- `Compile time: Apr  9 2026 15:27:30`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091955-issue247-preserve-opposite-field`

## Atualizacao incremental - telemetria do contrato HIRES

Como o primeiro corte nao moveu o sintoma em campo, a branch ganhou uma telemetria curta focada so no contrato do frame hi-res:

- `HI247 SNAP`
  - mostra quando o core promove o snapshot do frame apresentado
  - campos: `screen mode`, `hires`, `interlaced`, `odd page`
- `HI247 IMG`
  - mostra quando o host altera o contrato do buffer exportado
  - campos: `screen mode`, `hires`, `interlaced`, `woven`, `buffer height`, `logical height`, `LastScanline`

Build local com essa telemetria:

- `BUILD_BID=202604082245-issue247-hires-contract-trace`
- `BUILD_ID=4B60`
- `BUILD_HASH=af38697-56622eaa8b9e4d6183025565077925033420ee98`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604082245-issue247-hires-contract-trace`

## Proximo passo objetivo

Testar o `UNKNOWN REALITY` com a build acima e reler a UART filtrando `HI247`, para decidir se o backend esta alternando o contrato do frame ou se o bug residual esta na propria composicao do campo.

## Atualizacao incremental - telemetria HI247 no canal UART correto

A releitura de `/tmp/msx2p-boot-serial.log` com a build `4B60` confirmou que nenhuma linha `HI247` chegou ao log, embora a build correta estivesse em campo (`Compile time: Apr  8 2026 23:01:52`).

O diagnostico ficou objetivo:

- `HI247 SNAP` e `HI247 IMG` estavam saindo por `log_cb`
- o canal que realmente alimenta o log serial desta plataforma continua sendo `msxbare_uart_write()`
- portanto a rodada anterior nao respondeu nada sobre o contrato hi-res; ela falhou apenas no caminho de telemetria

O corte atual nao muda a semantica do teste, apenas o transporte:

- `src/fmsx_local/MSX.c`
- `src/fmsx_host_stubs.c`

Agora `HI247 SNAP` e `HI247 IMG` vao direto por `msxbare_uart_write()`, no mesmo estilo dos antigos `BL238*`.

Build local pronta:

- `BUILD_BID=202604082315-issue247-hires-contract-trace-uart`
- `BUILD_ID=5010`
- `BUILD_HASH=af38697-2a48f8fe1976d2cd448acf2161f1e7f6d161e52b`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604082315-issue247-hires-contract-trace-uart`

Proximo passo imediato:

- rodar novamente o `UNKNOWN REALITY`
- reler a UART filtrando `HI247`
- so entao decidir se o bug esta no contrato do frame exportado ou no weave/composicao do campo

## Atualizacao incremental - HI247 com amostragem periodica

Como o usuario confirmou que a cena do flicker foi muito alem do trecho capturado e, ainda assim, a UART nao trouxe nenhuma linha `HI247`, o problema passou a ser tratado como falha de gate da propria telemetria.

O corte seguinte abriu esse gate sem mudar a logica de investigacao:

- `HI247 SNAP`
  - agora emite nos primeiros frames
  - volta a emitir periodicamente a cada `120` frames
  - continua emitindo imediatamente quando o contrato muda
- `HI247 IMG`
  - segue a mesma politica no host

Com isso, a proxima leitura do log deve responder mesmo nos casos em que o contrato fique estavel por muito tempo ou entre tardiamente no `HIRES/interlaced`.

Build local pronta:

- `BUILD_BID=202604082345-issue247-hires-contract-trace-periodic`
- `BUILD_ID=E8B1`
- `BUILD_HASH=af38697-6acd32157f4445408c384ab91d187f48f1f4748a`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604082345-issue247-hires-contract-trace-periodic`

## Atualizacao incremental - HI247 roteado via logger

Mesmo depois de corrigir o canal UART cru e abrir amostragem periodica, o log em campo continuou sem nenhuma linha `HI247`. O proximo passo deixou de supor qualquer detalhe do serial cru e passou a usar exatamente o mesmo caminho do arquivo observado:

- `src/kernel.cpp`
  - novo helper C `msxbare_trace_line()`
  - o helper escreve por `logger.Write("combo", ...)` quando o logger ja esta pronto
  - fallback para `msxbare_uart_write()` so se o logger ainda nao existir
- `src/fmsx_local/MSX.c`
  - `HI247 SNAP` passa a usar `msxbare_trace_line()`
- `src/fmsx_host_stubs.c`
  - `HI247 IMG` passa a usar `msxbare_trace_line()`

Com isso, a proxima rodada deve obrigatoriamente aparecer no mesmo formato `combo:` que ja existe em `/tmp/msx2p-boot-serial.log`.

Build local pronta:

- `BUILD_BID=202604090015-issue247-hi247-via-logger`
- `BUILD_ID=FFA4`
- `BUILD_HASH=af38697-7f852219e1e308adab48056c40449e17112add34`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090015-issue247-hi247-via-logger`

## Atualizacao incremental - contrato do frame congelado na primeira scanline visivel

O passo seguinte deixou de insistir em telemetria nova e voltou para a trilha que ja estava documentada na `#238/#82`: o problema remanescente e mais coerente com **degradacao tardia do contrato do frame**, nao com falta de logs.

Leitura tecnica consolidada:

- o host `HIRES_PROGRESSIVE` continua sendo o contrato correto para HDMI progressivo
- o snapshot `FmsxVDPFramePresented*` continua sendo a direcao certa
- o bug mais provavel estava no acumulador `FmsxVDPFrameRendered*`
  - ele sobrescrevia `screen/hires/odd-page` em **toda** scanline visivel
  - isso permite que writes tardias perto da borda inferior, ja preparando o frame seguinte, contaminem a geometria do frame que acabou de ser renderizado
  - esse padrao combina com o sintoma em campo: alternancia entre um quadro correto e outro reapresentado como se o contrato vertical tivesse mudado

Corte local aplicado:

- `src/fmsx_local/MSX.c`
  - o acumulador do contrato do frame agora fixa a **primeira scanline visivel** como baseline do frame
  - nao ha mais downgrade tardio de `HIRES/interlaced` por scanlines de preparacao do proximo frame
  - so existe promocao unidirecional `nao-hires -> hires`, caso o modo se estabilize alguns lines depois do inicio
  - `odd page` passa a ser promovida apenas quando `R#9 bit2` (`EO`) realmente esta ativo
- `src/kernel.cpp`
  - removido o helper experimental `msxbare_trace_line()`
- `src/fmsx_host_stubs.c`
  - removida a telemetria ad hoc `HI247 IMG`
  - `set_image_buffer_size()` continua usando o snapshot promovido pelo core

Racional de referencia:

- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `onDisplay()`/`onVStart()` separam o inicio do frame apresentado das mudancas vivas que passam a valer depois
- `third_party/V9958-Super/src/vdp/vdp_double_buffer.v`
  - o modelo even/odd reforca que a apresentacao deve usar um contrato de frame/campo estavel, nao reavaliado no fim da tela

Build local desta rodada:

- `BUILD_BID=202604090130-issue247-first-visible-contract`
- `BUILD_ID=18C6`
- `BUILD_HASH=af38697-bd472381b1de4d323632c41f90dbe1842be0409c`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090130-issue247-first-visible-contract`

## Atualizacao incremental - manter o ultimo contrato valido quando o frame nao contribuir

Ainda na mesma linha, o snapshot foi endurecido para nao cair de volta para um contrato "zero/live" quando um frame nao contribuir nenhuma scanline visivel util ao acumulador.

Mudanca aplicada:

- `src/fmsx_local/MSX.c`
  - `fmsx_vdp_begin_present_frame_snapshot()` deixa de resetar `FmsxVDPFramePresented*` para `ScrMode/0/0/0` quando `FmsxVDPFrameRenderedStateSeen == 0`
  - nessas situacoes, o host preserva o **ultimo contrato apresentado valido**, em vez de alternar para um fallback potencialmente inconsistente

Racional:

- isso evita que frames sem contribuicao efetiva de scanline reintroduzam o sintoma de alternar entre:
  - quadro com geometria correta
  - quadro reapresentado com altura/contrato incorretos
- o reset inicial do ciclo continua coberto por `fmsx_vdp_reset_frame_present_snapshot()`, entao o primeiro frame apos `ResetMSX()` permanece definido

Build local desta rodada:

- `BUILD_BID=202604090145-issue247-stable-present-contract`
- `BUILD_ID=5E7E`
- `BUILD_HASH=af38697-e5e55c23b0870e21389738481be432e04b1dc407`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090145-issue247-stable-present-contract`

## Atualizacao 2026-04-09 - separar pagina de VRAM da paridade fisica do campo

A varredura seguinte voltou ao diff semantico direto contra o `blueMSX` e encontrou um desvio mais forte do que a propria telemetria:

- em `blueMSX`, o contrato de **pagina de VRAM** (`vdpIsOddPage()`) e o contrato de **paridade fisica do campo** (`frameBufferSetInterlace()`) nao sao a mesma coisa
- no core local, `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h` ainda usavam o mesmo `lineOddPage` para:
  - escolher a pagina bitmap
  - escolher em qual metade fisica da scanline hi-res o campo atual seria tecido

Isso abre exatamente o tipo de erro da `#247`: uma pagina/campo pode ser correta no VRAM addressing, mas a apresentacao fisica do campo ainda sair na metade errada da scanline.

Mudanca aplicada:

- `src/fmsx_local/MSX.c`
  - novo latch por scanline `FmsxVDPLineInterlaceOddFieldLatched`
  - novo helper `fmsx_vdp_effective_interlace_odd_field()`, espelhando a semantica do `blueMSX` para a paridade do campo
- `src/fmsx_local/Common.h`
  - `V9958BitmapLinePtr()` continua usando `FmsxDisplayOddPageLatched()` para pagina de VRAM
  - `RefreshBorder()` passa a usar `FmsxDisplayInterlaceOddFieldLatched()` para decidir a metade fisica do campo hi-res
- `src/fmsx_local/Wide.h`
  - `V9958BitmapLinePtrWideLatched()` continua usando `FmsxVDPLineOddPageLatched` para pagina bitmap
  - `RefreshBorder512()` passa a usar `FmsxDisplayInterlaceOddFieldLatched()` para o weave fisico

Leitura tecnica:

- o corte deixa de misturar pagina de VRAM com paridade de campo
- ele aproxima o renderer local do split observado no `blueMSX`:
  - `vdpIsOddPage()` para bitmap/page
  - `frameBufferSetInterlace()` para field parity

## Atualizacao 2026-04-09 - altura hi-res deixa de seguir `LastScanline` vivo

A mesma auditoria fechou um segundo leak no contrato do frame exportado:

- `src/fmsx_host_stubs.c:set_image_buffer_size()` ainda usava `LastScanline` vivo para derivar `g_image_buffer_height`
- em `HIRES_PROGRESSIVE`, o buffer tecido local e fisicamente fixo (`WBuf == g_image_buffer`, com altura `HEIGHT<<1`)
- portanto, expor uma altura maior do que esse buffer fisico reabre exatamente o sintoma “quadro correto” vs “quadro verticalmente esticado”, porque o kernel passa a escalar o frame como se ele tivesse mais linhas fisicas do que o woven buffer realmente contem

Mudanca aplicada:

- `src/fmsx_host_stubs.c`
  - em `HIRES`, `g_image_buffer_height` passa a ser sempre `HEIGHT<<1`
  - `LastScanline` continua valendo apenas para modos nao-hires

Leitura tecnica:

- isso elimina um contrato hibrido `snapshot de modo + altura live`
- e mantem o host alinhado ao buffer hi-res fisico realmente alocado

Build local pronta desta rodada:

- `BUILD_BID=202604091130-issue247-field-parity-fixed-hires-height`
- `BUILD_ID=3CA3`
- `BUILD_HASH=af38697-14aa3d8d5543842c995f4183d0e1bf8ef404931e`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091130-issue247-field-parity-fixed-hires-height`

Estado atual:

- a branch agora parou de perseguir telemetria nova
- o corte ativo da `#247` ficou reduzido a dois desvios concretos e comparaveis com `blueMSX`:
  - separacao entre pagina de VRAM e paridade fisica do campo
  - altura hi-res fixa do buffer tecido exportado pelo host

## Atualizacao 2026-04-09 - snapshot do frame passa a nascer no proprio render path

O video `Screen Recording 2026-04-09 at 00.55.36.mov` trouxe o dado mais objetivo desta trilha:

- o overlay e a mailbox ficam estaveis
- o defeito aparece apenas dentro do framebuffer do demo
- no trecho da cena `COMPIOTENIA`, a mesma arte reaparece com a mesma largura, mas alternando entre:
  - `bbox 142x61` (geometria correta)
  - `bbox 142x76` (geometria verticalmente esticada)

Essa leitura enfraquece a hipotese de box/viewer e reforca a de **colapso do contrato vertical do frame exportado**, ainda dentro do mesmo viewport fixo.

### Leitura tecnica consolidada

Mesmo depois dos cortes anteriores, o contrato `FmsxVDPFrameRendered*` ainda nascia no loop externo por scanline, em `src/fmsx_local/MSX.c`, antes do proprio renderer materializar a linha em `XBuf/WBuf`.

Para o bug da `#247`, isso continua fraco demais:

- o loop externo observa quando a scanline comeca
- mas o problema visual depende do **buffer que realmente foi escrito**
- portanto o lugar correto para fixar o contrato do frame e o proprio render path

### Corte local aplicado

Arquivos:

- `src/fmsx_local/MSX.c`
- `src/fmsx_local/Common.h`
- `src/fmsx_local/Wide.h`
- `src/fmsx_host_stubs.c`

Mudancas:

- `src/fmsx_local/MSX.c`
  - o acumulador externo por scanline foi substituido por `fmsx_vdp_note_rendered_line(...)`
  - o snapshot promovido ao host continua existindo, mas agora recebe informacao do caminho que efetivamente desenha
- `src/fmsx_local/Common.h`
  - `RefreshBorder()` passa a notificar o contrato de cada linha narrow realmente renderizada
- `src/fmsx_local/Wide.h`
  - `RefreshBorder512()` passa a notificar o contrato de cada linha wide/`SCREEN 6/7` realmente renderizada
- `src/fmsx_host_stubs.c`
  - mantem o host exportando a geometria a partir do snapshot apresentado
  - mantem a altura hi-res fixa em `HEIGHT<<1` quando o frame promovido e `HIRES`

### Racional

Com isso, o metadata do frame deixa de depender de "qual era o latch no inicio da scanline" e passa a depender de "qual linha realmente foi escrita no buffer que o host vai apresentar".

Esse corte fica mais alinhado com:

- o sintoma visto no video
- a trilha documentada da `#238/#82`
- a separacao do `blueMSX` entre estado vivo do VDP e framebuffer ja produzido

### Build local desta rodada

- `BUILD_BID=202604090155-issue247-renderpath-contract`
- `BUILD_ID=5414`
- `BUILD_HASH=af38697-22c1e1149574680b678267a6624d5bb51a380be5`
- artefato: `artifacts/kernel8-issue247.img`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090155-issue247-renderpath-contract`

## Atualizacao 2026-04-09 - rollback do snapshot experimental e volta ao contrato vivo do estado bom da `#238`

O corte anterior nao moveu o sintoma em hardware. A comparacao historica com o estado bom da `#238` mostrou que o `UNKNOWN REALITY` funcionava antes da trilha de `frame snapshot` adicionada depois.

Leitura tecnica consolidada:

- o modo quebrado continua sendo especificamente `Screen 7 / HIRES / interlaced`
- o estado bom conhecido da `#238` ainda usava o contrato vivo do host em `PutImage()`
- a trilha posterior introduziu:
  - `FmsxVDPFramePresented*`
  - `FmsxVDPFrameRendered*`
  - `fmsx_vdp_begin_present_frame_snapshot()`
  - `fmsx_vdp_note_rendered_line()`
- como esse ramo nao melhorou o demo, a rodada atual faz rollback desse contrato exportado e volta ao modelo do estado bom:
  - `src/fmsx_host_stubs.c` volta a usar `ScrMode`, `HiResMode` e `InterlacedMode` vivos em `PutImage()`
  - a altura hi-res volta a seguir o comportamento do estado bom da `#238` (`g_image_buffer_height <<= 1` quando `HiResMode`)
  - `src/fmsx_local/MSX.c`, `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h` deixam de manter o snapshot experimental
- o corte **preserva** a parte semanticamente correta da rodada anterior:
  - `field parity` continua separado de `odd/even page`
  - o weave hi-res continua usando `FmsxVDPLineInterlaceOddFieldLatched`
  - o addressing da VRAM continua usando `FmsxVDPLineOddPageLatched`

Objetivo tecnico desta rodada:

- voltar ao ultimo contrato de apresentacao que ja foi observado como bom para o `UNKNOWN REALITY`
- isolar se a regressao atual nasceu do snapshot de frame, e nao do weave/paridade em si

Build local desta rodada:

- `BUILD_BID=202604090130-issue247-hires-live-contract`
- `BUILD_ID=694A`
- `BUILD_HASH=af38697-cd962e4ff61eb418eb6c95efef905542be043004`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090130-issue247-hires-live-contract`

## Atualizacao 2026-04-09 - evidencias do `disk1` e correcao do weave fisico

A rodada seguinte deixou de insistir em `HI247` e voltou para duas fontes mais objetivas:

- diff semantico direto contra `blueMSX`
- reverse engineering offline dos binarios em `docs/reverse-engineering/issues/issue-247/disk1`

### Evidencia consolidada do `disk1`

O estudo offline dos arquivos do disco 1 sustentou a leitura de que a cena quebrada do `UNKNOWN REALITY` nao mistura `Screen 7` e `Screen 8` no scanout. O que apareceu com mais forca foi:

- `SCRIPT.PRG`
  - strings de orquestracao como `copyvram---`, `startprg---`, `reslogo---`
  - pares de recursos como `NOPZOOM1/2.VRM`, `SCOOP#1/#2.VRM`, `RESET#1/#2.VRM`
- `SWAPR-VR.PRG`
  - helper curto e direto de swap/copia de VRAM
  - uso explicito de `0x98/0x99`
  - transferencia em blocos de `0x4000`

Leitura tecnica:

- a cena esta mais coerente com **um unico modo hi-res** e **duas paginas/campos de VRAM**
- isso enfraquece ainda mais a hipotese "Screen 7 + Screen 8 alternando"
- o bug residual volta a apontar para o acoplamento entre:
  - pagina bitmap
  - paridade fisica do campo
  - weave do buffer hi-res

### Desvio concreto encontrado no weave local

Comparando o path local com `blueMSX/FrameBuffer.c`, apareceu um erro semantico objetivo:

- em `blueMSX`, `INTERLACE_ODD` ocupa as linhas fisicas **impares**
- no renderer local, `FmsxVDPLineInterlaceOddFieldLatched == 1` ainda estava sendo tecido nas linhas fisicas **pares/superiores**

Ou seja, o local estava tratando `odd field` como "upper line", quando o contrato correto e "lower/odd line".

### Corte aplicado

Arquivos:

- `src/fmsx_local/MSX.c`
- `src/fmsx_local/Common.h`
- `src/fmsx_local/Wide.h`

Mudancas:

- `src/fmsx_local/MSX.c`
  - comentario do latch atualizado para o contrato correto:
    - `1 = odd/lower`
    - `0 = even/upper`
- `src/fmsx_local/Common.h`
  - `RefreshBorder()` passa a tecer `odd field` nas linhas fisicas impares
  - o mapeamento progressivo do campo tambem foi invertido para seguir o mesmo contrato
- `src/fmsx_local/Wide.h`
  - `RefreshBorder512()` recebe a mesma correcao

Leitura tecnica:

- a separacao entre `odd/even page` e `field parity` continua preservada
- o corte mexe so no ponto em que o campo era posicionado na metade fisica errada da scanline hi-res
- isso e coerente com o sintoma observado:
  - um campo parecia correto
  - o outro reaparecia "esticado", porque o weave local estava invertendo a paridade fisica

### Build local desta rodada

- `BUILD_BID=202604090245-issue247-odd-field-physical-lines`
- `BUILD_ID=2538`
- `BUILD_HASH=af38697-e168832aecf3a29d051fee9ff9d9476e38419bd4`
- artefato: `artifacts/kernel8-issue247.img`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090245-issue247-odd-field-physical-lines`

## Atualizacao 2026-04-09 - logger de transicao de `Screen/Mode`

Depois do reteste em campo sem mudanca visual, a trilha da `#247` passou a usar a mesma fonte de verdade do overlay de debug para a UART, sem reabrir telemetria ad hoc no core/host.

Arquivos:

- `src/kernel.cpp`

Mudancas:

- o kernel agora consulta no loop principal:
  - `TFmsxTimingDebug.scr_mode`
  - `EmulatorBackendVideoPresentation.{logical_width, logical_height, hires_mode, interlaced_mode}`
- esses sao exatamente os sinais que ja alimentam o overlay:
  - `Screen:%02u`
  - `Mode: Normal/Hires/Interlaced`
- sempre que houver mudanca real de:
  - `screen`
  - `mode`
  - `hires`
  - `interlaced`
  - `logical_width/logical_height`
  
  o logger do Circle emite:

  - `VDPM BOOT ...` no primeiro contrato observado
  - `VDPM HIRES-ON ...` ao entrar em `HIRES`
  - `VDPM HIRES-OFF ...` ao sair de `HIRES`
  - `VDPM MODE ...` nas demais transicoes

Leitura tecnica:

- a UART agora observa o mesmo contrato que o overlay de debug, sem depender de presenter, `HI247`, `log_cb` ou serial cru do core
- isso reduz o diagnostico do `UNKNOWN REALITY` a transicoes reais de `screen/mode/geometria`, exatamente no ponto pedido para a `#247`

### Build local desta rodada

- `BUILD_BID=202604090340-issue247-vdpm-logger`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090340-issue247-vdpm-logger`

## Atualizacao 2026-04-09 - UART prova alternancia de altura, nao de screen mode

A telemetria `VDPM` finalmente fechou o desvio central da `#247` sem precisar de novos traces ad hoc no core:

- o `UNKNOWN REALITY` entra em `VDPM HIRES-ON Screen:07`
- durante toda a cena problematica, o modo permanece em `Screen:07`
- o que alterna frame a frame e a geometria exportada:
  - `L:272x228`
  - `L:272x114`
- `Il:0` permanece estavel porque o host segue em `HIRES_PROGRESSIVE`; o efeito visual errado nasce antes, na altura do frame exportado

Leitura consolidada:

- o bug **nao** e alternancia entre `Screen 7` e `Screen 8`
- o bug **nao** e troca de presenter/menu/viewport
- o host ainda estava derivando a altura hi-res do `LastScanline`, o que reintroduz a mesma alternancia `228/114` documentada na trilha antiga

Corte local desta rodada:

- `src/fmsx_host_stubs.c`
  - `set_image_buffer_size()` passa a fixar `g_image_buffer_height = HEIGHT << 1` sempre que `HiResMode` estiver ativo
  - isso trata `HIRES_PROGRESSIVE` como buffer woven fisico estavel, em vez de dobrar o `LastScanline` vivo de cada campo
- `src/fmsx_runtime.h`
- `src/fmsx_runtime.c`
- `src/kernel.h`
- `src/kernel.cpp`
  - novo snapshot `TFmsxVideoHostDebug`
  - novo logger `VDPH ...` nos primeiros `16` frames apos `VDPM HIRES-ON`
  - `VDPH` expõe:
    - `R9`
    - `S2`
    - `EO`
    - `IL`
    - `LS`
    - `BH`
    - `LH`
    - `WH`

Objetivo do `VDPH`:

- provar se a altura fisica/logica do host estabilizou em `HIRES`
- mostrar se ainda existe alternancia vinda de `LastScanline`, `InterlaceON` ou `FlipEvenOdd`

Leitura nova da UART:

- o log atual mostrou um estado contraditorio no host:
  - `WH:1` e `HV:1`, mas `BH/LH` ainda alternando `456/228` e `228/114`
- isso sugere mistura interna de metadata dentro de `set_image_buffer_size()`, nao mais um erro de `Screen/Mode`

Proximo corte local:

- `src/fmsx_host_stubs.c`
  - `HiResMode` e `InterlacedMode` passam a ser avaliados uma unica vez por chamada
  - o host passa a expor no `VDPH`:
    - `GF` = `g_frame_number`
    - `LV` = `live_height`
    - `BR` = branch de altura (`0=boot`, `1=hires fixo`, `2=live_height`)
    - `HV/IV` = avaliacao latched de `HiResMode/InterlacedMode`
- `src/kernel.cpp`
  - `VDPH` passa a mostrar esses campos para fechar se o host esta entrando no branch errado ou se o problema esta antes do host

Build local pronta:

- `BUILD_BID=202604091415-issue247-hires-fixed-height-vdph`

## Atualizacao 2026-04-09 - ajuste util no overlay `DEBUG [MIN]`

Antes do proximo round em hardware da `#247`, o overlay compacto ganhou um ajuste para ajudar a leitura em campo:

- `src/kernel.cpp`
  - `DEBUG [MIN]` linha 2 agora mostra tambem `F:<frame>` ao lado do `FPS`
  - o overlay inteiro passou a limpar cada linha pelo comprimento real previamente desenhado, em vez de escrever uma faixa fixa de espacos muito maior que o conteudo
- `src/kernel.h`
  - novo rastreamento de comprimento por linha do overlay

Impacto pratico:

- a linha 2 compacta agora ajuda a correlacionar `VDPM/VDPH` com o frame exibido
- a limpeza do painel deixa de reescrever dezenas de colunas vazias alem do necessario, reduzindo ruído visual e facilitando comparacao de tamanho real das strings

## Atualizacao 2026-04-09 - limpeza total ao alternar `DEBUG OVERLAY`

O toggle de `F11` ganhou um guardrail adicional em runtime:

- `src/kernel.cpp`
  - toda transicao `MAX <-> MIN <-> OFF` agora faz limpeza total explicita da tela (`\x1b[2J\x1b[H`) logo apos `ClearPresentationSurfaces()`

Objetivo:

- evitar vestigios entre fases do overlay
- manter consistente o contrato ja adotado de limpar framebuffer visivel e superficies auxiliares em trocas de overlay

## Atualizacao 2026-04-09 - `4x` quase correto, mas UART ainda prova alternancia `228/114`

O reteste em campo com o video `Screen Recording 2026-04-09 at 14.03.08.mov` trouxe um detalhe util:

- em `Scale 4x`, o `HIRES/interlaced` parece visualmente "quase correto"
- o defeito remanescente fica com cara de linhas/campos desalinhados, nao mais de viewport inteiro destruido

Mas a UART da build em campo (`Compile time: Apr  9 2026 13:58:10`) continua fechando o mesmo bug-base:

- `VDPM` permanece alternando:
  - `Screen:07 Mode:Hires Hi:1 Il:0 L:272x228`
  - `Screen:07 Mode:Hires Hi:1 Il:0 L:272x114`
- `VDPH` mostra:
  - `R9:8C`
  - `EO:1`
  - `IL:1`
  - `WH:1`
  - mas ainda alterna:
    - `BH:456 LH:228`
    - `BH:228 LH:114`

Leitura consolidada desta rodada:

- o video em `4x` confirma que o problema ja esta mais localizado no alinhamento dos campos
- mas a UART ainda prova que a build em campo continuava usando um host que mistura geometria woven com altura viva
- portanto o proximo corte precisava ser **antes** de qualquer novo ajuste fino de weave: travar a escolha de `HiResMode/InterlacedMode/height branch` dentro de `set_image_buffer_size()`

### Corte local atual

Arquivos:

- `src/fmsx_host_stubs.c`
- `src/fmsx_runtime.h`
- `src/fmsx_runtime.c`
- `src/kernel.cpp`

Mudancas:

- `set_image_buffer_size()`
  - passa a avaliar `HiResMode` e `InterlacedMode` uma unica vez por chamada
  - usa essas avaliacoes latched para decidir:
    - `g_image_hires_mode`
    - `g_image_interlaced_mode`
    - `g_image_woven_hires`
    - `g_image_buffer_height`
  - quando `hires_eval==1`, o branch de altura agora fixa `BH=HEIGHT<<1` e `LH=BH>>1`, sem cair no `live_height`
- `TFmsxVideoHostDebug`
  - ganha campos para fechar a contradicao no host:
    - `GF`
    - `LV`
    - `BR`
    - `HV`
    - `IV`
- `VDPH ...`
  - passa a expor esses campos no logger do Circle

Objetivo imediato:

- provar no proximo round se o host finalmente fica estavel em:
  - `BR:1`
  - `HV:1`
  - `IV:0`
  - `BH:456`
  - `LH:228`
- e, so depois disso, voltar a atacar qualquer desalinhamento residual de odd/even line

### Build local desta rodada

- `BUILD_BID=202604091610-issue247-hires-host-latch`
- `BUILD_ID=E20E`
- `BUILD_HASH=af38697-076c5cd605259b804e4cfa7e40912d688193042c`
- artefato: `artifacts/kernel8-issue247.img`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091610-issue247-hires-host-latch`

## Atualizacao 2026-04-09 - UART fecha o branch errado do host

A releitura da UART com a build acima finalmente respondeu sem ambiguidade:

- nos frames bons:
  - `GF:0`
  - `BR:1`
  - `BH:456`
  - `LH:228`
- nos frames ruins:
  - `GF:1`
  - `BR:0`
  - `BH:228`
  - `LH:114`

Ou seja:

- o `Screen 7 / HIRES` continua o mesmo
- `HV:1` e `IV:0` continuam estaveis
- o que ainda mata metade dos campos e exclusivamente o branch `BR:0` do host

Como esse branch so existia para o "primeiro frame/boot", ele deixou de fazer sentido nesta trilha. Mantê-lo so criava uma segunda geometria para o mesmo contrato hi-res.

### Corte local atual

Arquivo:

- `src/fmsx_host_stubs.c`

Mudanca:

- `set_image_buffer_size()` deixa de ter o branch especial `g_frame_number == 0u`
- agora a decisao fica binaria e estavel:
  - `hires_eval == 1` -> `BH = HEIGHT << 1`, `LH = BH >> 1`, `BR = 1`
  - `hires_eval == 0` -> `BH = live_height`, `BR = 2`

Leitura tecnica:

- isso elimina exatamente o caminho que ainda jogava metade dos campos hi-res para `228/114`
- o proximo round de hardware deixa de validar uma heuristica e passa a validar uma correcao direta orientada pela UART

### Build local desta rodada

- `BUILD_BID=202604091640-issue247-hires-host-no-boot-branch`
- `BUILD_ID=E836`
- `BUILD_HASH=af38697-750cc854470f8c0c8312fd92881024119ea0492c`
- artefato: `artifacts/kernel8-issue247.img`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091640-issue247-hires-host-no-boot-branch`

## Atualizacao 2026-04-09 - desalinhamento horizontal entre campos permanece

Depois do corte `E836`, o usuario confirmou um ganho importante:

- o `HIRES/interlaced` deixou de alternar entre quadro normal e quadro verticalmente esticado
- o modo passou a ficar funcional, mas com os graficos ainda levemente "desencaixados"
- o sintoma aparece em qualquer tamanho de viewport, nao apenas em `Scale 4x`

Isso descarta o viewport/scaler como causa principal e empurra a trilha para o proprio snapshot da linha `Screen 7`.

### Hipotese consolidada desta rodada

No path incremental de `SCREEN 6/7`, o primeiro refresh da linha ainda podia misturar dois estados diferentes:

- `R25/R26/R27/R18` novos, capturados lazily em `X == -1`
- `R9`, `EO`, `InterlaceON` e `field parity` antigos, herdados do latch bruto da scanline

Ao mesmo tempo, `FmsxVDPLineChrTabLatched` ainda vinha do ponteiro global `ChrTab`, que pode ficar atrasado quando a linha muda `R2/R25` na janela anterior ao primeiro refresh real.

O resultado mais coerente para o sintoma remanescente e:

- pagina bitmap/VRAM e scroll horizontal da linha entram de uma epoca
- paridade fisica do campo entra de outra
- os dois campos acabam sendo tecidos com resolucao horizontal ligeiramente desencontrada

### Corte local atual

Arquivo principal:

- `src/fmsx_local/MSX.c`

Mudancas:

- `fmsx_vdp_capture_screen67_render_state_now()` agora fecha um snapshot coerente de linha em `X == -1`, incluindo:
  - `R9`
  - `EO`
  - `InterlaceON`
  - `field parity`
  - `R18`
  - `R25`
  - `R26`
  - `R27`
- `FmsxVDPLineChrTabLatched` deixa de herdar o ponteiro global `ChrTab` e passa a ser recomputado a partir de `R2/R25` latched da propria linha
- `VDPH` ganhou os sinais horizontais e de campo relevantes:
  - `R18`
  - `R25`
  - `R26`
  - `R27`
  - `OP` (odd page latched)
  - `FP` (field parity latched)

### Build local desta rodada

- `BUILD_BID=202604091740-issue247-screen7-coherent-line-snapshot`

## Atualizacao 2026-04-09 - a UART isolou a fase vertical do blit

A releitura da UART com `VDPH` mais forte fechou dois pontos:

- em `Screen 7 / HIRES / interlaced`, as paginas/fonte reais alternam entre campos:
  - `AB/A1` mudam entre `FP:0` e `FP:1`
  - `H0/H1` mudam junto
- o buffer tecido final tambem nao esta colapsado:
  - `FE/FO` divergem mais a frente na cena

Isso elimina as hipoteses de:

- `Screen 7/8` alternando
- host ainda variando `BH/LH`
- campo travado na pagina errada
- weave fisico totalmente quebrado

Leitura tecnica atual:

- o bug remanescente ficou compativel com o `blit` do kernel tratando `456` linhas fisicas do buffer woven como se fossem linhas independentes
- no `HIRES woven`, o source correto e um par por linha logica:
  - linha fisica par
  - linha fisica impar
- o mapper vertical generico preserva o tamanho do viewport, mas nao preserva a estrutura do par `logical line -> even/odd physical lines`, o que combina com o sintoma visual de um campo ainda parecer "espacado"

### Corte local atual

- `src/kernel.cpp`
  - novo helper `MapWovenHiResPhysicalY()`
  - `BlitFmsxFrame()` agora consulta `EmulatorBackendVideoPresentation`
  - quando `presentation.woven_hires == 1` e `height == logical_height << 1`, o `y-map` deixa de tratar `456` linhas fisicas como independentes
  - o blit passa a mapear por linha logica e a selecionar a linha fisica `even/odd` dentro do grupo correspondente
  - o fast path `exact_integer_physical` fica desabilitado para `woven_hires`, para nao pular esse mapeamento

### Build local desta rodada

- `BUILD_BID=202604091930-issue247-woven-yphase`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 dcfeb42e1fa5960b657d792ce8c86a89f8575251`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 CROSS=aarch64-elf- DEBUG=1 BUILD_BID=202604091930-issue247-woven-yphase`
- `BUILD_HASH=af38697`
- artefato: `artifacts/kernel8-issue247.img`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091740-issue247-screen7-coherent-line-snapshot`

## Atualizacao 2026-04-09 - auditoria do mix PSG/FM/SCC no inicio do demo

## Atualizacao 2026-04-09 - encerramento da rodada de telemetria UART

O recorte de audio do `UNKNOWN REALITY` foi encerrado nesta rodada sem deixar instrumentacao residual no runtime normal.

O que foi revertido/desligado:

- `src/kernel.cpp`
  - `AUDQ`
  - `AUDM`
  - `AUDC`
  - `AUD EVT`
  - `VDPM`
  - `VDPH`
  - `VIDP`
  - todos saem do loop principal e os helpers passam a ser no-op
- `src/fmsx_runtime.h`
  - `FMSX_SMANBOW_AUDIO_TRACE_ENABLED` volta a `0`

Leitura operacional:

- a investigacao do problema de canais faltando no FM fica pausada
- o runtime volta ao estado normal, sem ruido extra na UART
- a trilha de video principal da `#247` continua separada dessa rodada de audio

### Build local desta rodada

- `BUILD_BID=202604092035-issue247-remove-av-uart`
- `BUILD_ID=35B6`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 3cbe6fad9b552653793c65c8f58cad9d767797d7`

O foco desta rodada saiu momentaneamente do video para fechar uma duvida objetiva de audio no `UNKNOWN REALITY`: se o mixer local realmente esta produzindo todos os buses possiveis (`PSG + FM + SCC1 + SCC2`) na primeira parte da musica, onde o usuario percebe instrumentos faltando.

Leitura offline do codigo:

- o mixer estrutural em `src/fmsx_local_sound.c` soma separadamente:
  - `PSG`
  - `FM`
  - `SCC primario`
  - `SCC secundario`
- `src/fmsx_runtime.c` continua montando `MasterSwitch` com mascaras independentes para:
  - `AY8910`
  - `YM2413`
  - `SCC total`
- portanto, o proximo passo util deixou de ser "adivinhar" se o bus existe e passou a ser medir atividade real no mix em campo.

### Corte local atual

- `src/fmsx_local_sound.c`
  - novo accounting de janela de mix:
    - `psg_peak`
    - `fm_peak`
    - `scc_primary_peak`
    - `scc_secondary_peak`
    - `main_peak`
    - `bus_active_mask`
    - `master_switch`
    - backend FM ativo (`BLU` vs `NUK`)
- `src/fmsx_runtime.h`
  - novo `TFmsxAudioMixDebug`
- `src/fmsx_runtime.c`
  - getters/reset do `AudioMixDebug`
- `src/kernel.cpp`
  - nova linha UART `AUDM ...` no mesmo cadence do `AUDQ`
  - `SetUartTelemetryEnabled()` agora limpa a janela de mix ao ligar/desligar a telemetria

### Formato do log novo

- `AUDM BK:BLU|NUK MS:<mask> BA:<mask> N:<samples> P:<peak> F:<peak> S1:<peak> S2:<peak> M:<peak>`

Leitura esperada:

- `P` > 0 => `PSG` esta contribuindo
- `F` > 0 => `FM` esta contribuindo
- `S1` > 0 => `SCC primario` esta contribuindo
- `S2` > 0 => `SCC secundario` esta contribuindo
- `BA` resume quais buses ficaram nao-zero na janela

### Build local desta rodada

- `BUILD_BID=202604091930-issue247-audm-bus-peaks`
- `Compile time: Apr  9 2026 17:27:43`
- artefato: `artifacts/kernel8-issue247.img`
- `sha1 e1620777976dcd0288c781de6a248ee7f992b549`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 CROSS=aarch64-elf- DEBUG=1 BUILD_BID=202604091930-issue247-audm-bus-peaks`

## Atualizacao 2026-04-09 - correção do hook de `AUDQ/AUDM`

O primeiro corte de telemetria de audio compilou certo, mas ficou mudo em campo por um erro simples no kernel:

- `LogAudioQueueUart()` e `LogVideoPacingUart()` existiam, mas nao estavam ligados no loop principal
- `VDPM/VDPH` apareciam porque esses dois estavam sendo chamados logo apos `emulator_backend_step_frame()`

Correcao local:

- `src/kernel.cpp`
  - apos `emulator_backend_step_frame()` bem-sucedido, o kernel agora chama:
    - `LogAudioQueueUart()`
    - `LogVideoPacingUart()`

Com isso, `AUDQ` e `AUDM` passam a usar exatamente o mesmo caminho de emissao ja provado por `VDPM/VDPH`.

### Build local desta rodada

- `BUILD_BID=202604091955-issue247-audm-loop-hook`
- artefato: `artifacts/kernel8-issue247.img`
