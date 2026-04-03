# Handoff Persistente da Branch 238-fechar-boot-logo-msx2plus-precisao-core-v9958

Ultima atualizacao: 03/04/2026 (14:35 -03)

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
- Consequencia pratica para a branch:
  - o proximo corte tecnico volta a partir da base segura `050B`
  - renderer `SCREEN 6/7` page-aware + odd/even/interlace passa a ser o proximo alvo principal, em vez de insistir no pacing absoluto que travou o BIOS
