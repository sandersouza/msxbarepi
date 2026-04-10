# [P2][BUG] HIRES/interlaced flicka entre página correta e frame verticalmente esticado

## Atualizacao 2026-04-09 - telemetria de writes de audio reativada

Durante a investigacao paralela do `UNKNOWN REALITY`, ficou claro que o sintoma de audio perto de `F:5680` e de 1 ou 2 vozes faltando, nao de perda total de `FM/PSG/SCC`.

O bloqueio principal era simples: `AUD EVT` permanecia vazio porque o trace de portas `FM/PSG` estava inteiro compilado fora por `FMSX_SMANBOW_AUDIO_TRACE_ENABLED=0`.

O corte local atual:

- liga esse trace automaticamente em builds `DEBUG=1`
- aumenta o buffer do trace para `4096` eventos
- restringe a captura a `F:5680 +/- 32`

Build local:

- `BUILD_BID=202604091845-issue247-audevt-enable`
- `BUILD_ID=DFDC`
- `sha1 e76368e736e5990f150148a3fe6928deade8371a`

## Atualizacao 2026-04-09 - `AUD EVT` passa a gravar continuamente em debug

A rodada seguinte mostrou `AUDC` correto, mas `AUD EVT` ainda zerado no arquivo inteiro. Isso fechou que o problema remanescente nao era mais compilacao: o trace seguia preso ao frame alvo dentro de `fmsx_audio_port_trace_log()`.

O corte local atual muda a estrategia:

- o ring de writes `FM/PSG` passa a gravar continuamente em `DEBUG=1`
- o filtro por `F:` migra para `LogAudioPortTraceUart()` no kernel
- assim, o backend nao perde writes que acontecem pouco antes da mudanca de mascara percebida em `AUDC`

Build local:

- `BUILD_BID=202604091910-issue247-audevt-ring-window`
- `BUILD_ID=69FF`
- `sha1 f156a4aea13a31502f9e847df733af97be955b1f`

Issue remota: #247
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/247

## Atualizacao 2026-04-09 - telemetria de audio no `UNKNOWN REALITY`

Durante a investigacao da `#247`, apareceu um follow-up funcional paralelo no mesmo demo: no inicio da musica, perto de `F:5680`, o usuario percebe falta de 1 ou 2 canais.

Leitura consolidada:

- `AUDM` anterior mostrou `PSG + FM` vivos e `SCC` zerado na janela capturada
- isso nao fecha o bug percebido, porque o sintoma nao e perda de chip inteiro e sim de vozes isoladas

Corte local atual:

- `AUDQ/AUDM` passam a carregar `F:<frame>`
- novo `AUDC` expõe mascara de canais ativos de:
  - `AY`
  - `FM`
  - `SCC1`
  - `SCC2`
- `AUD EVT` de `FM/PSG` fica ligado apenas no entorno de `F:5680 +/- 64`

Objetivo:

- decidir se as vozes faltantes deixam de ser programadas no chip
- ou se os writes existem e o problema esta no render/mix de uma ou duas vozes

## Descrição

## Problema
O modo `HIRES/interlaced` ainda não está compondo os dois campos/páginas do VDP do jeito esperado. Em vez de alternar entre páginas com linhas `odd/even` intercaladas, o runtime passa a flickar entre dois estados errados:

- um quadro/página com a resolução aparente correta
- outro quadro/página verticalmente esticado em dobro

O resultado visual final parece “duas screens alternando entre si”, e não o weave interlaced correto do `V9958`.

## Sintoma observado
- o flicker existe, mas não segue a regra de campos `odd/even`
- um dos estados aparece com a geometria correta
- o outro estado aparece como se a página tivesse sido reapresentada com altura dobrada/esticada
- o bug é funcional/visual, distinto da queda de FPS já segregada na `#243`

## Comportamento esperado
Em `HIRES/interlaced`, o runtime deve alternar entre duas páginas/campos com linhas intercaladas `odd/even`, preservando a geometria do modo e sem alternar para um frame verticalmente esticado.

## Objetivo
Corrigir a composição/apresentação funcional do modo `HIRES/interlaced`, de forma que o flicker residual corresponda ao comportamento interlaced esperado do `V9958`.

## Escopo técnico
- auditar o pipeline atual de apresentação de `HIRES/interlaced`
- validar se o backend/local host está tratando corretamente:
  - página/paridade do campo
  - weave `odd/even`
  - altura lógica vs. altura física da mailbox
  - reapresentação/progressivo indevido de frame já tecido
- comparar o contrato local com:
  - `blueMSX`
  - referências já usadas do `V9958-Super`

## Fora de escopo
- a performance residual de `HIRES/interlaced` em `1080p + 4x`, já segregada na `#243`
- remapeamento de viewport/scale fora do necessário para reproduzir/corrigir este bug
- reabrir a trilha do boot logo do `MSX2+`

## DoR
- [x] Existe sintoma funcional reproduzível em hardware
- [x] O resíduo de performance correspondente já foi separado em `#243`
- [x] A issue entra como follow-up `minor` da trilha `V9958`

