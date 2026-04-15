# Issue #251 - [P1] Implementar suporte ao cartucho/VDP V9990 (GFX9000) no backend MSX

- URL: https://github.com/sandersouza/msxbarepi/issues/251
- Milestone: issue avulsa (sem milestone)
- Estado remoto: OPEN
- Labels: `priority:P1`, `type:feature`, `area:emulation`, `area:video`
- Projeto: `MSX BarePI` (`Status: In progress`)
- Branch vinculada: `251-suporte-cartucho-vdp-v9990`

## Contexto

Com a base modular de backend por familia ja consolidada em `src/backend/msx/`, o proximo passo funcional relevante no ecossistema MSX e suportar o cartucho/VDP `V9990`, conhecido na pratica pelo hardware `GFX9000`.

Esse suporte nao e apenas um novo mapper. Ele exige que o backend MSX trate um segundo pipeline de video com registradores, VRAM, modos graficos, temporizacao e composicao proprios, sem recouplar o kernel generico a detalhes da familia `msx`.

O objetivo desta trilha e abrir a base tecnica para software que dependa de `V9990`, preservando:

- independencia do kernel generico em relacao ao core MSX
- integracao limpa com a familia `src/backend/msx/`
- convergencia semantica com referencias de emulacao mais maduras
- espaco para evolucao futura do mesmo recurso em outros backends/targets

## Objetivo

Implementar suporte inicial funcional ao cartucho/VDP `V9990` no backend MSX, com detecao do dispositivo, caminho de registradores/VRAM, renderizacao basica e integracao com o pipeline de apresentacao do projeto.

## Escopo tecnico

- modelar o dispositivo `V9990` dentro da familia `src/backend/msx/`
- integrar a presenca do cartucho/expansao ao fluxo de boot e reset do backend
- implementar registradores, VRAM, palette e acessos de I/O necessarios ao baseline funcional
- suportar o caminho minimo de renderizacao `V9990 -> framebuffer/present`
- definir como o backend seleciona e apresenta saida `V9990` sem prender `menu`, `overlay`, `UART` ou `viewport` ao core MSX
- garantir que save/load state e reset nao corrompam o estado do dispositivo quando a capability existir
- documentar claramente limites da primeira entrega e referencias usadas para o comportamento esperado

## Fora de escopo

- precisao ciclica completa do `V9990` nesta primeira rodada
- implementacao exaustiva de todos os modos/comandos avancados logo na primeira entrega
- suporte multi-monitor ou saida HDMI independente para `V9990`
- reescrever o pipeline generico de video do kernel fora do necessario para a integracao
- suporte ao `V9990` em familias nao-MSX nesta issue

## DoR

- [x] A arquitetura modular por familia em `src/backend/` ja esta consolidada em `main`
- [x] O backend MSX atual ja tem ponto de extensao suficiente para incorporar um novo dispositivo de video
- [x] As referencias tecnicas prioritarias para o comportamento do `V9990` estao identificadas:
  - `blueMSX`
  - `openMSX`
  - documentacao do hardware `V9990/GFX9000`

## DoD

- [ ] O backend MSX detecta e inicializa o dispositivo/cartucho `V9990` quando configurado/presente
- [ ] Os registradores e a VRAM minima necessaria ao boot de software `V9990` estao implementados
- [ ] O caminho de renderizacao gera saida visual valida no framebuffer HDMI do projeto
- [ ] O fluxo de reset preserva coerencia entre backend, dispositivo e apresentacao
- [ ] O kernel generico continua sem dependencia direta de headers/core especificos do `V9990`
- [ ] Save/load state do backend nao quebra quando o `V9990` estiver ativo, ou a limitacao fica explicitamente documentada
- [ ] A documentacao tecnica registra arquitetura, limites conhecidos e referencias consultadas

## Checklist de trabalho

- [x] Definir a estrutura interna inicial do dispositivo `V9990` na familia `msx`
- [x] Mapear baseline de portas/registradores do `GFX9000` (`0x60-0x6F`) com registradores/palette/VRAM dedicados no backend
- [x] Integrar reset e lifecycle basico do dispositivo ao backend MSX (`StartMSX()/ResetMSX()` + setting `GFX9000`)
- [x] Implementar baseline de VRAM, palette e acessos de leitura/escrita
- [x] Conectar uma renderizacao inicial do `V9990` ao pipeline de apresentacao atual
- [ ] Validar composicao/selecionamento de saida sem contaminar o kernel generico
- [ ] Revisar save/load state e comportamento de reset
- [x] Atualizar documentacao tecnica e handoff com as referencias usadas

## Progresso atual

- corte atual guiado por dissassembly + semantica do `openMSX`:
  - o defeito remanescente do gameplay ficou mais coerente com stream do command engine do que com presenter/raster
  - a ROM `GHOSTGOBLINS.ROM` continua mostrando uploads grandes via `COMMAND_DATA` (`0x62`) cercados por programacao de registradores do `V9990`
  - o core local ainda consumia `LMMC/LMCM/CMMC` com `mode/pitch/image_width` recalculados ao vivo durante o stream
  - isso divergia do `openMSX`, que latches o geometry do command engine no inicio do opcode
  - a resposta local desta rodada foi:
    - latch de `mode/pitch/image_width` em `fmsx_v9990_cmd_execute()`
    - `LMMC` e `CMMC` no `PORT_COMMAND_DATA` passaram a usar geometry latched
    - `LMCM` (`cmd_get_data`) passou a recarregar usando geometry latched
    - save/load state do `V9990` promovido para `version 4`, persistindo `cmd_mode/cmd_pitch/cmd_image_width`
    - compatibilidade `v3` preservada por reconstrucao do geometry no load
  - objetivo do proximo reteste:
    - confirmar se os `3` gaps do gameplay mudam de padrao quando o stream deixa de ser reinterpretado no meio do opcode
  - build atual:
    - `BUILD_BID: 202604141105-1e936ec`
    - `TXTDBG BUILD: C34C`
    - `BUILD_HASH: 1e936ec-613a64b3e85522b09b1abb51a48bbab910d41061`

- corte atual guiado por UART + dissassembly refinado:
  - a build `7AF9` nao emitiu nenhum `G9L`
  - isso invalidou a leitura estreita de que o defeito remanescente vinha apenas de `LMMC` em `P1`
  - o dissassembly segue mostrando rotinas reais de `0x34 <- 0x10` no banco `7`, com stream em `0x62` por rajadas de `0x2000`
  - a resposta local desta rodada foi ampliar `G9L` para qualquer `LMMC` grande, carregando tambem:
    - `md`
    - `iw`
    - `pt`
    - `dx/dy/nx/ny/sx/sy/wm/arg/log`
  - objetivo do proximo reteste:
    - provar em que modo real o upload dos `4` blocos esta acontecendo
    - decidir se o defeito esta no `command engine` multi-modo ou volta para o renderer
  - build atual:
    - `BUILD_BID: 202604141027-1e936ec`
    - `TXTDBG BUILD: 7F77`
    - `BUILD_HASH: 1e936ec-7de9f0fede05b11f23ba51596b23d424eab2ebb6`

- corte atual guiado por dissassembly da ROM:
  - o gameplay de `GHOSTGOBLINS.ROM` arma `LMMC` em `P1` e faz stream para `COMMAND_DATA` (`0x62`) em rajadas de `0x2000` bytes
  - em `P1`, cada rajada representa `64` linhas, o que casa diretamente com o sintoma dos `4` blocos com `3` cortes
  - a UART anterior ja fechava que o presenter esta limpo e que os holes nascem no framebuffer `P1`
  - a resposta local desta rodada foi adicionar instrumentacao `G9L start/chunk/done` no `LMMC`, registrando `b/total`, `dx/dy/nx/ny/sx/sy/wm/arg/log`
  - objetivo do proximo reteste: provar se o cursor do `LMMC` quebra exatamente nos boundaries de `0x2000`
  - build atual:
    - `BUILD_BID: 202604140939-1e936ec`
    - `TXTDBG BUILD: 7AF9`
    - `BUILD_HASH: 1e936ec-1157ea4c8e9fa04db48d539c9e22a21ce2c022ef`

- corte atual do `P1`:
  - o corte semantico mais forte desta rodada veio da comparacao com o `openMSX`: `display-on/off` nao deve rebasear `displayYA/displayYB`
  - o backend local ainda fazia:
    - `apply_line_state_from(split)` no `display-on`
    - zero de `displayYA/displayYB` no `display-off`
  - isso e coerente com o sintoma visual de `3/4` desenhado + `1/4` faltando em janelas repetidas de display
  - a correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
    - remover o rebase vertical no `display-on`
    - remover o zeroing vertical no `display-off`
    - manter `AY0/BY0` como unica fonte de rebase vertical do `P1`
  - build atual:
    - `BUILD_BID: 202604121543-1e936ec`
    - `TXTDBG BUILD: 2F36`
    - `BUILD_HASH: 1e936ec-a56b23861b8543aef4ac7787cebf6303f2a9266d`

- corte atual do `P1`:
  - os `3` gaps grandes continuam no gameplay e a UART anterior ja fechava que eles nascem no framebuffer final, nao no presenter
  - o `G9D ls` antigo mostrava so o primeiro split do frame e nao respondia pelas linhas reais dos `holes`
  - a correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
    - adicionar `G9D lh`
    - despejar o estado `AY/BY/AX/BX/PRIORITY/CONTROL/MODE` exatamente nas linhas dos `holes` detectados pelo proprio perfil `P1`
  - build atual:
    - `BUILD_BID: 202604121528-1e936ec`
    - `TXTDBG BUILD: 524D`
    - `BUILD_HASH: 1e936ec-e7b4eb6631e636f1d46677095aa79c9db1e0b634`

- corte atual do `P1`:
  - a build `D51B` confirmou o diagnostico do `STATUS`, mas introduziu uma regressao de ritmo: os graficos do `GFX9000` ficaram extremamente lentos no gameplay
  - a causa ficou no mesmo ponto:
    - com `CONTROL.7=1`, o clock sintetico local do `STATUS` avancava apenas `1` tick por leitura
    - isso deixou os loops de polling da ROM conservadores demais
  - a correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
    - manter o bootstrap agressivo com display desligado em `UC_TICKS_PER_LINE / 4`
    - com display ativo, usar o passo intermediario `UC_TICKS_PER_LINE / 32`
  - build atual:
    - `BUILD_BID: 202604121516-1e936ec`
    - `TXTDBG BUILD: 29A4`
    - `BUILD_HASH: 1e936ec-3247e17c6d45155fd8cf5b179feef6750653c389`

- corte atual do `P1`:
  - a UART e a desmontagem da ROM fecharam um desvio mais forte para os `4` blocos do gameplay
  - a ROM alterna `CONTROL` e usa loops de polling em `STATUS`
  - o clock sintetico local do `STATUS`, que ainda avancava agressivamente a cada leitura, podia inventar janelas extras de VBlank/display no meio do frame
  - a correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
    - manter o avanço rapido por leitura apenas no bootstrap com display desligado
    - reduzir o avanço do `STATUS` para `1` tick por leitura quando `CONTROL.7=1`
  - build atual:
    - `BUILD_BID: 202604121505-1e936ec`
    - `TXTDBG BUILD: D51B`
    - `BUILD_HASH: 1e936ec-4a268032985f059b88f5c5680333f1caa7f5417b`

- corte atual do `P1`:
  - a UART desta rodada mostrou que os `3` gaps grandes restantes nao batem com `AY/BY/AX/BX/PRIORITY`; o `G9D ls` continua caindo em `y:194`
  - o desvio estrutural mais forte passou a ser `CONTROL/SCREEN_MODE` sendo alternados no meio do frame enquanto o backend ainda resetava o estado por linha no `display-on`
  - a correcao local aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c` foi:
    - substituir o `reset_scroll_line_state()` do `display-on` por `apply_line_state_from(split)`
    - preservar as linhas anteriores ja acumuladas no frame
    - registrar `CONTROL`, `SCREEN_MODE_0` e `SCREEN_MODE_1` por linha
    - ampliar `G9D ls` para mostrar `ct/m0/m1`
  - build atual:
    - `BUILD_BID: 202604121456-1e936ec`

- corte atual do `P1`:
  - a UART mostrou que os `3` gaps grandes do gameplay nao estao vindo do presenter nem do mapa raster
  - o problema do corte anterior era a propria metrica `G9D fb`, que ainda contava os vazios reais do ceu preto
  - a resposta local desta rodada foi trocar a instrumentacao para um resumo util por plane:
    - contagem por linha da plane `A`
    - contagem por linha da plane `B`
    - contagem por linha da composicao final
    - resumo de `holes` reais dentro do envelope denso da cena
  - isso vai separar se os cortes nascem na plane `A`, na plane `B` ou so na composicao `P1`
  - build atual:
    - `BUILD_BID: 202604121441-1e936ec`
    - `TXTDBG BUILD: DADC`
    - `BUILD_HASH: 1e936ec-57683ced246dca8bd4a2f8b7617d58d9bc70c4b3`

- corte atual do `P1`:
  - o defeito residual continua sendo os 3 grandes gaps horizontais no gameplay do `Ghost'n Goblins`
  - a comparacao com o `openMSX` e o comportamento em campo fecharam um corte estrutural mais forte:
  - os writes raster do `P1` eram gravados durante o `RunZ80()`, mas o `render_frame()` limpava o estado por linha no inicio do draw
  - isso fazia o renderer consumir um baseline zerado ou do frame seguinte, e nao os splits programados pelo gameplay
  - a correcao aplicada foi:
    - criar `fmsx_v9990_begin_frame()`
    - chamar esse inicio de frame antes do `RunZ80()` em `fmsx_runtime_step_frame()`
    - remover do `render_frame()` o `advance_status_time(full_frame)` que apagava o raster state antes do draw
  - build atual:
    - `BUILD_BID: 202604120139-1e936ec`
    - `TXTDBG BUILD: B08D`
    - `BUILD_HASH: 1e936ec-01ecb876bcd0c17ab1ae2b054d8d6cea2e4d6ba5`

- a trilha saiu do crash estrutural e entrou em fidelidade de video:
  - o build `9BBD` deixou de travar e passou a mostrar os primeiros vestigios de imagem real do `GFX9000`
  - o build `4F0B` confirmou animacao real do `V9990`, mas com linhas/scanlines muito espaçadas
- o UART fecha que o `V9990` ja passa do bring-up:
  - `CONTROL` chega a `0xC2`
  - `display-on` acontece
  - o `command engine` ja executa `LMMM` (`op:40`)
  - o guest continua vivo
