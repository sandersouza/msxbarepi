# Handoff Persistente da Branch 238-fechar-boot-logo-msx2plus-precisao-core-v9958

Ultima atualizacao: 04/04/2026 (01:38 -03)

## Objetivo da branch

Fechar a issue `#238` implementando a precisao minima de core do `V9958 stock` necessaria para fazer o boot logo do `MSX2+` rodar com cadencia, paginacao e composicao coerentes com a referencia principal `blueMSX`.

## Vinculo de gestao

- Issue remota: [#238 - [P1] Fechar boot logo do MSX2+ com precisão de core no V9958](https://github.com/sandersouza/msxbarepi/issues/238)
- Branch vinculada via `gh issue develop`: `238-fechar-boot-logo-msx2plus-precisao-core-v9958`
- Branch base/umbrella: `82-auditar-registradores-v9958`
- Target de PR desta branch: `82-auditar-registradores-v9958`
- PR remoto desta branch: ainda nao aberto

## Estado herdado da umbrella

- A `#236` ja foi concluida e mergeada na umbrella via PR `#241`.
- A camada de consolidacao deixou este recorte pronto para implementacao:
  - `IO-004` como ajuste de sync/contrato do status read
  - `CMD-005` como rework do command engine por tempo
  - `REN-004` e o recorte critico de `REN-007` como renderer high-res page-aware
- Itens que ficam fora desta branch:
  - `REG-003` foi desviado para a `#240`
  - `CMD-004` continua sustentado pela base estatica, sem repro dinamico util nesta rodada
  - `REN-008` e a cauda de odd/even permanecem bloqueados por falta de evidencia dinamica util

## Proximo passo objetivo

1. Auditar o caminho atual do boot logo no core local contra o `blueMSX` com foco em:
   - `S#2`, `S#7`, `S#8`, `S#9`
   - `CE`, `TR`, `BD`
   - progressao temporal do command engine
   - composicao page-aware de `SCREEN 6/7`
2. Fechar a ordem real dos patches:
   - status sync
   - engine por tempo
   - renderer `SCREEN 6/7`
3. Implementar e revalidar:
   - boot logo `MSX2+`
   - `STS006`
   - `REG004`
   - `Knightmare Gold`
   - `Gradius2E/Nemesis2E`

## Orientacao operacional imediata

- Fonte tecnica principal:
  - `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- Dossie do boot logo:
  - `docs/reverse-engineering/msx2plus/boot-logo/boot-callflow.md`
  - `docs/reverse-engineering/msx2plus/boot-logo/fix-strategy.md`
- Matriz canonica:
  - `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- Arquivos-alvo provaveis desta branch:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`

## Atualizacao incremental de 03/04/2026 - ativacao da branch

- A `#236` foi encerrada:
  - PR `#241` mergeado na umbrella
  - issue `#236` fechada
  - item da issue `#236` em `Done` no projeto `MSX BarePI`
- A `#238` passa a ser a primeira issue tecnica ativa da camada de correcao derivada da trilha `#82`.
- O objetivo desta branch deixa de ser descoberta/documentacao e passa a ser implementacao no core, guiada pelo backlog consolidado:
  - `IO-004`
  - `CMD-005`
  - `REN-004`
  - recorte central de `REN-007`

## Atualizacao incremental de 03/04/2026 - primeiro patch de core (`BL-001` + base de `BL-002`)

- Foi aplicado o primeiro corte funcional no bloco de comandos do `V9958`:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
- Alvo semantico principal usado no diff:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
- O que mudou no core local:
  - `fmsx_vdp_sync_before_status_read()`, `fmsx_vdp_sync_before_cpu_mutation()`, `VDPRead()`, `VDPWrite()` e `LoopVDP()` deixaram de drenar no maximo um slice do engine
  - o engine agora acumula budget por delta de tempo monotônico do CPU (`fmsx_vdp_cpu_cycles_now()`), em vez de depender exclusivamente do lump fixo por `LoopVDP()`
  - `R#46` continua apenas armando `CE/state`; o patch nao reintroduz consumo imediato no start do comando
- Restricao arquitetural assumida nesta rodada:
  - o backend local nao espelha literalmente o `systemTime` do `blueMSX`
  - os `timing[]` locais ja estao calibrados para a escala historica do backend derivado de `fMSX`
  - por isso, o primeiro patch preserva a vazao media local por scanline e redistribui esse budget ao longo do tempo real do core, em vez de trocar os `timing[]` absolutos no mesmo ciclo
- Build local validada:
  - `BUILD_BID=202604031130-issue238-vdp-time-sync`
  - `BUILD_ID=050B`
  - `BUILD_HASH=26d676a-2b85c3c8dce987f4281c92bfb4249fd6d256de35`
  - artefato: `artifacts/kernel8-issue238.img`
- Estado operacional apos este corte:
  - ainda falta validacao em hardware do boot logo `MSX2+`
  - se o logo ganhar cadencia mas ainda mostrar tarjas/pagina errada, o proximo ataque continua sendo `REN-004` + recorte central de `REN-007`

## Atualizacao incremental de 03/04/2026 - descarte da regressao `E3EC`

- O segundo corte do engine, que tentou colapsar `delta_cycles => budget` de forma literal ao `blueMSX`, regrediu em hardware:
  - a build `E3EC` passou a congelar ainda na tela azul anterior ao boot logo
  - o overlay mostrou o BIOS parado antes do inicio da animacao, portanto a rodada deixou de ser apenas "lenta demais" e virou hang real
- Decisao tecnica desta rodada:
  - descartar o corte `E3EC` como baseline da branch
  - restaurar o modelo temporal da `050B`, que ainda preserva a vazao media historica do backend local por scanline
  - manter o `blueMSX` como referencia semantica, mas nao forcar nesta rodada a mesma escala absoluta de budget/timing
- Implementacao restaurada em `src/fmsx_local/V9938.c`:
  - `VdpOpsQuantum()` volta ao modelo da `050B`
  - `srch_timing`, `line_timing`, `hmmv_timing`, `lmmv_timing`, `ymmm_timing`, `hmmm_timing` e `lmmm_timing` voltam aos valores locais anteriores ao experimento `E3EC`
- Build local validada apos o rollback:
  - `BUILD_BID=202604031435-issue238-drop-abs-timing-regression`
  - `BUILD_ID=CBAC`
  - `BUILD_HASH=6967d68-ef1f9b429bfa4c1a6b3fd11d0ad9a32adf1247dd`
  - artefato: `artifacts/kernel8-issue238.img`
- Consequencia pratica para a branch:
  - o proximo corte tecnico volta a partir da base segura `050B`
  - renderer `SCREEN 6/7` page-aware + odd/even/interlace passa a ser o proximo alvo principal, em vez de insistir no pacing absoluto que travou o BIOS

## Atualizacao incremental de 03/04/2026 - primeiro corte de renderer `SCREEN 6/7`

- A validacao em hardware da build `CBAC` confirmou o estado seguro esperado da branch:
  - o boot logo volta a sair da tela azul e chega a iniciar
  - a cadencia continua lenta
  - permanecem sintomas visuais de `MASK`/pagina errada, coerentes com `REN-004` + recorte central de `REN-007`
- Com isso, a branch saiu do bloco de timing absoluto do engine e entrou no primeiro patch de renderer high-res:
  - arquivo alterado: `src/fmsx_local/Wide.h`
  - referencia primaria usada: `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- O que mudou neste corte:
  - `SCREEN 6/7` continuam montando a linha via `BgRaw`, mas a ordem logica das paginas passa a respeitar `chrTabBase bit15` quando `hScroll512`/multipage estao ativos, em vez de assumir sempre "pagina atual depois pagina seguinte"
  - o `left-edge mask` deixa de herdar a cor do primeiro pixel scrolado e volta a usar a cor de fundo do modo, alinhando o comportamento ao fluxo observado no `blueMSX`
- Restricao assumida nesta rodada:
  - ainda nao foi portada a composicao streaming completa com `jumpTable` no renderer local
  - o objetivo desta build e validar se a simples correcao de ordem logica de pagina + cor do mask ja move o boot logo para um estado visual mais proximo do alvo, sem reintroduzir o hang descartado em `E3EC`
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen67-page-order`
  - `BUILD_ID=70ED`
  - `BUILD_HASH=a621e95-c5907ef75b5ef5ef9c92110459d20bcaa8ebac0f`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - validar em hardware se esta build reduz pagina errada/tarja e melhora a leitura visual do boot logo sem perder o baseline seguro de boot da `CBAC`

## Atualizacao incremental de 03/04/2026 - habilitacao do path hi-res interlaced no baremetal

- O primeiro corte de renderer (`70ED`) nao moveu os sintomas principais em hardware:
  - `MASK` continuou visivel
  - pagina errada/tarja nao melhorou de forma perceptivel
  - a cadencia permaneceu lenta
  - o quadro continuou sem aparencia pratica de interlace
- O diff seguinte nao entrou mais no renderer em si; ele atacou o host local:
  - arquivo alterado: `src/fmsx_host_stubs.c`
  - referencia conceitual usada: `third_party/fmsx/libretro.c`
- Diagnostico fechado:
  - o baremetal herdava de `libretro` a variavel `hires_mode`, mas sem um equivalente do frontend `fmsx_hires`
  - como o default local estava em `HIRES_OFF`, o caminho de apresentacao hi-res/interlaced permanecia desligado mesmo quando o VDP ativava `InterlaceON`
- Mudanca aplicada:
  - o host baremetal passa a inicializar `g_hires_mode` em `HIRES_INTERLACED`
  - isso reabre o caminho de apresentacao odd/even/interlaced sem depender de uma opcao de frontend inexistente no projeto
- Build local validada:
  - `BUILD_BID=202604031710-issue238-hires-default-interlaced`
  - `BUILD_ID=C2C2`
  - `BUILD_HASH=d195e4d-5ab3d9413e1422b2cc97922bdec5c5c3dfba61ff`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - validar em hardware se o boot logo finalmente ganha leitura pratica de interlace/odd-even
  - se isso acontecer, o proximo corte volta ao renderer `SCREEN 6/7` para atacar `MASK`/pagina errada com o path hi-res ja habilitado

## Atualizacao incremental de 03/04/2026 - `C2C2` sem efeito visual e recorte no `SCREEN 6` wide

- O round seguinte em hardware confirmou que a build `C2C2` nao moveu o estado visivel do boot logo:
  - `MASK` continuou visivel
  - pagina/tarja errada nao melhorou
  - a cadencia permaneceu lenta
  - nao apareceu leitura pratica de interlace
- Diagnostico consolidado desta rodada:
  - o `hires_mode` default do host deixou de ser o gargalo principal
  - o sintoma visivel dominante segue no renderer `SCREEN 6` wide
  - o primeiro patch de `Wide.h` tambem foi insuficiente porque tentava reordenar paginas a partir de `ChrTab`, mas o core local ja neutraliza `R#2 bit5` em `fmsx_vdp_r2_base()` quando `multipage` esta ativo
- Novo corte aplicado em `src/fmsx_local/Wide.h`, ainda usando `blueMSX/Common.h` como referencia primaria:
  - remove a heuristica local de reorder de pagina baseada em `ChrTab bit15`
  - faz o renderer wide de `SCREEN 6` assumir a topologia `base + 0x8000`, alinhada ao contrato local do `ChrTab`
  - repinta a borda lateral do `SCREEN 6` wide com o padrao alternado de `BGColor[hi/lo]`, espelhando `RefreshBorder6()` do `blueMSX`
  - dobra o `left-edge mask` fisico do `SCREEN 6` wide para `16` pixels, como no `blueMSX` line512
- Build local validada:
  - `BUILD_BID=202604031830-issue238-screen6-edge-mask`
  - `BUILD_ID=E520`
  - `BUILD_HASH=2bcfd13-da6cb9d57eebc4c7ded4856f93b0d0f840a5038a`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `E520`
  - verificar se o `MASK` finalmente muda de leitura visual; se nao mudar, o proximo corte deixa de ser borda/mask e passa a ser streaming/page source de `SCREEN 6`

## Atualizacao incremental de 03/04/2026 - retorno controlado ao pacing do command engine

- O reteste em hardware da `E520` confirmou que o recorte visual ainda nao move o sintoma: nada mudou no boot logo.
- Leitura consolidada desta rodada:
  - borda/mask nao sao mais o primeiro gargalo
  - o ponto que ainda conversa com o que aparece em campo e a cadencia do command engine em `SM:06`
  - o experimento `E3EC` continua descartado; a volta ao pacing deve ser incremental e limitada
- Novo corte aplicado em `src/fmsx_local/V9938.c`:
  - `VdpOpsQuantum()` deixa de usar um valor unico para todo `MSX2+`
  - com `CE=1`, o budget sobe de forma limitada
  - `SCREEN 6/7/8` ganham uplift maior (`500000`) enquanto o restante do `MSX2+` fica em uplift moderado (`300000`)
  - sem `CE`, o baseline seguro da branch continua igual (`250000`)
- Racional tecnico:
  - o `blueMSX` continua sendo a referencia semantica primaria para um engine mais "continuous-time"
  - este corte nao reintroduz os `timing[]` absolutos descartados na `E3EC`
  - a intencao e recuperar throughput do boot logo sem reabrir a regressao de pre-logo azul
- Build local validada:
  - `BUILD_BID=202604031930-issue238-screen6-ce-uplift`
  - `BUILD_ID=2865`
  - `BUILD_HASH=13c4905-e5047616bb1edd3052f3b0e3415715ff51ed12e1`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware
  - verificar se a cadencia finalmente muda; se permanecer identica, o proximo corte sobe para sincronizacao de scanout/renderer com estado parcial do command engine, e nao mais para ajustes cosmeticos

## Atualizacao incremental de 03/04/2026 - scanout parcial de `SCREEN 6/7`

- O round seguinte em hardware da `2865` confirmou o diagnostico que faltava:
  - o quadro ruim do boot logo continuou exatamente no mesmo ponto
  - a cadencia nao mudou
  - o `MASK` nao mudou
  - os frames uteis do overlay seguiam mostrando `CE=0`
- Leitura consolidada desta rodada:
  - o uplift de `VdpOpsQuantum()` com `CE=1` estava atuando no lugar errado para este sintoma
  - o problema visivel restante conversa mais com scanout/render de `SCREEN 6` durante writes de VRAM/registradores do que com throughput do command engine
  - a referencia primaria volta a ser o fluxo incremental `X..X2` do `blueMSX/Common.h` para `RefreshLine6()/RefreshLine7()`
- Novo corte aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/Wide.h`
- O que mudou no core local:
  - `fmsx_vdp_sync_before_cpu_write()` deixou de curto-circuitar todo o caminho fora da janela do `Knightmare Gold`
  - `SCREEN 6/7` agora calculam o progresso da linha pelo tempo ja escaneado e congelam apenas o prefixo visivel antes da mutacao do VDP
  - `Wide.h` ganhou `RefreshLine6WideRange()` e `RefreshLine7WideRange()` para compor o trecho ja exposto da linha, preservando o sufixo para o estado posterior ao write
  - o flush completo da linha continua restrito ao caso especial de `KMG` em `SCREEN 4`
- Restricao arquitetural desta rodada:
  - o backend local ainda nao espelha literalmente o renderer streaming do `blueMSX`
  - esta build porta so o contrato minimo necessario de scanout parcial para `SCREEN 6/7`, preservando o restante do pipeline atual
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen6-partial-scanout`
  - `BUILD_ID=894F`
  - `BUILD_HASH=8a4947c-00efee1ad301422d4ffa66201b3e2a3858304be4`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware
  - verificar se a pagina/tarja passa a reagir ao ponto real do problema; se ainda nao reagir, o proximo corte sobe para latch mais agressivo do estado de display por scanline (`odd/even`, page source e scroll)

## Atualizacao incremental de 04/04/2026 - latch por scanline em `SCREEN 6/7` + build `aarch64-elf`

- O round seguinte em hardware da `894F` confirmou ausencia total de efeito visual:
  - `MASK` continuou visivel
  - pagina/tarja errada continuou no mesmo ponto
  - cadencia permaneceu igual
  - sem aparencia pratica de interlace
- Leitura consolidada desta rodada:
  - o scanout parcial por prefixo ainda era insuficiente porque o renderer wide continuava consultando `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27` e `odd-page` ao vivo durante a mesma linha
  - o `blueMSX/Common.h` usa esses elementos como estado efetivamente latched no inicio da linha para `SCREEN 6`, e nao como fonte live a cada trecho recomposto
- Novo corte aplicado:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/Wide.h`
  - `Makefile`
  - `src/Makefile`
  - `src/math.h`
  - `src/fmsx_math_shim.c`
- O que mudou no core local:
  - `LoopZ80()` agora congela por scanline o estado de display relevante para `SCREEN 6/7`: `ChrTab`, `ChrTabM`, `R#2`, `R#25`, `R#26`, `R#27`, `odd-page` efetivo e o `vscroll` ja latched
  - o renderer wide passa a usar esse snapshot em todos os calculos de source/page/coarse scroll/fine scroll/mask/virtual width, em vez de recomputar esses sinais ao vivo no meio da linha
  - o override de `vscroll` do render path tambem passou a cobrir `SCREEN 6/7`, nao apenas o caso especial legado de `SCREEN 4`
- Ajuste de build incorporado nesta rodada:
  - `Makefile` e `src/Makefile` passam a propagar `PREFIX64=$(CROSS)` para `src` e para os subbuilds do `Circle`, destravando o uso da toolchain autodetectada `aarch64-elf-`
  - como a toolchain Homebrew `aarch64-elf` e `--without-headers`, o projeto ganhou um `math.h` freestanding local e um shim minimo de `sin/log/log10/pow` para manter a build full-feature sem depender de `newlib`
- Build local validada:
  - `BUILD_BID=202604041430-issue238-screen6-line-latched-state`
  - `BUILD_ID=4FB0`
  - `BUILD_HASH=e298d4e-d03d3116b86dbc2bc49478da1ff60c3e769581b7`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `4FB0`
  - responder apenas estes quatro pontos:
    - entra normal ou nao
    - a cadencia mudou ou nao
    - o `MASK` mudou ou nao
    - a tarja/pagina errada mudou ou continua no mesmo ponto

## Atualizacao incremental de 04/04/2026 - `4FB0` sem efeito visual e scroll fisico dobrado em `SCREEN 6/7`

- O round seguinte em hardware da `4FB0` confirmou ausencia total de efeito visual:
  - `MASK` continuou visivel
  - tarja/pagina errada continuou no mesmo ponto
  - a cadencia permaneceu lenta
  - nao apareceu leitura pratica de interlace
- A validacao do video local com `ffprobe`/frames reforcou o mesmo estado do overlay nos quadros uteis:
  - `SM:06`
  - `R2:3F`
  - `R25:03`
  - `R26/R27` variando, mas sem mudanca de sintoma
  - `EP:1`
  - `CE:0`
  - `TR:0`
- Leitura consolidada desta rodada:
  - o latch por scanline passou a congelar o estado correto por linha, mas o renderer wide ainda aplicava `R#26/R#27` em unidade logica
  - no `blueMSX`, o path `line512` de `SCREEN 6/7` opera no espaco fisico dobrado da linha, entao coarse scroll, fine scroll e left-edge mask precisam caminhar em dobro no scanout wide
  - isso explica por que a pagina errada, o `MASK` visivel e a cadencia percebida permaneceram identicos mesmo depois do latch do estado de display
- Novo corte aplicado:
  - `src/fmsx_local/Wide.h`
- O que mudou no renderer local:
  - `SCREEN 6/7` wide passam a usar coarse scroll e fine scroll em unidade fisica dobrada (`<< 1`) no scanout
  - o `left-edge mask` de `SCREEN 7` wide tambem passa a cobrir `16` pixels fisicos, como o `SCREEN 6`
  - a implementacao continua usando o snapshot por linha introduzido na `4FB0`; o corte desta rodada corrige apenas a unidade horizontal usada no compositor wide
- Referencia primaria usada no diff:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- Build local validada:
  - `BUILD_BID=202604041620-issue238-screen67-physical-scroll`
  - `BUILD_ID=C079`
  - `BUILD_HASH=16da695-9edab52930a87d5a297e94ad32752c850250b185`
  - artefato: `artifacts/kernel8-issue238.img`
- Proximo gate:
  - retestar o boot logo `MSX2+` em hardware com a `C079`
  - responder apenas estes quatro pontos:
    - entra normal ou nao
    - a cadencia mudou ou nao
    - o `MASK` mudou ou nao
    - a tarja/pagina errada mudou ou continua no mesmo ponto
