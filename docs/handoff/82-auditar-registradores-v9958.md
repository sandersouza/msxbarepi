# Handoff Persistente da Branch 82-auditar-registradores-v9958

Ultima atualizacao: 08/04/2026 (15:10 -03)

## Objetivo da branch

Usar a branch umbrella da `#82` para estruturar e iniciar a trilha de auditoria comparativa do `V9958 stock`, comparando nosso core local com `blueMSX` e `V9958-Super` antes de abrir correções novas no VDP.

## Vinculo de gestao

- Issue remota: [#82 - [P1] Validar VDP9958 e modos adicionais do MSX2+](https://github.com/sandersouza/msxbarepi/issues/82)
- Branch vinculada via `gh issue develop`: `82-auditar-registradores-v9958`

## Regra de branching da trilha

- A branch `82-auditar-registradores-v9958` permanece como umbrella da trilha.
- Cada sub-issue que usar a `#82` como umbrella deve abrir uma branch derivada desta branch umbrella, e nao diretamente de `main`.
- Cada sub-issue deve abrir PR para `82-auditar-registradores-v9958`.
- O merge das sub-issues acontece primeiro na branch umbrella; so ao consolidar a trilha a `#82` abre PR proprio para `main`.
- Nem `git commit` local nem `git push` devem acontecer nas sub-branches experimentais da trilha.
- Ambos so voltam a ser permitidos quando o usuario declarar explicitamente que a issue ativa ficou estavel.

## Atualizacao incremental de 08/04/2026 - rollback do experimento de mailbox `HIRES/interlaced`

- A umbrella `#82` chegou a testar um corte no presenter para fazer `HIRES/interlaced` usar a altura logica do backend no calculo do viewport.
- O sintoma geometrico melhorou, mas o custo em FPS piorou o suficiente para invalidar a rodada.
- Acao tomada:
  - `src/kernel.cpp` voltou ao contrato estavel anterior do viewport para `HIRES`
  - o problema funcional de geometria fica explicitamente adiado para uma rodada posterior, sem bloquear a base estavel atual
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604082150-issue82-hires-interlaced-rollback` (OK)
  - `BUILD_ID=5F90`
  - artefato `artifacts/kernel8-issue82.img`
  - artefato `sha1 9f7064adad19ed2ba35ccea198a720994c48f903`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige o item de debug `Refresh [NTSC/PAL]`

- A subtrilha `#238` corrigiu um desvio do proprio menu de diagnostico:
  - `Settings -> Refresh [NTSC/PAL]` mudava apenas o pacing base (`m_RefreshRateHz/g_refresh_hz`)
  - o overlay, por outro lado, mostra o modo efetivo do VDP (`PALVideo`), entao podia seguir em `NTSC`
- Corte local aplicado na filha:
  - `src/fmsx_runtime.c/.h`
    - novo `fmsx_runtime_debug_force_refresh_hz()`
  - `src/kernel.cpp`
    - o toggle de debug passa a escrever `R#9 bit1` via `VDPOut(9, ...)` em `MSX2/MSX2+`
  - efeito esperado: `PALVideo`, `VPeriod` e shadow BIOS ficam coerentes imediatamente, e o overlay passa a acompanhar o forcing de `PAL/NTSC`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051930-issue238-debug-refresh-r9` (OK)
  - `BUILD_ID=1042`
  - artefato `sha1 da4f3d9faf8461ead8c52a554557bfba8d7b6f16`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 06/04/2026 - `#238` reapresenta a linha futura de sprites no `rightBorder`

- A subtrilha `#238` entrou num ponto mais fiel ao `blueMSX`:
  - em `SCREEN 6/7`, `colorSpritesLine(vdp,Y,...)` nao roda so ao cruzar `BRK_6/BRK_7`
  - ela tambem roda no `rightBorder`, para que a linha futura de sprites incorpore writes tardias de VRAM/registradores dentro da mesma scanline
- O core local ainda congelava `FmsxVDPLineColorSpritesLatched` apenas no primeiro cruzamento do breakpoint.
- Corte local aplicado na filha:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_render_screen67_partial()` agora reapresenta `FmsxLatchColorSpritesLine(scanline,...)` no fechamento da linha (`end_offset >= 33`)
- Leitura pratica para a umbrella:
  - o foco vivo da `#238` continua em fase intra-frame de `SCREEN 6/7`
  - `R#9 interlace`, `PAL/NTSC` e `MASK` seguem fora do gargalo dominante
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604060020-issue238-screen67-rightborder-sprites` (OK)
  - `BUILD_ID=829C`
  - artefato `sha1 81343e7d63566873d0333c02016971656e2b4b08`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` faz o menu de debug refletir `R#9` real com o emulador pausado

- A subtrilha `#238` fechou o ultimo gap do proprio item de diagnostico:
  - mesmo apos o forcing de `R#9 bit1`, o menu ainda desenhava `Standard [NTSC/PAL]` a partir de `m_RefreshRateHz`
  - esse campo so era sincronizado no loop normal do backend
- Corte local aplicado na filha:
  - `src/kernel.h/.cpp`
    - novo `SyncRefreshRateStateFromRuntime()`
    - o kernel consulta `fmsx_runtime_get_refresh_hz()` e `fmsx_runtime_get_frame_interval_us_exact()` tambem no caminho pausado, antes do render do menu
- Efeito esperado:
  - o item `Standard` passa a espelhar `R#9 bit1` real em tempo real
  - se o software tiver mudado `PAL/NTSC` antes da pausa, o menu abre ja mostrando esse estado efetivo
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052005-issue238-debug-refresh-live-menu` (OK)
  - `BUILD_ID=EA99`
  - artefato `sha1 3f64b4be1e32f777e603190631d7d763644bdd7d`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige o formato packed do buffer de sprites wide

- A subtrilha `#238` fechou uma divergencia objetiva com o `blueMSX`:
  - em `SCREEN 6`, o buffer de sprites wide carrega dois subpixels de 3 bits por byte
  - em `SCREEN 7`, cada byte vira `palette[col>>1]`
  - o helper wide local ainda tratava esse byte como indice plano unico
- Corte local aplicado na filha:
  - `src/fmsx_host_stubs.c`
    - `horizontalPos` do helper wide alinhado ao `blueMSX` (`+24 - EC`, com `+8` para `16x16`)
  - `src/fmsx_local/Wide.h`
    - novos decoders packed de `SCREEN 6` e `SCREEN 7`
    - `RefreshLine6/7()` e `RefreshLine6/7WideRange()` passam a consumir o buffer packed no formato do `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052115-issue238-wide-sprite-packed-decode` (OK)
  - `BUILD_ID=BE3E`
  - artefato `sha1 36f71b1f83a94c9d584081cd3287183a0bfcb1c7`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` unifica o fechamento de `SCREEN 6/7` no partial renderer de 32 celulas

- A subtrilha `#238` fechou um desvio estrutural remanescente na linha da `BE3E`:
  - o partial renderer de `SCREEN 6/7` ja tinha sido alinhado para `32` celulas ativas por linha
  - mas o fechamento da scanline em HBlank ainda podia cair em `fmsx_vdp_render_screen67_partial(...,64u)` ou no path full-line antigo
- Consequencia pratica:
  - o tempo total do boot podia continuar correto enquanto o frame ainda misturava dois contratos de fechamento de linha
  - isso combina com o sintoma observado em hardware: split horizontal correto, mas fase visual ainda quebrada
- Corte local aplicado na filha:
  - `src/fmsx_local/MSX.c`
    - `SCREEN 6/7` agora sempre fecham a scanline em HBlank por `fmsx_vdp_render_screen67_partial((uint8_t)ScanLine,32u)`
    - o fechamento deixa de depender de `FmsxVDPLineChunkEnd` para escolher entre partial e full-line nesses modos
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052300-issue238-screen67-force-partial-tail` (OK)
  - `BUILD_ID=7C38`
  - artefato `sha1 a6d5a57e9f7bbcca35afca84c23cb1dff320bba8`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a capturar o estado wide no primeiro refresh da linha

- A subtrilha `#238` aprofundou a hipotese `32 vs 64` e encontrou um desvio mais forte que o proprio tail de HBlank:
  - no `blueMSX`, `SCREEN 6/7` inicializam `scroll/chrTab/page` no primeiro refresh da linha (`X == -1`)
  - se o BIOS escreve `R#2/R#25/R#26/R#27` antes desse refresh, a linha corrente ja usa o novo estado
  - no core local, o partial wide ainda consumia o snapshot capturado cedo demais, no inicio bruto da scanline
- Consequencia pratica:
  - a filha podia continuar congelando um estado prematuro da linha mesmo com o partial renderer ja alinhado a `32` celulas
  - isso combina diretamente com o ganho parcial observado sob turbo `7MHz`
- Corte local aplicado na filha:
  - `src/fmsx_local/MSX.c`
    - novo `FmsxVDPLineScreen67StateValid`
    - novo helper `fmsx_vdp_capture_screen67_render_state_now()`
    - `fmsx_vdp_render_screen67_partial()` passa a capturar `ChrTab`, `ChrTabM`, `R#2`, `R#18`, `R#25`, `R#26`, `R#27`, `odd page` e `VScroll` no primeiro render da linha
    - o flag eh resetado no inicio de cada scanline
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052315-issue238-screen67-lazy-line-snapshot` (OK)
  - `BUILD_ID=ECD0`
  - artefato `sha1 f04af999e87184c22ace3047a1580c03b4e7fde9`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` alinha o partial de `SCREEN 6/7` ao `lineOffset -1..33` do `blueMSX`

- A filha `#238` aprofundou a hipotese `32 vs 64` e encontrou um desvio mais forte que a propria granularidade de `32` celulas:
  - o `blueMSX` usa offset discreto `-1..33` no partial de `SCREEN 6/7`
  - o core local ainda fazia esse caminho por proporcao continua `0..32`
- Consequencia pratica:
  - o renderer wide podia continuar um step cedo mesmo ja operando em `32` celulas
  - isso preserva o tempo total correto, mas deixa o efeito visual do logo ainda fora de fase
- Corte local aplicado na filha:
  - `src/fmsx_local/MSX.c`
    - novo `FmsxVDPLineOffset67`
    - novo helper `fmsx_vdp_screen67_line_offset_now()`
    - `fmsx_vdp_render_screen67_partial()` passa a operar em `-1..33`
    - o fechamento em HBlank de `SCREEN 6/7` passa a usar `33`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052345-issue238-screen67-lineoffset-33` (OK)
  - `BUILD_ID=E2CF`
  - artefato `sha1 5c3d21a70f0d79d4cf0d8b018f18de27e3667be6`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige a unidade do `BRK_6/BRK_7` no `SCREEN 6/7` wide

- A subtrilha `#238` entrou num ponto mais assertivo do que `R#9 interlace`:
  - no `blueMSX`, `BRK_6/BRK_7 = 24` usa a mesma unidade de coluna `X/X2` do refresh de `SCREEN 6/7`
  - o core local estava convertendo esse valor para `48`, como se o partial renderer estivesse em pixels fisicos unitarios
  - como `RefreshLine6WideRange()/RefreshLine7WideRange()` tambem operam em colunas de `8` pixels, isso atrasava a captura da linha de sprites em meia linha
- Consequencia pratica para a umbrella:
  - o defeito remanescente do logo deixa de apontar para `odd/even/interlace`
  - ele passa a combinar melhor com composicao em duas faixas, uma ja capturada e outra ainda scrollando
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - `sprite_break` em `fmsx_vdp_render_screen67_partial()` passa de `48` para `24`
    - comentario explicita a equivalencia direta com `BRK_6/BRK_7` do `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052245-issue238-screen67-brk24` (OK)
  - `BUILD_ID=628F`
  - artefato `sha1 54540838842898b8ec1489601fdd8bb3f0e9152b`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` alinha `SCREEN 6/7` ao pipeline de linha de sprites do `blueMSX`

- A subtrilha `#238` fechou um erro da propria hipotese anterior:
  - no `SCREEN 6` wide do `blueMSX`, cada passo de `X` desenha `16` pixels fisicos
  - portanto `BRK_6 = 24` equivale mesmo a `384 px`, ou `48` no nosso range parcial de colunas de `8 px`
  - o `48` original estava correto; o gargalo visual remanescente ficou no pipeline de linha de sprites
- Consequencia pratica para a umbrella:
  - o defeito do logo deixa de apontar para a unidade do breakpoint e passa a apontar para o consumo do buffer de sprites por scanline
  - a `#238` continua sem voltar para `R#9 interlace` ou `MASK`
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - `sprite_break` volta para `48`
    - o inicio de cada scanline promove o buffer preparado anteriormente para buffer de render da linha corrente
  - `src/fmsx_local/Wide.h`
    - `RefreshLine6/7()` e `RefreshLine6/7WideRange()` passam a consumir apenas esse buffer de render
    - a linha corrente prepara somente o buffer da linha seguinte, alinhando o fluxo ao `blueMSX`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604052330-issue238-screen67-sprite-pipeline` (OK)
  - `BUILD_ID=AA66`
  - artefato `sha1 ee274513ccd500f7da5abd9945d610ed2665eadf`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige a normalizacao do bloco relocado do logo

## Atualizacao incremental de 05/04/2026 - `#238` alinha `status0 bit5` de sprites coloridos ao `blueMSX`

- A subtrilha `#238` continua focada em tempo total ate o BASIC e na cadencia residual do boot logo; `MASK` segue explicitamente fora do foco.
- O corte offline mais recente fechou um desvio objetivo no `status0 bit5` de `SCREEN 6`:
  - o path live local ainda tratava sprites coloridos como se o byte de atributo viesse de `AT[3]`
  - o `blueMSX` usa a tabela de cor por linha (`colorSpritesLine()`), e eh dela que saem `early clock`, `color 0` transparente e a exclusao de `CC/OR` do collision path
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
    - novo helper `fmsx_vdp_status0_color_line_state()`
    - `status0 bit5` em modos coloridos passa a ler a tabela de cor por linha (`SprTab[-0x0200 + sprite*16 + row]`)
    - `early clock` passa a sair do byte de cor real da linha
    - `color 0` transparente deixa de colidir quando `SolidColor0 == 0`
    - sprites `CC/OR` deixam de participar do collision path
- Objetivo:
  - aproximar o worker `7A66/7A68` ao comportamento observado no `blueMSX`
  - continuar atacando o hot path real do logo antes de voltar a qualquer ajuste visual
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604051835-issue238-color-status0-line` (OK)
  - `BUILD_ID=841A`
  - artefato `sha1 5e3752f02a0f5eafe2ad7dae5a46e0600b13ade5`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 06/04/2026 - `#238` passa a tratar tearing do presenter como hipotese dominante

- A trilha filha `#238` parou de abrir cortes rasos no renderer depois que a analise frame-a-frame do video do logo mostrou um padrao forte de tearing:
  - em varios pares de frames consecutivos, a diferenca visual fica concentrada acima de uma linha horizontal e praticamente zera abaixo dela
  - isso desloca a hipotese dominante de `R#9`/`PAL`/`NTSC` para a apresentacao no host
- Auditoria estrutural na filha:
  - `src/kernel.cpp:BlitFmsxFrame()` ainda escrevia diretamente no framebuffer visivel do Circle
  - `third_party/circle/lib/screen.cpp` inicializa `CScreenDevice` sem double buffering
  - o proprio Circle fornece `WaitForVerticalSync()+SetArea()` como caminho sincronizado de apresentacao
- Corte local aplicado na filha:
  - `src/kernel.h/.cpp`
    - novo staging buffer de viewport do emulador
    - `BlitFmsxFrame()` agora escala para esse staging buffer e apresenta a area por `WaitForVerticalSync()+SetArea()` no path `RGB565`
    - a escrita direta antiga fica apenas como fallback
- Build local validada na filha:
  - `BUILD_BID=202604060130-issue238-vsync-presenter-staging`
  - `BUILD_ID=46FB`
  - artefato `sha1 9e1d3c4058f9797f7e03579181852de82fa7e381`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` reapresenta `status0 bit5` no segundo read do worker do logo

- A subtrilha `#238` fechou um desvio mais forte do que `interlace` para o tempo total do boot logo:
  - o worker `KANJIBASIC:7A48` testa o **segundo** `IN A,(99h)` (`7A68`) para liberar cada par de writes indiretas em `R26/R27`
  - no core local, `status0 bit5` ainda nascia live so uma vez por linha e era apagado no primeiro read de `status0`
  - isso deixava o segundo read da mesma scanline cego para a colisao, alongando artificialmente cada passo horizontal do logo
- Consequencia pratica para a umbrella:
  - o foco vivo da `#238` continua em tempo total ate o BASIC
  - `R#9 interlace`, `odd/even` e `MASK` seguem fora do primeiro plano
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status0_live()` passa a sintetizar `bit5` a partir do latch cru **ou** da colisao live da scanline corrente
    - `S#3..S#6` continuam sendo latched so uma vez por linha
    - o clear-on-read de `status0` continua alinhado ao `blueMSX` com `&= 0x1F`
- Build local validada:
  - `BUILD_BID=202604052145-issue238-status0-reread-live`
  - `BUILD_ID=9805`
  - artefato `sha1 8c1440ceeddcd90345447bbdf120cba5d72de886`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a medir `7A66` vs `7A68`

- A subtrilha `#238` fechou o proximo checkpoint decisivo do worker do logo:
  - a correcao principal ja passou a reapresentar `status0 bit5`
  - o que falta medir agora e se o **segundo** read (`7A68`) realmente esta vendo esse `bit5`, porque e ele quem libera as writes indiretas em `R26/R27`
- Consequencia pratica para a umbrella:
  - nao vale abrir outro patch cego de timing/renderer antes dessa medicao
  - a proxima rodada de hardware da `#238` tende a ser bem mais conclusiva
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - novos contadores separados para `status0` em `7A66` e `7A68`
    - contadores adicionais para quantas dessas leituras viram `bit5=1`
  - `src/fmsx_host_stubs.c`
    - `BL238S/BL238P/BL238E` passam a emitir `S66:<reads>/<bit5>` e `S68:<reads>/<bit5>`
- Build local validada:
  - `BUILD_BID=202604052220-issue238-status0-reread-trace`
  - `BUILD_ID=9227`
  - artefato `sha1 40c7ae78ac45a79b350c133f3b57d9731de5eb68`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a tratar o hot path do `KANJIBASIC` em escala de scanline

- A subtrilha `#238` consolidou que o ponto mais impactante ainda e o tempo total ate o BASIC:
  - as writes de `R26/R27` seguem corretas, mas continuam aparecendo em saltos de ~`85` frames
  - o hot path dominante continua em `S#2/0x99` pelos sites `7A8B`, `7A91` e `7BC6`
- Consequencia pratica para a umbrella:
  - o foco vivo da `#238` deixa `odd/even` e `MASK` explicitamente fora do primeiro plano
  - o proximo corte util da trilha continua sendo custo temporal de polling BIOS, nao novo patch visual
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status_wait_cycles()` substitui o nudge fixo anterior por wait em escala de scanline apenas nos loops quentes do `KANJIBASIC`
    - `7A8B/7A91` recebem `4 * HPeriod`
    - `7BC6` recebe `8 * HPeriod`
- Build local validada:
  - `BUILD_BID=202604051640-issue238-kanjibasic-scanline-wait`
  - `BUILD_ID=7258`
  - artefato `sha1 9af4622d4c5bdfe53bdbd059ef78ed6a45bc7963`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a cobrar tambem o corpo `OUT/IN/OUT` dos helpers quentes do `KANJIBASIC`

- A leitura offline mais recente da subtrilha `#238` fechou um gap remanescente com o `blueMSX`:
  - os waits focados anteriores ja cobriam o `IN (99h)` dos helpers quentes
  - mas o corpo inteiro desses loops ainda inclui multiplos `OUT (99h)` de selecao/restauracao de `S#2`
  - esse corpo continuava subpagando tempo no core local
- Consequencia pratica para a umbrella:
  - o foco vivo da `#238` continua em tempo total ate o BASIC
  - `odd/even`, `R#9 interlace` e `MASK` seguem explicitamente fora do primeiro plano
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_port99_hotloop_write_extra_cycles()` passa a cobrar tambem os writes dos loops quentes do `KANJIBASIC`
    - `7A85/7A89/7A98/7A9C`: `+1 * HPeriod`
    - `7BBE/7BC2/7BCA/7BCE`: `+2 * HPeriod`
    - o `case 0x99` soma esse custo extra focado aos waits base de write
- Build local validada:
  - `BUILD_BID=202604051755-issue238-kanjibasic-port99-body-wait`
  - `BUILD_ID=F8B6`
  - artefato `sha1 b16cb51f58ae36cd078423ddc67f903309fd7ad7`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` remove a projecao precoce de `S#2 bit6`

- A subtrilha `#238` encontrou um desvio semantico mais forte que os nudges de custo:
  - no `blueMSX`, `S#2 bit6` so cai em `onVStart()`
  - o core local ainda projetava esse low para a cauda do frame anterior
- Consequencia pratica para a umbrella:
  - o helper quente `7A83/7A8B/7A91` podia perder a transicao `high -> low` pretendida e cair num frame extra inteiro
  - a prioridade viva continua em tempo total ate o BASIC, nao em `odd/even` nem em `MASK`
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_previsible_lines()` passa a `0`
    - `fmsx_vdp_previsible_window_active()` deixa de projetar `bit6 low` no frame anterior
    - `fmsx_vdp_projected_next_frame_parity_active()` tambem deixa de projetar a nova paridade nesse trecho sintetico
- Build local validada:
  - `BUILD_BID=202604051720-issue238-status2-vstart-no-preproject`
  - `BUILD_ID=7EF7`
  - artefato `sha1 af413fbdae102a1c55d458548533dcbda710bd09`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` corrige a normalizacao do bloco relocado do logo

- A subtrilha `#238` fechou um bug da propria telemetria:
  - os hot PCs do logo apareciam como `7A8B/7A91/7BB0/7BC6`
  - mas o `MSX2PEXT` reloca o worker do logo de `0x2A00` para `0x7A00`
- Consequencia pratica para a umbrella:
  - a leitura anterior de `HOTH/C0..C2` estava contaminada por alias mal normalizado
  - o proximo corte funcional de cadencia passa a partir de `2Axx/2Bxx`, nao mais de `7Axx/7Bxx`
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_normalize_s2_caller_pc()` passa a tratar `0x7A00..0x83FF` como alias `+0x5000`
  - `src/fmsx_host_stubs.c`
    - `BL238I/BL238R/BL238S/BL238E` imprimem os PCs do logo ja normalizados
- Build local validada:
  - `BUILD_BID=202604051845-issue238-logo-pc-alias`
  - `BUILD_ID=F38C`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` passa a medir helpers BIOS de `S#2`

- A UART da subtrilha `#238` consolidou que o boot logo segue com:
  - `R9=00`
  - `R25=03`
  - `R26/R27` dirigindo a animacao horizontal por `0x99 @ 7BB2` e depois `0x9B @ 7A71/7A73`
  - `S7/TR` fora do caminho quente
- Consequencia pratica para a umbrella:
  - o foco vivo da `#238` deixou de ser `R#9 interlace`
  - o hot path passou a ser `S#2/0x99` nos helpers BIOS do prelude
- Corte local aplicado na subtrilha:
  - `src/fmsx_local/MSX.c`
    - adiciona contadores de leitura de `S#2` por helper BIOS (`10D6`, `363B`, `2BE4`, outros)
  - `src/fmsx_host_stubs.c`
    - `BL238S` e `BL238E` passam a publicar esses deltas como `H10L/H10H/H36H/H36L/H2BE/HOTH`
- Build local validada:
  - `BUILD_BID=202604051148-cc918b4`
  - `BUILD_ID=D41F`
  - artefato `sha1 3b2cd3a4002f9a1e0e5da572db409954df7794a3`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `#238` alinha o boost do logo as tabelas exatas do `blueMSX`

- A leitura offline do prelude da `#238` confirmou que o helper dominante nas janelas quentes do logo continua sendo `0x2BE4`, isto e, polling de `S#2 bit0` em torno dos comandos do VDP.
- Consequencia pratica para a umbrella:
  - o proximo corte util deixou de ser um novo ajuste visual
  - o foco passou a ser o custo real de comando visto por `CE`
- Correcao local aplicada na subtrilha:
  - `src/fmsx_local/V9938.c`
  - o boost stateful do boot logo continua restrito a janela BIOS da `#238`
  - mas `GetVdpTimingValue()` passa a usar as tabelas exatas do `blueMSX` enquanto esse boost estiver ativo, em vez do `/8` aproximado sobre as tabelas herdadas do `fMSX`
- Build local validada:
  - `BUILD_BID=202604051205-cc918b4`
  - `BUILD_ID=7BE9`
  - artefato `sha1 c8c722f904f40f4dcbb04e93d5998f1ae8060dd4`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 05/04/2026 - `0x99` passa a sincronizar tambem no primeiro byte na subtrilha `#238`

- A investigacao offline da `#238` cruzou o helper BIOS `MSX2PEXT:2BEF` com o `blueMSX` e encontrou um gap pequeno, mas relevante:
  - no `blueMSX`, toda write em `0x99` passa por `sync(vdp, now)`, inclusive o primeiro byte do latch
  - no core local, a primeira metade da write (`VKey==1`) ainda pulava `fmsx_vdp_sync_before_cpu_write()`
- Consequencia pratica para a umbrella:
  - em loops BIOS apertados de `S#2` como `2BEF`, o core local podia "perder" um `OUT (99h)` de progresso do command engine por iteracao
  - isso reforca a linha atual da `#238`: o foco vivo continua em cadencia/polling de comando, nao em `MASK`
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - o case `0x99` agora sincroniza o VDP tambem quando `VKey==1`, antes de apenas latchear `ALatch`
  - o sync duplicado do segundo byte foi removido, ficando um sync por write, mais proximo do `blueMSX`
- Build local validada:
  - `BUILD_BID=202604051018-cc918b4`
  - artefato `sha1 7b8bbce640bd7601cac331c803f3035577d7a8c0`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 04/04/2026 - corte local na `#238` sem `push`

- A trilha ativa continua na branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958`, mas passa a operar com guardrail explicito de `no push until stable`.
- O proximo corte local da `#238` voltou ao renderer `SCREEN 6/7` depois do `BL238` descartar backlog do host:
  - `src/fmsx_local/Wide.h` agora faz o `left-edge mask` wide seguir o backdrop ja scrolado, em vez de usar `BGColor` plano
  - isso mira diretamente o `MASK` ainda visivel no boot logo `MSX2+`
- Build local validada, ainda sem `push`:
  - `BUILD_BID=202604041235-issue238-wide-mask-backdrop`
  - `BUILD_ID=5870`
  - `BUILD_HASH=5a7a82c-5dd8114883e78fd67d9a3864d8b60355d8348e7d`

## Atualizacao incremental de 05/04/2026 - `IE0/VBlank` antecipado na subtrilha `#238`

- A branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958` fechou pela UART leve da `85F2` que:
  - a janela visivel do logo continua em `R9=00` e `R25=03`
  - `R26/R27` seguem dirigindo a animacao horizontal
- Consequencia pratica na umbrella:
  - o foco da `#238` saiu de `R#9 interlace` como suspeito imediato
  - o proximo corte mirou o ritmo BIOS-side, nao o renderer
- Correcao local aplicada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_vblank_start()` passou a usar `192/212`
  - o gate que sobe `VDPStatus[0].7`, `VDPStatus[2].6` e `INT_IE0` agora dispara no inicio da borda inferior, alinhado ao `blueMSX`
- Build local validada:
  - `BUILD_BID=202604042230-issue238-vblank-drawarea-start`
  - `BUILD_ID=FCD5`
  - `BUILD_HASH=cc918b4-024ff5eb8ba7a2500f9df7b210693737afdfb42c`
- Guardrail mantido:
  - sem `git commit`
  - sem `git push`

## Atualizacao incremental de 04/04/2026 - `7E29` descartada na subtrilha `#238`

- A branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958` validou por UART que o experimento local `SCREEN 6 streaming scroll` piorou a cadencia do boot logo:
  - `BL238` seguiu coerente em semantica (`F/VF=1:1`, `LG=000`, `R9=00`, `R25=03`, `R26/R27` alternando)
  - mas o `DT` medio subiu para `30.06ms` em `96` frames, com pico de `43ms`
- Consequencia pratica na umbrella:
  - o corte `7E29` foi descartado localmente
  - a trilha `#238` volta ao renderer anterior e preserva apenas a telemetria `BL238/BL238I/BL238R`
  - o foco continua em cadencia/consumo das writes tardias de `R26/R27`, nao em `R#9 interlace`
- Build local apos o descarte:
  - `BUILD_BID=202604042215-issue238-drop-screen6-streaming-regression`
  - `BUILD_ID=C7EC`
  - `BUILD_HASH=cc918b4-b19e9b444adbbc29baf22793a2664e6029718d5c`

## Atualizacao incremental de 05/04/2026 - `odd page` wide alinhado ao `blueMSX` na subtrilha `#238`

- A branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958` voltou a ler a UART na base `C7EC` e confirmou de novo que:
  - `R9` permanece `00`
  - `R25` permanece `03`
  - o logo visivel continua sendo dirigido por writes tardias de `R26/R27`
- Consequencia pratica na umbrella:
  - a trilha da `#238` parou de perseguir `R#9 interlace` como gargalo principal desta janela
  - o proximo corte entrou no addressing wide de `SCREEN 6/7`
- Correcao local aplicada:
  - `src/fmsx_local/Wide.h` agora aplica `FmsxVDPLineOddPageLatched` de forma incondicional em `V9958BitmapLinePtrWideLatched()`
  - isso alinha o path wide ao `blueMSX`, que usa `vdpIsOddPage()` no `charTable` de `SCREEN 6/7` mesmo sem `FlipEvenOdd`
- Build local validada:
  - `BUILD_BID=202604042345-issue238-screen67-oddpage-address`
  - `BUILD_ID=2039`
  - `BUILD_HASH=cc918b4-272f08af53d9bb87cb3b543c6db1d0c381896340`

## Atualizacao incremental de 05/04/2026 - `RefreshLine6()` full-line aproximado ao `blueMSX` na subtrilha `#238`

- A branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958` releu a UART da `2039` e confirmou que o contrato visivel do logo nao mudou.
- Consequencia pratica na umbrella:
  - o proximo corte saiu do addressing puro e foi para o consumo do `SCREEN 6` full-line
- Correcao local aplicada:
  - `src/fmsx_local/Wide.h` agora troca apenas `RefreshLine6()` full-line por um loop de `charTable`/`scroll`/`jump` mais proximo do `blueMSX`
  - `RefreshLine6WideRange()` permaneceu no path anterior para limitar o risco
- Build local validada:
  - `BUILD_BID=202604050015-issue238-screen6-bluemsx-fullscan`
  - `BUILD_ID=AEAA`
  - `BUILD_HASH=cc918b4-af940a058b8c0deea90e743290071157a0be0e25`

## Atualizacao incremental de 05/04/2026 - `AEAA` descartada; custo do path parcial vira foco da `#238`

- A subtrilha `238-fechar-boot-logo-msx2plus-precisao-core-v9958` validou por video + UART que a build `AEAA`:
  - manteve o split horizontal correto
  - nao melhorou a cadencia
  - nao trouxe leitura pratica de odd/even
  - introduziu distorcao visual no logo
- A UART continuou com o mesmo contrato:
  - `R9=00`
  - `R25=03`
  - primeira write de `R26/R27` por `0x99 @ 7BB2`
  - loop regular posterior por `0x9B @ 7A71/7A73`
- Consequencia pratica na umbrella:
  - o rewrite de `RefreshLine6()` full-line foi descartado localmente como regressao
  - a trilha preserva o alinhamento de `odd page` da `2039`
  - o proximo corte passa a atacar o hot path real da renderizacao parcial em `SCREEN 6`
- Correcao local aplicada na subtrilha:
  - `RefreshLine6()` voltou ao caminho estavel
  - `RefreshLine6WideRange()` deixou de reconstruir `BgRaw[1024]` inteiro a cada chunk e passou a amostrar apenas a faixa pedida
- Build local validada:
  - `BUILD_BID=202604042152-cc918b4`
  - `BUILD_ID=C724`
  - `BUILD_HASH=cc918b4-d1d3b856f205e2924cdeb77c5af38b54b78ff141`

## Atualizacao incremental de 05/04/2026 - UART leve na subtrilha `#238`

- A subtrilha `238-fechar-boot-logo-msx2plus-precisao-core-v9958` confirmou na `C724`:
  - split horizontal correto
  - distorcao removida
  - sem ganho visual de cadencia
- O contrato funcional do logo continuou identico na UART:
  - `R9=00`
  - `R25=03`
  - `R26/R27` por `0x99 @ 7BB2` e depois `0x9B @ 7A71/7A73`
- Consequencia pratica na umbrella:
  - o proximo gargalo de leitura passou a ser o proprio custo do trace UART
  - a trilha para de emitir `BL238` a cada frame nesta rodada e passa a usar um modo leve para medir o pacing real do logo
- Correcao local aplicada:
  - `src/fmsx_host_stubs.c`
  - `BL238I` permanece no primeiro frame
  - `BL238R` passa a sair apenas quando muda a origem de `R26/R27`
  - `BL238S` entra como resumo no frame `96`
- Build local validada:
  - `BUILD_BID=202604042201-cc918b4`
  - `BUILD_ID=85F2`
  - `BUILD_HASH=cc918b4-e75d968baca8623b4a7f67a7ac93009e34c25606`

## Atualizacao incremental de 02/04/2026 - transicao `#235 -> #236`

- A sub-issue `#235` foi concluida e mergeada na umbrella `82-auditar-registradores-v9958` via PR `#239`.
- O projeto foi sincronizado com:
  - issue `#235` em `Done`
  - PR `#239` em `Done`
- A proxima subtrilha ativa passa a ser a `#236`, em branch derivada propria:
  - `236-consolidar-backlog-implementavel-gaps-v9958-stock`
- Consequencia pratica na umbrella:
  - a camada de validacao dinamica ja nao e mais o gargalo imediato
  - o proximo trabalho passa a ser consolidar, a partir da matriz canonica e dos achados da `#235`, o backlog implementavel das correcoes que de fato devem nascer como novas issues
  - as duas primeiras derivadas de correcao ja visiveis na trilha passam a ser:
    - `#238` para o bloco critico do boot logo
    - `#240` para a blindagem de registradores invalidos/inertes

## Atualizacao incremental de 03/04/2026 - transicao `#236 -> #238`

- A sub-issue `#236` foi concluida e mergeada na umbrella `82-auditar-registradores-v9958` via PR `#241`.
- O projeto foi sincronizado com:
  - issue `#236` em `Done`
  - PR `#241` em `Done`
- A proxima subtrilha ativa passa a ser a `#238`, em branch derivada propria:
  - `238-fechar-boot-logo-msx2plus-precisao-core-v9958`
- Consequencia pratica na umbrella:
  - a camada de consolidacao do backlog ja nao e mais o gargalo imediato
  - o proximo trabalho passa a ser implementacao real no core do bloco critico do boot logo
  - a `#240` permanece em `Backlog` como trilha separada para `REG-003`

## Atualizacao incremental de 03/04/2026 - primeiro patch tecnico da `#238`

- Na branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958`, entrou o primeiro corte funcional de core para `BL-001` com a base de `BL-002`.
- Diff de referencia usado:
  - `blueMSX/VDP.c:readStatus(), write(), sync()`
  - `blueMSX/V9938.c:vdpCmdExecute()`
- Implementacao local aplicada:
  - `src/fmsx_local/MSX.c` agora expõe `fmsx_vdp_cpu_cycles_now()` como contador monotônico de CPU para o bloco de comandos
  - `src/fmsx_local/V9938.c` deixou de drenar apenas um slice por sync e passou a acumular budget temporal do engine em `LoopVDP()`, status read e CPU mutation
  - `R#46` permanece apenas armando `CE/state`
- Restricao assumida nesta rodada:
  - os `timing[]` do backend local nao foram reescalados para os numeros absolutos do `blueMSX`
  - o patch preserva a vazao media local por scanline e redistribui esse budget no tempo, como corte intermediario seguro para o boot logo
- Build local validada:
  - `BUILD_BID=202604031130-issue238-vdp-time-sync`
  - `BUILD_ID=050B`
  - `BUILD_HASH=26d676a-2b85c3c8dce987f4281c92bfb4249fd6d256de35`
- Proximo gate da umbrella:
  - validar em hardware o boot logo `MSX2+` com a build `050B`
  - se a cadencia melhorar e restarem tarjas/pagina errada, o proximo ataque segue para `REN-004` + recorte central de `REN-007`

## Atualizacao incremental de 03/04/2026 - regressao descartada na `#238`

- O corte `E3EC`, que tentou alinhar de forma literal o pacing do engine ao `blueMSX`, foi descartado.
- Evidencia em hardware:
  - a build `E3EC` passou a travar ainda na tela azul anterior ao boot logo do `MSX2+`
  - isso tirou o corte da categoria "pacing insuficiente" e o moveu para regressao real de boot
- Consequencia pratica na umbrella:
  - a branch `238-fechar-boot-logo-msx2plus-precisao-core-v9958` volta ao baseline temporal seguro da `050B`
  - o proximo ataque tecnico da trilha deixa de ser a escala absoluta do engine e volta a ser o renderer `SCREEN 6/7` page-aware, com odd/even/interlace
- Build local do rollback:
  - `BUILD_BID=202604031435-issue238-drop-abs-timing-regression`
  - `BUILD_ID=CBAC`
  - `BUILD_HASH=6967d68-ef1f9b429bfa4c1a6b3fd11d0ad9a32adf1247dd`

## Atualizacao incremental de 03/04/2026 - primeiro corte de renderer high-res na `#238`

- A validacao em hardware da `CBAC` fechou o gate de seguranca da umbrella:
  - o boot logo voltou a iniciar
  - a branch saiu do estado de regressao de boot
  - restaram cadencia lenta + sintomas visuais de `MASK`/pagina errada
- A trilha ativa da `#238` entrou no primeiro corte de `REN-004`/`REN-007`:
  - `src/fmsx_local/Wide.h` passa a ordenar `SCREEN 6/7` conforme a pagina logica esperada pelo `blueMSX` quando `chrTabBase bit15` e `hScroll512` entram juntos
  - o `left-edge mask` de `SCREEN 6/7` deixa de usar a cor do primeiro pixel scrolado e volta a usar a cor de fundo do modo
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen67-page-order`
  - `BUILD_ID=70ED`
  - `BUILD_HASH=a621e95-c5907ef75b5ef5ef9c92110459d20bcaa8ebac0f`
- Consequencia pratica na umbrella:
  - a branch `238-fechar-boot-logo-msx2plus-precisao-core-v9958` deixa de insistir em pacing absoluto do engine nesta rodada
  - o proximo veredito da trilha passa a ser visual: se a build `70ED` atacar pagina errada/tarja sem perder o boot seguro da `CBAC`

## Atualizacao incremental de 03/04/2026 - host hi-res reabilitado na `#238`

- O teste de hardware da `70ED` mostrou que o primeiro corte de renderer ainda nao bastava:
  - `MASK` visivel
  - pagina errada/tarja sem melhora perceptivel
  - cadencia igual
  - sem leitura visual de interlace
- A trilha ativa da `#238` recuou um nivel e atacou o host baremetal:
  - `src/fmsx_host_stubs.c` herdava do `libretro` um `hires_mode` default `OFF`
  - sem um frontend `fmsx_hires` no baremetal, isso mantinha o caminho hi-res/interlaced desligado mesmo quando o VDP ativava `InterlaceON`
- Mudanca aplicada na branch derivada:
  - o default do host passa a `HIRES_INTERLACED`
- Build local validada:
  - `BUILD_BID=202604031710-issue238-hires-default-interlaced`
  - `BUILD_ID=C2C2`
  - `BUILD_HASH=d195e4d-5ab3d9413e1422b2cc97922bdec5c5c3dfba61ff`
- Consequencia pratica na umbrella:
  - o proximo round da `#238` deixa de testar apenas `MASK`/pagina
  - passa primeiro a validar se o caminho odd/even/interlaced do host realmente reaparece em hardware

## Atualizacao incremental de 04/04/2026 - observabilidade UART real na `#238`

- A trilha da `#238` confirmou que a build `3271` ja tinha a janela correta do boot logo para o trace `BL238`, mas continuava muda no arquivo UART.
- Causa raiz consolidada na umbrella:
  - o backend baremetal local mantinha `log_cb = 0`
  - portanto, os traces emitidos por `log_cb(...)` no lado C do `fMSX` nunca entravam no mesmo serial usado pelo kernel do projeto
- Correcao aplicada na branch derivada `238-fechar-boot-logo-msx2plus-precisao-core-v9958`:
  - `src/kernel.cpp` exporta `msxbare_uart_write(const char *text)` sobre o `CSerialDevice` real do boot
  - `src/fmsx_host_stubs.c` passa a emitir `BL238` diretamente por esse canal, mantendo a janela de `96` frames do logo (`SM:06` + `R25=03`)
- Build local validada:
  - `BUILD_BID=202604041055-issue238-bootlogo-uart-direct`
  - `BUILD_ID=1AD5`
  - `BUILD_HASH=f2485a7-123900306375666fd0ff2f4ff911edd8b910b64a`
- Consequencia pratica na umbrella:
  - o proximo round da `#238` deixa de depender de video cego para odd/even/interlace
  - a resposta tecnica passa a vir do UART real do kernel, usando a mesma captura ja adotada em `scripts/logserial.sh`

## Atualizacao incremental de 04/04/2026 - telemetria temporal do logo na `#238`

- A primeira coleta real da build `1AD5` na branch `#238` confirmou que o host nao esta acumulando backlog crescente de apresentacao:
  - `F` e `VF` andaram `1:1`
  - o `LG` antigo ficou constante
  - `R26/R27` alternaram de forma coerente com a correcao horizontal ja fechada na `C079`
- Leitura consolidada na umbrella:
  - o split horizontal esta realmente fechado
  - a lentidao residual do boot logo nao parece vir de "host dropando frame"
  - para decidir o proximo corte ainda faltava ver tempo real e o estado `CE/TR` na mesma janela do logo
- Correcao aplicada na branch derivada:
  - `BL238` passa a medir `VF` relativo ao proprio logo
  - entram no UART os campos `DT`, `ET`, `CE` e `TR`
- Build local validada:
  - `BUILD_BID=202604041125-issue238-bootlogo-uart-timing`
  - `BUILD_ID=1796`
  - `BUILD_HASH=dbcacb7-496d863c4acff33d8ed0b11df5f97387b6235619`
- Consequencia pratica na umbrella:
  - o proximo round da `#238` deve dizer objetivamente se o gargalo restante ainda e `BL-002/BL-003` (command engine/status) ou se a trilha precisa voltar para o renderer/produtor do quadro por outro caminho

## Atualizacao incremental de 04/04/2026 - veredito da telemetria temporal na `#238`

- A captura UART da build `1796` fechou o recorte mais importante desta rodada:
  - `F` e `VF` ficaram `1:1`
  - `LG` permaneceu `0`
  - `DT` ficou quase sempre em `14..18ms`
  - `CE` so apareceu em `3/96` frames
  - `TR` permaneceu `0`
- Consequencia pratica na umbrella:
  - o split horizontal corrigido na `C079` permanece sustentado
  - o host/presenter deixa de ser suspeito principal da lentidao residual
  - o proximo corte da `#238` volta ao produtor do quadro do logo em `SM:06`, nao ao presenter nem ao `command engine` como gargalo dominante continuo

## Atualizacao incremental de 31/03/2026 - decisao da subtrilha `#235`

- Na branch derivada `235-validar-corpus-dinamico-v9958-stock`, `IRQ-001` e `IRQ-003` passaram a ser tratadas como estaveis operacionalmente para a trilha.
- Essa decisao nao troca o veredito global da matriz para `match`; as duas linhas permanecem `partial`.
- Consequencia pratica na umbrella:
  - `IRQ-001` e `IRQ-003` deixam de bloquear a passada dinamica da `#235`
  - o foco remanescente da issue se desloca para `CMD-004` e `REN-002..REN-008`

## Reestruturacao da trilha em 29/03/2026

- A `#82` deixou de ser apenas uma issue de “validar modos” e passou a atuar como epic/umbrella da auditoria stock do `V9958`.
- Foram criadas e vinculadas como sub-issues:
  - `#231` matriz comparativa canônica
  - `#232` auditoria de I/O, registradores e status
  - `#233` gap analysis do command engine e timing
  - `#234` gap analysis do renderer/addressing
  - `#235` validação dinâmica mínima com telemetria existente
  - `#236` consolidação do backlog implementável
- Status no projeto `MSX BarePI`:
  - `#82` -> `In progress`
  - `#231` -> `In progress`
  - `#232..#236` -> `Backlog`

## Bootstrap tecnico concluido nesta rodada

- Criado o documento canônico da trilha em:
  - [`docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md)
- Criado o diretório canônico de evidências da `#82` em:
  - [`docs/reverse-engineering/issues/issue-82/README.md`](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/issues/issue-82/README.md)
- A matriz já nasceu com:
  - taxonomia `match/partial/missing/conflict/disputed/n/a`
  - regra de precedência entre `blueMSX`, `V9958-Super` e nosso core
  - corpus dinâmico base
  - primeiras linhas seed para:
    - portas `0x98..0x9B`
    - `R#15` / `S#n`
    - `S#1` / `S#2`
    - `CE` / `TR`
    - `R25/R26/R27`
    - renderer/addressing

## Aprofundamento da `#231` em 30/03/2026

- A matriz canônica saiu do estado puramente seed e ganhou a primeira passada estática granular para:
  - `I/O`: `IO-001..IO-005`
  - `Registradores/status`: `REG-001..REG-004`, `STS-001..STS-006`
  - `IRQ/latches`: `IRQ-001..IRQ-003`
  - `Command engine`: `CMD-001..CMD-004`
- O bloco `renderer/addressing` tambem foi quebrado em linhas fechadas por comportamento:
  - `REN-002`: `SCREEN 4`
  - `REN-003`: `SCREEN 5`
  - `REN-004`: `SCREEN 6/7`
  - `REN-005`: `SCREEN 8`
  - `REN-006`: `SCREEN 10/12`
  - `REN-007`: odd/even page derivado de `S#2 bit1`
  - `REN-008`: `R27`/left-edge mask/alinhamento de sprite
- Achados estáticos já fechados:
  - `REG-001`: a largura do seletor fecha em janela de `6 bits` no `V9958 stock`; linha marcada como `match`
  - `REG-003`: `R#24` e `R#28..R#31` aparecem como buracos inválidos/inertes em `blueMSX` + lineage HDL, enquanto o core local ainda persiste o valor cru; linha marcada como `conflict`
  - `IO-004`: `blueMSX` e `V9958-Super` resetam o sequenciador de latch ao ler `0x99`, enquanto o core local preserva `VKey`; linha marcada como `conflict`
  - `CMD-002`: leitura de `S#7` limpa `TR` nas três bases; linha marcada como `match`
  - `CMD-003`: escrita em `R#44/CLR` limpa `TR` nas três bases; linha marcada como `match`
  - `STS-005`: `S#2 bit4` (`BD/BO`) ficou fechado como ownership do `SRCH`; linha marcada como `match`
- `IO-004` nao deve virar correcao imediata:
  - o historico da branch `fix-acurating-timing-vdp9958` ja registra regressao ao forcar reset de `VKey` na leitura de `0x99`
  - a linha fica mantida como `conflict` real da matriz, mas bloqueada para ajuste cego sem repro dinamico novo
- O bloco de registradores tambem foi refinado nesta rodada:
  - `REG-004` deixou de tratar a cauda como “command engine aberto” e passou a registrar que o decode funcional fecha em `R#32..R#46` nas tres bases
  - o detalhe realmente pendente ficou reduzido ao guardrail do auto-incremento indireto de `R#17` quando a caminhada passa de `R#47`
- Nova disputa materializada para a fase dinamica:
  - `STS-006`: `blueMSX` e o core local expõem `S#8/S#9` como valor latched ao fim do `SRCH`
  - `V9958-Super` e `ocm-pld-dev` expõem `SXTMP` live do command core em `S#8/S#9`
  - a linha sobe para `disputed` e passa a exigir evidencia dinamica antes de qualquer ajuste em `MSX.c` / `V9938.c`
- Achados que saíram de `disputed` para `partial` após o desempate com `ocm-pld-dev`:
  - `IRQ-001`: o lineage HDL reforça `S#1 bit0` como latch sticky mesmo sem `IE1`, enquanto o blueMSX segue divergente
  - `IRQ-003`: o lineage HDL mostra `R#23` entrando no contador vertical lógico antes do compare com `R#19`
  - `CMD-004`: o lineage HDL mantém `REG_R25_CMD` e `commandEnable` fora de `SCR5..SCR12`, alinhando o core local a `blueMSX`
- O desempate estrutural de renderer agora ficou suficiente para trocar o foco da descoberta:
  - sair de "quebrar `REN-002` por modo"
  - entrar em validacao dinamica de `REN-002..REN-008`
- O espelho local da `#235` ja foi preparado com o mapeamento minimo de observabilidade por linha:
  - `TM2` para `R25/R26/R27`, `EP`, `I1/F1`
  - `TM3` para `CE/TR`
  - `TM4/TM4B` para `IE1`, alvo/delta de linha e `EO`
  - `TM6B` + UART `VDP EVT` para `R19/R23/R25/R26/R27`, `S1/S2`, `CS/CE`
- Corte de observabilidade consolidado nesta rodada:
  - a telemetria atual cobre bem `S#1`, `S#2`, `R#19`, `R#23`, `R#25`, `R#26`, `R#27`, `CS/CE`, writes em `0x98/0x99` e delta de `0x9B`
  - a telemetria atual **nao** expõe `S#8`, `S#9`, `R#17` nem o alvo efetivo de cada write indireto via `0x9B`
- Destravamento aplicado nesta rodada:
  - o overlay ganhou `TM6D` em `src/kernel.cpp`
  - `TM6D` expõe `R17`, ultimo caminho de `0x9B` (`before > target > after`), ultimo valor escrito em `0x9B` e o conteudo bruto atual de `S#8/S#9`
- Consequencia pratica:
  - `IRQ-001`, `IRQ-003`, `CMD-004` e `REN-002..REN-008` continuam plenamente validaveis com a instrumentacao existente
  - `STS-006` e o residual de `REG-004` deixam de ficar bloqueados por invisibilidade bruta e passam a depender de repro/captura orientada em hardware
- Risco explicitado para a proxima rodada:
  - `REN-008` ainda pode ficar parcialmente bloqueada sem captura visual, porque a telemetria atual nao expõe um contador dedicado do deslocamento final de sprite na saida HDMI
- Bloqueios explicitados para a proxima rodada:
  - `STS-006`: a visibilidade de `S#8/S#9` foi aberta, mas ainda falta um repro dirigido de `SRCH` para desempatar live vs latched
  - residual de `REG-004`: a visibilidade de `R#17/0x9B` foi aberta, mas ainda falta captura orientada em hardware para ver a caminhada indireta no boot logo ou em repro dedicado
- Refinamento estático desta rodada para `REG-004`:
  - `third_party/V9958-Super/docs/revisions.md` registra correções em `2021` para auto-incremento/invalid write acima de `R#47`
  - porém, tanto o snapshot atual de `third_party/V9958-Super/src/vdp/vdp_register.sv` quanto o lineage `ocm-pld-dev` ainda deixam visível o caminho `VDPR17REGNUM <= VDPR17REGNUM + 1` sem guardrail superior explícito no trecho auditado
  - consequência: o texto do `revisions.md` não basta para fechar a linha; `REG-004` permanece `partial` até captura dinâmica
- Destravamento operacional desta rodada:
  - foi criado o pacote `docs/reverse-engineering/issues/issue-82/dynamic-capture-recipes.md`
  - ele fixa repros dirigidos para:
    - `STS-006` com `SRCH` sintético em BASIC usando `TM3 + TM6D`
    - residual de `REG-004` com caminhada direta de `R17/0x9B` em BASIC usando `TM6D`
    - `Knightmare Gold`, boot logo `MSX2+` e `Gradius2E/Nemesis2E` com ordem explícita de captura por linha da matriz
- Destravamento adicional desta rodada:
  - os dois repros sintéticos também passaram a existir como discos MSX bootáveis em `sdcard/disks/DEBUG/`
  - imagens geradas:
    - `V9958_STS006_SRCH.DSK`
    - `V9958_REG004_R17.DSK`
  - cada disco contém `AUTOEXEC.BAS`, o programa alvo (`STS006.BAS` ou `REG004.BAS`) e `README.TXT`
  - os fontes host ficaram em `sdcard/disks/DEBUG/src/`
  - o gerador reprodutível ficou em `scripts/build-v9958-debug-disks.py`
  - validação local fechada:
    - ambos os `.DSK` foram gerados com `720KB`
    - o root das imagens foi verificado localmente para garantir `AUTOEXEC.BAS` + programa alvo
  - observação importante:
    - `make sdcard` / `scripts/prepare-sd.sh` ignoram `sdcard/disks/` por design; esses discos de debug não entram automaticamente no payload de boot
- Ajuste corretivo após o primeiro teste em hardware do disco `STS-006`:
  - o vídeo de campo mostrou o `V9958_STS006_SRCH.DSK` entrando em laço de reboot/reentrada via `AUTOEXEC`
  - o quadro capturado confirma o sintoma de reentrada, mas não permite cravar visualmente se o reset exato ocorre ainda em `SCREEN 5` ou na escrita de `R46=60`
  - para destravar a próxima medição, `STS006.BAS` foi endurecido em duas frentes:
    - agora exige soltar a tecla antes de cada avanço, evitando reentrada automática quando há reset e a tecla continua pressionada
    - o repro foi quebrado em duas fases manuais: fase 1 prepara `SCREEN 5` e os parâmetros; fase 2 escreve `R46=60` para disparar o `SRCH`
  - o gerador `scripts/build-v9958-debug-disks.py` foi sincronizado e o disco `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK` foi regenerado localmente
  - consequência prática: o próximo teste em hardware já consegue responder se o reset vem antes ou exatamente na fase que escreve `R46=60`
- Ajuste corretivo após o segundo teste em hardware do disco `STS-006`:
  - a execução manual por `RUN "AUTOEXEC.BAS"` deixou de reiniciar, mas a fase 1 ainda parecia “presa” porque o repro entrava em `SCREEN 5` escuro antes da fase 2
  - leitura operacional do vídeo:
    - o fluxo chega na tela de instrução da fase 1
    - após a tecla, o programa entra em `SCREEN 5`
    - o quadro preto sozinho não prova travamento; ele é compatível com espera intencional pela fase 2
  - para eliminar a ambiguidade no próximo teste:
    - o `AUTOEXEC.BAS` do `STS006` passou a ser passivo e agora apenas instrui a rodar `RUN "STS006.BAS"` manualmente
    - a fase 1 passou a usar uma tela visível em `SCREEN 5` com faixas claras no topo, separando espera intencional de “tela preta = travou”
  - o gerador `scripts/build-v9958-debug-disks.py` foi sincronizado novamente e o disco `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK` foi regenerado localmente
- Ajuste corretivo após o terceiro teste em hardware do disco `STS-006`:
  - o vídeo de campo mostrou travamento em tela ciano com a faixa branca já desenhada
  - isso fecha um corte importante:
    - o fluxo já passou por `SCREEN 5`
    - o fluxo já passou pelos `LINE` visuais da etapa inicial
    - logo, o congelamento acontece depois disso e antes de confirmar o `SRCH`
  - para localizar o ponto exato, `STS006.BAS` foi quebrado de novo:
    - `1A`: `SCREEN 5` + barras
    - `1B`: `PSET` do pixel alvo
    - `1C`: writes em `R32..R35`
    - `1D`: writes em `R44..R45`
    - `1E`: leitura de `S2/S8/S9`
    - `2`: write em `R46=60`
  - consequência prática: o próximo teste não mede mais “fase 1 travou”; ele identifica exatamente qual subetapa congela
- Ajuste corretivo após o quarto teste em hardware do disco `STS-006`:
  - a tela continuou “presa” no ciano com a faixa branca, o que mantém o freeze aparente antes de `1B`
  - porém a revisão do próprio repro mostrou que a instrumentação anterior ainda dependia de prompts/teclas invisíveis dentro do `SCREEN 5`
  - correção aplicada:
    - `STS006.BAS` agora pede tecla apenas uma vez, ainda em `SCREEN 0`
    - depois disso, as subetapas avançam sozinhas por tempo curto e codificam progresso apenas por cor
  - nova leitura operacional da sequência:
    - `ciano`: `SCREEN 5` + barras
    - `magenta`: `PSET`
    - `verde`: `R32..R35`
    - `amarelo`: `R44..R45`
    - `branco`: leitura de `S2/S8/S9`
    - `vermelho`: write em `R46=60`
  - consequência prática: se o próximo teste ainda congelar no ciano, o bloqueio real fica reduzido ao intervalo entre a entrada em `SCREEN 5` e o `PSET`, sem ruído de input invisível
- Ajuste corretivo após o quinto teste em hardware do disco `STS-006`:
  - o vídeo novo finalmente avançou além do ciano e chegou ao amarelo
  - isso fecha mais um corte:
    - `SCREEN 5` + barras: OK
    - `PSET`: OK
    - writes em `R32..R35`: OK
    - writes em `R44..R45`: OK
  - o freeze aparente agora cai para o bloco seguinte, que antes estava agrupado como leitura única de `S2/S8/S9`
  - para localizar o ponto exato, `STS006.BAS` foi refinado mais uma vez:
    - `branco`: leitura de `S2`
    - `cinza`: leitura de `S8`
    - `azul`: leitura de `S9`
    - `vermelho`: write em `R46=60`
  - consequência prática: o próximo teste deve responder exatamente qual leitura de status trava antes de qualquer conclusão sobre o `SRCH` em si
- Ajuste corretivo após o sexto teste em hardware do disco `STS-006`:
  - o campo confirmou explicitamente: continua travando no amarelo
  - inferência operacional imediata:
    - o freeze não está em `SCREEN 5`, `PSET`, `R32..R35` nem `R44..R45`
    - o freeze aparece antes mesmo de completar o primeiro bloco de leitura de status
  - para sair da ambiguidade remanescente, `STS006.BAS` foi temporariamente estreitado:
    - mantém apenas a preparação até o amarelo
    - depois isola o caminho de `S2` em três estados:
      - `branco`: antes de selecionar `S2`
      - `cinza`: depois de selecionar `S2` (`R15=2`)
      - `azul`: depois de ler `S2` (`INP(&H99)`)
  - consequência prática: o próximo teste responde se o travamento acontece ao selecionar `S2` ou ao ler `S2`, sem carregar `S8`, `S9` nem `R46`
- Ajuste corretivo após o sétimo teste em hardware do disco `STS-006`:
  - o campo confirmou travamento no branco
  - inferência operacional imediata:
    - o freeze aparece antes mesmo de completar o primeiro write de seleção de `S2`
    - portanto, o suspeito direto cai no caminho de `OUT &H99,2` e não mais em `INP(&H99)` nem no segundo write de `R15`
  - para fechar o ponto exato, `STS006.BAS` foi refinado mais uma vez:
    - `branco`: antes de qualquer write de seleção
    - `cinza`: depois de `OUT &H99,2`
    - `azul`: depois de `OUT &H99,143`
    - `vermelho`: depois de `INP(&H99)` para `S2`
  - consequência prática: o próximo teste responde se o travamento acontece no primeiro write `0x99`, no segundo write `0x99` ou só na leitura final
- Ajuste corretivo após o oitavo teste em hardware do disco `STS-006`:
  - o campo confirmou novamente travamento no branco
  - inferência operacional consolidada:
    - o freeze acontece antes de completar o primeiro write `OUT &H99,2`
    - isso desloca a suspeita para o tratamento local da porta `0x99` em si, antes de qualquer seleção completa de `R15`
  - a trilha experimental do `STS006` já está no menor recorte útil do lado BASIC:
    - preparação visual até o amarelo
    - `branco`: imediatamente antes do primeiro `OUT &H99,2`
    - `cinza`: imediatamente depois do primeiro `OUT &H99,2`
    - `azul`: imediatamente depois do segundo `OUT &H99,143`
    - `vermelho`: imediatamente depois do `INP(&H99)`
  - consequência prática:
    - não vale mais aprofundar o BASIC antes de inspecionar o caminho local de `OutZ80(0x99, ...)`
    - o próximo passo técnico sai do repro em disco e entra na auditoria do latch `VKey/ALatch` e do commit de registrador/status no core local
- Corte técnico seguinte na trilha `IO-004`:
  - a auditoria local do core confirmou que o primeiro byte em `OutZ80(0x99, ...)` só faz `ALatch=Value` e `VKey=0`
  - como o repro continuou travando antes mesmo de completar esse primeiro write, o sintoma ficou compatível com latch da `0x99` já dessintonizado antes do teste explícito
  - isso colou o achado dinâmico na divergência estática `IO-004`, onde `blueMSX` e `V9958-Super` resetam o sequenciador de latch ao ler `0x99`, enquanto o core local preservava `VKey`
- Ajuste experimental aplicado no core local:
  - em `src/fmsx_local/MSX.c`, leitura de status pela porta `0x99` voltou a realinhar `VKey` para `primeiro byte` em perfis não-`MSX1`
  - o caminho `MSX1/TMS9918` foi preservado no comportamento upstream atual para reduzir risco de regressão fora da trilha `V9958`
  - build local validada:
    - `BUILD_BID=202603311745-issue82-vkey-status-read-reset`
    - `BUILD_ID=E82F`
    - `BUILD_HASH=93807BAF`
  - consequência prática:
    - o próximo teste em hardware deve repetir o disco `V9958_STS006_SRCH.DSK` já estreitado para `S2`
    - se o travamento sair do branco, a evidência dinâmica passa a sustentar `IO-004` como candidato real de correção, não só conflito estático
- Resultado seguinte em hardware com a build `E82F`:
  - o disco estreitado de `STS-006`, reduzido ao caminho `OUT/IN 0x99` para `S2`, passou até o fim e voltou com `OK` no BASIC
  - isso fecha o corte operacional do narrowing:
    - o travamento anterior antes de `OUT &H99,2` deixou de acontecer
    - a evidência dinâmica agora sustenta `IO-004` como causa real plausível do freeze, e não apenas conflito estático de matriz
  - consequência prática:
    - o `V9958_STS006_SRCH.DSK` foi restaurado para o repro completo de `SRCH`
    - o próximo teste em hardware volta ao alvo original da linha `STS-006`: decidir `S#8/S#9` live vs latched com `TM3 + TM6D`
- Resultado seguinte em hardware ainda na build `E82F`:
  - o repro completo de `SRCH` parou no vermelho
  - porém, a inspeção do quadro do próprio vídeo mostrou:
    - `TM3`: `CE=0`
    - `TM6B`: `S2=00`
    - `TM6D`: `S8/S9=00/00`
  - inferência operacional imediata:
    - o recorte já não aponta mais para `SRCH` preso no command engine
    - o suspeito agora é o primeiro polling de `S2/S8/S9` logo após o disparo em `R46=&H60`
  - consequência prática:
    - `STS006.BAS` voltou a ser estreitado temporariamente
    - a nova variante isola, em cores, o primeiro select/read de `S2`, `S8` e `S9` logo após o `SRCH`
- Resultado seguinte em hardware ainda na build `E82F`:
  - o narrowing pós-`R46` parou no amarelo
  - nesse recorte, o amarelo já significa:
    - seleção de `S9` concluída
    - trava remanescente localizada antes de concluir `S9=INP(&H99)`
  - como o caminho local de leitura em `InZ80(0x99)` não tem side effect especial para `S#9`, foi adicionada uma telemetria mínima extra para o próximo round:
    - `TM6B` agora exibe `SR:r/v`, o último status register lido pela porta `0x99` e o valor efetivamente retornado
  - build local validada para esse corte:
    - `BUILD_BID=202603311840-issue82-status9-read-observe`
    - `BUILD_ID=F6A2`
    - `BUILD_HASH=7F2D898F`
  - consequência prática:
    - o próximo teste em hardware mantém o mesmo disco amarelo do `STS006`
    - o dado decisivo passa a ser: o overlay chega a mostrar `SR:9/xx` antes do freeze ou não
- Resultado seguinte em hardware já na build `F6A2`:
  - o novo vídeo voltou a parar no amarelo, mas o quadro útil mostrou `TM6B SR:2/0E`
  - inferência operacional imediata:
    - esse amarelo não é o amarelo tardio de `S9`
    - o disco ainda estava congelando no pre-read residual anterior a `R46=&H60`
  - consequência prática:
    - o repro em disco foi corrigido para remover completamente o bloco de pre-read antes do `SRCH`
    - as cores tardias (`vermelho` em diante) passam a pertencer apenas ao primeiro polling pós-`R46`
    - o próximo teste em hardware mantém a build `F6A2`, mas exige copiar o `.DSK` novo de novo
- Resultado seguinte em hardware ainda na build `F6A2`:
  - o disco já sem pre-read residual passou até o fim e imprimiu:
    - `S2=31`
    - `S8=31`
    - `S9=31`
    - `X=287`
  - inferência operacional imediata:
    - esse retorno não combina com o comportamento esperado do `SearchEngine()` local para `S#9`, que deveria expor `0xFE/0xFF` no bit alto final
    - o resultado passa a cheirar mais a leitura contaminada por interleaving na porta `0x99` do que a valor real do `SRCH`
  - consequência prática:
    - `STS006.BAS` foi estreitado mais uma vez, agora trocando o polling BASIC puro por uma rotina Z80 mínima com `DI/EI`
    - o helper lê `S2`, `S8` e `S9` atomicamente via `0x99` e devolve os bytes por `PEEK`, eliminando a janela onde BIOS/IRQ/BASIC podem dessintonizar o latch
    - o próximo teste em hardware mantém a build `F6A2`, mas precisa do `.DSK` regenerado com a rotina atômica
- Resultado seguinte em hardware ainda na build `F6A2`:
  - a variante com `USR` repetido passou a travar no rosa
  - o quadro útil do overlay mostrou:
    - `TM6B SR:8/00`
    - `TM6D S:00/FE`
  - inferência operacional imediata:
    - o helper atômico já conseguiu ler `S8=00`
    - o backing store local de `S9` já estava em `FE`
    - o ruído remanescente agora parece vir do próprio uso repetido de `USR`, não mais do valor bruto exposto pelo core
  - consequência prática:
    - `STS006.BAS` foi simplificado para um único helper Z80 com `DI/EI` que lê `S2/S8/S9` em um único burst
    - o próximo teste em hardware mantém a build `F6A2`, mas requer o `.DSK` regenerado com esse helper único
- Resultado seguinte em hardware ainda na build `F6A2`:
  - o vídeo seguinte parou numa cor descrita em campo como `branco gelo`
  - a inspeção do quadro útil mostra que esse tom pertence mesmo ao `branco` da variante de helper único, isto é, ao estado logo após o burst atômico `S2/S8/S9`
  - consequência prática:
    - o repro em disco deixou de usar o helper único
    - `STS006.BAS` passou a separar o bloco tardio em três passos:
      - helper 1: burst atômico `S2/S8`
      - helper 2: `select S9`
      - helper 3: `read S9`
    - as cores tardias também foram trocadas para remover o par ambíguo `cinza/branco`; a sequência útil agora fica `vermelho -> azul -> rosa -> amarelo`
    - o próximo teste em hardware mantém a build `F6A2` e depende só do `.DSK` regenerado
- Resultado seguinte em hardware ainda na build `F6A2`:
  - o vídeo seguinte parou no rosa já com a variante `split S2 select/read`
  - o quadro útil do overlay mostrou:
    - `TM3 CE=0`
    - `TM6B SR:8/00`
    - `TM6D S:00/00`
  - inferência operacional imediata:
    - o `SRCH` já terminou antes do freeze
    - o fluxo já saiu de `S2` e entrou no helper de `S8`
    - como o disco ainda não segurava atraso entre as cores tardias, os `pulos rápidos` vistos em campo são coerentes com a ausência desse `delay`, não necessariamente com múltiplos freezes distintos
    - o resíduo agora caiu no helper de `S8`, antes de o programa conseguir pintar a cor seguinte
  - consequência prática:
    - `STS006.BAS` foi estreitado outra vez
    - o helper de `S8` foi quebrado em dois passos separados:
      - helper 3: `select S8`
      - helper 4: `read S8`
    - o restante do bloco tardio continua separado em:
      - helper 1: `select S2`
      - helper 2: `read S2`
      - helper 5: `select S9`
      - helper 6: `read S9`
    - cada marcador tardio agora também segura um `delay` curto antes do passo seguinte, para o próximo vídeo não perder a transição humana
    - a sequência útil passa a ser:
      - `vermelho`: depois de `R46=&H60`
      - `azul`: depois de `select S2`
      - `rosa`: depois de `read S2`
      - `amarelo`: depois de `select S8`
      - `laranja`: depois de `read S8`
      - `cinza`: depois de `select S9`
      - `branco`: depois de `read S9`
- Pivô de estratégia ainda em 31/03/2026:
  - o narrowing por BASIC já cumpriu o papel de sair do "freeze genérico" para um corte concreto no caminho da `0x99`, mas o ganho marginal dessa linha caiu demais
  - a partir daqui, a trilha deixa de depender principalmente de novas cores e passa a depender de telemetria direta do core local sobre micro-passos da `0x99`
  - a instrumentação nova adicionada ao overlay:
    - `TM6B 99:o/k/r/a/v`
    - `o` = último micro-op da `0x99` (`R`, `L`, `W`, `S`, `A`)
    - `k` = `VKey` após esse micro-op
    - `r` = `R#15` após esse micro-op
    - `a` = `ALatch` atual
    - `v` = byte associado ao micro-op
  - build local validada para esse corte:
    - `BUILD_BID=202603311955-issue82-port99-microop`
    - `BUILD_ID=B6CB`
    - `BUILD_HASH=98891cf-2e6fdccb7cdbd1682e1fe031365f23616ee02734`
  - consequência prática:
    - o próximo vídeo útil já não precisa de mais um estreitamento cego do BASIC
    - ele precisa mostrar `TM6B` com `99:` durante o freeze para dizer exatamente se o último passo foi `select S2`, `read S2`, `select S8`, `read S8`, `select S9` ou `read S9`
- Ajuste seguinte ainda em 31/03/2026, agora guiado pelo diff direto com `blueMSX`:
  - a comparação entre [VDP.c](/Users/sandersouza/Developer/msxbarepi/third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c) (`readStatus()` / `writeLatch()`) e [MSX.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c) (`InZ80()` / `OutZ80()`) confirmou que o reset do latch já estava alinhado semanticamente, mas o caminho local de `0x99` ainda não tinha nenhum equivalente ao `sync(vdp, now)` que o `blueMSX` faz antes de expor `S#n`
  - como nossa arquitetura line-based não oferece um equivalente direto ao `sync()` inteiro do `blueMSX`, foi aplicado o análogo seguro mais próximo:
    - novo helper em [V9938.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/V9938.c): `fmsx_vdp_sync_before_status_read()`
    - ele descarrega um slice pendente do command engine exatamente como `VDPRead()` / `VDPWrite()` já faz
    - [MSX.c](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c) agora chama esse helper no `case 0x99` para perfis `V9938/V9958`, antes de calcular `S#1/S#2` e ler `VDPStatus[R#15]`
  - build local validada para esse corte:
    - `BUILD_BID=202603312030-issue82-port99-readstatus-sync`
    - `BUILD_ID=4A34`
    - `BUILD_HASH=98891cf-b06a5dd80e0ee69695cd3b5b978948791d7052b7`
  - consequência prática:
    - o próximo teste em hardware deve repetir a build nova com o mesmo `STS006`
    - o dado decisivo continua sendo `TM6B 99:` no freeze, agora já sob um read-path mais próximo do `blueMSX`
- Diretriz estratégica consolidada ainda em 31/03/2026:
  - a trilha oficial do projeto para `MSX2+` / `V9958` deixa explícito que o backend local deve convergir incrementalmente para o comportamento do `blueMSX`, porque uma migração completa de backend continua inviável nesta fase
  - isso vale para todo o backend derivado de `fMSX`, não apenas para `VDP`: `Z80`, core `MSX`, dispositivos, audio, cartuchos, mapeadores e portas de I/O entram na mesma regra de convergência
  - o `blueMSX` passa a ser a referência semântica primária do comportamento-alvo; `ocm-pld-dev`, `V9958-Super` e outras referências em `third_party/` continuam como fontes de validação cruzada e desempate
  - consequência prática para a `#82`:
    - antes de abrir mais narrowing ad hoc, a ordem preferencial passa a ser `diff direto do backend local contra blueMSX -> validação cruzada com RTL/VHDL -> ajuste local adaptado ao baremetal -> teste em hardware`
- Ajuste seguinte ainda em 31/03/2026, guiado pelo frame da build `4A34`:
  - o print de campo da `4A34` mostrou `TM6B SR:2/1C 99:R/1/2/02/1C` com `CE=0`
  - isso fecha duas coisas:
    - o ajuste inspirado no `blueMSX` mexeu no valor efetivamente retornado por `S#2` (`1C`, não mais `3E`)
    - o travamento remanescente continua depois de um `read S2` já concluído, então o gargalo não está mais no micro-op da `0x99` em si
  - a ambiguidade que sobrou passou a ser a origem desse `99:R`:
    - se veio do helper `USR`, o resíduo mora no retorno ao BASIC / caminho de CPU logo após o `IN`
    - se veio de BIOS/runtime, a trilha ainda não chegou onde o repro parecia indicar
  - para fechar isso sem abrir outro ciclo de BASIC, `TM6B` agora troca o `PC` antigo do trace por `P9`, o `PC` do chamador no último micro-passo concluído da porta `0x99`
  - build local validada para esse corte:
    - `BUILD_BID=202603312145-issue82-port99-caller-pc`
    - `BUILD_ID=3360`
    - `BUILD_HASH=98891cf-7a6da3c038b872fe3143f50c434fec73ebbe958c`
  - consequência prática:
    - o próximo print útil deve mostrar `TM6B P9:` junto do `99:`
    - se `P9` cair em `D0xx`, o último `read S2` veio do helper do disco e o próximo ataque sai do VDP e entra no retorno da rotina Z80/BASIC
    - se `P9` cair em ROM/BIOS, a trilha ainda tem interferência externa no caminho da `0x99`
- Ajuste seguinte ainda em 31/03/2026, fechado pelo print da build `3360`:
  - o print útil mostrou `TM6B P9:148E SR:2/1C 99:R/1/2/02/1C`
  - `148E` cai em ROM/BASIC, não no helper temporário em `D000h`
  - isso fecha a ambiguidade:
    - o repro baseado em `USR` continua contaminado pelo interpretador no caminho crítico da `0x99`
    - portanto, o `TM6B 99:` desse disco antigo já não pode mais ser lido como “último passo do helper”
  - consequência prática imediata:
    - o disco `STS006` foi refeito para tirar o `USR` do caminho crítico
    - `STS006.BAS` agora só prepara `SCREEN 5`, o pixel alvo e `R32..R45`, pinta a tela de vermelho e chama `BLOAD "STS006.BIN",R`
    - `STS006.BIN` roda como runner Z80 único em `D000h`, escreve `R46=&H60`, faz o polling de `S2` até `CE=0` e captura em `D100..D10B`:
      - contador de loops com `CE=1`
      - `first-CE S2/S8/S9`
      - `last-CE S8/S9`
      - `final S2/S8/S9`
      - flags de mudança em `S8/S9` enquanto `CE=1`
  - não houve nova build de kernel neste corte:
    - o próximo teste continua na build `3360`
    - o que muda é apenas o `.DSK` regenerado
- Ajuste seguinte ainda em 31/03/2026, fechado pela primeira execução do runner binário:
  - o `STS006` novo voltou com `CE LOOPS=0`, `FLAGS=0`, `FINAL S2=60`, `FINAL S8=0`, `FINAL S9=254`, `FINAL X=0`
  - esse resultado já não aponta para freeze na `0x99`; ele fecha uma falha semântica do próprio repro
  - a comparação direta contra o core local e o `blueMSX` mostrou o mesmo ponto:
    - em `SRCH`, `ARG bit1` (`R45 & 0x02`) seleciona a variante `!=`
    - portanto, o `R45=2` antigo fazia o comando encerrar imediatamente no primeiro pixel de fundo em `X=0`
  - consequência prática imediata:
    - o disco `STS006` foi ajustado sem mudar o runner `STS006.BIN`
    - `STS006.BAS` agora prepara `SCREEN 7`, coloca o pixel-alvo em `X=511` e arma `R45=0` para forçar uma busca longa por igualdade (`==`)
    - esse repro continua removendo `USR/BASIC` do caminho crítico da `0x99`, mas passa a dar uma chance real de observar `CE=1` e mudanças em `S8/S9`
  - não houve nova build de kernel neste corte:
    - o próximo teste continua na build `3360`
    - o que muda é apenas o `.DSK` regenerado
- Ajuste seguinte ainda em 31/03/2026, fechado pelo round `SCREEN 7 + X=511 + ARG=0`:
  - o `STS006` ainda voltou com `CE LOOPS=0`, `FLAGS=0` e `FINAL X=0`
  - esse retorno expôs outro defeito do próprio repro:
    - os marcadores visuais em BASIC ainda preenchiam a tela inteira de novo depois do `PSET`
    - portanto, o padrão de teste era destruído antes do `SRCH`, contaminando a leitura de `X`
  - consequência prática imediata:
    - o BASIC deixou de escrever `R32..R45`
    - o BASIC deixou de usar fills visuais destrutivos depois de pintar o padrão
    - `STS006.BIN` agora espera `CE=0`, reprograma `R32..R45` e só então dispara `R46=&H60`
  - não houve nova build de kernel neste corte:
    - o próximo teste continua na build `3360`
    - o que muda é apenas o `.DSK` regenerado
- Ajuste seguinte ainda em 31/03/2026, fechado pelo runner binário já sem ruído de setup:
  - o `STS006` enfim voltou com um `SRCH` válido:
    - `CE LOOPS=1`
    - `FIRST CE S2/S8/S9 = FF/FF/FF`
    - `LAST CE S8/S9 = FF/FF`
    - `FINAL S2/S8/S9 = 14/FF/FF`
    - `FINAL X = 511`
  - o overlay no mesmo quadro também já mostrava `TM6D S:FF/FF`
  - leitura prática:
    - o repro agora está correto e já confirma o hit no alvo `X=511`
    - durante a janela observada com `CE=1`, `S8/S9` não mostraram caminhada intermediária visível
    - porém a janela útil ainda ficou curta demais (`CE LOOPS=1`) para fechar sozinha o desempate `live vs latched`
    - o `FLAGS=129` bruto desse runner deve ser lido como `F0=1` e `F1/F2=0`; o bit alto `0x80` ainda é marcador interno do primeiro sample
  - consequência prática imediata:
    - o próximo ataque saiu do disco e voltou ao core
    - `src/fmsx_local/V9938.c` foi alinhado ao modelo do `blueMSX`: o start de comando por `R46` agora apenas arma `CE/state` e não consome mais um slice imediatamente
    - isso busca abrir uma janela mais fiel de `CE=1` para o próximo round do `STS006`
  - build local validada para esse corte:
    - `BUILD_BID=202603312330-issue82-vdpdraw-deferred-start`
    - `BUILD_ID=FFC6`
    - `BUILD_HASH=98891cf-98891cfce0e7f23f86a7269f492eff639b106655`
- Ajuste seguinte ainda em 31/03/2026, fechado pelo teste em hardware da build `FFC6`:
  - o mesmo `STS006` repetido com o start de comando alinhado ao `blueMSX` voltou com:
    - `CE LOOPS=1`
    - `FIRST CE S2/S8/S9 = 00/00/00`
    - `LAST CE S8/S9 = 00/00`
    - `FINAL S2/S8/S9 = 14/FF/FF`
    - `FINAL X = 511`
  - o quadro do overlay no mesmo instante ainda mostrava `TM6D S:FF/FF`
  - leitura prática:
    - a mudança em `VDPDraw()` não aumentou a janela de `CE=1`
    - mas ela removeu o último ruído importante da coleta: agora ficou explícito que, durante `CE=1`, `S8/S9` ficaram em `00/00` e só saltaram para `FF/FF` depois do fim do comando
    - isso fecha o comportamento do nosso core do lado `blueMSX`/`latched-on-complete`, e enfraquece de vez o modelo `live SXTMP` para o alvo de implementação desta branch
    - a linha global da matriz continua `disputed` apenas porque a referência `V9958-Super` segue divergindo, não porque o comportamento do core local ainda esteja ambíguo
  - consequência prática imediata:
    - `STS-006` fica operacionalmente fechado para a convergência com `blueMSX`
    - o próximo teste útil da issue volta a ser o residual de `REG-004` com `V9958_REG004_R17.DSK`
- Ajuste seguinte ainda em 31/03/2026, fechado pelo teste em hardware de `REG004` na build `FFC6`:
  - o quadro final mostrou em `TM6D`:
    - `R17:34`
    - `9B:33>33>34`
    - `V:A5`
  - leitura prática:
    - o write indireto via `0x9B` não travou em `2Fh`
    - o core local continuou incrementando `R#17` acima de `R#47`, chegando a `34h` após seis writes partindo de `2Eh`
    - isso converge com o comportamento de referência do `blueMSX`, cujo `writeRegister()` também faz `vdpRegs[17] = (reg + 1) & 0x3f` sem clamp em `2Fh`
    - a janela funcional do command engine continua fechando em `R#32..R#46`; acima disso, o efeito prático observado é “incrementa e grava shadow/inerte”, não “clampa”
  - consequência prática imediata:
    - o residual local de `REG-004` fica operacionalmente fechado do lado `blueMSX`
    - a linha global da matriz continua `partial` apenas porque o snapshot/lineage HDL ainda não fecha esse detalhe com a mesma nitidez
- Comentarios de progresso ja publicados na issue remota `#231`; o proximo comentario remoto deve registrar esse corte do renderer e o bloqueio conhecido de `IO-004`.
- O proximo comentario remoto da `#231` tambem deve registrar:
  - `REG-001` como `match`
  - `REG-003` como `conflict`
  - `STS-005` como `match`
  - `STS-006` como `disputed`

## Estado da camada de descoberta

- `#231`: bootstrap inicial concluído e primeira passada estática granular já incorporada à matriz, incluindo o recorte do renderer por modo; issue segue em `In progress`
- Desbloqueio operacional para a próxima rodada de hardware:
  - o menu de `Scale` ganhou o estado `NONE`, abaixo do antigo `1x`
  - `Scale [NONE]` permanece como degrau extra abaixo de `1x`, preserva `1x..5x`, e a geometria efetiva do viewport usa `2.0x`
  - a mudança foi feita para viabilizar as capturas da `#235` sem perder a build de observabilidade já preparada
  - o overlay `TXTDBG` foi compactado para usar a largura horizontal completa e consolidar indicadores do mesmo grupo na mesma linha sempre que couberem
  - no layout atual, o bloco inteiro fecha nas linhas `1..9`, com `TXTDBG` em `1`, `AUD1/SYS/AC1` em `2..4` e as linhas `TM` agrupadas por afinidade em `5..9`
  - ao ligar o overlay com `F11`, o runtime agora força automaticamente `Scale [NONE]`
  - build local validada para esse corte:
    - `BUILD_BID=202603310045-issue82-txtdbg-15lines`
    - `BUILD_ID=24E7`
    - `BUILD_HASH=98891cf-98891cfce0e7f23f86a7269f492eff639b106655`
    - observação: a build saiu de worktree local com mudanças não commitadas da branch `82`
- Próximo passo objetivo na branch atual:
  1. executar em hardware os discos `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK` e `sdcard/disks/DEBUG/V9958_REG004_R17.DSK`
  2. fechar primeiro `STS-006` e o residual de `REG-004`, porque agora já existe repro sintético direto para ambos via `AUTOEXEC.BAS`
  3. em seguida confirmar dinamicamente `IRQ-001`, `IRQ-003`, `CMD-004` e `REN-002..REN-008`
  4. se `REN-008` continuar inconclusiva, registrar bloqueio explícito por falta de observabilidade direta de sprite em vez de abrir telemetria nova cedo demais
  5. só então promover a `#232` como próxima issue ativa

## Primeiro achado desta rodada

- O repro citado inicialmente, `POKE -1,170`, nao escreve em `R#1` do V9958.
- Em MSX BASIC, `POKE -1,...` equivale a `POKE &HFFFF,...`.
- No core local, `0xFFFF` e tratado explicitamente como registrador seletor de subslot:
  - leitura/escrita em [`src/fmsx_local/MSX.c`](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c)
  - `RdZ80(0xFFFF)` retorna o registrador de subslot do primario expandido da pagina 3
  - `WrZ80(0xFFFF, V)` chama `SSlot(V)`
- No perfil `MSX2+` atual:
  - `slot 3` e expandido
  - RAM mapper fica em `3-0`
  - `DISK.ROM` fica em `3-2`
- Portanto, `0xAA` (`170`) seleciona subslot `2` para os quatro blocos de 16KB do primario expandido alvo. Isso pode remover a RAM da pagina 3 e derrubar a maquina, o que explica o reboot observado.

## Implicacao pratica

- O primeiro ajuste desta trilha nao deve partir desse repro como se fosse bug de `R#1`.
- Se o objetivo for validar `R#1` de verdade, o repro precisa usar:
  - write direto no porto VDP (`0x99`) para registrador `1`; ou
  - rotina/BIOS que atualize o shadow de `R#1` e comite no VDP.

## Tentativa descartada nesta rodada

- Foi testado um alias de compatibilidade no `MSX2+` que espelhava a RAM do mapper em `slot 3-2` nas paginas `0`, `2` e `3`, preservando `DISK.ROM` apenas em `4000h-7FFFh`.
- A hipotese nao funcionou no hardware e foi revertida.
- O core local voltou ao baseline anterior desta branch, mantendo apenas o diagnostico de que o repro atua sobre `0xFFFF` e nao sobre `R#1`.

## Enderecos de referencia levantados

- `R#1` shadow BIOS:
  - `REG1SAV = 0xF3E0` em `third_party/ocm-pld-dev/.../include/msx.asm`
- `0xFFFF`:
  - registrador de subslot no modelo MSX, nao shadow de `R#1`
- Sequencia correta para escrever `R#1` diretamente:
  - valor em `0x99`
  - depois `0x80 | 1` em `0x99`

## Referencias tecnicas usadas

- [`src/fmsx_local/MSX.c`](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c)
  - `RdZ80()` / `WrZ80()` / `SSlot()` / `IsExpandedPrimarySlot()` / `RAMMapperSubSlot()` / `DiskROMSubSlot()`
- [`docs/milestones/m11/82-validar-vdp9958-modos-msx2plus.md`](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/82-validar-vdp9958-modos-msx2plus.md)
  - historico do ajuste anterior de fidelidade para `0xFFFF`
- `third_party/ocm-pld-dev/esemsx3/src/peripheral/iplrom3_work/asm_iplrom/compile/include/msx.asm`
  - definicao de `REG1SAV = 0xF3E0`

## Estado da iteracao

- Branch criada e vinculada a `#82`: OK
- Sub-issues `#231..#236` criadas e vinculadas a `#82`: OK
- Matriz canônica e diretório de evidências da `#82`: OK
- Build local do alias descartado: OK (`make -j4 DEBUG=1 BUILD_BID=202603291835-issue82-poke-ffff-compat`)
- `BUILD_ID` do alias descartado: `CEAC`
- Build local do baseline restaurado: OK (`make -j4 DEBUG=1 BUILD_BID=202603291800-issue82-revert-poke-ffff-compat`)
- `BUILD_ID` do baseline restaurado: `B2E2`
- Artefatos:
  - [`artifacts/kernel8-issue82.img`](/Users/sandersouza/Developer/msxbarepi/artifacts/kernel8-issue82.img)
  - [`artifacts/kernel8-default.img`](/Users/sandersouza/Developer/msxbarepi/artifacts/kernel8-default.img)
- Mudancas de codigo no core: tentativa revertida; core restaurado ao baseline anterior da branch
- Validacao em hardware do alias: falhou
- Validacao em hardware do baseline restaurado: pendente
- Build local da telemetria `TM6D`: OK (`make -j4 DEBUG=1 BUILD_BID=202603301455-issue82-vdp-observability`)
- `BUILD_ID` da telemetria `TM6D`: `16D6`
- `BUILD_HASH` da telemetria `TM6D`: `98891cfc-9e23387dc2ea0bf0542319be174b90aa3febb6af`
- Escopo dessa build:
  - nova linha `TM6D` no overlay
  - snapshot de `R17`, `S#8`, `S#9` e ultimo write indireto em `0x9B`
- Validacao em hardware da telemetria `TM6D`: pendente
- Discos de repro gerados localmente: OK
  - `sdcard/disks/DEBUG/V9958_STS006_SRCH.DSK`
  - `sdcard/disks/DEBUG/V9958_REG004_R17.DSK`
  - conteúdo validado no root: `AUTOEXEC.BAS`, programa alvo, `README.TXT`

## Proximo passo sugerido

1. Rodar em hardware `V9958_STS006_SRCH.DSK` e `V9958_REG004_R17.DSK` com `F11` ativo para capturar `TM3/TM6D`.
2. Confirmar dinamicamente `IRQ-001`, `IRQ-003` e `CMD-004` agora que o desempate estático ganhou suporte do `ocm-pld-dev`.
3. Confirmar dinamicamente `REN-002..REN-008`, com foco em `SCREEN 4`, odd/even page, left-edge mask e alinhamento de sprite sob `R27`.
4. Se `REN-008` continuar inconclusiva, registrar bloqueio explícito por falta de observabilidade direta de sprite em vez de abrir telemetria nova cedo demais.
5. Só então promover a `#232` como próxima issue de descoberta estática detalhada.

## Gestao paralela registrada nesta branch

- Em 30/03/2026, foi aberta a issue remota `#237` na milestone `#18 / m18` (`Feature requests / Requisição de Features`) para evoluir o UX de `Save State` / `Load State`.
- Escopo registrado na `#237`:
  - slots `0-9` para save
  - tela de load no estilo `file browser`
  - caixa `INFO` com preview/print, data/hora e ROM/DSK carregados
- O espelho local correspondente foi criado em `docs/milestones/m18/`.
- A issue entrou no projeto `MSX BarePI` com status `Backlog`.
- Nenhuma branch de implementacao foi aberta para essa feature nesta rodada.

## Atualizacao incremental de 03/04/2026 - trilha filha `#238`

- Na branch filha `238-fechar-boot-logo-msx2plus-precisao-core-v9958`, o round de hardware da build `C2C2` confirmou que o ajuste de host `HIRES_INTERLACED` nao moveu a leitura visual do boot logo.
- O foco tecnico dessa frente voltou ao renderer `SCREEN 6` wide em `src/fmsx_local/Wide.h`, ainda usando `blueMSX/Common.h` como referencia semantica primaria.
- Build local preparada na trilha filha:
  - `BUILD_BID=202604031830-issue238-screen6-edge-mask`
  - `BUILD_ID=E520`
  - `BUILD_HASH=2bcfd13-da6cb9d57eebc4c7ded4856f93b0d0f840a5038a`
- Escopo do corte:
  - remocao da heuristica local de reorder de paginas baseada em `ChrTab`
  - borda lateral alternada para `SCREEN 6` wide
  - `left-edge mask` fisico de `16` pixels no modo wide
- O reteste em hardware da `E520` nao moveu o quadro visivel do boot logo.
- A trilha filha `#238` voltou entao ao pacing do command engine em `src/fmsx_local/V9938.c`, mas sem reabrir o experimento absoluto descartado:
  - `BUILD_BID=202604031930-issue238-screen6-ce-uplift`
  - `BUILD_ID=2865`
  - `BUILD_HASH=13c4905-e5047616bb1edd3052f3b0e3415715ff51ed12e1`
  - corte focado em elevar `VdpOpsQuantum()` apenas com `CE=1`, com uplift extra para `SCREEN 6/7/8`
- O round seguinte em hardware da `2865` confirmou que esse corte nao conversava com o sintoma visivel do boot logo:
  - quadro ruim no mesmo ponto
  - cadencia sem mudanca perceptivel
  - `MASK` sem mudanca
  - frames uteis do overlay ainda com `CE=0`
- A `#238` saiu entao do pacing do command engine e abriu um novo corte de scanout parcial em `SCREEN 6/7`, inspirado no renderer incremental `X..X2` do `blueMSX/Common.h`:
  - `src/fmsx_local/MSX.c` deixa de curto-circuitar o sync antes de write fora da janela do `KMG`
  - `src/fmsx_local/Wide.h` ganha `RefreshLine6WideRange()` e `RefreshLine7WideRange()`
  - `BUILD_BID=202604031620-issue238-screen6-partial-scanout`
  - `BUILD_ID=894F`
  - `BUILD_HASH=8a4947c-00efee1ad301422d4ffa66201b3e2a3858304be4`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `894F` confirmou que o scanout parcial ainda nao movia o sintoma do boot logo:
  - `MASK` sem mudanca
  - tarja/pagina errada no mesmo ponto
  - cadencia igual
  - sem leitura pratica de interlace
- A trilha filha `#238` subiu entao para latch por scanline do estado de display em `SCREEN 6/7`, ainda guiada por `blueMSX/Common.h`:
  - `src/fmsx_local/MSX.c` agora congela por linha `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27`, `odd-page` e `vscroll`
  - `src/fmsx_local/Wide.h` passa a consumir esse snapshot em todos os calculos wide de source/page/scroll/mask
- A mesma rodada tambem fechou um gargalo local de build:
  - `Makefile` e `src/Makefile` passam a propagar `PREFIX64=$(CROSS)` para `src` e para os subbuilds do `Circle`
  - a branch ganhou `src/math.h` + `src/fmsx_math_shim.c` para manter a build full-feature com a toolchain Homebrew `aarch64-elf`, que e `--without-headers`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041430-issue238-screen6-line-latched-state`
  - `BUILD_ID=4FB0`
  - `BUILD_HASH=e298d4e-d03d3116b86dbc2bc49478da1ff60c3e769581b7`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `4FB0` confirmou ausencia total de efeito visual no boot logo do `MSX2+`:
  - `MASK` sem mudanca
  - tarja/pagina errada no mesmo ponto
  - cadencia igual
  - sem leitura pratica de interlace
- A leitura local do video em frames confirmou o mesmo estado do overlay nos quadros uteis:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `EP:1`
  - `CE:0`
  - `TR:0`
- Consequencia pratica na umbrella:
  - o latch por scanline da `#238` deixou de ser o gargalo dominante
  - o proximo corte da trilha filha passou a atacar o diff restante contra `blueMSX/Common.h` no path line512 de `SCREEN 6/7`
- Novo corte preparado na branch derivada:
  - `src/fmsx_local/Wide.h` agora dobra coarse scroll e fine scroll no scanout wide de `SCREEN 6/7`
  - o `left-edge mask` de `SCREEN 7` wide tambem passa a cobrir `16` pixels fisicos
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041620-issue238-screen67-physical-scroll`
  - `BUILD_ID=C079`
  - `BUILD_HASH=16da695-9edab52930a87d5a297e94ad32752c850250b185`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `C079` trouxe a primeira mudanca estrutural clara no boot logo:
  - o logo passou a surgir corretamente dos dois lados da tela
  - as duas metades caminham em direcao ao centro, em vez de compor paginas horizontais evidentemente erradas
- Leitura consolidada na umbrella:
  - o diff de `SCREEN 6/7` contra o `blueMSX` ja fechou operacionalmente a parte horizontal do `page split`
  - o gargalo residual da trilha filha deixou de ser `R#26/R#27` e ficou concentrado em:
    - `left-edge mask`
    - odd/even
    - `R#9 interlace`
    - cadencia global do logo
- Estado observado no video/overlay:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `EP:1`
  - `CE:0`
  - `TR:0`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- A `C079` fechou o split horizontal do logo, entao a trilha filha subiu para o bloco conjunto `R#25` + odd/even + `R#9 interlace`.
- Diff novo aplicado contra a base local:
  - `src/fmsx_local/MSX.c` agora congela por scanline tambem `R#9 bit2` (`FlipEvenOdd`) e `R#9 bit3` (`InterlaceON`)
  - `src/fmsx_local/Common.h` e `src/fmsx_local/Wide.h` passam a compor a apresentacao hi-res/interlaced com esse snapshot por linha, em vez de usar `OddPage`/`InterlacedMode` ao vivo
  - o path narrow `V9958BitmapLinePtr()` tambem passa a usar odd/even latched por linha
- Leitura consolidada na umbrella:
  - o renderer wide ja estava correto na unidade horizontal
  - o residual agora foi reduzido ao contrato de apresentacao do frame/scanline, ainda mais proximo do modelo do `blueMSX`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041840-issue238-line-latched-interlace`
  - `BUILD_ID=3DE2`
  - `BUILD_HASH=ccca9df-15dc573ed2165b0105f68bcf50530bf6d2140fcb`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte em hardware da `3DE2` nao moveu o quadro observavel do boot logo.
- Consequencia pratica na umbrella:
  - o bloco horizontal continua fechado pela `C079`
  - o corte de apresentacao hi-res da `3DE2` nao resolveu o residual
  - a trilha filha deixou de insistir em patch visual cego e pivotou para telemetria UART de frame
- Novo corte aplicado na branch derivada:
  - `src/fmsx_host_stubs.c` agora loga `BL238` nos primeiros `96` frames publicados do boot logo em `SM:06`
  - cada linha registra `F/VF/LG/W/H/R9/S2/HI/IL/EO/R25/R26/R27`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041950-issue238-bootlogo-uart-frame-trace`
  - `BUILD_ID=9A2C`
  - `BUILD_HASH=115717d-18b3d09b5e160bb49b3cc8d4ac93a34052592e1c`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- A primeira coleta UART da `9A2C` trouxe so o startup do Pi e nenhum `BL238`.
- Causa raiz consolidada na umbrella:
  - o trace estava limitado aos primeiros `96` frames globais do host
  - o boot logo entra fora dessa janela
- Correcao aplicada na branch derivada:
  - `src/fmsx_host_stubs.c` agora conta os primeiros `96` frames do proprio boot logo (`SM:06` + `R25=03`) e reinicia quando o logo sai de foco
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041010-issue238-bootlogo-uart-frame-window`
  - `BUILD_ID=3271`
  - `BUILD_HASH=115717d-7d05a4e7374301c55f179bac7d204db268ebac16`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O novo round de video + UART da trilha filha confirmou o quadro residual do boot logo sem abrir conflito de fluxo:
  - `MASK` ainda visivel
  - cadencia ainda lenta
  - sem leitura pratica de odd/even
  - `BL238` com `F/VF=1:1`, `LG=000`, `CE/TR` praticamente mortos, `R25=03`, `R9=00`
  - `R26/R27` alternando de forma regular, sustentando o split horizontal ja fechado
- Consequencia pratica na umbrella:
  - a `#82` continua sendo a umbrella correta da `#238` e das proximas sub-issues que nascerem desta jornada do video
  - o host/presenter continua descartado como gargalo dominante
  - o proximo estado vivo relevante do renderer ficou reduzido a `R#18` (`HAdjust`/`VAdjust`)
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`
  - `R#18` agora passa a ser latched por scanline e o path de borda/posicionamento deixa de consultar `VDP[18]` ao vivo
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041530-issue238-r18-line-latched`
  - `BUILD_ID=9F81`
  - imagem `sha1 8c400743be364ac184c6f5ae7608b38451d3b2bc`
- Guardrail de fluxo reafirmado:
  - sem `push`
  - o proximo round continua local ate declaracao explicita de estabilidade

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round seguinte da trilha filha ajustou a prioridade operacional desta jornada:
  - primeiro odd/even + `R#9 interlace`
  - depois cadencia
  - `MASK` deixa de ser o principal alvo
- Consequencia pratica na umbrella:
  - a `#82` permanece como umbrella desta trilha do video
  - a branch filha deixa de promover patch visual cego e passa a instrumentar writes BIOS-side do logo
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_host_stubs.c` passa a expor `F9`, `I9` e `S2E` no `BL238`
  - `src/fmsx_local/MSX.c` passa a emitir `BL238W` para writes de `R#2`, `R#9`, `R#18`, `R#25`, `R#26` e `R#27` durante a janela do boot logo
- Build local preparada na trilha filha:
  - `BUILD_BID=202604041705-issue238-bootlogo-regwrite-trace`
  - `BUILD_ID=A1D1`
  - imagem `sha1 cdb45bca50c1a8ce3d914da414d938c15b7fd6d4`
- Proximo gate da umbrella:
  - coletar `BL238` + `BL238W`
  - so depois decidir o proximo patch no bloco odd/even/interlace/cadencia

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- O round UART seguinte da trilha filha continuou sem `BL238W`, mas a investigacao local da ROM fechou um dado novo importante para a umbrella:
  - o `MSX2PEXT.ROM` (`sha1 fe0254cbfc11405b79e7c86c7769bd6322b04995`) realmente passa por `R#26` e `R#27` no helper formal de escrita de registradores VDP (`l0688h`, com `c=1Ah/1Bh`)
  - portanto, a ausencia de `BL238W` nao pode mais ser lida como "o BIOS nao escreve esses registradores"
- Consequencia pratica na umbrella:
  - a `#82` continua sustentando a mesma ordem da trilha filha: primeiro odd/even + `R#9 interlace`, depois cadencia, e so depois `MASK`
  - o proximo buraco de observabilidade da `#238` passa a ser medir os contadores reais de write durante a janela do logo, no `BL238` que ja funciona
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_host_stubs.c`
  - o `BL238` agora emite tambem:
    - `L9/L25/L26/L27`
    - `W9/W25/W26/W27`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604042040-issue238-bootlogo-write-counters`
  - `BUILD_ID=DC25`
  - imagem `sha1 1a0df1ea9732334bcc1678139b671250edf0d619`
- Guardrail de fluxo reafirmado:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` segue apenas como umbrella

## Atualizacao incremental de 05/04/2026 - `#238` agora focada no hot path `S#2` do `KANJIBASIC`

- A trilha filha `#238` deixou `odd/even` e `MASK` fora do primeiro plano operacional.
- A UART mais recente do boot logo consolidou os callers quentes:
  - `7A8B/7A91`: wait `S#2 bit6 high -> low`
  - `7BC6`: wait de `CE` apos os comandos do logo
- Consequencia pratica para a umbrella:
  - o problema de maior impacto passou a ser o tempo total ate o BASIC, nao mais a apresentacao do split horizontal
  - o corte local mais novo em `src/fmsx_local/MSX.c` aplica wait-state focal apenas nesses loops do `KANJIBASIC`, para aproximar o custo temporal do polling de `S#2/0x99` ao comportamento-alvo do `blueMSX`
- Validacao local da trilha filha:
  - `BUILD_BID=202604051505-issue238-kanjibasic-s2-wait`
  - `BUILD_ID=7B8D`
  - artefato `sha1 9560082c89264ea622ee6610d564d3fb0668bab4`
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A rodada offline mais recente da `#238` retirou do caminho ativo uma hipotese que estava contaminando a leitura da umbrella:
  - o alias especial `7Axx/7Bxx -> 2Axx/2Bxx` deixou de ser tratado como fato
  - a trilha filha voltou a preservar `PC` bruto como fonte de verdade, usando apenas um `linear -0x4000` conservador como dica offline
- Consequencia pratica na umbrella:
  - a `#82` deixa de propagar a leitura "o hot path do logo e `2Axx/2Bxx`" como conclusao
  - o proximo corte da `#238` passa a depender dos bytes reais dos callers quentes de `S#2`, emitidos em `BL238C`
  - `MASK` continua fora do foco principal; a prioridade segue sendo cadencia/tempo do boot logo
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051930-issue238-raw-pc-caller-bytes`
  - `BUILD_ID=FB98`
  - imagem `sha1 94e63358c8cf618cd7cf1905079b8d04eedcc577`

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A investigacao offline seguinte na `#238` fechou um bug da propria telemetria do boot logo:
  - os campos `C0..C3` ainda podiam apontar callers impossiveis (`3A8D`, `3A93`, `3BC8`)
  - isso vinha de buckets decadentes em `FmsxVDPS2CallerCount[]` sendo consumidos por delta no `BL238`
- Consequencia pratica na umbrella:
  - a trilha da `#82` nao deve mais confiar no histograma antigo de callers de `S#2`
  - o hot path da `#238` continua no eixo `S#2/0x99`, mas agora com telemetria monotônica e separando tambem o caller dinamico `2276 -> 2279`
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_host_stubs.c`
  - callers de `S#2` passaram a ser monotônicos
  - overflow separado em `CO`
  - `H227` passou a sair separado de `HOTH`
  - reads diretos de `0x99` recuperam o endereco real da instrucao quando os bytes anteriores sao `DB 99`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051720-issue238-s2-monotonic-callers`
  - `BUILD_ID=2449`
  - imagem `sha1 3f66e91a1b1130856a1aa657931aca8e486a3182`

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A rodada offline seguinte refinou a observabilidade do prelude do logo:
  - o trace da trilha filha ainda mostrava `PC=7A71/7A73/7BB2`, mas esses valores continuavam sendo `PC` pos-instrucao em `OUT/IN`
  - isso contaminava a leitura offline da origem real de `R26/R27` e dos polls de `0x99`
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/MSX.c`
  - writes em `0x99/0x9B` agora recuperam o endereco real do opcode quando os bytes anteriores sao `D3 99` / `D3 9B`
  - reads em `0x99` agora recuperam o endereco real de `DB 99`
- Consequencia pratica na umbrella:
  - a `#82` continua sem abrir novo patch visual cego na `#238`
  - o proximo round de UART da trilha filha deve finalmente apontar o site real dos `OUT/IN` que dirigem o logo
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051805-issue238-s2-pc-normalized`
  - `BUILD_ID=161D`
  - imagem `sha1 24313ed7260ecb1f1ee345c41bca4bc8bdc96c42`

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A telemetria `C0..C3` da trilha filha mostrou um problema do proprio classificador:
  - `3BC8` apareceu como caller quente de `S#2`, mas cai em tabela/string do `MSX2PEXT`
  - isso indica colapso de paginas/aliases, nao caller funcional confiavel
- Consequencia pratica na umbrella:
  - a `#82` continua priorizando cadencia/`S#2` para a `#238`
  - o proximo corte deixou de confiar apenas no histograma por `PC` e passou a medir diretamente os bits/bordas de `S#2`
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/MSX.c`
    - callers de `S#2` agora preservam o PC completo
    - a normalizacao para offsets de ROM ficou restrita à classificacao dos helpers conhecidos
  - `src/fmsx_host_stubs.c`
    - `BL238` agora publica:
      - `B0/B1/B6` para leituras com `bit0/bit1/bit6 = 1`
      - `E0/E1/E6` para bordas `rise/fall` desses mesmos bits
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051610-issue238-s2-bit-edge-counters`
  - `BUILD_ID=78AE`
  - imagem `sha1 b1cd6286ec85af28988de713a89d5a4dbdb46e4e`
- Guardrail de fluxo reafirmado:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` segue apenas como umbrella

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A UART mais recente da trilha filha fechou um problema do proprio trace:
  - `S2:999`, `P99:999`, `HOTH:999`
  - `H2BE/H10L/H10H/H36H/H36L` zerados
- Isso nao significava ausencia de `2BE4`; significava que a contagem ainda estava olhando o `PC` vivo dentro do helper comum `2BEF`.
- Consequencia pratica para a umbrella:
  - o foco da `#238` continua correto em `S#2/0x99`, sem voltar para `MASK`
  - o proximo corte da trilha filha precisava corrigir a telemetria antes de qualquer outro patch funcional
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/MSX.c`
  - a classificacao de reads de `S#2` agora usa o endereco de retorno em `CPU.SP` quando a leitura acontece dentro de `2BEF..2C02`
  - isso separa corretamente os chamadores `2BE4`, `10D6/10DF` e `363B/3644`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051330-cc918b4`
  - imagem `sha1 84d015d9b31a90232469eb291a02cbea25e0f208`
- Guardrail de fluxo reafirmado:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` segue apenas como umbrella

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- O round seguinte da UART na trilha filha mostrou:
  - `H2BE=2`
  - `HOTH=999`
- Consequencia pratica na umbrella:
  - a correção stack-based funcionou, mas o helper quente do logo inteiro continua escondido dentro de `OTHER`
  - a prioridade da trilha filha segue em `S#2/0x99`, sem voltar para `MASK`
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_host_stubs.c`
  - a telemetria do logo agora carrega um histograma dos callers reais de `S#2`
  - os resumos `BL238S/BL238P/BL238E` passam a emitir `C0..C3` com os `PCs` mais frequentes
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051405-cc918b4`
  - imagem `sha1 f5f681f2f373d96007cb9902ed4febfd5cd0ac69`
- Guardrail de fluxo reafirmado:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` segue apenas como umbrella

## Atualizacao incremental de 05/04/2026 - umbrella `#82` acompanha o ajuste fino do `S#2` na `#238`

- A trilha filha `#238` continuou no eixo pedido em campo: cadencia/precisao do boot logo, sem abrir nova frente em `MASK`.
- Ajuste aplicado na trilha filha:
  - `src/fmsx_local/MSX.c`
  - a janela pseudo-`VStart` do `S#2` deixou de usar a HBlank inteira da ultima linha
  - o threshold agora vale apenas nos ultimos `40` ticks VDP dessa linha, refletindo o `leftBorder - 10` do `blueMSX`
- Leitura operacional para a umbrella:
  - `R#9 interlace` continua fora do gargalo dominante da janela visivel
  - o foco segue nos waits BIOS de `S#2` e na cadencia do prelude do logo
  - `MASK` permanece fora do caminho critico nesta fase
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051124-cc918b4`
  - imagem `sha1 63e76c3640998f4f26cbeeb883f77321caa9cfb1`
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- O refinamento offline seguinte da `#238` fechou um gap mais fino do contrato de `S#2`:
  - a documentacao local ja tratava o pseudo-`VStart` como "cauda da ultima scanline";
  - a implementacao ainda projetava `bit6 low` e a inversao live de `bit1` sobre a linha inteira.
- Consequencia pratica para a umbrella:
  - a trilha filha continua descartando `R#9 interlace` como causa principal da janela visivel do logo;
  - o foco vivo segue em `S#2/0x99`, agora mais especificamente nos waits BIOS `10D6/363B` ate o BASIC.
- Correcao local aplicada na branch derivada:
  - `src/fmsx_local/MSX.c`
  - `fmsx_vdp_previsible_window_active()` agora so ativa na faixa de HBlank da ultima scanline do frame anterior
  - `fmsx_vdp_status2_vr()` e a exposicao live de `bit1` continuam ancoradas nessa mesma janela curta
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051116-cc918b4`
  - `BUILD_ID=AA06`
  - imagem `sha1 31589d42ff0c10522c2f73c7059498e9382f4260`
- Guardrail mantido:
  - sem `commit`
  - sem `push`

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A `#238` parou de olhar so para os primeiros `96` frames do logo.
- A UART da `899C` manteve o mesmo contrato inicial (`R9=00`, `R25=03`, `R26/R27` via `0x99 @ 7BB2` e depois `0x9B @ 7A71/7A73`), mas isso ja nao basta para explicar um boot que segue ate `F:004500`.
- Novo corte local na trilha filha:
  - `src/fmsx_host_stubs.c`
  - o trace do logo inteiro agora emite:
    - `BL238P` a cada `256` frames
    - `BL238E` ao sair do logo
  - os resumos incluem `S#2`, `S#7`, leituras totais de `0x99`, `W26/W27`, `CE/TR` e estado final de `R9/R25/R26/R27`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051059-cc918b4`
  - `BUILD_ID=6BDA`
  - imagem `sha1 adc26143e8312c896d9059b7200f36af044ccfb1`

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A rodada offline mais recente da `#238` continuou sem atacar `MASK` e ficou focada em contrato BIOS/`blueMSX`.
- Dois ajustes locais relevantes foram aplicados na branch filha:
  - `src/fmsx_local/MSX.c`
    - a janela pseudo-`VStart` usada pelo `status2` live foi reduzida de `4` para `1` linha pre-visível
    - isso corrige o excesso introduzido nas leituras BIOS `10D6` / `363B`, porque no `blueMSX` a maior parte dos `4 * HPERIOD` após `VStart` já cai dentro da área visível
  - `src/fmsx_local/V9938.c`
    - o recorte BIOS do boost local do boot logo foi ampliado de forma consistente com o disassembly/UART
    - além dos wrappers `2BE4/2E3E/3040/3299`, a janela agora inclui o prelude real `0x2A0F..0x2C59` e o alias `0x7A0F..0x7C59`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604051028-cc918b4`
  - `BUILD_ID=899C`
  - imagem `sha1 098aa1e47b954d15e1eb0a07dd85d989ad5def45`
- Guardrail de fluxo reafirmado:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` segue apenas como umbrella

- Atualizacao incremental da `#238`: o refinamento offline mais recente mostrou que o corte de `drawArea` ainda estava coarse demais. No `blueMSX`, `S#2 bit6` cai em `onVStart()` antes da area visivel, mas o `timingMode` do command engine so muda em `onDrawAreaStart()`. A trilha filha foi ajustada para separar essas duas semanticas:
  - `src/fmsx_local/MSX.c`: `fmsx_vdp_status2_vr()` agora representa uma pseudo-top-border low na cauda do frame anterior
  - `src/fmsx_local/V9938.c`: `GetVdpTimingValue()` deixou de usar `S#2 bit6` como proxy e voltou a seguir apenas a faixa visivel local para o bucket de `drawArea`
  - build local validada: `BUILD_BID=202604050035-issue238-status2-vstart-drawarea`, `BUILD_ID=F5E4`, imagem `sha1 a87d0873ee713b999432fc518fc578ba3776f754`
- A `#82` segue apenas como umbrella nesta rodada; nao houve `commit` nem `push`.
- Atualizacao incremental da `#238`: o refinamento final desta rodada apertou a pseudo-top-border ao contrato real do `blueMSX`. O `readStatus()` de referencia nao mantem `S#2 bit6=0` por toda a borda superior; a janela e de apenas `4` scanlines apos `VStart`. A trilha filha foi ajustada para esse recorte:
  - `src/fmsx_local/MSX.c`: `fmsx_vdp_previsible_lines()` agora retorna `4`
  - `fmsx_vdp_status2_vr()` e a inversao live de `bit1` passaram a usar essa mesma janela curta
  - build local validada: `BUILD_BID=202604050145-issue238-status2-vstart-4lines`, `BUILD_ID=2155`, imagem `sha1 753852f58a16c9ad346647f0c8b09f5593346817`
- A `#82` segue apenas como umbrella nesta rodada; nao houve `commit` nem `push`.
- Atualizacao incremental da `#238`: o refinamento offline seguinte fechou o helper BIOS `363B` como contrato `S#2 bit6 high->low + bit1 do novo frame`. No `blueMSX`, `bit1` ja troca em `onDisplay()` antes da janela de `VStart`; no core local, ele ainda trocava so em `ScanLine == 0`. A trilha filha foi ajustada para expor essa paridade nova apenas na janela pseudo-top-border do `status2` live, sem mexer no latch cru usado pelo renderer:
  - `src/fmsx_local/MSX.c`: `fmsx_vdp_status2_live()` agora inverte `bit1` so nessa janela
  - build local validada: `BUILD_BID=202604050115-issue238-status2-bit1-vstart`, `BUILD_ID=390D`, imagem `sha1 0c702f3c57bfd15b8fe4fce6582ddeb8dd4f11a0`
- A `#82` segue apenas como umbrella nesta rodada; nao houve `commit` nem `push`.

## Atualizacao incremental de 05/04/2026 - trilha filha `#238`

- A comparacao offline seguinte contra o `blueMSX` isolou uma divergencia mais forte que `R#9 interlace` para a umbrella:
  - referencia: `timingMode = ((R#1 >> 6) & drawArea) | (R#8 & 2)`
  - core local: `src/fmsx_local/V9938.c:GetVdpTimingValue()` ainda indexava as tabelas so por `R#1 bit6`
- Consequencia pratica na umbrella:
  - como a UART do logo ja mostrou writes de `R#26/R#27` em `SL 192/193`, a trilha filha pode estar cobrando timing de display ativo justamente quando o BIOS atualiza scroll na borda inferior
  - isso recoloca a cadencia do producer acima de qualquer nova tentativa visual em `MASK`
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/V9938.c`
  - `GetVdpTimingValue()` agora usa `S#2 bit6` como gate coarse de `drawArea`
  - borda/VBlank passam a cair no bucket off-screen como na referencia `blueMSX`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604042355-issue238-command-timing-drawarea`
  - `BUILD_ID=66B1`
  - imagem `sha1 3483cb935ae92659fad3b1af41e85a21653dda4f`
- Guardrail de fluxo reafirmado:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` segue apenas como umbrella

- Atualizacao incremental da `#238`: a rodada offline mais recente deixou de insistir em `R#9 interlace` como causa primaria da janela visivel do logo e voltou ao ponto que a antiga `#176` ja sustentava melhor: a cadencia do fluxo BIOS de `S#2 bit0`. O corte local seguinte entrou em `src/fmsx_local/V9938.c` e reaplicou, com guardrails mais estreitos, a reducao de custo de comando (`/8`, minimo `1`) apenas nos wrappers/polls do boot logo `MSX2+`. A janela aceita:
  - os ranges lineares documentados na `#176`:
    - `0x2BE4..0x2C27`
    - `0x2E3E..0x2F97`
    - `0x3040..0x3147`
    - `0x3299..0x3325`
  - e o alias `+0x5000` coerente com a UART atual da `#238`, para cobrir o mesmo fluxo quando o `MSX2PEXT` aparece mapeado em `0x7Bxx/0x7Exx/0x80xx/0x82xx`.
  - build local validada: `BUILD_BID=202604051005-cc918b4`, `BUILD_ID=828F`, imagem `sha1 4529f3540680781486b58b2948ef41b86cff4688`
- A `#82` segue apenas como umbrella nesta rodada; nao houve `commit` nem `push`.
- Atualizacao incremental da `#238`: o refinamento local seguinte tornou esse `/8` mais proximo do comportamento temporal do `blueMSX`. Em vez de depender do `CPU.PC.W` em cada slice, o boost do logo agora arma em `VDPDraw()` quando o comando nasce dentro da janela BIOS do boot logo e permanece ativo ate `CE` cair. O corte segue restrito ao boot logo `MSX2+`, mas deixa de depender do `PC` da CPU no miolo da execucao do comando. Build local validada: `BUILD_BID=202604051010-cc918b4`, `BUILD_ID=8504`, imagem `sha1 dbea3990879f647f24d05a06015f29880a2d46e8`.
- A `#82` segue apenas como umbrella nesta rodada; nao houve `commit` nem `push`.

## Atualizacao incremental de 05/04/2026 - `#238` sai de interlace visivel e entra em `S#2 bit6`

- A subtrilha `#238` fechou um refinamento importante sem novo teste em hardware:
  - a UART da `85F2` manteve `R9=00` e `R25=03`
  - o logo visivel continua dirigido por `R26/R27`
  - o `z80dasm` da `MSX2PEXT.ROM` mostrou que os waits por `S#2 bit6` relevantes para o boot ate o BASIC ficam em helpers BIOS fora da janela visivel (`0x10D6` e `0x363B`)
- Consequencia pratica:
  - a hipotese primaria deixa de ser "odd/even/interlace nao armado no logo"
  - o proximo gargalo provavel passa a ser a borda vertical/VBlank do VDP
- Correcao local aplicada na `#238`:
  - `src/fmsx_local/MSX.c`
  - `IE0/VBlank` agora sobem no inicio da primeira linha da borda inferior, alinhando o core local ao `blueMSX`
- Build local validada na filha:
  - `BUILD_BID=202604042320-issue238-vblank-line-start`
  - `BUILD_ID=59C0`
  - `BUILD_HASH=cc918b4-382ad7d1628e55605b3dac4dc32359c78b179015`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- A UART da `47D9` fechou para a umbrella que, nesta janela do boot logo:
  - o prelude escreve `R#9=00`
  - `R#25=03`
  - `R#26/R#27` entram depois, dirigindo a animacao horizontal
- Consequencia pratica na umbrella:
  - a hipotese primaria de `odd/even + R#9 interlace` perde forca nesta sub-issue
  - o foco vivo da `#238` migra para a cadencia/consumo das writes de `R#26/R#27`
  - `MASK` continua explicitamente fora do alvo principal
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/Wide.h`
  - o `SCREEN 6` wide deixa o modelo de expandir toda a linha em `BgRaw[1024]`
  - o path passa a fazer fetch streaming por pagina, consumindo `R#26/R#27` em unidades logicas de pares de pixels, mais proximo do `blueMSX`
- Build local preparada na trilha filha:
  - `BUILD_BID=202604042325-issue238-screen6-streaming-scroll`
  - `BUILD_ID=7E29`
  - imagem `sha1 054a2bbbf95a7fccd89ea9cc199c2bc5a23f40d2`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- A UART da `DC25` fechou o proximo corte util da trilha filha:
  - `W9=0` e `W25=0` durante toda a janela visivel do logo
  - `W26/W27` sobem juntos ate `77`
  - `L26/L27` batem com `R26/R27`
- Consequencia pratica na umbrella:
  - a prioridade da `#238` continua coerente com a ordem definida em campo, mas o dado novo mostrou que a janela visivel do logo nao esta sendo guiada por writes de `R#9` nem `R#25`
  - o problema vivo da trilha filha ficou mais estreito: origem e cadencia das writes de `R#26/R#27`
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_host_stubs.c`
  - o core agora guarda o ultimo `PC`, porta, valor antigo/novo, frame e scanline por registrador VDP
  - a UART da trilha filha ganhou `BL238R`, emitido quando `R26/R27` realmente avancam
- Build local preparada na trilha filha:
  - `BUILD_BID=202604042120-issue238-r26r27-write-origin`
  - `BUILD_ID=6ED6`
  - imagem `sha1 7c002d49a8acfb3e64a192addcea0d50914ab429`

## Atualizacao incremental de 04/04/2026 - trilha filha `#238`

- A UART da `6ED6` fechou que a janela visivel do logo nao reprograma `R#9` nem `R#25`, mas escreve `R#26/R#27` de forma regular:
  - primeira mudanca visivel por `0x99` em `PC=7BB2`
  - depois loop estavel por `0x9B` em `PC=7A71/7A73`
  - `R#26/R#27` alternando perto do fim da area visivel
- Consequencia pratica na umbrella:
  - a `#82` continua guardando a ordem pedida em campo, mas a trilha filha agora precisa responder antes de tudo se o prelude do logo arma `R#9`/`R#25` fora da janela visivel
  - enquanto isso nao estiver fechado, a umbrella nao deve abrir novo patch visual cego em `MASK`
- Novo corte local aplicado na branch derivada:
  - `src/fmsx_host_stubs.c`
  - a UART ganhou `BL238I`, emitido no primeiro frame do logo
  - essa linha mostra o ultimo write absoluto de `R#9`, `R#25`, `R#26` e `R#27`, com porta, `PC`, scanline e valor antigo/novo
- Build local preparada na trilha filha:
  - `BUILD_BID=202604042245-issue238-bootlogo-init-reg-origin`
  - `BUILD_ID=47D9`
  - imagem `sha1 fed1fa2d8f5ec428052b42c1304322c65e2ff704`
- Guardrail de fluxo reafirmado:
  - sem `commit`
  - sem `push`
  - a `#238` continua ativa; a `#82` segue apenas como umbrella

- Atualizacao incremental da `#238`: a leitura offline mais recente deslocou o foco da umbrella do eixo `R#9 interlace` para o eixo `status0 bit5`. A disassembly do `KANJIBASIC` mostrou que o worker `7A48` espera `status0 bit5` em `7A66/7A68` antes de cada par de writes indiretas em `R26/R27`; no core local, esse `bit5` ainda nascia quase todo via `CheckSprites()` em `ScanLine==192`, enquanto o `blueMSX` o atualiza por scanline em `SpriteLine.h`. O corte local da filha `#238` passou a materializar `status0 bit5` live no read path de `0x99` (`R15=0`) com cache por `frame + scanline`, latch de uma vez por linha e limpeza de `status0` em `bit7/6/5` como no `blueMSX`. Build local validada: `BUILD_BID=202604051935-issue238-status0-live-readclear`, `BUILD_ID=7A50`, `BUILD_HASH=cc918b4-4beab8fa3ba4f8d9227da7aef57147335020167d`. Sem `commit`. Sem `push`.
- Atualizacao incremental da `#238`: com o tempo total do boot praticamente fechado e a UART ainda mostrando `R9=00` / `R25=03`, a trilha filha deixou de perseguir `interlace` e passou a atacar diretamente a camada de sprites wide do logo. O corte local novo trocou `FmsxLatchColorSpritesLine()` por um helper wide inspirado em `blueMSX/SpriteLine.h:colorSpritesLine()`, usando tabela de cor por linha, `early clock` e composicao `CC/OR` sem side effects em `VDPStatus[0]`; `src/fmsx_local/Wide.h` passou a usar esse mesmo helper no full-line e no partial path de `SCREEN 6/7`. Build local validada: `BUILD_BID=202604052015-issue238-wide-sprite-helper-unified`, `BUILD_ID=FEA0`, `BUILD_HASH=cc918b4-c7605f0e2b1c088a19bf757ce6e66eaf0e16ce73`. Sem `commit`. Sem `push`.
# Atualizacao incremental de 05/04/2026 - `#238` corrige decoder invertido no path full-line do `SCREEN 6/7`

- A trilha da `#238` encontrou um desvio estrutural local no renderer wide:
  - os paths full-line de `SCREEN 6` e `SCREEN 7` estavam lendo o buffer wide de sprites com os decoders trocados
  - `RefreshLine6()` usava `V9958Screen7WideSpritePixel()`
  - `RefreshLine7()` usava `V9958Screen6WideSpritePixel()`
  - os paths parciais ja estavam corretos
- O corte local desta rodada corrige apenas essa inversao em `src/fmsx_local/Wide.h`
- Validacao local:
  - `BUILD_BID=202604052130-issue238-screen67-fullpath-decoder-fix`
  - `BUILD_ID=984C`
  - artefato `sha1 290494cc6a826372f9032d4e5efe925f17e219cb`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 05/04/2026 - `#238` corrige o packing de cor do helper wide de sprites

- A trilha da `#238` encontrou mais um desvio estrutural contra o `blueMSX`:
  - o helper wide de sprites ainda escrevia o `color_attr` bruto no buffer
  - `SCREEN 6` e `SCREEN 7` exigem packing diferente, como em `blueMSX/SpriteLine.h:colorSpritesLine()`
- O corte local desta rodada corrige esse packing em `src/fmsx_host_stubs.c`
- Validacao local:
  - `BUILD_BID=202604052205-issue238-wide-sprite-color-pack`
  - `BUILD_ID=CC27`
  - artefato `sha1 f63aeb58399c56fe15c206976038b3a574ec7991`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 05/04/2026 - `#238` alinha o partial de `SCREEN 6/7` a 32 celulas

- A trilha da `#238` encontrou um desvio de granularidade no partial renderer wide:
  - o `blueMSX` faz `SCREEN 6/7` parcial em `32` celulas ativas
  - o core local ainda fazia esse caminho em `64` steps
- O corte local desta rodada corrige esse alinhamento em `src/fmsx_local/MSX.c` e `src/fmsx_local/Wide.h`
- Validacao local:
  - `BUILD_BID=202604052245-issue238-screen67-partial-32cells`
  - `BUILD_ID=7AA1`
  - artefato `sha1 c3325891d72049092b100562e0522e161e0b9bbc`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 05/04/2026 - `#238` alinha `readStatus()` ao refresh parcial do `blueMSX`

- A trilha filha `#238` continua com o mesmo producer do logo (`R9=00`, `R25=03`, `R26/R27` por `0x99/0x9B`), mas a comparacao contra o `blueMSX` encontrou um desvio forte no consumo da linha:
  - em `blueMSX`, `readStatus()` roda `sync(vdp, now)` e esse `sync()` tambem avanca o partial refresh
  - no core local, `SCREEN 6/7` ainda so avancavam o partial em writes de VDP e no HBlank
  - como o logo passa a maior parte do tempo em polling de `0x99`, isso podia deixar a composicao wide atrasada mesmo com o producer correto
- Corte local aplicado na filha:
  - `src/fmsx_local/MSX.c`
  - novo helper `fmsx_vdp_sync_status_read_visual()`
  - o case `0x99` agora empurra `fmsx_vdp_render_screen67_partial()` tambem nos reads de status
- Build local validada na filha:
  - `BUILD_BID=202604052230-issue238-statusread-partial-sync`
  - `BUILD_ID=120A`
  - artefato `sha1 34714836c9db9a5a439d4dbf7adf77d8e4254c24`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 05/04/2026 - `#238` aprofunda o diff do helper wide de sprites contra o `blueMSX`

- A trilha filha `#238` parou de abrir cortes visuais rasos e aprofundou o diff estrutural contra `blueMSX/SpriteLine.h:colorSpritesLine()`.
- O achado mais forte desta rodada:
  - o helper wide local ainda usava buffers de `320` bytes, enquanto o `blueMSX` trabalha com envelope de `384`
  - o estado de `CC` (`ccColorMask / ccColorCheckMask`) ainda nao persistia por frame como na referencia
- Corte local aplicado na filha:
  - `src/fmsx_host_stubs.c`
    - helper wide de sprites refeito para usar:
      - buffer de linha/collision em `384`
      - gate de colisao equivalente ao `colChckBuf` do `blueMSX`
      - `CC` persistente por frame
      - composicao `CC/OR` e colisao mais literais
  - `src/fmsx_local/MSX.c`
    - `FmsxVDPLineColorSpritesLatched/Render` ampliados para `384`
  - `src/fmsx_local/Wide.h`
    - buffers temporarios wide ampliados para `384`
- Build local validada na filha:
  - `BUILD_BID=202604052330-issue238-wide-sprite-384cc`
  - artefato `sha1 de34715a3a517b1edbb496bb27d16fed951f1f8a`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 05/04/2026 - `#238` ganha perfil experimental `Z80 Turbo [SLO]`

- A issue filha `#238` recebeu um quarto perfil de turbo para A/B de hardware na linha do boot logo:
  - `NORM=100`
  - `PAN=150`
  - `MAX=200`
  - `SLO=50`
- O objetivo e permitir teste controlado com CPU abaixo da base, sem depender do turbo Panasonic virtual.
- Corte local aplicado na filha:
  - `src/kernel.cpp`
  - `src/fmsx_runtime.c`
  - `src/fmsx_local/MSX.c`
  - `src/tools/menu/combo_menu.cpp`
  - `src/tools/menu/combo_menu_items.cpp`
  - `docs/debug-layer.md`
- Build local validada na filha:
  - `BUILD_BID=202604052245-issue238-turbo-slo-profile`
  - `BUILD_ID=93BC`
  - artefato `sha1 eda31e56a0a17a3b58295b3f7932291f96c1ae6a`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 06/04/2026 - filha `#238` corrige `status0` live e o handoff da linha de sprites wide

- A investigacao profunda da filha `#238` contra o `blueMSX` fechou dois desvios estruturais que sobravam no boot logo do `MSX2+`:
  - o core local ainda reintroduzia `status0 bit5` live no read path de `0x99`, enquanto o `blueMSX` devolve apenas o latch cru e limpa o byte em seguida
  - o pipeline local de sprites wide em `SCREEN 6/7` quebrava o handoff preparado-em-`Y` / consumido-em-`Y+1`, limpando o flag de validade antes de copiar o buffer preparado para o buffer de render
- Corte local aplicado na filha:
  - `src/fmsx_local/MSX.c`
    - `fmsx_vdp_status0_live()` volta a retornar apenas `VDPStatus[0]`
    - o partial wide deixa de recapturar a linha futura de sprites no `rightBorder`
    - o inicio da scanline volta a copiar `FmsxVDPLineColorSpritesLatched -> FmsxVDPLineColorSpritesRender` antes do clear do flag, restaurando o handoff `Y -> Y+1`
- Build local validada na filha:
  - `BUILD_BID=202604052355-issue238-status0-latched-sprite-handoff`
  - `BUILD_ID=B2B2`
  - `BUILD_HASH=35411b2-a16530f4c81e5a7007aaaadaffc058aa138817b6`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 06/04/2026 - filha `#238` abre A/B local `-1..33` vs `0..32`

- Antes de fechar a filha `#238`, a trilha abriu um A/B controlado do partial renderer wide por causa de um sintoma observado em `ZANAC EX`: o placar aparenta ser sobre-escrito em uma scanline, sugerindo problema no contrato de granularidade do partial quando o software troca screen/registers entre linhas.
- Corte local aplicado na filha:
  - `src/fmsx_local/MSX.c`
    - `FmsxVDPLineOffset67` volta a `0`
    - `fmsx_vdp_screen67_line_offset_now()` volta a `0..32`
    - o sentinela `33` deixa de ser usado no partial `SCREEN 6/7`
    - o fechamento da linha volta a chamar o partial com `32`
- Build local validada na filha:
  - `BUILD_BID=202604061000-issue238-screen67-back-to-32`
  - `BUILD_ID=CA87`
  - `BUILD_HASH=35411b2-f25f019fd7a4b314275b86fcc018b43b9f39114b`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 06/04/2026 - filha `#238` volta ao estado estavel e limpa telemetria/`SLO`

- O A/B da filha `#238` entre `-1..33` e `0..32` nao moveu o sintoma em hardware e foi descartado.
- A filha volta ao estado estavel do boot logo `MSX2+` e entra em preparacao de review:
  - `-1..33` restaurado
  - `BL238*`/`BL238W` silenciados
  - `TURBO [SLO]` removido do runtime/menu
- Build local validada na filha:
  - `BUILD_BID=202604061030-issue238-clean-pr`
  - `BUILD_ID=1911`
  - `BUILD_HASH=35411b2-0b9ac33eedb8c6e0f3b5a6c34eeca8d34879b13a`
- Estado operacional:
  - pronto para `git commit`
  - pronto para `git push`

# Atualizacao incremental de 08/04/2026 - ajustes pós-merge da `#238` no menu/config

- Ja de volta na umbrella `#82`, a rodada seguinte corrigiu dois desvios de UX/config que sobraram depois do merge da filha `#238`:
  - `Scale` no `msxbarepi.cfg` ainda era persistido no formato interno legado (`200/250/300...`), enquanto a UI ja operava como `1x..Nx`
  - no menu `Debug`, o item `Debugger [MAX/MIN/OFF]` tratava `left/right` como toggle unico, em vez de respeitar `prev/next`; o ciclo completo deve continuar exclusivo do `F11`
- Corte local aplicado:
  - `src/kernel.cpp`
    - `scale=` passa a ser salvo como fator numerico (`1..N`) em vez do percentual legado
    - o parser continua aceitando formatos antigos (`200/250/300...` e `500`) por compatibilidade defensiva
    - novo helper `PrevDebugOverlayMode()` para o caminho de seta esquerda no menu
  - `src/tools/menu/combo_menu.cpp`
    - o item `Debugger` em `MenuViewDebug` passa a mapear `left -> prev` e `right/enter -> next`
  - `src/tools/menu/combo_menu_items.cpp/.h`
    - `ComboMenuActionToggleOverlay` foi substituido por `ComboMenuActionCycleOverlay` / `ComboMenuActionCycleOverlayPrev`
- Resultado esperado:
  - `msxbarepi.cfg` passa a refletir `scale=1`, `scale=2`, `scale=3`, `scale=4`...
  - `F11` continua ciclando `MAX -> MIN -> OFF`
  - dentro do menu `Debug`, as setas agora andam corretamente para frente e para tras entre `MAX/MIN/OFF`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604082045-issue238-scale-cfg-debug-arrows` (OK)
  - artefato `artifacts/kernel8-issue82.img`
  - `sha1 5808e3b834934df831da4b837b0b01818837263a`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - `scale` volta a carregar corretamente no boot

- O parser de `scale=` no `msxbarepi.cfg` ja estava aceitando corretamente o fator numerico da UI (`1..N`) e os formatos legados, mas o valor persistido ainda podia voltar para `1x` durante o boot.
- Causa raiz:
  - `LoadSettingsFromStorage()` roda em `BT4`, antes da inicializacao HDMI em `BT8`
  - no fim da carga, `ComputeScaleMaxPercentForCurrentFrame(m_Screen.GetWidth(), m_Screen.GetHeight())` ainda via `screen_w/screen_h = 0`
  - isso fazia o clamp inicial tratar o maximo como invalido e derrubar `m_OverscanPercent` para o minimo, mesmo com `scale=` corretamente lido do `.cfg`
- Corte local aplicado:
  - `src/kernel.cpp`
    - `ComputeScaleMaxPercentForCurrentFrame()` passa a devolver `kScalePercentHardMax` enquanto a geometria da tela ainda nao existe (`0x0`)
    - o clamp real continua acontecendo depois da inicializacao do display, quando a resolucao fisica ja e conhecida
- Resultado esperado:
  - `scale=` continua sendo salvo como `1`, `2`, `3`, `4`...
  - o mesmo fator volta corretamente no boot, em vez de colapsar para `1x`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604082215-issue82-scale-load-boot` (OK)
  - artefato `artifacts/kernel8-issue82.img`
  - `BUILD_ID=D65A`
  - `BUILD_HASH=9222903-d07a0146e2cb102beb3136926084f4da9b558c27`
- Estado operacional:
  - sem `git commit`
  - sem `git push`

# Atualizacao incremental de 08/04/2026 - limpeza da telemetria residual do presenter

- A umbrella ainda carregava telemetria UART residual da investigacao do presenter feita na filha `#238`, o que nao deveria ter sobrevivido ao fechamento da issue:
  - `PRES BOOT ...`
  - `PRES LOOP ...`
  - `CSD INIT ...`
  - `CSD DIRTY ...`
  - `CSD PRESENT ...`
- Corte local aplicado:
  - `src/kernel.cpp`
    - removidos os logs temporarios `PRES BOOT` e `PRES LOOP`
    - `PresentIfDirty()` volta a ser chamado sem logging de diagnostico
  - `src/combo_screen_device.cpp`
    - removido o helper `ComboScreenTrace()`
    - removidos os logs temporarios `CSD INIT`, `CSD DIRTY` e `CSD PRESENT`
- Validacao local:
  - `./scripts/check-third-party-pristine.sh` (OK)
  - `make -j4 DEBUG=1 BUILD_BID=202604082245-issue82-remove-presenter-uart` (OK)
  - artefato `artifacts/kernel8-issue82.img`
  - `BUILD_ID=0FB1`
  - `BUILD_HASH=9222903-73a2025d05d587c167fc8a8bcb5f4e4d8bba31fe`
- Estado operacional:
  - sem `git commit`
  - sem `git push`