- o corte `FD43` piorou a percepcao do problema ao forcar `active_width` (`256`) no frame apresentado de `B1`
- a resposta local desta rodada foi alinhar a geometria de `Bx/B1` ao `openMSX`:
  - o frame apresentado voltou a usar `line_width` (`320`)
  - a correcao anterior do envelope vertical `0x1FFF` foi mantida
- o modo ativo desta ROM ficou em `sm0:86 sm1:40`, e o corte mais recente caiu no renderer `Bx`:
  - o caminho local ainda truncava `scroll Y`/`roll mask` em `0x01FF`
  - o `openMSX` usa `0x1FFF` em `drawBxMode()`
  - isso e relevante porque o proprio UART ja mostrou comandos desenhando em `dy:512`
- a resposta local desta rodada foi alinhar o renderer `Bx` ao envelope vertical do `openMSX`:
  - `fmsx_v9990_render_bx_firstlight()` passou a usar `fmsx_v9990_get_roll_mask(0x1FFFu)`
  - `scroll_y_base` tambem deixou de ser truncado em `0x01FF`
- build atual:
  - `BUILD_BID: 202604112305-1e936ec`
  - `TXTDBG BUILD: 1E95`
  - `BUILD_HASH: 1e936ec-14ca2d3f7f7b00cdd6fcfe2e9a8e228caec3eb1f`
- o corte mais recente saiu do handshake basico do `V9990` e foi para a infraestrutura de IRQ do kernel:
  - o UART da build `202604112100-1e936ec` mostrou `TIRQ s:10 f:3 h:0 p:0`, indicando perda do binding de `ARM_IRQ_TIMER3` antes do render ativo
  - a mesma rodada abortou em `dwhcidevice.cpp:1518` (`CDWHCIDevice::InterruptStub`) com a CPU dentro de `fmsx_v9990_decode_bx_pixel()`
  - a resposta local foi promover a sonda de `TIMER3` para restauracao de slots criticos:
    - captura de baseline valido para `ARM_IRQ_TIMER3`
    - captura de baseline valido para `ARM_IRQ_USB` logo apos o boot do USB
    - restauracao de `handler + param + EnableIRQ()` quando esses slots aparecerem quebrados
  - a simbolizacao da build seguinte (`202604112114-1e936ec`) refinou o corte:
    - `stack[1]` -> `CDWHCIDevice::InterruptStub(void*)`
    - `stack[10]` -> `CString::PutChar()` em `third_party/circle/lib/string.cpp`
    - `stack[11]` -> `IRQStub`
  - isso mostrou que o proprio probe de IRQ estava invasivo demais no hot path
  - a resposta local foi trocar `CString::Format()` por emissao minima em buffer fixo/hex no trace `TIRQ/UIRQ`
  - build atual da rodada:
    - `BUILD_BID: 202604112124-1e936ec`
    - `TXTDBG BUILD: 6E09`
    - `BUILD_HASH: 1e936ec-f664bcbec6662fd6dfb5f6f983bf8d8f7781864c`
  - na rodada seguinte, o probe de IRQ foi corrigido para ler o singleton real `CInterruptSystem::Get()`, porque `TIRQ/UIRQ` ainda contradiziam o proprio fluxo do USB
  - a build atual desta correcao e:
    - `BUILD_BID: 202604112140-1e936ec`
    - `TXTDBG BUILD: 7C3B`
    - `BUILD_HASH: 1e936ec-7be0efa5568f54e6d73854c67206cfa8840387c2`
- o setting `GFX9000 [ON/OFF]` do menu agora chega ate o backend MSX
- foi criado um device inicial em `src/backend/msx/modules/fmsx/fmsx_v9990.c`
- as portas `0x60-0x6F` ja respondem dentro do `fMSX` quando o recurso esta habilitado
- o runtime ganhou extensao leve de save/load state para o estado basico do `V9990`
- o toggle `GFX9000` agora so habilita/desabilita o chip/cartucho; a saida de video foi corrigida para comutar automaticamente apenas quando o `V9990` estiver com frame ativo
- o renderer deixou de ser placeholder puro:
  - mapeamento de VRAM por modo (`Bx`, `P1`, `P2`) ja existe
  - `Bx` ja considera scroll X/Y, `roll mask` e baseline de `even/odd`
  - `P1/P2` ja tem renderizacao simplificada por `name/pattern table`
  - `P1/P2` tambem ja renderizam sprites/cursors basicos com limite de `16` sprites por linha
- o state versionado do `V9990` agora tambem persiste a VRAM inteira (`512 KiB`) e ainda aceita leitura do formato anterior sem VRAM
- o `command engine` local agora cobre `STOP`, `LMMC`, `LMMV`, `LMCM`, `LMMM`, `CMMC`, `CMMM`, `BMXL`, `BMLX`, `BMLL`, `LINE`, `SRCH`, `POINT`, `PSET` e `ADVN`, com `STATUS/COMMAND_DATA`, `TR`, `BD/border_x` e save/load acompanhando esse estado
- `PSET/ADVN` foram ajustados com base na semantica `YYXX` descrita no manual do `V9990`, e `CMMK` segue pendente por depender de Kanji ROM
- `write masks` de registradores e palette tambem passaram a seguir o baseline observado no `openMSX`
- ainda faltam renderer completo, ampliacao do `command engine`, deteccao automatica do cartucho, composicao `Video9000` e refinamento de page/scroll
- a validacao local tambem endureceu o build do topo para usar `CHECK_DEPS=0` no `clean` de `src`, evitando que `.d` antigos bloqueiem o rebuild
- o primeiro teste em hardware encontrou um bug de politica de video: o backend estava forcando a troca para a pagina do `V9990` mesmo sem frame valido; a correcao local agora deixa o runtime cair para o `V9958` quando o `V9990` nao estiver ativo, sem `Video9000` nesta fase
- o reteste seguinte em hardware fechou melhor o ponto da falha:
  - `G9A: runtime apply ON`
  - `G9A: runtime applied ON`
  - `Settings: GFX9000 ON`
  - `G9A: pause render begin`
  - `G9A: pause present OK`
  - `Emulation RESUMED`
  - logo depois o kernel aborta em `third_party/circle/lib/usb/dwhcidevice.cpp:1518` com `assertion failed: pThis != 0`
  - isso mostra que o toggle do menu e o redraw do pause ja fecharam; a falha agora esta no primeiro retorno ao loop apos o resume
- o UART lido ainda e da imagem compilada em `Apr 10 2026 18:31:00`, portanto anterior a instrumentacao `G9R`
- a rodada local seguinte adicionou a trilha `G9R` para separar o primeiro resume em:
  - `G9R: armed`
  - `G9R: step begin`
  - `G9R: step OK frame=... err=...`
  - `G9R: blit begin`
  - `G9R: blit OK`
  - `G9R: present begin`
  - `G9R: present OK`
- a rodada seguinte endureceu o core `V9990` para o reteste:
  - guard para descartar opcodes de bloco/copia quando chegam com `NX/NY=0` e cairiam no caso maximo sem setup valido
  - guard adicional de custo para operacoes absurdamente grandes antes da execucao imediata
  - trilha UART do proprio device em `DEBUG=1`:
    - `G9P in/out ...` para primeiros acessos de porta
    - `G9C exec/drop ...` para opcodes executados ou descartados
    - `G9V ...` para os primeiros frames renderizados
  - build pronta para campo:
    - `BUILD_BID: 202604101844-1e936ec`
    - `TXTDBG BUILD: 6432`
    - `BUILD_HASH: 1e936ec-6517b54a9a0d2133b878536e15fe9581d178e9d9`
- o reteste seguinte mostrou que a queda ainda acontece antes do proprio device:
  - `G9R: step begin`
  - assert imediato em `dwhcidevice.cpp:1518`
  - sem `G9R: step OK`, sem `G9P`, sem `G9C` e sem `G9V`
- a resposta local desta rodada foi mudar a politica de aplicacao do `GFX9000`:
  - `fmsx_v9990_set_enabled()` nao faz mais `power_on/reset` imediato
  - o toggle do menu virou acao pesada diferida
  - a aplicacao agora usa `config apply -> backend_runtime_menu_reset() -> prime step`
  - nova trilha UART:
    - `G9A: config apply ...`
    - `G9A: menu reset begin/OK/FAIL ...`
    - `G9A: prime step begin/OK/FAIL ...`
    - `G9E: cfg-set/menu-set/start-set/power/reset ...`
  - build pronta para o proximo campo:
    - `BUILD_BID: 202604101907-1e936ec`
    - `TXTDBG BUILD: B96A`
    - `BUILD_HASH: 1e936ec-27da9a0c1f6e42243e0b4b5c7f4c433ad0978304`
- o corte seguinte mostrou que o proprio `prime step` passou a ser a nova origem do crash:
  - o UART fecha em `G9A: prime step begin ON`
  - o kernel aborta em `third_party/circle/lib/timer.cpp:606` com `assertion failed: pThis != 0`
  - por isso o `prime step` foi removido do toggle `GFX9000`; o menu voltou a fazer apenas `config apply -> menu reset -> redraw`
- a telemetria de backend em `DEBUG=1` tambem foi corrigida nesta rodada:
  - `src/Makefile` passou a propagar `MSXBARE_ENABLE_DEBUG_OVERLAY=$(DEBUG)` aos arquivos `.c`
  - isso expôs e corrigiu um bug latente em `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`, onde `fmsx_debug_peek_ram_byte()` acessava `RAM` antes da declaracao
  - o kernel agora expone `msxbare_debug_trace()` para o backend registrar pelo logger
  - `fmsx_runtime_step_frame()` ganhou a trilha `G9S`:
    - `G9S: frame begin`
    - `G9S: runz80 begin`
    - `G9S: runz80 end`
    - `G9S: frame end`
- build pronta para o novo reteste em hardware:
  - `BUILD_BID: 202604101917-1e936ec`
  - `TXTDBG BUILD: 2AAD`
  - `BUILD_HASH: 1e936ec-ae99c0f5373c8824b32613dc6314d545c23c2c7c`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART do reteste com essa build fechou ainda melhor o ponto da falha:
  - `G9R: step begin`
  - `G9S: frame begin`
  - `G9S: runz80 begin`
  - `G9S: runz80 end`
  - `G9V f:600 m:0 ctl:00 sm0:00 sm1:00 w:320 h:212`
  - nao aparece `G9S: frame end`
- interpretacao atual:
  - o primeiro `RunZ80()` com `GFX9000=ON` ja conclui
  - a falha caiu para dentro do caminho de `fmsx_v9990_render_frame()`
  - como `ctl:00`, o chip ainda esta ocioso e o guest nao habilitou display no `V9990`
- resposta local desta rodada:
  - `fmsx_v9990_render_frame()` agora retorna imediatamente quando o display do `V9990` esta desabilitado
  - isso alinha a politica atual com o esperado para `GFX9000=ON`: chip presente, mas sem tocar no framebuffer ate o guest realmente ligar o video do `V9990`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604101925-1e936ec`
  - `TXTDBG BUILD: C56D`
  - `BUILD_HASH: 1e936ec-f10902084237e1a166d6444a3da09d6e70ee2ad6`
  - artefato: `artifacts/kernel8-issue251.img`
- o reteste seguinte com `roms/games/roms/GHOSTGOBLINS.ROM` mostrou que a deteccao do device ja funciona:
  - com `GFX9000=OFF`, a ROM acusa ausencia do `V9990`
  - com `GFX9000=ON`, a ROM deixa de acusar ausencia e segue executando
  - o problema atual virou tela preta com emulacao viva e `F12` funcional
- o UART desta rodada trouxe o primeiro estado util do guest no `V9990`:
  - `CONTROL=0x02`
  - `SCREEN_MODE_0=0x85`
  - `SCREEN_MODE_1=0x40`
  - `LMMV` (`op:20`) com area grande
  - ainda sem `display enable` no bit 7 de `CONTROL`
- resposta local desta rodada:
  - `cmd_ready()` agora levanta `CMD_IRQ` (`pending_irqs |= 0x04`) alinhado ao comportamento do `openMSX`
  - o `V9990` ganhou logs curtos de registradores criticos:
    - `G9I reg ...`
    - `G9I cmd-ready ...`
  - a janela de logs de render foi ampliada para capturar a transicao ate o primeiro frame ativo
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604101934-1e936ec`
  - `TXTDBG BUILD: 79FE`
  - `BUILD_HASH: 1e936ec-5cfaaf224ad7b69c8613f5698af93fa6e75d0ba2`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART do reteste com `GHOSTGOBLINS.ROM` fechou o novo estado do problema:
  - a ROM detecta o `V9990` quando `GFX9000=ON`
  - a emulacao continua viva e o `F12` segue funcional
  - o guest executa `LMMV`, o `CMD_IRQ` sobe (`irq:04`), mas o log observado ainda nao mostra `display enable` no bit 7 de `CONTROL`
  - o mesmo log tambem nao mostra escrita observada em `INTERRUPT_0`, entao a espera atual pode estar no protocolo de `STATUS/IRQ` antes do guest habilitar video
- resposta local desta rodada:
  - o `V9990` agora injeta IRQ real na linha de IRQ do MSX quando `pending_irqs & INTERRUPT_0 != 0`
  - escrita em `INTERRUPT_0`, clear de `INTERRUPT_FLAG`, reset e `load-state` reavaliam a linha de IRQ
  - o bit `EO` do `STATUS` passa a alternar por frame mesmo com display desligado
  - o `STATUS` local passou a devolver tambem os bits de borda `0x60` no baseline atual
  - a telemetria UART foi ampliada com:
    - mais budget de portas
    - `G9P sts` para leitura de `STATUS`
    - `G9P irq` para leitura de `INTERRUPT_FLAG`
    - mais budget de `G9I reg`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604101943-1e936ec`
  - `TXTDBG BUILD: 11CE`
  - `BUILD_HASH: 1e936ec-03f37d4d5334c578eddc387d66c58d97352f4e35`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART do reteste seguinte mostrou que:
  - o guest esta lendo `STATUS` (`0x65`)
  - nao apareceu leitura de `INTERRUPT_FLAG` (`0x66`) no recorte observado
  - apos o `LMMV`, o valor observado de `STATUS` seguia preso em `0x60`
- interpretacao atual:
  - o bloqueio imediato parece mais ligado ao polling de `STATUS` (`HR/VR/EO`) do que ao caminho de `IRQ ack`
- resposta local desta rodada:
  - o `STATUS` do `V9990` deixou de ser estatico
  - o device ganhou uma base temporal local em UC ticks
  - `HR/VR` agora sao calculados dinamicamente a partir do timing inspirado no `openMSX`
  - cada leitura de `STATUS` avanca a fase sintetica para que o guest enxergue transicoes em loops de polling apertados
  - o reset do `V9990` reposiciona essa fase no inicio da area ativa
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604101949-1e936ec`
  - `TXTDBG BUILD: 52D6`
  - `BUILD_HASH: 1e936ec-67091c953b114f2158ec1881028564b6b01317cf`
  - artefato: `artifacts/kernel8-issue251.img`