## DoD
- [ ] `HIRES/interlaced` deixa de alternar entre quadro correto e quadro verticalmente esticado
- [ ] O modo passa a flickar apenas entre páginas/campos `odd/even` coerentes
- [ ] A correção não reabre regressão no boot logo do `MSX2+`
- [ ] A correção não piora o estado atual de performance além do resíduo já aceito na `#243`
- [ ] Evidência antes/depois registrada nesta issue e no `CHALLENGES.md`

## Atualizacao 2026-04-09 - mapeamento woven orientado por `FP`

Depois que a UART eliminou:

- troca de `Screen 7/8`
- alternancia de altura do host
- travamento na mesma pagina de VRAM

o padrao residual ficou:

- um `FP` visualmente quase correto
- o outro com linhas intercaladas/desencaixadas

Leitura tecnica desta rodada:

- o blit do kernel ainda tratava o buffer woven como `even-first` em todos os frames
- isso ignora a paridade do campo atual (`FP`)
- para um buffer hi-res ja tecido, esse detalhe basta para fazer um campo parecer correto e o outro parecer espacando linhas

Corte local atual:

- `src/fmsx_runtime.h`
- `src/emulator_backend.h`
- `src/fmsx_host_stubs.c`
- `src/fmsx_backend_shim.c`
- `src/emulator_backend.c`
- `src/kernel.cpp`

O contrato de video agora carrega `field_parity_odd`, e o `y-map` do `woven_hires` passa a inverter a prioridade `even/odd` conforme o campo atual.

Build local validada:

- `BUILD_BID=202604091955-issue247-woven-field-priority`
- `BUILD_ID=BFE0`
- `sha1 5f153388b69a523b53ae387865483ac81bc2cf41`

## Atualizacao 2026-04-09 - desencaixe horizontal residual

Depois que o bug de geometria vertical foi removido, o `UNKNOWN REALITY` passou a exibir um residuo mais fino:

- o `HIRES/interlaced` continua funcional
- mas os campos odd/even ficam levemente desencaixados na horizontal
- o usuario confirmou que isso acontece em qualquer tamanho de viewport, nao so em `Scale 4x`

## Atualizacao 2026-04-09 - logger do path real `Screen 7`

O round mais recente manteve o mesmo sintoma:

- uma das `FP` continua com intervalos entre as linhas
- a geometria do host continua estavel

O logger anterior ainda observava `ChrTab` generico, o que nao basta mais para esta issue. O corte local atual mudou isso:

- `VDPH` agora passa a expor o path real do `Screen 7 / HIRES / interlaced`
- novos campos:
  - `AY`: linha amostral fixa
  - `AB`: base real usada por `plane0`
  - `A1`: base real usada por `plane1`
  - `H0/H1`: hashes FNV dos primeiros `64` bytes de `plane0/plane1`
  - `PE/PO`: hashes do buffer tecido final nas linhas fisicas par/impar

Objetivo dessa rodada:

- decidir se o campo ruim esta:
  - lendo o par de paginas errado
  - ou escrevendo/preservando errado as linhas fisicas do weave

Build local validada:

- `BUILD_BID=202604091955-issue247-screen7-actual-base-hash`
- `sha1 367dcab5c8ff39274a15c8a28974becb546f112e`

## Atualizacao 2026-04-09 - hashes `FE/FO` do frame inteiro

O UART anterior mostrou:

- `AB/A1` alternando entre campos
- `H0/H1` alternando tambem
- `PE/PO` iguais na linha amostral

Isso deixou a duvida residual: a linha escolhida podia ser estatica. O logger atual fecha essa lacuna:

- `VDPH` agora publica `FE/FO`
- esses hashes cobrem o frame hi-res inteiro por paridade fisica, nao apenas uma linha

Objetivo:

- decidir se o problema esta no weave fisico final do buffer
- ou se o weave esta ok e o erro residual e so alinhamento horizontal entre campos

Build local validada:

- `BUILD_BID=202604092030-issue247-screen7-parity-frame-hash`
- `sha1 c4a14c35a96ad6c68070902f83816552f51036d5`

Leitura tecnica consolidada:

- isso enfraquece a hipotese de viewport/scaler
- o foco volta para o renderer `Screen 7`
- a comparacao com o `blueMSX` mostrou que o path local de `Screen 7` wide ainda dobrava `R26/R27` antes da composicao da linha, enquanto o `blueMSX` ja consome `vdpHScroll(vdp)` em unidade fisica correta

Corte local atual:

- `src/fmsx_local/Wide.h`
  - `RefreshLine7()`
  - `RefreshLine7WideRange()`
- ambos deixam de dobrar o hscroll no `Screen 7`

Build local mais recente:

- `BUILD_BID=202604091820-issue247-screen7-hscroll-unscaled`

## Atualizacao 2026-04-09 - rollback do experimento de hscroll

O usuario confirmou regressao imediata no boot logo do `MSX2+` depois do corte acima.

Decisao:

- descartar o experimento como baseline da `#247`
- restaurar o path anterior do `Screen 6` wide para preservar a estabilidade ja conquistada na `#238`

Build local de rollback:

- `BUILD_BID=202604091905-issue247-screen7-hscroll-rollback`

## Atualizacao 2026-04-09 - preservar o campo oposto