- a UART desta rodada expôs um bug objetivo de integracao:
  - o helper novo de `STATUS` dinamico existia
  - mas o `PORT_STATUS` (`0x65`) ainda retornava o caminho estatico antigo
- resposta local desta rodada:
  - `FMSX_V9990_PORT_STATUS` agora chama `fmsx_v9990_read_status_port()`
  - isso passa a colocar em uso real o `STATUS` dinamico com `HR/VR/EO`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604101955-1e936ec`
  - `TXTDBG BUILD: 207A`
  - `BUILD_HASH: 1e936ec-4284a3a0e5dd2fd7533588c0c8b6597b3a30f5fe`
  - artefato: `artifacts/kernel8-issue251.img`
- a UART seguinte descartou a suspeita de `timer.h`:
  - o assert continua em `dwhcidevice.cpp(1518)`
  - o `addr2line` da pilha fecha em `fmsx_v9990_render_frame()`
  - o ponto exato caiu no hot path do renderer `Bx`
- resposta local desta rodada:
  - o renderer `Bx` deixou de usar `% image_width` no hot path
  - quando `image_width` e potencia de 2, `src_x` agora usa mascara
  - o fallback com `%` ficou restrito a larguras nao-potencia de 2
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102000-1e936ec`
  - `TXTDBG BUILD: 06A1`
  - `BUILD_HASH: 1e936ec-f5a9d387a6accde34eb7f81a988eb2f1c8e17860`
  - artefato: `artifacts/kernel8-issue251.img`
- a UART seguinte fechou melhor o ponto da falha:
  - o guest chega ate `ctl:C2 sm0:85 sm1:40 i0:01 irq:00`
  - a ROM, portanto, ja esta habilitando o display do `V9990`
  - o `addr2line` do corte atual fecha em `fmsx_v9990_palette_color()`
  - isso desloca o problema do eixo `STATUS/IRQ` para o primeiro frame `Bx` realmente ativo
- interpretacao atual:
  - a leitura da `palette[]` e o ponto onde a IRQ do USB entrou, nao prova isolada de bug na palette
  - o risco mais forte agora e corrupcao no primeiro path ativo de renderizacao do `Bx`
- resposta local desta rodada:
  - o framebuffer do `V9990` ganhou canarios antes/depois da area de pixels
  - `power_on/reset` restauram esses guards
  - o renderer checa os guards antes e depois do frame e emite `G9X pre/post` se houver overwrite
  - o primeiro-light do renderer `Bx` deixou de depender da `palette[]`
  - os modos indexados `2/4/6bpp` passaram a usar decode seguro direto para `RGB565`, preservando mapeamento de VRAM, `scroll` e command engine
  - os modos diretos `8/16bpp` ficaram inalterados
- plano coeso da correcao a partir daqui:
  - fase 1: estabilizar o primeiro frame ativo do `V9990`
  - fase 2: confirmar em hardware que `CONTROL=C2` nao derruba mais o loop
  - fase 3: recolocar a palette real por cima do baseline estavel
  - fase 4: retomar fidelidade (`Video9000`, autodetect, `CMMK`)
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102009-1e936ec`
  - `TXTDBG BUILD: 4B00`
  - `BUILD_HASH: 1e936ec-66c97458f6319fa02a9bed56e46c3f3f3ed348d7`
  - artefato: `artifacts/kernel8-issue251.img`
- o reteste seguinte trouxe um corte importante:
  - nao apareceu novo assert do Circle
  - nao apareceu `G9X pre/post`
  - a UART termina exatamente em `ctl:C2 sm0:85 sm1:40 i0:01 irq:00`
- interpretacao atual:
  - a imagem anterior removeu o crash explicito
  - mas a telemetria ficou cega no ponto critico, porque os budgets de `G9P/G9I/G9V` se esgotaram antes do primeiro frame ativo
  - com isso, o log ainda nao distingue congelamento no primeiro frame ativo de loop do guest apos habilitar o display do `V9990`
- resposta local desta rodada:
  - os budgets de telemetria do `V9990` foram ampliados
  - quando `CONTROL` liga o bit 7, a janela de debug e rearmada
  - essa transicao agora emite `G9A display-on`
  - os primeiros frames ativos do `V9990` agora emitem:
    - `G9A rf-begin`
    - `G9A rf-end`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102018-1e936ec`
  - `TXTDBG BUILD: 407D`
  - `BUILD_HASH: 1e936ec-00f620aaed140a91939fead32b3dbcf900a80420`
  - artefato: `artifacts/kernel8-issue251.img`
- o reteste seguinte fechou o primeiro frame ativo:
  - `G9A display-on`
  - `G9A rf-begin`
  - `G9A rf-end`
  - nao houve assert
  - nao houve `G9X pre/post`
  - o log corta no comeco do frame seguinte, no meio de `G9V`
- interpretacao atual:
  - o primeiro frame ativo do `V9990` ja passa inteiro
  - o novo suspeito virou a propria telemetria UART no caminho quente do video ativo
  - isso desloca o risco do renderer/overwrite para saturacao ou reentrancia de logging
- resposta local desta rodada:
  - `G9V` deixou de logar enquanto o display do `V9990` estiver ativo
  - a janela rearmada em `display-on` foi reduzida ao minimo:
    - `G9A display-on`
    - um unico `rf-begin`
    - um unico `rf-end`
  - budgets de `port/cmd/reg` apos `display-on` tambem foram reduzidos
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102025-1e936ec`
  - `TXTDBG BUILD: 1FE1`
  - `BUILD_HASH: 1e936ec-63d11e22287712a32e2623321b60f6672e799b7b`
  - artefato: `artifacts/kernel8-issue251.img`
- o reteste seguinte fechou o ponto seguinte:
  - `display-on` acontece
  - o log para em `G9A rf-begin`, sem `rf-end`
- interpretacao atual:
  - o freeze volta para dentro do primeiro render ativo do caminho `Bx`
  - com a telemetria ativa ja bastante reduzida, o foco principal retorna ao renderer `Bx`
- resposta local desta rodada:
  - o `Bx` ativo foi simplificado outra vez para um first-light linear
  - essa versao evita:
    - `scroll`
    - `transform_bx`
    - `roll mask`
    - `even/odd`
  - o frame ativo agora le VRAM linearmente e converte apenas o minimo necessario por `mode_kind`
  - isso prepara o terreno para recolocar fidelidade por camadas, depois que o video ativo ficar estavel
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102030-1e936ec`
  - `TXTDBG BUILD: 123D`
  - `BUILD_HASH: 1e936ec-2b8733611243a33862d27f79aaa99e1bfcf7e3c4`
  - artefato: `artifacts/kernel8-issue251.img`
- resposta local seguinte:
  - o `Bx` first-light foi simplificado ao maximo
  - o primeiro frame ativo agora nao le VRAM nenhuma
  - o renderer ativo preenche a area inteira com cor solida por `mode_kind`
- objetivo tecnico deste corte:
  - separar de vez “freeze no decode/render ativo” de “freeze no handoff/apresentacao do framebuffer do `V9990`”
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102033-1e936ec`
  - `TXTDBG BUILD: 60D5`
  - `BUILD_HASH: 1e936ec-12776fee3d9f0d889ce6ae10aa919558e61b492a`
  - artefato: `artifacts/kernel8-issue251.img`
- resposta local desta rodada:
  - o diagnostico saiu de “suposicao de renderer” para bisect por fases
  - o primeiro `display-on` agora passa por:
    - `phase0 inactive`
    - `phase1 nofill`
    - `phase2 line1`
    - `phase3 full`
- objetivo tecnico do proximo reteste:
  - fechar se o freeze esta antes do handoff, no handoff do framebuffer ativo, na primeira escrita de framebuffer, ou apenas no frame cheio
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102037-1e936ec`
  - `TXTDBG BUILD: BACB`
  - `BUILD_HASH: 1e936ec-0dc21536a7ab8bc0b1063f7c5804d0c10aaf7362`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART mais recente fechou o comportamento do primeiro frame ativo:
  - `phase0 inactive` passa
  - `phase1 nofill` passa
  - `phase2 line1` passa
  - o travamento so aparece quando o renderer escala para escrita grande do frame ativo (`phase3 full`)
- a resposta local desta rodada foi trocar `phase3 full` por um bisect em profundidade de linhas:
  - `phase3 line16`
  - `phase4 line64`
  - `phase5 line128`
  - `phase6 line160`
  - `phase7 line212`
- objetivo tecnico do proximo reteste:
  - fechar o threshold real de linhas escritas que dispara o congelamento
  - correlacionar esse threshold com os artefatos visuais vistos no terco inferior da tela
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102041-1e936ec`
  - `TXTDBG BUILD: 370D`
  - `BUILD_HASH: 1e936ec-652a1692c8b7d7a065230056690b4a01b2f0d5fd`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART do reteste seguinte estreitou mais o threshold:
  - `phase3 line16` passa
  - `phase4 line64` passa
  - o freeze acontece antes de `phase5 line128`
- a inspecao do pipeline de apresentacao encontrou um bug estrutural no consumidor generico:
  - o `V9990` produz framebuffer com stride fixo (`pitch`) de `1280`
  - o blit do kernel lia as linhas como se o buffer fosse tight (`src_y * width`)
  - isso e consistente com os artefatos visuais vistos no terco inferior
- correcao local desta rodada:
  - o contrato generico `BackendVideoPresentation` ganhou `pitch_pixels`
  - o `fMSX` publica `pitch_pixels = g_image_buffer_width`
  - o `V9990` publica `pitch_pixels = FMSX_V9990_FB_MAX_WIDTH`
  - o blit do kernel agora usa `src_pitch` em todos os caminhos de copia/escalonamento
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102048-1e936ec`
  - `TXTDBG BUILD: 61AD`
  - `BUILD_HASH: 1e936ec-32bbfe5cc8e19b31e14a8ad583956c061ec68cfa`
  - artefato: `artifacts/kernel8-issue251.img`
- o reteste seguinte mostrou que o freeze continuou no mesmo threshold:
  - `phase3 line16` passa
  - `phase4 line64` passa
  - nao chega em `phase5 line128`
- conclusao desta rodada:
  - o conserto de `pitch_pixels` era necessario, mas nao resolveu o travamento do primeiro frame ativo
- resposta local desta rodada:
  - o diagnostico agora separa explicitamente “buffer compacto” e “buffer real do V9990”
  - nova trilha de fases:
    - `phase5 compact128`
    - `phase6 compact212`
    - `phase7 live128`
    - `phase8 live160`
    - `phase9 live212`
- objetivo tecnico do proximo reteste:
  - se `compact128` passar, o problema esta no layout/alcance do framebuffer real
  - se `compact128` travar, o problema passa a ser custo/tempo de escrita do primeiro frame ativo
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102052-1e936ec`
  - `TXTDBG BUILD: 854A`
  - `BUILD_HASH: 1e936ec-257d4bf926ccbcaf51e310cbaef72cba3d878f02`
  - artefato: `artifacts/kernel8-issue251.img`
- o reteste seguinte regrediu no boot, antes da UART
- diagnostico local desta rodada:
  - a fase `compact` tinha introduzido um segundo framebuffer inteiro de depuracao em `.bss`
  - essa build foi para `0x3B4D95` bytes de `.bss` (`3886869`)
  - o simbolo extra era `g_fmsx_v9990_debug_framebuffer` com `0x109000` bytes
- correcao local desta rodada:
  - o framebuffer extra foi removido
  - o bisect `compact` continua, mas agora reaproveita o `g_fmsx_v9990_framebuffer` existente com `pitch_pixels = width`
  - a `.bss` caiu para `0x2ACD95` bytes (`2801429`)
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102107-1e936ec`
  - `TXTDBG BUILD: D355`
  - `BUILD_HASH: 1e936ec-cb7bad6b5d6e5a2e9b3bd7c5a9f19260788c37f3`
  - artefato: `artifacts/kernel8-issue251.img`
- leitura consolidada da UART anterior:
  - o log para em `phase4 line64`
  - isso nao prova conclusao de `64` linhas; o marcador antigo era emitido antes do preenchimento
- correcao local desta rodada:
  - cada fase critica agora emite marcador de conclusao real (`done`)
  - o bisect fino passou para:
    - `line32`
    - `line48`
    - `line64`
    - `compact96`
    - `compact128`
    - `live128`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102308-1e936ec`
  - `TXTDBG BUILD: E5E0`
  - `BUILD_HASH: 1e936ec-1461b5d20dd6bbb67d9afdcd2a10e725f5ce2c33`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART desta rodada fechou o ultimo tamanho de bloco realmente concluido:
  - `line1 done`
  - `line16 done`
  - `line32 done`
  - `line48 done`
  - o freeze vem depois disso
- resposta local desta rodada:
  - o `display-on` do `V9990` agora rearma tambem a trilha `G9S` do runtime
  - no proximo UART, isso deve separar se a falha vem antes de `frame end` ou so no `blit/present`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102313-1e936ec`
  - `TXTDBG BUILD: 3121`
  - `BUILD_HASH: 1e936ec-07f4a18403da9c8215a1ad5147970224e8426310`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART mais recente confirmou que o corte segue entre o renderer e o fim do frame:
  - o ultimo log continua sendo `G9A phase5 line48 done`
  - ainda nao aparece `G9S: frame end`
  - isso deixa como fronteira restante apenas:
    - retorno final de `fmsx_v9990_render_frame()`
    - `fmsx_audio_end_frame_render_accounting()`
    - `RenderAndPlayAudio(samples_per_frame)`
- resposta local desta rodada:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c` ganhou telemetria curta para o pos-render:
    - `G9S: v9990 end`
    - `G9S: audio acc begin`
    - `G9S: audio acc ready|skip`
    - `G9S: audio play begin`
    - `G9S: audio play end`
  - a intencao e separar no proximo reteste se o freeze ainda esta no tail do render ou se o problema real e o caminho de audio do primeiro frame ativo do `V9990`
- validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102317-1e936ec`
  - `TXTDBG BUILD: 3EFC`
  - `BUILD_HASH: 1e936ec-20187a688632b84a3077988d762c8e11eecb4766`
  - artefato: `artifacts/kernel8-issue251.img`