Leitura nova consolidada a partir do comportamento em campo:

- `FP:0 IL:1` aparenta grafico correto
- `FP:1 IL:1` mostra linhas com intervalo
- portanto o modo ja nao sofre com metadata/altura; o problema remanescente e a preservacao dos campos no buffer tecido

Correcao local:

- `src/fmsx_local/Common.h`
- `src/fmsx_local/Wide.h`

O renderer hi-res/interlaced deixou de zerar a linha fisica do campo oposto ao desenhar o campo atual.

Build local mais recente:

- `BUILD_BID=202604091955-issue247-preserve-opposite-field`
- `BUILD_ID=AAA3`

## Atualizacao 2026-04-09 - `Screen 7` page pair e telemetria `VDPH`

Depois que a geometria do host ficou estavel, o sintoma remanescente deixou de parecer viewport/height bug e ficou restrito a composicao do conteudo:

- o `HIRES/interlaced` continua visualmente distorcido
- o desencaixe persiste em qualquer tamanho de viewport
- a UART confirma `R25/R26/R27 = 00`, descartando hscroll da cena como causa principal

Comparacao direta com o `blueMSX`:

- `SCREEN 7` usa `chrTabBase = (R#2 << 10)` e so depois aplica `odd page`
- o path local wide/interlaced ainda podia herdar `ChrTab` com `R#2` mascarado cedo demais
- isso abre exatamente o tipo de erro em que um campo/pagina sai correto e o outro sai deslocado

Corte local atual:

- `src/fmsx_local/Wide.h`
  - novo helper `V9958BitmapLinePtrWideScreen7Latched()`
  - especializacao aplicada apenas para `ScrMode == 7` em `interlace`
- `src/fmsx_host_stubs.c`
  - `TFmsxVideoHostDebug` ganhou `R2/DP/RP/CB/P1`
- `src/kernel.cpp`
  - `VDPH` passa a publicar esses campos na UART

Build local mais recente:

- `BUILD_BID=202604091930-issue247-screen7-pagepair`
- build local: OK com `CROSS=aarch64-elf-`

## Checklist operacional
- [ ] Consolidar repro de hardware para o modo `HIRES/interlaced`
- [ ] Isolar onde a geometria errada entra no pipeline
- [ ] Comparar o fluxo local com `blueMSX` e `V9958-Super`
- [ ] Aplicar correção funcional sem reabrir regressões recentes
- [ ] Atualizar docs locais e issue remota com o veredito final

## Referências iniciais
- `docs/milestones/m17/243-bug-hires-interlaced-lentidao-1080p-scale-4x.md`
- `docs/handoff/238-fechar-boot-logo-msx2plus-precisao-core-v9958.md`
- `src/kernel.cpp`
- `src/combo_screen_device.cpp`
- `src/fmsx_host_stubs.c`
- `src/fmsx_local/MSX.c`
- `third_party/bluemsx/`

## Atualizacao 2026-04-08

### Repro consolidado

- o sintoma foi confirmado no demo `UNKNOWN REALITY`
- o modo `HIRES/interlaced` nao fica apenas em weave `odd/even`
- o runtime alterna entre um frame com geometria correta e outro verticalmente esticado

### Analise tecnica

O diff direto contra `blueMSX` e `V9958-Super` apontou que o problema mais forte esta no metadata exportado pelo host no inicio do frame, nao no weave basico de scanline.

Antes do corte atual:

- `src/fmsx_local/MSX.c` chamava `PutImage()` no inicio do frame seguinte
- `src/fmsx_host_stubs.c:set_image_buffer_size()` derivava o presentation contract do estado vivo do VDP (`ScrMode`, `HiResMode`, `InterlacedMode`)

Isso permitia combinar:

- buffer do frame anterior
- metadata do frame seguinte

O resultado esperado desse descompasso e exatamente o sintoma observado: alternancia entre um frame correto e outro reapresentado com altura/contrato errados.

### Corte local atual

Arquivos:

- `src/fmsx_local/MSX.c`
- `src/fmsx_host_stubs.c`

Mudancas:

- snapshot do frame apresentado (`FmsxVDPFramePresented*`)
- acumulador do frame em render (`FmsxVDPFrameRendered*`)
- `PutImage()` e `set_image_buffer_size()` passam a usar o snapshot do frame concluido, nao o estado vivo do proximo frame

### Referencias usadas nesta rodada

- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/FrameBuffer.c`
- `third_party/V9958-Super/src/vdp/vdp_double_buffer.v`

### Build local pronta para teste

- `BUILD_BID=202604082215-issue247-hires-present-snapshot`
- `BUILD_ID=9017`
- `BUILD_HASH=af38697-d77cbe44229b620305cb3de3608790d63ac6780d`
- artefato: `artifacts/kernel8-issue247.img`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604082215-issue247-hires-present-snapshot`

### Proximo passo

- validar em hardware no `UNKNOWN REALITY`
- confirmar se o `HIRES/interlaced` deixa de alternar entre quadro correto e quadro verticalmente esticado

## Atualizacao 2026-04-08 - telemetria do contrato do frame

Como o primeiro corte nao moveu o sintoma visual, a issue ganhou telemetria curta para distinguir duas classes de bug:

- alternancia do contrato do frame exportado (`screen/hires/odd-page/height`)
- bug persistente na composicao do campo mesmo com o contrato estavel

Linhas UART novas:

- `HI247 SNAP`
- `HI247 IMG`

Build local pronta:

- `BUILD_BID=202604082245-issue247-hires-contract-trace`
- `BUILD_ID=4B60`
- `BUILD_HASH=af38697-56622eaa8b9e4d6183025565077925033420ee98`

Objetivo do proximo round:

- rodar o `UNKNOWN REALITY`
- reler a UART filtrando `HI247`
- decidir se o backend alterna o contrato hi-res por frame ou se o erro ja nasce no weave/composicao das paginas

## Atualizacao 2026-04-08 - telemetria HI247 no UART real

A rodada `4B60` nao gerou nenhuma linha `HI247` em `/tmp/msx2p-boot-serial.log`, apesar de o `Compile time` confirmar a build correta em campo. O problema nao estava no repro, e sim no canal:

- `HI247 SNAP` e `HI247 IMG` estavam presos a `log_cb`
- o log serial desta plataforma continua sendo alimentado por `msxbare_uart_write()`

Por isso, o proximo corte da issue nao muda a logica do teste; ele so religa a telemetria no canal certo.

Build local pronta:

- `BUILD_BID=202604082315-issue247-hires-contract-trace-uart`
- `BUILD_ID=5010`
- `BUILD_HASH=af38697-2a48f8fe1976d2cd448acf2161f1e7f6d161e52b`

Objetivo do proximo round:

- rodar novamente o `UNKNOWN REALITY`
- reler a UART filtrando `HI247`
- decidir com evidencia se a alternancia errada vem do contrato do frame exportado ou do weave/composicao dos campos

## Atualizacao 2026-04-08 - HI247 com amostragem periodica

O relato de campo confirmou que a cena do flicker passou muito alem do trecho observado, mas o log seguiu sem nenhuma linha `HI247`. Isso consolidou um problema de gate da telemetria, nao do repro.

Novo corte:

- `HI247 SNAP` agora emite:
  - nos primeiros frames
  - a cada `120` frames
  - imediatamente em qualquer mudanca de contrato
- `HI247 IMG` segue a mesma regra

Build local pronta:

- `BUILD_BID=202604082345-issue247-hires-contract-trace-periodic`
- `BUILD_ID=E8B1`
- `BUILD_HASH=af38697-6acd32157f4445408c384ab91d187f48f1f4748a`

Objetivo do proximo round:

- garantir que a UART finalmente mostre `HI247`
- usar esse contrato para decidir se o bug esta no frame exportado ou na composicao do campo

## Atualizacao 2026-04-09 - HI247 via logger

Como o log serial em campo continuou sem nenhuma linha `HI247`, a issue ganhou um ultimo ajuste de transporte: o trace deixou de depender do serial cru e passou a usar o mesmo `logger.Write("combo", ...)` que o arquivo `/tmp/msx2p-boot-serial.log` ja captura normalmente.

Build local pronta:

- `BUILD_BID=202604090015-issue247-hi247-via-logger`
- `BUILD_ID=FFA4`
- `BUILD_HASH=af38697-7f852219e1e308adab48056c40449e17112add34`

Objetivo do proximo round:

- confirmar que `HI247 SNAP` e `HI247 IMG` finalmente aparecem no log
- usar esse contrato para fechar se o `UNKNOWN REALITY` alterna metadata ou se o erro esta no weave/composicao

## Atualizacao 2026-04-09 - baseline do frame congelada no inicio da area visivel

Depois da insistencia improdutiva com `HI247`, a trilha voltou para o diagnostico ja sustentado pela `#238/#82`: o desvio mais coerente e o acumulador do contrato do frame deixar scanlines tardias, ja preparando o frame seguinte, rebaixarem a geometria do frame que acabou de ser produzido.

Mudanca aplicada:

- `src/fmsx_local/MSX.c`
  - `FmsxVDPFrameRendered*` agora fixa a primeira scanline visivel como baseline do frame
  - o acumulador nao faz mais downgrade tardio do contrato
  - so permite promocao `nao-hires -> hires` quando o frame estabiliza pouco depois do inicio
  - `odd page` so e promovida quando `EO` realmente esta ativo
- `src/fmsx_host_stubs.c`
  - `set_image_buffer_size()` continua usando o snapshot promovido, mas a telemetria `HI247 IMG` foi removida
- `src/kernel.cpp`
  - removido o helper experimental `msxbare_trace_line()`

Leitura tecnica:

- o host `HIRES_PROGRESSIVE` continua sendo o caminho correto para HDMI progressivo
- o snapshot do frame concluido continua correto
- o bug mais provavel estava na escolha de **qual scanline** define o contrato do frame, e nao no canal de log

Build local pronta:

- `BUILD_BID=202604090130-issue247-first-visible-contract`
- `BUILD_ID=18C6`
- `BUILD_HASH=af38697-bd472381b1de4d323632c41f90dbe1842be0409c`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090130-issue247-first-visible-contract`

## Atualizacao 2026-04-09 - preservar o ultimo contrato apresentado valido

O snapshot foi endurecido mais um passo para eliminar um fallback ruim: quando um frame nao contribuir nenhuma scanline visivel util, o host nao deve voltar para um contrato `ScrMode/hires=0`.

Mudanca aplicada:

- `src/fmsx_local/MSX.c`
  - `fmsx_vdp_begin_present_frame_snapshot()` agora preserva o ultimo `FmsxVDPFramePresented*` valido quando `FmsxVDPFrameRenderedStateSeen == 0`
  - o reset para estado conhecido continua existindo apenas em `fmsx_vdp_reset_frame_present_snapshot()` no `ResetMSX()`

Leitura tecnica:

- isso elimina uma segunda fonte de alternancia espuria de geometria
- o host passa a alternar apenas entre contratos realmente observados no frame anterior, nunca entre "contrato valido" e "fallback vazio"

Build local pronta:

- `BUILD_BID=202604090145-issue247-stable-present-contract`
- `BUILD_ID=5E7E`
- `BUILD_HASH=af38697-e5e55c23b0870e21389738481be432e04b1dc407`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090145-issue247-stable-present-contract`

## Atualizacao 2026-04-09 - separar field parity de odd/even page e fixar a altura hi-res exportada

Dois desvios concretos contra o `blueMSX` ficaram isolados offline:

- o renderer local ainda misturava **pagina de VRAM** com **paridade fisica do campo** em `HIRES`
- o host ainda exportava a altura do frame hi-res a partir de `LastScanline`, embora o woven buffer local seja fisicamente fixo

Mudancas aplicadas:

- `src/fmsx_local/MSX.c`
  - novo latch `FmsxVDPLineInterlaceOddFieldLatched`
  - novo helper `fmsx_vdp_effective_interlace_odd_field()`
- `src/fmsx_local/Common.h`
  - `RefreshBorder()` passa a usar a nova paridade fisica do campo
  - `V9958BitmapLinePtr()` continua usando `odd/even page` apenas para VRAM addressing
- `src/fmsx_local/Wide.h`
  - `RefreshBorder512()` passa a usar a nova paridade fisica do campo
  - `V9958BitmapLinePtrWideLatched()` continua usando `odd/even page` apenas para pagina bitmap
- `src/fmsx_host_stubs.c`
  - em `HIRES`, `g_image_buffer_height` passa a ser sempre `HEIGHT<<1`
  - `LastScanline` fica restrito a modos nao-hires

Leitura tecnica:

- o frame hi-res deixa de ser exportado com contrato hibrido
- a geometria apresentada deixa de depender de uma altura live maior do que o woven buffer fisico realmente contem
- e o weave fisico deixa de reutilizar a mesma semantica de `odd/even page` usada para VRAM

Build local desta rodada:

- `BUILD_BID=202604091130-issue247-field-parity-fixed-hires-height`
- `BUILD_ID=3CA3`
- `BUILD_HASH=af38697-14aa3d8d5543842c995f4183d0e1bf8ef404931e`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604091130-issue247-field-parity-fixed-hires-height`

## Atualizacao 2026-04-09 - rollback do snapshot experimental para o contrato vivo do estado bom

O reteste em hardware mostrou que a trilha de `frame snapshot` nao moveu o bug funcional do `UNKNOWN REALITY`.

Acao tomada nesta rodada:

- rollback do contrato experimental de frame apresentado/renderizado
- volta do host para o contrato vivo do estado bom da `#238`
- preservacao da separacao correta entre:
  - `field parity`
  - `odd/even page`

Arquivos:

- `src/fmsx_host_stubs.c`
- `src/fmsx_local/MSX.c`
- `src/fmsx_local/Common.h`
- `src/fmsx_local/Wide.h`

Leitura tecnica:

- a regressao atual pode ter nascido do proprio snapshot exportado, e nao do weave hi-res
- como o `UNKNOWN REALITY` ja funcionou antes dessa trilha, o proximo gate da issue passa a ser verificar esse rollback estruturado, em vez de continuar acumulando metadata paralela

Build local desta rodada:

- `BUILD_BID=202604090130-issue247-hires-live-contract`
- `BUILD_ID=694A`
- `BUILD_HASH=af38697-cd962e4ff61eb418eb6c95efef905542be043004`
- artefato: `artifacts/kernel8-issue247.img`

Validacao local:

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090130-issue247-hires-live-contract`

## Atualizacao 2026-04-09 - reverse engineering do `disk1` e fix do `odd field`

### Evidencia nova do repro

O estudo offline dos binarios em `docs/reverse-engineering/issues/issue-247/disk1` reforcou que o `UNKNOWN REALITY` nao esta alternando `Screen 7` e `Screen 8` a cada frame. Os sinais mais fortes foram:

- `SCRIPT.PRG`
  - strings `copyvram---`, `startprg---`, `reslogo---`
  - pares `NOPZOOM1/2.VRM`, `SCOOP#1/#2.VRM`, `RESET#1/#2.VRM`
- `SWAPR-VR.PRG`
  - helper curto de copia/swap de VRAM
  - uso direto de `0x98/0x99`
  - transferencia por blocos de `0x4000`

Leitura consolidada:

- a cena problematica usa um modo hi-res estavel
- o repro esta mais alinhado a duas paginas/campos de VRAM
- o alvo continua sendo o weave/campo, nao uma troca literal entre `Screen 7` e `Screen 8`

### Desvio local encontrado

Ao comparar o weave hi-res local com `blueMSX/FrameBuffer.c`, ficou claro que a paridade fisica do campo estava invertida:

- `blueMSX`: `INTERLACE_ODD` ocupa linhas fisicas impares
- local: `odd field` ainda estava sendo tecido na metade fisica superior/par

Isso bate com o sintoma da issue:

- um frame parecia "correto"
- o outro parecia verticalmente esticado, por cair na paridade fisica errada

### Corte aplicado

Arquivos:

- `src/fmsx_local/MSX.c`
- `src/fmsx_local/Common.h`
- `src/fmsx_local/Wide.h`

Mudancas:

- `FmsxVDPLineInterlaceOddFieldLatched`
  - contrato documentado como `1 = odd/lower`, `0 = even/upper`
- `RefreshBorder()`
  - `odd field` passa a ocupar as linhas fisicas impares
- `RefreshBorder512()`
  - mesma correcao no path wide/`Screen 7`

### Build local desta rodada

- `BUILD_BID=202604090245-issue247-odd-field-physical-lines`
- `BUILD_ID=2538`
- `BUILD_HASH=af38697-e168832aecf3a29d051fee9ff9d9476e38419bd4`
- artefato: `artifacts/kernel8-issue247.img`

### Validacao local

- `./scripts/check-third-party-pristine.sh`
- `make -j4 DEBUG=1 BUILD_BID=202604090245-issue247-odd-field-physical-lines`

## Atualizacao 2026-04-09 - UART pelo mesmo contrato do overlay

O proximo corte da `#247` nao mexe no renderer. Ele instrumenta a UART pelo mesmo contrato que ja aparece no overlay de debug, para parar de perseguir telemetria paralela.

Arquivo:

- `src/kernel.cpp`

Mudancas:

- o loop principal agora compara, por frame:
  - `TFmsxTimingDebug.scr_mode`
  - `EmulatorBackendVideoPresentation.logical_width`
  - `EmulatorBackendVideoPresentation.logical_height`
  - `EmulatorBackendVideoPresentation.hires_mode`
  - `EmulatorBackendVideoPresentation.interlaced_mode`
- quando qualquer um desses campos muda, o logger do Circle emite:
  - `VDPM BOOT ...`
  - `VDPM HIRES-ON ...`
  - `VDPM HIRES-OFF ...`
  - `VDPM MODE ...`

Objetivo:

- ver na UART exatamente quando a runtime entra em `HIRES`
- confirmar se o `UNKNOWN REALITY` esta alternando:
  - `screen`
  - `mode`
  - geometria logica
  
  ou se o bug continua mais abaixo, no weave do `Screen 7 / HIRES / interlaced`

### Build local desta rodada

- `BUILD_BID=202604090340-issue247-vdpm-logger`

## Atualizacao 2026-04-09 - `VDPM` fecha a causa dominante

O logger novo em `src/kernel.cpp` finalmente respondeu a pergunta certa no `UNKNOWN REALITY`:

- a cena problematica entra em `VDPM HIRES-ON Screen:07`
- ela **nao** alterna entre `Screen 7` e `Screen 8`
- o que alterna frame a frame e so a altura logica exportada:
  - `L:272x228`
  - `L:272x114`

Isso desloca a issue de vez para o contrato do host:

- `HIRES_PROGRESSIVE` continua sendo a politica correta para HDMI progressivo
- o bug residual nao esta em trocar screen mode
- o bug residual esta em o host ainda deixar o `HIRES` seguir o `LastScanline` vivo do campo

### Corte local atual

Arquivos:

- `src/fmsx_host_stubs.c`
- `src/fmsx_runtime.h`
- `src/fmsx_runtime.c`
- `src/kernel.h`
- `src/kernel.cpp`

Mudancas:

- `set_image_buffer_size()`
  - em `HiResMode`, a altura fisica do buffer passa a ser fixa em `HEIGHT << 1`
  - `g_image_logical_height` deixa de alternar entre `114/228` por causa do `LastScanline`
- `TFmsxVideoHostDebug`
  - novo snapshot do lado do host para a UART
- `VDPH ...`
  - logger curto nos primeiros `16` frames apos `HIRES-ON`
  - mostra `R9`, `S2`, `EO`, `IL`, `LS`, `BH`, `LH`, `WH`

### Leitura nova da UART

O reteste em campo mostrou uma contradicao importante:

- `VDPM` continua alternando `L:272x228` e `L:272x114`
- `VDPH` mostrou `WH:1` e `IL:1` estaveis
- ainda assim, `BH/LH` alternam entre `456/228` e `228/114`

Isso desloca a issue para dentro de `set_image_buffer_size()`:

- o host ainda pode estar misturando avaliacoes diferentes de `HiResMode/InterlacedMode` na mesma chamada
- a rodada seguinte trava essas avaliacoes em variaveis locais e expande o `VDPH` com:
  - `GF`
  - `LV`
  - `BR`
  - `HV`
  - `IV`