- o UART do reteste com a build `3EFC` consolidou o novo corte:
  - para `phase0..phase4`, o runtime conclui `v9990 end`, `audio acc`, `audio play` e `frame end`
  - no frame de `phase5 line48`, o log para em `G9A phase5 line48 done`
  - isso tira o caminho de audio do foco imediato e recoloca a falha no tail do proprio `fmsx_v9990_render_frame()`
- diagnostico local desta rodada:
  - os caminhos de `phase2..phase9` retornavam antes do `post-guard` global
  - entao um overwrite silencioso nessas fases podia escapar sem qualquer telemetria
- resposta local desta rodada:
  - os `return` das fases de debug foram centralizados em um finalize unico
  - esse finalize agora sempre executa o `phase-post` guard check antes de sair
  - foi adicionado um marcador minimo `G9A phase-ret` imediatamente antes do retorno da fase
  - isso deve separar no proximo UART se a falha ainda esta dentro do finalize do renderer ou ja depois do retorno da fase
- validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102323-1e936ec`
  - `TXTDBG BUILD: 8CA8`
  - `BUILD_HASH: 1e936ec-adcb5535b069515899f20f3aa380dfbc4cf8a97e`
  - artefato: `artifacts/kernel8-issue251.img`
- a rodada seguinte fechou um ponto estrutural importante:
  - o framebuffer do `V9990` nao esta colidindo com a stack
  - confirmacao no ELF:
    - `g_fmsx_v9990_framebuffer_storage` em `0x246590`
    - fim do storage em `0x34f598`
    - `_end` em `0x3e3415`
    - folga ate o fim da `.bss`: `605821` bytes
- bug objetivo encontrado nesta rodada:
  - os guards anteriores eram falsos
  - eles estavam em `.data`, antes de `__bss_start`, enquanto o framebuffer real estava em `.bss`
  - isso tornava o `post-guard` incapaz de detectar overwrite do framebuffer
- resposta local desta rodada:
  - o framebuffer passou a usar um storage unico com guards adjacentes no mesmo bloco em `.bss`
  - a regressao temporaria de footprint (`kernel8.img` em `1836280` bytes) foi corrigida ao remover a inicializacao estatica do bloco
  - o tamanho da imagem voltou para `750824` bytes
- objetivo tecnico do proximo reteste:
  - verificar se o freeze em `phase5` agora dispara `phase-post`/guard real
  - se nao disparar guard, o proximo suspeito deixa de ser overwrite linear do framebuffer
- validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - inspecao local do ELF via `aarch64-elf-nm`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102333-1e936ec`
  - `TXTDBG BUILD: 48E3`
  - `BUILD_HASH: 1e936ec-51450d773842c79e45b94c98cf6b28e7ea6900d5`
  - artefato: `artifacts/kernel8-issue251.img`
- mudanca de estrategia desta rodada:
  - a depuracao do `V9990` deixou de depender exclusivamente de ciclos em hardware
  - foi criado um harness host-side reutilizavel em:
    - `tools/host/v9990_phase_harness.c`
    - `scripts/run-v9990-host-harness.sh`
  - ele compila `src/backend/msx/modules/fmsx/fmsx_v9990.c` com `ASan/UBSan`
- resultado local do harness:
  - passa por `phase5 line48`, `phase6 line64`, `phase8 compact128`, `phase9 live128`
  - segue estavel tambem no render normal depois do fim das fases artificiais
  - nao houve `ASan`, `UBSan` ou assert local
- conclusao tecnica nova:
  - o problema deixa de ser tratado como bug obvio do renderer puro do `V9990`
  - o foco agora migra para interacao especifica do target Raspberry/debug path
- otimizacao aplicada:
  - o tracing de fase via UART foi desativado por default no build do target
  - ele fica ativo apenas no harness host-side via `-DMSXBARE_V9990_PHASE_TRACE_UART=1`
  - isso reduz o custo do hot path no Raspberry sem perder o detalhamento local
- validacao local:
  - `scripts/run-v9990-host-harness.sh 12`
  - `scripts/run-v9990-host-harness.sh 32`
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- build pronta para o proximo reteste em hardware:
  - `BUILD_BID: 202604102338-1e936ec`
  - `TXTDBG BUILD: 9911`
  - `BUILD_HASH: 1e936ec-729438c4c4b948fc8bb2d409b86ccdcb2949ed5f`
  - artefato: `artifacts/kernel8-issue251.img`
- correcao de estrategia desta rodada:
  - o tracing de fase do target Raspberry foi restaurado em `DEBUG=1`
  - a remocao desse tracing do target foi erro de processo e nao deve se repetir sem autorizacao explicita
  - o harness host-side continua como ferramenta paralela, nao como substituto da UART do target
- validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- build pronta com UART restaurada no target:
  - `BUILD_BID: 202604102344-1e936ec`
  - `TXTDBG BUILD: F4EE`
  - `BUILD_HASH: 1e936ec-3be495363fb90f16407f466f5846c9ef4656862f`
  - artefato: `artifacts/kernel8-issue251.img`
- rodada local 2026-04-11 00:01 -03:
  - a UART do target foi preservada, mas o caminho mudou de sincrono para enfileirado
  - `msxbare_uart_write()` agora apenas acumula bytes em memoria
  - o `Write()` fisico na serial foi movido para fora do hot path, sendo drenado:
    - apos `backend_runtime_step_frame()`
    - apos `PresentIfDirty()`
    - apos a inicializacao do `UART + Logger`
  - isso mantem o conteudo dos logs no target e reduz a pressao do driver de serial do Circle dentro do `render_frame()` do `V9990`
  - validacao local:
    - `scripts/check-third-party-pristine.sh`
    - `make DEBUG=1`
    - `scripts/run-v9990-host-harness.sh 20`
  - build atual:
    - `BUILD_BID: 202604110001-1e936ec`
    - `TXTDBG BUILD: B869`
    - `BUILD_HASH: 1e936ec-7cf168cae02e4ed64141ea2f13e386a6054982bc`
    - artefato: `artifacts/kernel8-issue251.img`
- rodada local 2026-04-11 00:08 -03:
  - leitura do UART mais recente mostrou que o bring-up ativo do `V9990` ja completa:
    - `phase3 line16 done`
    - `G9S: v9990 end`
    - `G9S: audio acc`
    - `G9S: audio play`
    - `G9S: frame end`
  - nao houve `assert`, `panic` nem `UARTDROP`
  - isso move o corte atual para depois do retorno de `backend_runtime_step_frame()`
  - a resposta local foi adicionar a trilha `G9K` no kernel, rearmada pelo `display-on` do `V9990`, cobrindo:
    - `G9K: blit begin/end`
    - `G9K: present begin/end`
    - `G9K: yield begin/end`
  - validacao local:
    - `scripts/check-third-party-pristine.sh`
    - `make DEBUG=1`
    - `scripts/run-v9990-host-harness.sh 12`
  - build atual:
    - `BUILD_BID: 202604110008-1e936ec`
    - `TXTDBG BUILD: E7E0`
    - `BUILD_HASH: 1e936ec-d4bc9aa9f1b2387f4a056badf4a570bf812462c6`
    - artefato: `artifacts/kernel8-issue251.img`
- rodada local 2026-04-11 00:12 -03:
  - a leitura do UART com `G9K` mostrou que, apos `phase3 line16`, o kernel completa:
    - `G9K: blit begin/end`
    - `G9K: present begin/end`
    - `G9K: yield begin/end`
  - o log seguinte avanca ate:
    - `phase4 line32 done`
    - `G9S: v9990 end`
    - `G9S: audio acc ready`
    - `G9S: audio play end`
    - `G9S: frame end`
  - e para exatamente ai
  - isso estreita o corte atual para o trecho do kernel depois do retorno do runtime e antes do `blit` do frame seguinte
  - a resposta local foi refinar `G9K` para o pos-step do kernel:
    - `G9K: step ret`
    - `G9K: status begin/end`
    - `G9K: sync begin/end`
    - `G9K: flush begin/end`
    - `G9K: tick end`
  - validacao local:
    - `scripts/check-third-party-pristine.sh`
    - `make DEBUG=1`
    - `scripts/run-v9990-host-harness.sh 8`
  - build atual:
    - `BUILD_BID: 202604110012-1e936ec`
    - `TXTDBG BUILD: 7DD7`
    - `BUILD_HASH: 1e936ec-619968423fbb0d5870dbd98d406c8d0d2c9a104a`
    - artefato: `artifacts/kernel8-issue251.img`
- rodada local 2026-04-11 00:16 -03:
  - o UART com `G9K` refinado mostrou que o ultimo trecho observado e:
    - `step ret`
    - `status begin/end`
    - `sync begin/end`
    - `flush begin/end`
    - `tick end`
    - `blit begin/end`
    - `present begin/end`
    - `yield begin/end`
  - o log para exatamente em `G9K: yield end`
  - isso empurra o corte atual para o topo da iteracao seguinte do loop principal
  - a resposta local foi expandir `G9K` para marcar:
    - `loop top`
    - `usb begin/end`
    - `deferred begin/end`
    - `pace begin/end`
    - `step gate`
  - validacao local:
    - `scripts/check-third-party-pristine.sh`
    - `make DEBUG=1`
    - `scripts/run-v9990-host-harness.sh 6`
  - build atual:
    - `BUILD_BID: 202604110016-1e936ec`
    - `TXTDBG BUILD: BA93`
    - `BUILD_HASH: 1e936ec-77721a3dab50991f47fb24e43db18677948a8697`
    - artefato: `artifacts/kernel8-issue251.img`

## Referencias tecnicas

- `blueMSX` como referencia semantica primaria para convergencia funcional
- `openMSX` para validacao cruzada de comportamento do `V9990`
- documentacao do cartucho `GFX9000` e do `V9990`

## Riscos e pontos de atencao

- o `V9990` pode exigir decisao arquitetural explicita sobre prioridade/composicao da saida de video
- parte do software alvo pode depender de cantos de comportamento nao cobertos pelo baseline inicial
- existe risco de o backend atual precisar de uma camada de video MSX mais explicita para acomodar `V9990` sem regressao no `V9958`
- o `command engine` ainda nao cobre `CMMK`, que depende de uma fonte Kanji ROM nao modelada no backend local
- a politica final de selecao/composicao entre `V9958`, `GFX9000` e `Video9000` ainda precisa ser fechada

## Proximo resultado esperado

- baseline funcional capaz de detectar o dispositivo, inicializar seu estado principal e apresentar imagem valida de software que exija `V9990`
- proxima iteracao focada em fidelidade e cobertura do `command engine`:
  - page/scroll refinados
  - resolver `CMMK` ou documentar oficialmente a ausencia de Kanji ROM
  - composicao `Video9000`
  - deteccao automatica do cartucho `GFX9000`

## Atualizacao 2026-04-11 00:20 -03

- Novo corte fechado por UART:
  - o backend `V9990` ja conclui `phase3 line16 done`
  - o kernel tambem conclui `step/status/sync/flush/tick`, `blit`, `present` e `yield`
  - o ultimo ponto observado segue sendo `G9K: yield end`
- Interpretacao tecnica:
  - o freeze atual nao esta mais dentro do primeiro `render_frame()` ativo do `V9990`
  - a fronteira restante ficou no trecho imediatamente apos o `yield`, com suspeita principal no flush final da UART ou no salto imediato para a proxima iteracao
- Resposta local:
  - o transporte UART do backend no target continua ativo, mas com flush limitado:
    - `128` bytes por `Write()`
    - `256` bytes de budget por chamada
  - a trilha `G9K` foi expandida com:
    - `post-yield consume begin/end`
    - `post-yield flush begin/end`
    - `top flush begin/end`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604110020-1e936ec`
  - `TXTDBG BUILD: 1667`
  - `BUILD_HASH: 1e936ec-7aed2623c7cc4ef9b09425ebbcfd3923b0f6cbd4`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 00:27 -03

- Novo corte fechado por UART:
  - a execucao ja passa por `post-yield flush`, `loop top`, `top flush`, `usb`, `deferred` e `pace`
  - o ultimo ponto observado ficou em `G9K: step gat`
- Interpretacao tecnica:
  - a fronteira atual saiu do pos-yield e foi empurrada para o trecho entre `step gate` e o primeiro `frame begin` da iteracao seguinte
  - os suspeitos imediatos agora sao o push de input para o runtime e o comeco do `backend_runtime_step_frame()` antes de qualquer trilha `G9S`
- Resposta local:
  - o kernel recebeu nova instrumentacao pre-step:
    - `G9K: input key end`
    - `G9K: input joy end`
    - `G9K: step call`
  - esses marcadores sao drenados antes da chamada real do step
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604110027-1e936ec`
  - `TXTDBG BUILD: 3177`
  - `BUILD_HASH: 1e936ec-f3d5d586bff6c587cad41dc91e84b23fa3a5f28d`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 00:34 -03

- Novo corte fechado por UART:
  - o kernel ja passa por `input key end`, `input joy end` e `step call`
  - o runtime ja passa por `frame begin`, `runz80 begin/end`, `phase4 line32 done` e `v9990 end`
  - o log corta no inicio do bloco `G9S: audio ...`
- Interpretacao tecnica:
  - a fronteira atual saiu da entrada do step e foi empurrada para o bloco de audio do runtime
  - os suspeitos imediatos ficaram entre:
    - `fmsx_audio_end_frame_render_accounting()`
    - `RenderAndPlayAudio()`
  - havia ambiguidade de visibilidade porque o flush da UART no target estava pequeno demais para descarregar todo o pacote de logs do step
- Resposta local:
  - budget do flush na janela de trace do `GFX9000` foi ampliado para `2048`, mantendo `128` bytes por `Write()`
  - o runtime agora separa:
    - `G9S: audio acc call`
    - `G9S: audio acc ret0` / `retnz`
    - `G9S: audio play call`
    - `G9S: audio play end`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604110034-1e936ec`
  - `TXTDBG BUILD: 17C5`
  - `BUILD_HASH: 1e936ec-a4a3517d8aa30148910b3c971ee2b71bb4bc7921`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 13:00 -03

- Leitura mais recente da UART:
  - as fases `0..3` chegam ate `audio acc ret0` e `audio play end`
  - na `phase4 line32`, o log para em `G9S: au`
- Interpretacao tecnica:
  - isso ainda nao fecha o audio como culpado
  - o corte estava ambiguo porque o flush da janela de trace ainda podia truncar o pacote inteiro do step
  - como `phase4 line32 done` ja aparece, o step ja avancou alem do renderer
- Resposta local:
  - o `trace window` agora drena a fila inteira da UART do backend
  - nenhuma trilha do target foi removida
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111300-1e936ec`
  - `TXTDBG BUILD: 7D5C`
  - `BUILD_HASH: 1e936ec-fb0a58350ca36a04afde5db3881f157bacbf3d7f`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 13:06 -03

- O corte observado segue no mesmo ponto logico:
  - `phase4 line32 done`
  - `v9990 end`
  - truncando o pacote verbose logo em seguida
- Interpretacao tecnica:
  - o volume do trace verbose do hot path passou a atrapalhar a leitura real da ordem dos eventos
  - para continuar o bisect, a prioridade agora e preservar sequencia curta e confiavel, nao texto longo
- Resposta local:
  - `G9K`, `G9S` e `phase*` do `V9990` foram convertidos para marcadores compactos de 1 byte durante a janela ativa do `GFX9000`
  - a UART do target continua ativa em `DEBUG=1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111306-1e936ec`
  - `TXTDBG BUILD: 7CEB`
  - `BUILD_HASH: 1e936ec-07420d5bafd5d2fc70d5c79c267a2ef04b3a59da`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 13:16 -03

- A leitura compacta da UART mostrou um comportamento estrutural novo:
  - o runtime avancava por varias fases seguidas do `V9990` dentro do mesmo call
  - a sequencia visivel chegou ate `phase6`
- Interpretacao tecnica:
  - o `boot burst` do warmup seguia ativo
  - com `GFX9000` ligado, isso transforma um unico `backend_runtime_step_frame()` numa chamada longa demais
  - esse comportamento explica melhor o freeze do que um bug isolado em `audio acc` ou `audio play`
- Resposta local:
  - o runtime agora força `steps = 1` durante warmup quando `g_gfx9000_enabled` estiver ativo
  - isso corta o burst multi-frame no caminho do `GFX9000`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111316-1e936ec`
  - `TXTDBG BUILD: 889B`
  - `BUILD_HASH: 1e936ec-2672e448724855cc36c3a60c9b1db38a7dd91146`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 13:30 -03

- O stream compacto anterior ainda era ambiguo:
  - havia colisao de marcadores entre `kernel` e `runtime`
  - `phase2..phase9` ainda apareciam em texto verbose
- Resposta local:
  - o stream compacto agora ficou disjunto entre `kernel`, `runtime` e `V9990`
  - as fases do `V9990` nao caem mais para texto verbose na janela ativa
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111330-1e936ec`
  - `TXTDBG BUILD: D7F6`
  - `BUILD_HASH: 1e936ec-b1fe36b2cfa56d4dc9ff7f7726be525884058936`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 13:38 -03

- Nova conclusao estrutural a partir da leitura compacta:
  - alem do burst interno do runtime, o kernel ainda podia fazer `double-step` no mesmo loop por causa do catch-up
- Resposta local:
  - `max_catchup_steps` agora cai para `1` quando `GFX9000` estiver ativo
  - o comportamento anterior (`2`) segue para os demais caminhos
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111338-1e936ec`
  - `TXTDBG BUILD: 9554`
  - `BUILD_HASH: 1e936ec-7254b1495d0a3c7dff87595a6c1c480fd9e6cb4f`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 13:50 -03

- A leitura nova do UART (`/private/tmp/msx2p-boot-serial.log`) fechou um problema no proprio diagnostico:
  - a sequencia observada chega ate `phase6 line64 done`
  - cada fase observada (`0..6`) conclui tambem o ciclo completo do kernel
  - o stream termina em `...GKJjC`, isto e, no limite entre `step gate`, envio de input e a chamada do proximo `backend_runtime_step_frame()`
- Conclusao tecnica desta rodada:
  - o log anterior nao prova mais travamento exatamente na `phase6`
  - como o `display-on` rearma a instrumentacao no meio de um frame ja em andamento, a janela de `8` frames ficou curta demais
  - havia ainda bugs na propria instrumentacao:
    - colisao de marcador compacto no kernel
    - tabela de fases do `V9990` desatualizada depois da troca de `compact96/128` para `live96/128/160/212`
    - o gate de fases do `V9990` ainda limitava a ladder a `10` passos, deixando a `phaseA` inatingivel
- Resposta local desta rodada:
  - a janela de trace de `G9S` e `G9K` subiu de `8` para `16` frames
  - `G9K: step call` agora usa marcador compacto unico (`j`)
  - a tabela compacta de fases do `V9990` foi alinhada para:
    - `phase7 live96` -> `7`
    - `phase8 live128` -> `8`
    - `phase9 live160` -> `9`
    - `phaseA live212` -> `A`
  - o gate de fases do `V9990` passou de `< 10` para `< 11`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111350-1e936ec`
  - `TXTDBG BUILD: 22B7`
  - `BUILD_HASH: 1e936ec-d1b571b3c67e819d4a4a91b0a019ef2f16176288`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 13:55 -03

- Leitura mais nova do UART mostrou que o corte saiu de vez do renderer do `V9990`:
  - a sequencia compacta progride ate `phase9 live160 done`
  - depois disso ainda aparecem `phase-ret`, `v9990 end`, `audio acc`, `audio play`, `frame end`, `step ret`, `status`, `sync`
  - o ultimo marcador compacto observado e `u` (`G9K: flush begin`)
  - o `U` (`flush end`) nao aparece
- O mesmo log mostrou interferencia de logger normal no meio da janela compacta:
  - `Throttle event: MIXED state=0x00050000`
  - `CLK THR ARM:1200 CORE:400 TEMP:60 ...`
- Conclusao tecnica desta rodada:
  - o `V9990` ja nao e o suspeito principal neste recorte
  - a fronteira atual caiu para dentro de `FlushBackendUartTraceBufferTraceWindow()` no kernel
  - o logger normal de throttle/clock estava concorrendo com a janela compacta do `GFX9000`
- Resposta local desta rodada:
  - o budget da janela de trace caiu de “fila inteira” para `2048` bytes por flush
  - logs de `Throttle event` e `CLK ...` agora deixam de ir ao `CLogger` quando a janela do `GFX9000` estiver ativa
  - nesses casos eles passam a ser enfileirados no mesmo canal `msxbare_uart_write()`, preservando ordem e evitando reentrancia do serial/logger no meio do trace
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111355-1e936ec`
  - `TXTDBG BUILD: 59B4`
  - `BUILD_HASH: 1e936ec-24e53ea65e1e425bdf791936f3c58e7b485dfc83`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 14:02 -03

- O ultimo conjunto de logs + print consolidou duas leituras:
  - o `V9990` ja progride ate `phase9 live160 done`
  - o padrao visual com linhas brancas horizontais e o ladder sintetico de bring-up (`phase2..phase9`) somado a `scanlines`; ele nao representa ainda o renderer real do jogo
  - o pequeno bloco colorido no centro indica que o guest ja esta escrevendo dados reais do `GFX9000` por baixo do padrao sintetico
- O gargalo confirmado desta rodada:
  - o ultimo congelamento nao estava mais no renderer do `V9990`
  - a fronteira caiu em `FlushBackendUartTraceBufferTraceWindow()` no kernel
  - alem disso, logs `G9R/G9A` ainda estavam indo para `CLogger`, concorrendo com a janela compacta
- Resposta local desta rodada:
  - a janela ativa do `GFX9000` deixou de fazer `flush` imediato da fila UART
  - durante a janela ativa, `msxbare_debug_trace()` agora enfileira direto em `msxbare_uart_write()` e nao passa pelo `CLogger`
  - os logs `G9R` e `G9A` do kernel (`step/blit/present/armed/pause/resume`) tambem deixam de ir ao `CLogger` durante a janela ativa e passam a ser enfileirados no mesmo stream da UART compacta
- Objetivo tecnico:
  - remover o gargalo de serial/logger do meio do frame
  - deixar o sistema atravessar `phaseA live212` e finalmente chegar ao renderer real do `V9990`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111402-1e936ec`
  - `TXTDBG BUILD: 91EE`
  - `BUILD_HASH: 1e936ec-4f35cb2aecd585296d44eb8f63463667fc78d7c4`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 14:10 -03

- A leitura seguinte do UART afinou mais o corte:
  - a sequencia vai ate `phase8 live128 done`
  - depois disso ainda passam `phase-ret`, `v9990 end`, `audio acc`, `audio play`, `frame end`, `step ret`, `status`, `sync`, `flush end`, `tick end`, `blit begin/end` e `present begin/end`
  - o ultimo marcador compacto observado virou `M` (`G9K: present end`)
  - o proximo marcador esperado seria `w` (`G9K: yield begin`), que nao aparece
- Conclusao tecnica desta rodada:
  - o corte saiu do `flush` da UART e foi empurrado para o pos-`PresentIfDirty()`
  - o `flush` normal logo apos o `present` ainda era um suspeito forte, porque continuava rodando mesmo com a janela ativa
- Resposta local desta rodada:
  - `FlushBackendUartTraceBuffer()` agora tambem retorna imediatamente enquanto a janela ativa do `GFX9000` estiver aberta
  - com isso, nenhum `flush` da fila UART roda mais no meio do frame durante a janela compacta
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111410-1e936ec`
  - `TXTDBG BUILD: 96C7`
  - `BUILD_HASH: 1e936ec-e10c600a6338cd82596929f56f92dc95dd80ea05`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 14:21 -03

- O ultimo recorte do UART voltou o foco para o proprio protocolo de IRQ do `V9990`, antes do `display-on`:
  - o log para em `ctl:42 ... i0:01 irq:04`
  - ele nao chega mais a `ctl:C2 ... irq:00`
  - tambem nao chega a `G9A display-on`
- Diagnostico consolidado:
  - o guest ja detecta o `V9990`, executa `LMMV` e recebe `CMD_IRQ`
  - nesta fase de bring-up ele habilita apenas `INTERRUPT_0=0x01`
  - o device local ainda nao gerava `VER_IRQ`, entao faltava a IRQ vertical que o guest espera antes de prosseguir
- Referencia externa usada:
  - `third_party/openmsx/src/video/v9990/V9990.hh`: `VER_IRQ=1`, `HOR_IRQ=2`, `CMD_IRQ=4`
  - `third_party/openmsx/src/video/v9990/V9990.cc`: `raiseIRQ(VER_IRQ)` no caminho de `VSCAN`
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c` agora define os tres tipos de IRQ explicitamente
  - o renderer sintetiza `VER_IRQ` no inicio de cada frame e reavalia imediatamente a linha de IRQ do host
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111420-1e936ec`
  - `TXTDBG BUILD: 142A`
  - `BUILD_HASH: 1e936ec-c26207e293fa8f4fe10310dd35caa72fbeea5640`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 14:26 -03

- A UART seguinte confirmou que o ajuste de `VER_IRQ` entrou, mas ainda faltava alinhar a fase do `STATUS`:
  - `irq` passou a `0x05`, confirmando `VER_IRQ + CMD_IRQ`
  - o guest ficou preso em polling de `STATUS` (`0x65`)
  - os valores observados ficaram em `0x00` e `0x20`
  - o recorte ainda nao chega a `ctl:C2` nem a `display-on`
- Diagnostico consolidado:
  - o guest ja recebe a `VER_IRQ`
  - o desvio restante e que `STATUS` continuava partindo do inicio da area ativa, entao o polling enxergava `HR` mudando, mas nao a fase de `VSCAN` correspondente ao pulso vertical
- Correcao aplicada:
  - no mesmo ponto em que o renderer sintetiza `VER_IRQ`, ele agora zera `status_uc_ticks`
  - isso reposiciona o `STATUS` sintetico no inicio do frame e deve expor `VR=1` imediatamente apos `i0=01`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111426-1e936ec`
  - `TXTDBG BUILD: 61D1`
  - `BUILD_HASH: 1e936ec-fede3719236f17c68b535cc6aed1128ce1cf9dbc`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 14:34 -03

- O fluxo de build agora tambem ganhou gate estatico para o `GFX9000` no `menuconfig`.
- Correcao aplicada:
  - `Expansion support` ganhou `MSXBARE_FEAT_GFX9000`
  - a feature e emitida em `.config`, `.config.mk`, `build/config.mk` e `build/config_build.h`
  - o item `GFX9000 [ON/OFF]` do menu `F12` so e compilado quando `MSXBARE_FEAT_GFX9000=1`
  - o kernel passa a forcar `m_Gfx9000Enabled=FALSE` quando a feature estiver desligada no build
  - `SaveSettings` persiste `gfx9000=0` nesse caso, evitando reativacao via `msxbarepi.cfg`
- Validacao local:
  - `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`
  - confirmado `CONFIG_MSXBARE_FEAT_GFX9000=y` em `.config`
  - confirmado `MSXBARE_FEAT_GFX9000 := 1` em `.config.mk` e `build/config.mk`
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1 MSXBARE_FEAT_GFX9000=0`

## Atualizacao 2026-04-11 15:31 -03

- A UART mais nova fechou o proximo desvio antes do `display-on`:
  - o guest ja enxerga `CMD_IRQ + VER_IRQ` (`irq:05`)
  - ele entra em polling de `STATUS` depois de alternar temporariamente `SCREEN_MODE`
  - o fluxo nao chega a `CONTROL=C2`
- Diagnostico consolidado:
  - a modelagem local ainda prendia a evolucao recorrente de `EO` e `VER_IRQ` ao `render_frame()`
  - isso falha exatamente no caso atual, porque o software fica preso dentro do `RunZ80()` antes do `display-on`; sem retorno ao renderer, o relogio sintetico do `V9990` deixa de progredir de forma coerente
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - `fmsx_v9990_advance_status_time()` passou a ser a fonte unica de progressao sintetica de frame/VSCAN
    - a rotina agora alterna `EO` em wrap de frame e levanta `VER_IRQ` ao cruzar `VSCAN`
    - `render_frame()` deixou de zerar `status_uc_ticks` e de sintetizar `VER_IRQ` por fora; ele apenas avanca o mesmo relogio sintetico em um frame inteiro
  - efeito esperado:
    - polling de `STATUS` dentro do proprio `RunZ80()` passa a observar transicoes reais de frame/VSCAN sem depender do renderer
- Referencias externas usadas:
  - `third_party/openMSX/src/video/v9990/V9990.cc`
    - `frameStart()`
    - `execVScan()`
    - `peekIO(STATUS)`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111530-1e936ec`
  - `TXTDBG BUILD: 260C`
  - `BUILD_HASH: 1e936ec-fa9300b9a6396eef4a5a8f8d75aa0aca4532163b`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 15:40 -03

- O print mais recente mostrou que o `V9990` ja esta ativo visualmente:
  - o overlay marca `Screen:13`
  - as faixas brancas no topo sao a ladder sintetica de bring-up, nao a imagem real do software
  - os blocos coloridos inferiores indicam conteudo real do `GFX9000` por baixo dessa camada