### Build local desta rodada

- `BUILD_BID=202604091415-issue247-hires-fixed-height-vdph`

## Atualizacao 2026-04-09 - video em `4x` melhora, mas a UART ainda fecha `228/114`

O reteste em campo com o video da cena em `Scale 4x` mostrou um sintoma visual melhor:

- o `HIRES/interlaced` ficou quase correto
- o defeito remanescente parece mais um desalinhamento de campos/linhas

Mas a UART da mesma rodada continua provando que a geometria exportada no host ainda alterna:

- `VDPM`
  - `L:272x228`
  - `L:272x114`
- `VDPH`
  - `WH:1`
  - mas `BH/LH` ainda alternando:
    - `456/228`
    - `228/114`

Conclusao:

- o ganho visual em `4x` nao elimina o bug-base
- a prioridade volta a ser travar o branch de altura do host antes de qualquer ajuste fino de weave

### Corte local atual

- `src/fmsx_host_stubs.c`
  - `HiResMode` e `InterlacedMode` passam a ser avaliados uma unica vez por chamada
  - o branch `hires_eval` fixa a altura do buffer woven em `HEIGHT<<1`
- `src/fmsx_runtime.h`
- `src/fmsx_runtime.c`
- `src/kernel.cpp`
  - `VDPH` ganha:
    - `GF`
    - `LV`
    - `BR`
    - `HV`
    - `IV`

### Build local desta rodada

- `BUILD_BID=202604091610-issue247-hires-host-latch`
- `BUILD_ID=E20E`
- `BUILD_HASH=af38697-076c5cd605259b804e4cfa7e40912d688193042c`

## Atualizacao 2026-04-09 - o branch `BR:0` era o frame ruim

A UART da rodada anterior fechou o ponto exato:

- quadro bom:
  - `BR:1`
  - `BH:456`
  - `LH:228`
- quadro ruim:
  - `BR:0`
  - `BH:228`
  - `LH:114`

Como `HV:1` e `IV:0` ficaram estaveis, o problema deixou de ser "detectar hi-res" e passou a ser o branch especial de primeiro frame no host.

### Corte local atual

- `src/fmsx_host_stubs.c`
  - removido o branch `g_frame_number == 0u` de `set_image_buffer_size()`
  - `HIRES` agora sempre fixa `BH = HEIGHT << 1`

### Build local desta rodada

- `BUILD_BID=202604091640-issue247-hires-host-no-boot-branch`
- `BUILD_ID=E836`
- `BUILD_HASH=af38697-750cc854470f8c0c8312fd92881024119ea0492c`

## Atualizacao 2026-04-09 - o desalinhamento restante e por linha, nao por viewport

Depois do corte `E836`, o `HIRES/interlaced` deixou de alternar entre quadro correto e quadro verticalmente esticado. O sintoma restante passou a ser outro:

- os graficos ficam levemente desencaixados entre linhas intercaladas
- o problema aparece em qualquer tamanho de viewport, nao apenas em `Scale 4x`

Leitura tecnica atual:

- isso enfraquece a hipotese de scaler/viewport
- o foco volta ao snapshot de linha de `Screen 7`, onde pagina/scroll e paridade de campo ainda podiam nascer de epocas diferentes

### Corte local atual

- `src/fmsx_local/MSX.c`
  - `fmsx_vdp_capture_screen67_render_state_now()` agora captura um snapshot coerente de linha em `X == -1`, incluindo `R9`, `EO`, `InterlaceON`, `field parity`, `R18`, `R25`, `R26` e `R27`
  - `FmsxVDPLineChrTabLatched` passa a ser recomputado a partir de `R2/R25` latched da propria linha
- `src/fmsx_host_stubs.c`
- `src/fmsx_runtime.h`
- `src/kernel.cpp`
  - `VDPH` ganha `R18/R25/R26/R27/OP/FP` para correlacionar pagina bitmap, scroll e paridade de campo

### Build local desta rodada

- `BUILD_BID=202604091740-issue247-screen7-coherent-line-snapshot`

## Atualizacao 2026-04-09 - o bug remanescente ficou no y-map do woven hires

A UART mais recente fechou que:

- `AB/A1` e `H0/H1` alternam entre `FP:0` e `FP:1`
- `FE/FO` divergem no frame inteiro

Entao o problema restante deixou de ser:

- troca de `Screen 7/8`
- altura do host
- pagina fonte travada
- weave totalmente colapsado

Leitura consolidada:

- o buffer `HIRES woven` chega com `456` linhas fisicas
- o kernel ainda o escalava como `456` linhas independentes
- isso nao preserva a estrutura `linha logica -> par fisico even/odd`, e encaixa no sintoma visual de um dos campos ainda parecer com linhas espacadas

### Corte local atual

- `src/kernel.cpp`
  - novo helper `MapWovenHiResPhysicalY()`
  - `BlitFmsxFrame()` passa a consultar `EmulatorBackendVideoPresentation`
  - quando `presentation.woven_hires == 1`, o `y-map` usa `logical_height` para agrupar a linha logica e escolher a sublinha fisica `even/odd`
  - o fast path fisico inteiro fica desligado nesse caso