- Diagnostico consolidado:
  - o recorte atual da UART ainda nao captura o `display-on`, mas o print prova que ele acontece depois do trecho `ctl:42 ... i0:01 irq:05`
  - a ladder sintetica passou a atrapalhar o diagnostico funcional, porque mascara a saida real do `V9990`
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - nova macro `MSXBARE_V9990_PHASE_VISUAL_DEBUG`
    - default `0`
    - a ladder visual `phase0..phaseA` deixa de sobrescrever o framebuffer no target normal
  - a telemetria UART continua ativa para o caminho de bring-up
- Objetivo tecnico:
  - fazer o proximo reteste mostrar o framebuffer real do `V9990`
  - separar defeito de renderer real de artefato introduzido pela escada sintetica
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111540-1e936ec`
  - `TXTDBG BUILD: 03E2`
  - `BUILD_HASH: 1e936ec-9acdcf7e1ef7eac5a64202486ecfa3725e6d8244`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 16:01 -03

- O print preto com `Screen:13` exigiu correcao de diagnostico:
  - `Screen:13` no overlay vem do `ScrMode` do VDP principal
  - em `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`, `13` e `MAXSCREEN+1`
  - isso nao confirma `display-on` do `V9990`
- Leitura consolidada de `print + UART`:
  - a UART continua cortando em `ctl:42 ... i0:01 irq:05`
  - depois da ultima mudanca do relogio sintetico, o polling de `STATUS` voltou para `0x00/0x20`
  - portanto houve regressao do `VR=1` no bring-up inicial
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - `fmsx_v9990_reset_registers_keep_memory()` agora inicializa `status_uc_ticks = 0`
    - o objetivo e recolocar o `STATUS` sintetico no inicio de frame/VSCAN, restaurando `0x40/0x60` no polling inicial
  - isso preserva a progressao continua de `EO/VER_IRQ`, mas corrige o ponto de partida do raster sintetico
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604111600-1e936ec`
  - `TXTDBG BUILD: 1697`
  - `BUILD_HASH: 1e936ec-3607a3edba31e39fd6886beb868fde125aea2090`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 20:00 -03

- O ultimo UART continua cortando em `ctl:42 ... i0:01 irq:05`, agora com `STATUS` novamente em `0x40/0x60`.
- Isso fecha o quadro atual:
  - o raster sintetico voltou a fornecer `VR=1`
  - o bring-up ainda nao avanca para `ctl:C2`
  - o problema restante esta na transicao logica entre `INTERRUPT_0` e o consumo da IRQ pelo Z80, nao no renderer
- Mudanca aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - trace do host IRQ com `PC/SP/IFF/IRequest/IRQPending`
    - rearm de budgets de porta na subida de `INTERRUPT_0`
    - `G9P` passa a incluir `pc:XXXX`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112000-1e936ec`
  - `TXTDBG BUILD: 684F`
  - `BUILD_HASH: 1e936ec-06fa1fe9cc5ee0876817e0e0b279f87621b78f53`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 20:14 -03

- A UART desta rodada elimina a hipotese “IRQ do V9990 nao chega ao Z80”.
- Evidencia:
  - `INTERRUPT_0` sobe em `pc:4652`
  - `host+` arma `IRequest=00FF`
  - o guest le `INTERRUPT_FLAG` em `0x66`
  - o guest faz ack em `0x66 = 0x05`
  - o host baixa a linha
  - depois volta a subir em `pc:569D` apenas com `VER_IRQ`
- Leitura objetiva:
  - handshake de IRQ/ack funciona no core local
  - o bloqueio restante ficou no fluxo posterior ao ack, antes de conseguirmos observar `CONTROL=C2` ou `display-on`
- Ajuste aplicado:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - rearm de budgets de trace quando o host sobe novamente com `VER_IRQ`
    - objetivo: capturar o trecho imediatamente apos `host+ pc:569D`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112014-1e936ec`
  - `TXTDBG BUILD: 0785`
  - `BUILD_HASH: 1e936ec-29f82fbc37c11d589a73fd94ed5efa221eca7575`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 20:26 -03

- A UART do build `0785` mostrou que o guest nao morre logo apos `host+ pc:569D`; ele ainda segue programando o `V9990`:
  - reescreve `SCREEN_MODE_0=0x85`
  - executa novos `LMMV`
  - entra novamente em polling `STATUS=0x40/0x60`
  - chega outra vez ao par `int0+/host+` em `pc:4652`
- O print com faixas verdes obrigou uma correcao de leitura:
  - isso nao e prova de `display-on` do `V9990`
  - em `sm0:85`, o backend local cai em `Bx/BP4`
  - o fallback antigo de `first-light` produzia exatamente esse gradiente verde/azulado, mascarando o estado real da VRAM
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - `fmsx_v9990_render_bx_firstlight()` passou a decodificar VRAM real de `Bx`
    - o `render_frame()` agora passa `image_width` para esse caminho
    - limpeza de `debug_phase_return` para manter compilacao/harness consistentes com `MSXBARE_V9990_PHASE_VISUAL_DEBUG=0`
  - `scripts/run-v9990-host-harness.sh`
    - recebeu includes de `third_party/fmsx/Z80` e `third_party/fmsx/fMSX`
  - `tools/host/v9990_phase_harness.c`
    - ganhou stubs de `CPU` e `IRQPending`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `scripts/run-v9990-host-harness.sh 6`
- Build atual:
  - `BUILD_BID: 202604112026-1e936ec`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 20:31 -03

- A tela preta desta rodada nao mudou o diagnostico central: o problema continua antes de conseguirmos observar `display-on` com seguranca.
- Ajuste aplicado:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - novo trace `G9W` para writes reais em `SCREEN_MODE_0/1`, `CONTROL` e `INTERRUPT_0`
    - o trace e independente do budget de `G9P/G9I`
    - cada linha inclui `pc`, `pending_irqs` e `INTERRUPT_0`
- Objetivo:
  - provar no proximo UART se o guest chega a `CONTROL=C2` ou se a tela preta acontece ainda com `CONTROL=0x42`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112031-1e936ec`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 20:39 -03

- O ultimo UART mudou o foco do problema para fora do renderer do `V9990`:
  - a IRQ do `V9990` sobe, o guest le `0x66`, faz ack `0x66 = 0x05`, e a linha baixa/sobe de novo
  - logo depois disso o Circle aborta em `timer.cpp(606)` com `assertion failed: pThis != 0`
  - a pilha registrada aponta para `CTimer::InterruptHandler(void*)`, `RefreshLineTx80` e `IRQStub`
- Leitura objetiva:
  - o bloqueio atual nao e mais “falta de IRQ do `V9990`”
  - o risco estrutural mais coerente com esse padrao e o kernel inteiro alocado na stack do `main()`
- Correcao aplicada:
  - `src/main.cpp`
    - `CComboKernel` saiu da stack local de `main()`
    - o kernel agora usa storage estatico (`g_Kernel`)
    - isso remove a dependencia da stack principal para armazenar `CTimer`, `CInterruptSystem` e o restante do objeto
- Objetivo do proximo reteste:
  - validar se o assert do `timer.cpp(606)` desaparece quando o kernel deixa de dividir a stack com o render do core
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112039-1e936ec`
  - `TXTDBG BUILD: 37C7`
  - `BUILD_HASH: 1e936ec-6ce2796b2ae84656baae8348e20801775a9f29ac`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 20:50 -03

- O reteste com o kernel fora da stack removeu o abort do timer, mas expôs um crash novo e mais objetivo:
  - `PC 0x10CF20` -> `strcmp` em `third_party/circle/lib/util.cpp:96`
  - `LR 0x9BE1C` -> `fmsx_runtime_trace_gfx9000_step_marker()` em `src/backend/msx/modules/fmsx/fmsx_runtime.c`
  - a pilha cai dentro de `fmsx_runtime_step_frame()` e volta para `CComboKernel::Run()`
- Leitura objetiva:
  - o problema desta rodada passou a ser o proprio trace compacto `G9S`
  - o compactador ainda comparava strings com `strcmp()` no hot path
  - isso nao ajuda mais a diagnosticar o `V9990`; passa a ser apenas mais uma fonte de falha
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c`
    - o trace `G9S` passou a usar IDs fixos (`enum`) no lugar de strings literais
    - a compactacao agora usa `switch` e markers fixos
    - todos os call sites foram convertidos para o enum
    - o fallback verbose desse caminho foi removido
- Objetivo do proximo reteste:
  - confirmar que o runtime nao cai mais no proprio trace
  - voltar a observar o bug real do bring-up do `V9990`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112050-1e936ec`
  - `TXTDBG BUILD: 4056`
  - `BUILD_HASH: 1e936ec-afd8b40aa9906c93612f02f2020bb97c1dd5b61f`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 21:00 -03

- O UART do build `4056` mostrou que o crash em `strcmp` saiu de cena, mas o abort do timer permaneceu:
  - `stack[1]` -> `CTimer::InterruptHandler(void*)`
  - `stack[10]` -> `fmsx_v9990_safe_index_color()` em `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `stack[11]` -> `IRQStub`
- Leitura objetiva:
  - o caminho `G9S` do runtime nao e mais o causador
  - o abort de `timer.cpp(606)` continua acontecendo enquanto a CPU esta no renderer do `V9990`
  - o layout do ELF mostrou que:
    - `g_Kernel` termina colado nos buffers de trace do kernel
    - `g_fmsx_v9990_framebuffer_storage` termina exatamente onde comeca `g_fmsx_v9990`
- Instrumentacao ativa aplicada:
  - `src/kernel.h` / `src/kernel.cpp`
    - sonda do slot `ARM_IRQ_TIMER3` usando o layout real de `CInterruptSystem`
    - leitura do `handler` e do `m_pParam[ARM_IRQ_TIMER3]`
    - reparo imediato do `param` quando ele deixa de ser `&m_Timer` e o `handler` ainda esta valido
    - log curto `TIRQ s:XX f:YY h:... p:... e:...` apenas quando ha desvio/reparo
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
    - chamadas da sonda:
      - antes do render ativo
      - apos `rf-begin`
      - em cada linha do caminho `Bx first-light`
      - apos `rf-end`
- Objetivo do proximo reteste:
  - identificar em qual fase do render do `V9990` o binding do timer se degrada
  - e impedir o abort cedo o bastante para capturar o ponto exato
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112100-1e936ec`
  - `TXTDBG BUILD: D5D5`
  - `BUILD_HASH: 1e936ec-6f063b8f29910e43d29de52e3a8326b2a25202ec`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 21:50 -03

- O ultimo UART com `TXTDBG BUILD:7C3B` mostrou dois fatos concretos:
  - o guest finalmente chega a `CONTROL=C2`
  - o probe de timer continuava olhando `ARM_IRQ_TIMER3`, embora o Circle esteja em `USE_PHYSICAL_COUNTER`
- Correcao aplicada:
  - `src/kernel.cpp`
    - novo helper `DebugExpectedTimerIrqLine()`
    - `DebugRepairTimerIrqBinding()` agora inspeciona/repara `ARM_IRQLOCAL0_CNTPNS` quando `USE_PHYSICAL_COUNTER` estiver ativo
    - marcador unico `TIQN` registra qual IRQ line do timer esta sendo usada pela build
- Objetivo do proximo reteste:
  - remover o falso positivo de `TIRQ f:03`
  - deixar o UART expor apenas o desvio remanescente entre `V9990` e `USB`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112150-1e936ec`
  - `TXTDBG BUILD: E721`
  - `BUILD_HASH: 1e936ec-ce93a16ef1ecadeadce5756c18aafe8bc7d1239e`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:10 -03

- A rodada fechou o primeiro bug estrutural do bring-up do `V9990`:
  - o guest ja entra em `CONTROL=C2`
  - `display-on` ja acontece
  - o `command engine` ja executa `op:40`
  - mas o kernel ainda degradava depois disso por causa do bootstrap, nao do handshake do `V9990`
- Causa raiz encontrada:
  - `startup64.S` do Circle estava sendo montado com `KERNEL_MAX_SIZE=0x200000`
  - o restante do projeto estava em `KERNEL_MAX_SIZE=0x400000`
  - por isso o `sp` real subia em `0x002A0000`, e nao em `0x004A0000`
  - essa stack entrava na faixa do framebuffer do `V9990`, causando a corrupcao observada em `USB`/`IRQ`
- Correcao aplicada:
  - `Makefile`
    - novo stamp `build/circle-build.stamp`
    - Circle passa a ser rebuildado quando a configuracao de build muda
    - os submakes do Circle agora recebem tambem `AS='$(CROSS)gcc $(CIRCLE_EXTRAINCLUDE)'`
    - isso injeta `-DKERNEL_MAX_SIZE=0x400000` no path de `.S`, corrigindo `startup64.S`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `aarch64-elf-objdump -d third_party/circle/lib/startup64.o`
  - `aarch64-elf-objdump -d src/kernel8.elf --start-address=0x80078 --stop-address=0x800a8`
- Resultado validado:
  - `startup64.o` agora sobe `sp = 0x004A0000`
  - o `kernel8.elf` final tambem sobe `sp = 0x004A0000`
- Build atual:
  - `BUILD_BID: 202604112210-1e936ec`
  - `TXTDBG BUILD: F76A`
  - `BUILD_HASH: 1e936ec-c8381597b9a8b3d878da711f7d72967539d9bf09`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:12 -03

- Ajuste final da rodada:
  - `src/kernel.cpp`
    - o marcador `IQLV` nao trata mais `live_interrupt != &m_Interrupt` como erro
    - isso era comportamento esperado do `sysinit()` do Circle, nao corrupcao
    - `IQLV` agora so acusa `CInterruptSystem::Get() == 0`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112212-1e936ec`
  - `TXTDBG BUILD: 9BBD`
  - `BUILD_HASH: 1e936ec-5c60f6826d4a6d58ee5d8b04da509441ea271e13`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:18 -03

- O reteste em hardware da build `9BBD` fechou o bug estrutural do bring-up:
  - nao houve mais travamento depois do `display-on`
  - o sistema saiu do preto total
  - ja houve vestigio real de imagem do `V9990`
- O gargalo deixou de ser `stack/IRQ/bootstrap` e passou a ser fidelidade do renderer `Bx`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `BP2/BP4` passaram a usar palette real do `V9990`
  - `BP6` passou a usar a palette indexada real
  - `BD8` deixou o fallback `rgb332` e foi realinhado para o espaco de cor do `V9990`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112218"`
- Build atual:
  - `BUILD_BID: 202604112218-1e936ec`
  - `TXTDBG BUILD: 4F0B`
  - `BUILD_HASH: 1e936ec-2bcb31e8c44aa535fec5e2fc8db8eb28d0d4de98`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:34 -03

- O reteste em hardware da build `4F0B` confirmou o primeiro frame util do `V9990`:
  - ha imagem
  - ha animacao
  - o defeito remanescente ficou restrito a linhas separadas/intercaladas
- Correcao aplicada:
  - novo flag `disable_scanline_postfx` em `BackendVideoPresentation`
  - o backend marca esse flag quando o frame ativo vem do `V9990`
  - o kernel passa a ignorar o `scanline` host-side nesse caminho
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112234"`
- Build atual:
  - `BUILD_BID: 202604112234-1e936ec`
  - `TXTDBG BUILD: 7397`
  - `BUILD_HASH: 1e936ec-f819d9cd8416e235e8f916b36e213712032005e5`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:41 -03

- O reteste da build `7397` descartou `scanline` host-side como causa principal do efeito de linhas separadas
- Correcao aplicada no renderer `Bx`:
  - altura de frame fixada em `212`
  - quando `even/odd page` esta ativo, o source `Y` passa a usar a paridade do campo atual e avancar `2 em 2`
  - alinhamento feito em cima do `drawBxMode()` do `openMSX`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112241"`
- Build atual:
  - `BUILD_BID: 202604112241-1e936ec`
  - `TXTDBG BUILD: 4861`
  - `BUILD_HASH: 1e936ec-4cf97a3b1b7aafb7ab0bd3088fcca50d952991d9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 22:47 -03

- O reteste da build `4861` manteve o mesmo padrao visual
- Correcao aplicada no envelope do frame do `V9990`:
  - a largura ativa passou a usar o modo real (`256/512/1024` em `B1/B3/B7`) em vez do `line_width`
  - isso remove a distorcao por wrap horizontal do frame ativo
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112247"`
- Build atual:
  - `BUILD_BID: 202604112247-1e936ec`
  - `TXTDBG BUILD: FD43`
  - `BUILD_HASH: 1e936ec-088cc8f258d10a01333f0c8f2bdb9abfa45e90b7`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:13 -03

- O reteste em hardware confirmou a regressao horizontal:
  - o build com `line_width=320` manteve a animacao, mas reabriu o espacamento visivel entre linhas
  - o usuario confirmou que `active_width=256` tinha corrigido melhor a largura do frame
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `g_fmsx_v9990_video.width` voltou a usar `fmsx_v9990_get_active_display_width()`
  - o ajuste vertical anterior de `Bx` (`roll mask`/`scroll_y_base` em `0x1FFF`) foi mantido
- Objetivo do proximo reteste:
  - recuperar a geometria horizontal correta de `B1`
  - verificar se o espacamento restante cai para o nivel anterior, sem reintroduzir wrap lateral
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112313"`
- Build atual:
  - `BUILD_BID: 202604112313-1e936ec`
  - `TXTDBG BUILD: 5C83`
  - `BUILD_HASH: 1e936ec-a3c3147ceea905f325e95fc95833411a1d9dc3e3`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:23 -03

- O reteste seguinte confirmou o corte:
  - `active_width=256` voltou a acertar a largura horizontal
  - o defeito restante passou a ser vertical, com o frame parecendo um field cru do `V9990`
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - quando `Bx` esta com `even/odd page` ativo, o backend passa a renderizar ambos os fields no framebuffer
  - saida fisica: `424` linhas
  - saida logica: `212` linhas
  - `g_fmsx_v9990_video.woven_hires = TRUE`
  - o renderer `Bx` agora aceita `weave_even_odd_fields` e, nesse caso, usa `display_y = y` em vez de saltar `2 em 2`
- Objetivo do proximo reteste:
  - eliminar o aspecto de linhas “furadas”/espacadas
  - confirmar que o host passa a apresentar os dois fields do `V9990` de forma tecida
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112323"`
- Build atual:
  - `BUILD_BID: 202604112323-1e936ec`
  - `TXTDBG BUILD: E0D4`
  - `BUILD_HASH: 1e936ec-791f2bc42d84218907b539a8e564d053314aa296`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:33 -03

- O ajuste de `woven_hires` piorou o sintoma visual e foi revertido
- A telemetria UART antiga do bring-up foi praticamente desligada:
  - `G9P`, `G9C`, `G9I`, `G9R/G9K` compactos deixaram de ser rearmados no `display-on`
  - a ativacao do `V9990` agora gera apenas 2 snapshots uteis
- Instrumentacao nova:
  - `G9D fb ...`
    - snapshot do framebuffer do `V9990` depois do render
    - inclui `w/h`, `image_width`, `bytes_per_line`, `mode_kind`, `even/odd`, `field` e estatistica de linhas nao-pretas (`nz/fst/lst/gap`)
  - `G9D vp ...`
    - snapshot da apresentacao no kernel
    - inclui `src`, `logical`, `pitch`, `woven`, `field`, `dst/full/crop` e `scanline_mode`
- Objetivo do proximo reteste:
  - descobrir objetivamente se o espacamento nasce no framebuffer do `V9990` (`G9D fb`) ou no presenter do kernel (`G9D vp`)
  - voltar a partir dai no corte certo, sem ruido de UART
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112333"`
- Build atual:
  - `BUILD_BID: 202604112333-1e936ec`
  - `TXTDBG BUILD: A2E9`
  - `BUILD_HASH: 1e936ec-5095478794b1a9276ad19e69b1f33b446533c0d8`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:37 -03

- O log anterior mostrou que `G9D fb` estava disparando cedo demais:
  - os snapshots saiam com `nz:0`, entao ainda nao mediam a fase em que a imagem ja aparece
- Correcao aplicada:
  - `G9D fb` agora so dispara no primeiro frame com linhas nao-pretas reais
  - o snapshot passou a incluir:
    - `step:min-max` entre linhas nao-pretas consecutivas
    - `samp:` com as primeiras linhas nao-pretas observadas
- Reducao adicional de ruido:
  - `fmsx_v9990_update_host_irq()` nao rearma mais budgets de `G9P/G9I/G9C`
  - escrita em `INTERRUPT_0` nao rearma mais budgets nem emite `G9I int0+`
  - o objetivo e deixar a UART praticamente limitada a `G9A display-on`, `G9D fb ...` e `G9D vp ...`
- Objetivo do proximo reteste:
  - capturar a primeira geometria real do frame do `V9990`
  - verificar se o espacamento ja aparece em `step/samp` do `G9D fb`
  - confirmar se `G9D vp` bate com o mesmo envelope ou se o presenter amplia o gap
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112337"`
- Build atual:
  - `BUILD_BID: 202604112337-1e936ec`
  - `TXTDBG BUILD: 5B7D`
  - `BUILD_HASH: 1e936ec-33f66c34e0e3349b75636e7e7a8ed6e658445bb9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:42 -03

- Leitura do UART da build `5B7D`:
  - o frame util do `V9990` saiu como `G9D fb w:256 h:212 iw:512 bpl:512 mk:3 eo:0 fld:0 nz:205 fst:7 lst:211 gap:7 step:1-1 samp:7,8,9,10`
  - isso mostra que o framebuffer do `V9990` nao tem gap de `4` linhas; as linhas uteis saem contiguas
  - o problema restante saiu do renderer basico e ficou no presenter/kernel ou em uma metrica de framebuffer ainda grosseira
- Correcao de instrumentacao aplicada:
  - `G9D vp ...` agora tem budget de `4` frames por ativacao do `V9990`, em vez de tentativa unica
  - isso força a UART a finalmente registrar a geometria de apresentacao do kernel no caminho ativo do `GFX9000`
- Objetivo do proximo reteste:
  - capturar `G9D vp ...` junto do `G9D fb ...`
  - confirmar se o presenter esta ampliando um frame continuo do `V9990` em linhas espacadas
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
  - `strings artifacts/kernel8-issue251.img | rg "Compile time|202604112342"`
- Build atual:
  - `BUILD_BID: 202604112342-1e936ec`
  - `TXTDBG BUILD: 3901`
  - `BUILD_HASH: 1e936ec-3dfcf9e04d26c89608f31b70c18172f40ae04b33`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:50 -03

- Correcao aplicada no runtime:
  - `src/backend/msx/modules/fmsx/fmsx_runtime.c` agora cacheia `pixels + width/height + sequence + presentation` do mesmo snapshot retornado por `backend_runtime_video_frame()`
  - `backend_runtime_get_video_presentation()` passa a devolver esse snapshot cacheado, em vez de consultar novamente o estado live do backend
  - o cache e invalidado em `start`, `shutdown`, `reboot_basic`, `menu_reset`, `load_state` e no toggle do `GFX9000`
- Motivo:
  - os logs da build `3901` ja mostravam `G9D fb ... step:1-1`, ou seja, o framebuffer do `V9990` sai continuo
  - o defeito de linhas visualmente espacadas passou a apontar para desacoplamento entre o framebuffer ativo e os metadados de apresentacao usados pelo kernel
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112350-1e936ec`
  - `TXTDBG BUILD: 25AD`
  - `BUILD_HASH: 1e936ec-ebdcd84798d0b9363a746d8bf812d302faa99dcf`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-11 23:56 -03

- Instrumentacao refinada para o defeito de espacamento vertical:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c` agora registra tambem linhas "fortes" por densidade (`sig/sstep/ssamp`), nao apenas linhas com qualquer pixel nao-preto
  - `src/kernel.cpp` agora emite `G9D vp ...` mesmo quando `disable_scanline_postfx` vier `0`, incluindo o campo `dis:` para mostrar explicitamente o que o presenter recebeu
- Motivo:
  - a build `25AD` ainda mostrou espacamento grande, e o `G9D fb ... step:1-1` podia estar mascarando o problema por contar linhas com poucos pixels esparsos
  - o kernel ainda nao estava soltando `G9D vp`, entao a trilha do presenter permanecia cega
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604112356-1e936ec`
  - `TXTDBG BUILD: 4589`
  - `BUILD_HASH: 1e936ec-b565fc24e3d4b012a82d5bf8224d17a2936042a8`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:01 -03

- Causa imediata do presenter encontrada:
  - `src/backend/msx/modules/fmsx/module.c` descartava `pitch_pixels` e `disable_scanline_postfx` ao converter `TFmsxVideoPresentation -> BackendVideoPresentation`
  - por isso o kernel via sempre `G9D vp ... pitch:0 dis:0`, mesmo com frame util do `V9990` ativo
- Correcao aplicada:
  - o wrapper do modulo `msx.fmsx` agora copia tambem `pitch_pixels` e `disable_scanline_postfx`
- Impacto esperado:
  - o kernel finalmente blita o `V9990` com stride e politica de postfx corretos
  - se o espacamento visivel vier desse desacoplamento, esta build deve reduzir ou eliminar o sintoma
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120001-1e936ec`
  - `TXTDBG BUILD: 38D1`
  - `BUILD_HASH: 1e936ec-fde6ce1de7b24408b175aedd68260dc1277eec0e`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:10 -03

- Correcao adicional no mesmo eixo:
  - `src/tools/render/viewport_screenshot.cpp` agora aceita `src_pitch_pixels`
  - `src/kernel.cpp` passa `presentation.pitch_pixels` para a captura do pause menu
  - o pause menu tambem deixa de reaplicar `scanline` quando `disable_scanline_postfx` vier ativo no frame do backend
- Motivo:
  - o bug de `F12` ainda tratava o frame como tight (`src_w`) e com `scanline` local, mesmo quando o `V9990` usava stride proprio e pedia bypass de postfx
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120010-1e936ec`
  - `TXTDBG BUILD: 36A0`
  - `BUILD_HASH: 1e936ec-bc07747c49c0a0928d467f0873d1cdd0cb48f096`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:24 -03

- A UART confirmou que o problema visivel atual do Ghost'n Goblins ja nao esta mais no caminho `Bx`; o jogo troca para `P1` antes do frame quebrado:
  - `SCREEN_MODE_0: 0x86 -> 0x05`
  - `CONTROL: 0x02 -> 0x82`
  - os frames ativos que exibem o defeito saem como `iw:256 bpl:0 mk:0`
- Correcao aplicada no renderer `P1/P2`:
  - base de paleta dos sprites corrigida para `(spriteAttr >> 2) & 0x30`, alinhando ao `openMSX`
- Correcao estrutural aplicada:
  - foi adicionado estado de scroll vertical por linha para `AY0/BY0`
  - quando `SCROLL_CONTROL_AY0` ou `SCROLL_CONTROL_BY0` mudam com display ativo, o restante do frame passa a usar o novo scroll e o novo `displayYA/displayYB`
  - isso ataca diretamente os grandes gaps que sobraram em modo pattern
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120023-1e936ec`
  - `TXTDBG BUILD: 9216`
  - `BUILD_HASH: 1e936ec-70afe2eaeffa0190480927a79b1d9d1295275362`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:33 -03

- O defeito restante passou a ser tratado explicitamente no caminho `P1`, que e o modo ativo quando o jogo exibe os gaps visiveis.
- Correcao objetiva:
  - sprites `P1/P2` agora tratam transparencia pelo nibble original antes da base de paleta
  - isso corrige o rosa visivel atras de player/HUD quando o nibble `0` era promovido a cor valida do banco de paleta
- Correcao estrutural:
  - `AY1/BY1` agora ficam latched por frame, em linha com `openMSX`
  - o estado de split vertical por linha (`AY0/BY0`) passou a usar esses bytes altos latched
- Instrumentacao adicionada:
  - `G9Y ay y:<linha> v:<valor>`
  - `G9Y by y:<linha> v:<valor>`
  - o objetivo e fechar se os 3 gaps grandes restantes ainda vem de raster split vertical em `P1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120033-1e936ec`
  - `TXTDBG BUILD: 0643`
  - `BUILD_HASH: 1e936ec-3355b7f51151dcf3b1d8c629edce548f914305df`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:43 -03

- O defeito residual do modo `P1` deixou de ser tratado como problema de presenter ou paleta.
- A UART recente fechou a causa:
  - `G9Y ay y:211 ...`
  - `G9Y by y:211 ...`
  - ou seja, as trocas de `AY0/BY0` estavam sempre sendo aplicadas no fim do frame
- Correcao aplicada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `fmsx_v9990_get_active_display_line()` passou a usar `ScanLine` real do `fMSX`
  - `status_uc_ticks` ficou apenas como fallback fora do trecho ativo de emulacao
- Racional:
  - o comportamento alvo do `openMSX` e cortar o scroll na linha raster corrente
  - o `fMSX` ja expoe essa linha via `ScanLine`
  - portanto o split vertical do `V9990` precisava ser ligado a essa fonte, e nao ao relogio sintetico de `STATUS`
- Efeito esperado:
  - eliminar ou reduzir fortemente os 3 grandes gaps entre blocos do cenario
  - manter as correcoes anteriores de cor/transparencia e do `F12`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120043-1e936ec`
  - `TXTDBG BUILD: 8274`
  - `BUILD_HASH: 1e936ec-c6b5d0ef0775a61d7fd8d76c1b664cc0301ae940`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 00:55 -03