### Build local desta rodada

- `BUILD_BID=202604091930-issue247-woven-yphase`
- `sha1 dcfeb42e1fa5960b657d792ce8c86a89f8575251`

## Atualizacao 2026-04-09 - crash na saida do `HIRES`

Depois que o visual do `HIRES/interlaced` ficou correto, apareceu um novo bug funcional no `UNKNOWN REALITY`:

- ao sair de `HIRES` para outro modo, por volta de `F:12520`, o Raspberry Pi caia em excecao sincronica

Diagnostico offline fechado:

- o dump apontou `LR=0xB03BC`
- mapeado no ELF da build em campo, isso cai em `LoopZ80()` (`src/fmsx_local/MSX.c:5917`)
- o ponto exato era um `blr` para `log_cb`

Conclusao:

- o travamento nao vinha do switch de modo do VDP
- vinha de telemetria legada `libretro` ainda viva no core local
- esse callback nao faz parte do contrato baremetal e virou risco real de crash

Correcao local:

- `src/fmsx_local/MSX.c`
- `src/fmsx_local/Z80.c`
- `src/fmsx_local/V9938.c`
- `src/fmsx_local_wd1793.c`

Nesses arquivos locais, o `log_cb` foi neutralizado em compile-time, deixando o runtime usar apenas o logger oficial do Circle em `src/kernel.cpp`.

Build local validada:

- `BUILD_BID=202604092335-issue247-disable-logcb-hotpath`
- `BUILD_ID=6A29`
- `sha1 307e907b73d1c7783ab2ee3c692d243fbedda5be`

## Atualizacao 2026-04-09 - telemetria de audio/video desligada

A rodada de investigacao de audio no `UNKNOWN REALITY` foi encerrada sem manter logs residuais no runtime normal.

Mudanca local:

- `src/kernel.cpp`
  - `AUDQ`
  - `AUDM`
  - `AUDC`
  - `AUD EVT`
  - `VDPM`
  - `VDPH`
  - `VIDP`
  - helpers ficaram inertes e sairam do loop principal
- `src/fmsx_runtime.h`
  - `FMSX_SMANBOW_AUDIO_TRACE_ENABLED=0`

Encaminhamento:

- a falta de 1 ou 2 canais perto de `F:5680` fica adiada para outra rodada especifica

Build local desta rodada:

- `BUILD_BID=202604092035-issue247-remove-av-uart`
- `BUILD_ID=35B6`
- `sha1 3cbe6fad9b552653793c65c8f58cad9d767797d7`

## Atualizacao 2026-04-09 - auditoria de mix `PSG/FM/SCC` no `UNKNOWN REALITY`

Mesmo com o foco principal da issue seguindo em `HIRES/interlaced`, apareceu uma duvida objetiva de audio na primeira parte do demo: instrumentos parecem faltar, e o proximo passo util virou provar no mixer se `PSG`, `FM` e `SCC` realmente estao contribuindo no mesmo recorte temporal.

Leitura estatica fechada:

- o mixer local em `src/fmsx_local_sound.c` soma:
  - `PSG`
  - `FM`
  - `SCC primario`
  - `SCC secundario`
- `src/fmsx_runtime.c` continua montando `MasterSwitch` com mascaras independentes para `AY8910`, `YM2413` e `SCC`

Rodada atual:

- `src/fmsx_local_sound.c`
  - novo accounting por janela de audio:
    - `psg_peak`
    - `fm_peak`
    - `scc_primary_peak`
    - `scc_secondary_peak`
    - `main_peak`
    - `bus_active_mask`
    - `master_switch`
    - backend FM (`BLU`/`NUK`)
- `src/fmsx_runtime.h`
  - novo `TFmsxAudioMixDebug`
- `src/fmsx_runtime.c`
  - getters/reset para o snapshot de mix
- `src/kernel.cpp`
  - nova linha UART `AUDM ...` emitida junto de `AUDQ`
  - reset da janela de mix ao togglar a telemetria UART

Formato do log:

- `AUDM BK:BLU|NUK MS:<mask> BA:<mask> N:<samples> P:<peak> F:<peak> S1:<peak> S2:<peak> M:<peak>`

Build local desta rodada:

- `BUILD_BID=202604091930-issue247-audm-bus-peaks`
- `Compile time: Apr  9 2026 17:27:43`
- `sha1 e1620777976dcd0288c781de6a248ee7f992b549`

## Atualizacao 2026-04-09 - `AUDQ/AUDM` estavam sem hook no loop

A telemetria de audio da rodada anterior nao apareceu em campo por um erro estrutural do kernel:

- `LogAudioQueueUart()` e `LogVideoPacingUart()` estavam implementados
- mas nao eram chamados no loop principal
- `VDPM/VDPH` apareciam porque esses sim estavam ligados apos `emulator_backend_step_frame()`

Correcao:

- `src/kernel.cpp`
  - o caminho de `step_frame` agora chama tambem:
    - `LogAudioQueueUart()`
    - `LogVideoPacingUart()`

Build local desta rodada:

- `BUILD_BID=202604091955-issue247-audm-loop-hook`