- O ajuste para usar `ScanLine` real em `AY/BY` melhorou o split basico, mas o frame `P1` ainda ficava dividido em grandes blocos.
- Causa refinada:
  - `AX/BX` e `PRIORITY_CONTROL` ainda eram tratados como estado global do frame
  - no `openMSX`, mudancas desses registradores com display ativo so passam a valer para as linhas seguintes
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - arrays por linha adicionados:
    - `scroll_ax_lines`
    - `scroll_bx_lines`
    - `priority_control_lines`
  - writes em `SCROLL_CONTROL_AX0/AX1`, `SCROLL_CONTROL_BX0/BX1` e `PRIORITY_CONTROL` agora cortam o frame a partir da linha raster corrente
  - `render_p1_frame()` e `render_p2_frame()` passaram a consumir esses valores por linha
- Efeito esperado:
  - atacar diretamente os 3 grandes gaps remanescentes no cenario do `Ghost'n Goblins`
  - manter os acertos anteriores de presenter, `F12`, cores e transparencia
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120055-1e936ec`
  - `TXTDBG BUILD: E1FC`
  - `BUILD_HASH: 1e936ec-5ef73e8114eecab13f5671effa1a48c2e79e4c11`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 01:06 -03

- Correcao de rastreio:
  - o calculo manual anterior de `TXTDBG BUILD` estava incompleto
  - o algoritmo correto do kernel tambem faz `hash ^= (hash >> 16)` antes do `& 0xFFFF`
  - por isso a build `202604120055-1e936ec` apareceu em campo como `E1FC`
- Correcao funcional aplicada no `P1`:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `AY1/BY1` deixaram de ser frame-latched
  - writes em `SCROLL_CONTROL_AY1` e `SCROLL_CONTROL_BY1` agora atualizam o restante do frame sem resetar `displayYA/displayYB`
- Efeito esperado:
  - reduzir os gaps grandes remanescentes quando o jogo reprograma o byte alto do scroll vertical durante o display
  - manter as correcoes anteriores de `AY/BY`, `AX/BX`, `PRIORITY_CONTROL`, presenter e sprites
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120106-1e936ec`
  - `TXTDBG BUILD: 96E0`
  - `BUILD_HASH: 1e936ec-681e7bba61c016fb54102d45179459e119a10dc9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 01:47 -03

- A UART do gameplay `P1` mostrou a causa mais consistente para os `4` blocos:
  - `AY/BY` estavam sendo escritos ainda com `CONTROL=02`
  - o backend local convertia esses writes em cortes por linha antes do `02->82`
  - no `openMSX`, essas mudancas so afetam o rasterizador quando o display esta ativo
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - gate por `CONTROL.7` nos handlers de:
    - `SCROLL_CONTROL_AY0/AY1`
    - `SCROLL_CONTROL_AX0/AX1`
    - `SCROLL_CONTROL_BY0/BY1`
    - `SCROLL_CONTROL_BX0/BX1`
    - `PRIORITY_CONTROL`
  - com `display-off`, o register write nao cria mais split raster prematuro
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120147-1e936ec`
  - `TXTDBG BUILD: AA0F`
  - `BUILD_HASH: 1e936ec-f8124f06f848c50ab73109b496e8260d63d68ea7`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 01:56 -03

- O defeito residual dos `4` blocos foi reclassificado:
  - o comportamento em hardware sugere dependencia de blocos/paletas do gameplay
  - isso recoloca `AX/BX/PRIORITY` e a composicao raster do `P1` como foco principal
- Instrumentacao UART adicionada em `src/backend/msx/modules/fmsx/fmsx_v9990.c`:
  - `G9Y ax`
  - `G9Y bx`
  - `G9Y pr`
  - `G9D ls`
- Objetivo:
  - fechar em uma passada de UART se os `3` cortes grandes nascem do mapa por linha do `P1`
  - `G9D ls` resume os pontos de mudanca de:
    - `displayYA/displayYB`
    - `scrollAY/scrollBY`
    - `scrollAX/scrollBX`
    - `priority_control`
- O budget de logs de split foi ampliado para `32` durante a janela ativa
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604120156-1e936ec`
  - `TXTDBG BUILD: A6A1`
  - `BUILD_HASH: 1e936ec-6cb7edd9e04ce9af3eb5e2d66bd99201aa23ba63`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 16:43 -03

- O defeito residual dos `4` blocos entrou em uma trilha mais precisa:
  - a ROM do `Ghost'n Goblins` usa `IN (65h)` para temporizar transferencias do `V9990` durante o gameplay
  - o backend local ainda fazia o `STATUS` avancar por numero de leituras no port `0x65`, o que pode inventar janelas falsas de transferencia
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `STATUS` agora e sincronizado por ciclos reais da CPU via `fmsx_vdp_cpu_cycles_now()` e `HPeriod`
  - o caminho antigo de "andar por leitura" foi removido
- Correcoes de integracao:
  - `reset/power-on/load-state` agora reinicializam `status_last_cpu_cycles` e `status_cpu_cycle_frac`
  - `tools/host/v9990_phase_harness.c` ganhou stubs de `ScanLine`, `HPeriod`, `fmsx_vdp_cpu_cycles_now()` e hooks de debug para validar a nova semantica fora do Raspberry
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `scripts/run-v9990-host-harness.sh 6`
  - `make DEBUG=1`
- Resultado:
  - o harness host-side voltou a renderizar frames ativos do `V9990` com a nova semantica de `STATUS`
  - o build cruzado do kernel fechou com o mesmo comportamento
- Build atual:
  - `BUILD_BID: 202604121642-1e936ec`
  - `TXTDBG BUILD: 37DB`
  - `BUILD_HASH: 1e936ec-661e51b8fbe6fa444080fcd3052e4a7192fabb94`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 16:51 -03

- Comparacao direta com o `openMSX` fechou um desvio estrutural no `P1/P2`
- Causa tecnica:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_image_width()` ainda devolvia a largura visivel (`256/512`) em `P1/P2`
  - no `openMSX`, `IMAGE_WIDTH` e `512` para `P1` e `1024` para `P2`
  - isso afeta diretamente o pitch do command engine, nao so o renderer
- Correcao aplicada:
  - `P1 -> 512`
  - `P2 -> 1024`
  - a largura ativa de apresentacao continua `256/512`; o ajuste e apenas do envelope interno do chip
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `scripts/run-v9990-host-harness.sh 6`
  - `make DEBUG=1`
- Evidencia local:
  - o harness passou a reportar `G9D fb ... iw:512` para `P1`, em vez de `iw:256`
- Build atual:
  - `BUILD_BID: 202604121651-1e936ec`
  - `TXTDBG BUILD: 7FC9`
  - `BUILD_HASH: 1e936ec-107a03d1f833faa1acbb68a254a4ae9a6235453f`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-12 17:13 -03

- A UART do gameplay apertou o defeito residual do `P1`:
  - nos buracos, a telemetria previa mostrou `plane A = 0`, `plane B = 256`, `final = 0`
  - isso elimina `presenter` como causa principal e aponta para composicao/paleta do `P1`
- Instrumentacao nova:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - novo trace `G9D lc`
  - captura, para a primeira linha furada:
    - `pa/pb/bd`
    - amostras dos primeiros `8` nibbles de `A` e `B`
    - flags `bg==backdrop` e `final==backdrop`
- Finalidade:
  - decidir objetivamente se a plane `B` chega correta e se perde na composicao, ou se o defeito nasce antes no fetch
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604121713-1e936ec`
  - `TXTDBG BUILD: 6B8D`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 17:48 -03

- A UART mostrou um desvio mais forte no `P1`: o clock sintetico do `STATUS` estava sendo usado tambem para posicionar writes raster com `display-on`
- Evidencia:
  - bursts de `AY0/BY0` caiam com skew de `1-2` linhas
  - isso e coerente com os grandes blocos/gaps do gameplay
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_get_active_display_line()` ficou hibrido:
    - `STATUS/IRQ`: continuam no clock sintetico do `V9990`
    - writes raster com `CONTROL.7=1`: passam a usar `ScanLine` do core `fMSX`
  - objetivo: aproximar o comportamento de `sync(time)->lastY` do `openMSX` para `AY0/BY0/AX/BX/PRIORITY` sem quebrar o bring-up
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131748-1e936ec`
  - `TXTDBG BUILD: 92D3`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 18:15 -03

- Correcao estrutural aplicada no `V9990`:
  - `display enable` do frame deixou de depender do bit vivo `CONTROL.7`
  - o estado agora e latched no inicio do frame, alinhado ao comportamento do `openMSX`
- Arquivo:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
- Mudancas:
  - novo estado `display_enabled_frame`
  - latch do frame em `fmsx_v9990_reset_scroll_line_state()`
  - substituicao do uso vivo de `CONTROL.7` por esse latch em:
    - `fmsx_v9990_get_active_display_line()`
    - gating de `AY/BY/AX/BX/PRIORITY`
    - gating de `PALETTE_CONTROL` / `BACK_DROP_COLOR`
    - reset de baseline em `SCREEN_MODE_0/1`
    - `render_frame()`
- Motivo:
  - o frame corrente ainda reagia a writes de `CONTROL.7` que, semanticamente, pertencem ao frame seguinte
  - isso era uma divergencia importante em relacao ao `openMSX`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131815-1e936ec`
  - `TXTDBG BUILD: 95D8`
  - `BUILD_HASH: 1e936ec-ed8909d8ab522375dc347556c892b7ee3f775ea9`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 18:46 -03

- O defeito residual segue restrito ao `P1` do gameplay:
  - `3` gaps horizontais persistentes
  - presenter, paleta e pause menu (`F12`) ja nao sao o gargalo principal
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_get_active_display_line()` deixou de usar `ScanLine` do VDP principal para writes raster
  - `AY/BY/AX/BX/PRIORITY` agora usam o mesmo clock sintetico do `V9990` que alimenta `STATUS/IRQ`
- Motivo:
  - a ROM sincroniza o gameplay com `STATUS`
  - enquanto o split raster continuasse em outro relogio (`ScanLine`), o frame ficava dividido entre dois dominios de tempo
  - isso e coerente com as bandas horizontais estaveis observadas em `P1`
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131846-1e936ec`
  - `TXTDBG BUILD: 46F0`
  - `BUILD_HASH: 1e936ec-9da8c68620ad0d4946729ada7de29e06aaf1588c`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-13 19:10 -03

- A mudanca da `46F0` que movia todos os writes raster para o clock sintetico do `V9990` foi revertida por regressao.
- Em hardware, ela:
  - nao moveu os `3` gaps do `P1`
  - trouxe de volta a rolagem vertical
- Ajuste aplicado:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_get_active_display_line()` voltou ao comportamento hibrido
- Interpretacao:
  - `STATUS/IRQ` continuam dependentes do clock sintetico do `V9990`
  - mas os writes raster do gameplay precisam usar a `ScanLine` viva do core `fMSX` para o frame ativo nao perder estabilidade
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604131910-1e936ec`
  - `TXTDBG BUILD: 570C`
  - `BUILD_HASH: 1e936ec-57bd9640ba1951cdb2402cbe5330fe6c8526faf0`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-14 18:11 -03

- O `P1` do `V9990` deixou de usar a composicao simplificada por pixel e passou a seguir a ordem do `openMSX/WebMSX` de forma mais literal.
- Ajustes:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - composicao por linha:
    - backdrop
    - back plane
    - front plane
    - sprites
  - ordem `A/B` agora segue `displayY < prioY`
  - `BY1` passou a valer por linha para:
    - scroll alto da plane `B`
    - enable de plane `A/B`
  - `AY1` passou a valer por linha para o `roll mask`
  - writes de `AY1/BY1` com display ativo agora atualizam apenas as linhas seguintes
- Motivo:
  - o defeito remanescente dos `3` gaps horizontais persistia com presenter e paleta corretos
  - a implementacao local do `P1` ainda divergia demais das referencias que efetivamente funcionam
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604141811-1e936ec`
  - `TXTDBG BUILD: EB60`
  - `BUILD_HASH: 1e936ec-6c60711a2168eccc9d2af295c01e8c6f05f17c7c`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-14 19:03 -03

- O foco do defeito remanescente mudou para a composicao `P1`.
- Correcao:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - a ordem `background/foreground` das planes `A/B` foi alinhada ao `openMSX` para todas as linhas
  - `prioY` passa apenas a zerar `prioX`, sem inverter a ordem das planes
- Motivo:
  - o renderer local invertia a ordem `A/B` quando `displayY >= prioY`
  - isso e divergente do `openMSX` e gera blocos horizontais faltando em gameplay
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604141903-1e936ec`
  - `TXTDBG BUILD: DA80`
  - `BUILD_HASH: 1e936ec-688802491549ca1449b88c63223f080ea3f43fd4`
  - artefato: `artifacts/kernel8-issue251.img`

## Atualizacao 2026-04-14 20:23 -03

- A comparacao direta com `openMSX` e `WebMSX` identificou uma divergencia concreta no `P1` do command engine, nao em presenter ou paleta.
- Correcao aplicada:
  - `src/backend/msx/modules/fmsx/fmsx_v9990.c`
  - `fmsx_v9990_cmd_address_of()` em `P1` agora:
    - mascara a coordenada horizontal para `0..255`
    - usa `X9` so para selecionar plane `B`
    - deixa `X8` fora do byte address
- Racional tecnico:
  - `WebMSX` mascara `SX/DX` com `imageWidthMask=0xFF` em `P1`
  - `openMSX` tambem separa o seletor de plane do byte address
  - o core local ainda deixava `X8` contaminar `((x >> 1) & (pitch - 1))`
  - isso desloca o stream do command engine `P1` em `128` bytes por linha e combina com a suspeita de leitura/escrita de area errada da VRAM
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `make DEBUG=1`
- Build atual:
  - `BUILD_BID: 202604142023-1e936ec`
  - `TXTDBG BUILD: A6F0`
  - `BUILD_HASH: 1e936ec-812c78295223b1b14b0dd96555e6c75580f88f18`
  - artefato: `artifacts/kernel8-issue251.img`
