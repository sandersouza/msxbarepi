# Issue #238 - Fechar boot logo do MSX2+ com precisão de core no V9958

- URL: https://github.com/sandersouza/msxbarepi/issues/238
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `bug`, `priority:P1`, `area:video`, `area:timing`, `area:emulation`
- Estado local atual: IN PROGRESS

## Objetivo
Implementar a precisão mínima necessária no nosso core do `V9958 stock` para fazer o boot logo do `MSX2+` funcionar com cadência, paginação e composição corretas, usando `blueMSX` como referência semântica principal e `V9958-Super` como validação cruzada de HDL.

## Contexto técnico
- A investigação consolidada em `docs/reverse-engineering/msx2plus/` confirmou que o problema do boot logo não é “falta de ROM”.
- O `ROM set` local continua coerente com o `HB-F1XDJ` do `openMSX`:
  - `MSX2P.ROM`
  - `MSX2PEXT.ROM`
  - `KANJIBASIC.ROM`
  - `KANJI.ROM`
- O `z80dasm` mostrou que o fluxo do logo está na `MSX2PEXT.ROM` e usa pesado o bloco de comandos do VDP:
  - `0x2BE4/0x2BEF`: polling de `S#2`
  - `0x32CD`: leitura de `S#7`
  - `0x32E7`: escrita indireta via `R#17`
  - `0x2E3E`, `0x2EBF`, `0x3040`, `0x3299`: lotes de `R#32..R#45` por `0x9B`, seguidos de disparo em `R#46`
- A análise comparativa fechou três blocos restantes como principais candidatos de causa raiz:
  - sync temporal de `S#2`, `S#7`, `S#8` e `S#9`
  - command engine ainda baseado em quantum fixo, diferente do modelo por tempo corrido do `blueMSX`
  - renderer de `SCREEN 6/7` ainda simplificado para multipage, odd/even, `R#25/R#26/R#27`, `R#2 bit5` e `R#9 interlace`

## Estratégia de ataque

### Fase 1 - Status e contrato do bloco de comandos
- Alinhar `InZ80()` e `fmsx_vdp_sync_before_status_read()` para que `S#2`, `S#7`, `S#8` e `S#9` reflitam o estado do VDP no tempo certo.
- Fechar o contrato de `CE`, `TR` e `BD` com foco em:
  - polling de `S#2`
  - leitura de `S#7`
  - janela de transferência via `R#44`

### Fase 2 - Command engine por tempo
- Substituir a progressão por quantum fixo em `LoopVDP()` por um modelo dirigido por tempo/ciclos corridos, semanticamente compatível com `blueMSX`.
- Manter o comportamento já alinhado em que `R#46` apenas arma o comando, sem consumir trabalho extra imediatamente.

### Fase 3 - Renderer `SCREEN 6/7`
- Reescrever a composição de `SCREEN 6/7` para um fluxo page-aware, em vez do modelo atual de expandir a linha inteira para `BgRaw` e só depois aplicar scroll.
- Tratar como um único bloco:
  - `R#25`
  - `R#26`
  - `R#27`
  - `R#2 bit5`
  - odd/even
  - multipage
  - `R#9 interlace`

### Fase 4 - Validação
- Revalidar primeiro o boot logo do `MSX2+`.
- Em seguida, repetir o corpus mínimo da `#82`:
  - `STS006`
  - `REG004`
  - `Knightmare Gold`
  - `Gradius2E/Nemesis2E`

## Escopo técnico
- Implementar as correções em:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`
- Usar como referências obrigatórias:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
  - `third_party/V9958-Super/src/vdp/vdp_register.sv`
  - `third_party/V9958-Super/src/vdp/vdp_command.sv`
  - `third_party/V9958-Super/src/vdp/vdp_graphic4567.v`

## Fora de escopo
- Trocar `ROM set` como primeira tentativa de correção
- Reabrir hipóteses genéricas de “ROM ausente” antes de fechar o core
- Tratar `R#29+` ou extensões proprietárias do `V9958-Super`
- Criar harness novo fora do corpus já estabelecido na `#82`

## DoR
- [x] Matriz canônica consolidada
- [x] Dossiê do boot logo consolidado com offsets confirmados por `z80dasm`
- [x] Backlog implementável derivado da `#236`
- [x] Ordem técnica de ataque fechada

## DoD
- [ ] O boot logo do `MSX2+` anima com cadência compatível com a referência
- [ ] O quadro final não apresenta blocos/tarjas de página errada
- [ ] `S#2` e `S#7` obedecem ao fluxo esperado pela `MSX2PEXT.ROM`
- [ ] `STS006` e `REG004` continuam válidos após as correções
- [ ] Não há regressão visual óbvia em `Knightmare Gold` e `Gradius2E/Nemesis2E`

## Checklist operacional
- [ ] Fechar sync temporal de `S#2/S#7/S#8/S#9`
- [ ] Migrar o command engine para progressão por tempo
- [ ] Fechar `CE/TR/BD` no caminho observado pelo BIOS
- [ ] Reescrever `SCREEN 6/7` para fluxo page-aware
- [ ] Revalidar o corpus mínimo da `#82`
- [ ] Atualizar a matriz e o dossiê com o veredito final da implementação

## Testes e cenários
- Boot logo `MSX2+`
  - reprodução principal
  - critério de aceite: cadência normal, sem tarjas e sem página errada
- `STS006`
  - validação de `SRCH`, `S#2`, `S#8` e `S#9`
- `REG004`
  - validação de `R#17/0x9B`
- `Knightmare Gold`
  - regressão de timing e renderer
- `Gradius2E/Nemesis2E`
  - regressão de scroll, multipage e addressing

## Referências iniciais
- `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- `docs/reverse-engineering/msx2plus/boot-logo/boot-callflow.md`
- `docs/reverse-engineering/msx2plus/boot-logo/fix-strategy.md`
- `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- `docs/reverse-engineering/issues/issue-82/README.md`

## Vinculo operacional
- Branch derivada ativa: `238-fechar-boot-logo-msx2plus-precisao-core-v9958`
- Branch umbrella/base: `82-auditar-registradores-v9958`
- PR alvo desta branch: `82-auditar-registradores-v9958`

## Atualização incremental de 03/04/2026
- A `#236` foi concluida e mergeada na umbrella `#82` via PR `#241`.
- Esta issue passa a ser a primeira frente ativa de implementação da camada de correção do `V9958 stock`.
- O objetivo imediato desta branch deixa de ser descoberta e passa a ser implementar, na ordem já consolidada:
  - sync temporal de status
  - command engine por tempo
  - renderer `SCREEN 6/7` page-aware

## Atualizacao incremental de 03/04/2026 - primeiro corte de implementacao
- O primeiro patch de core desta issue entrou em `src/fmsx_local/MSX.c` e `src/fmsx_local/V9938.c`.
- Referencia primaria usada no diff:
  - `blueMSX/VDP.c:readStatus(), write(), sync()`
  - `blueMSX/V9938.c:vdpCmdExecute()`
- Decisao tecnica desta rodada:
  - trocar o flush coarse de "um slice" por acumulacao temporal do engine baseada no contador monotônico de CPU do core local
  - preservar, neste primeiro corte, a vazao media local por scanline para evitar trocar ao mesmo tempo a escala dos `timing[]`
- Efeito esperado para hardware:
  - `S#2/S#7/S#8/S#9` deixam de chegar um passo atrasados em relacao ao polling do BIOS
  - o boot logo deve ganhar cadencia melhor antes de qualquer rework de renderer
- Build local validada:
  - `BUILD_BID=202604031130-issue238-vdp-time-sync`
  - `BUILD_ID=050B`
  - `BUILD_HASH=26d676a-2b85c3c8dce987f4281c92bfb4249fd6d256de35`
- Proximo gate:
  - validar o boot logo `MSX2+` em hardware com a build `050B`

## Atualizacao incremental de 03/04/2026 - regressao `E3EC` descartada
- O segundo corte de pacing do engine, que tentou colapsar `delta_cycles => budget` na mesma escala absoluta do `blueMSX`, foi testado em hardware e descartado.
- Evidencia de campo:
  - a build `E3EC` passou a congelar ainda na tela azul anterior ao boot logo
  - o problema deixou de ser apenas "cadencia insuficiente" e virou regressao de boot
- Decisao tecnica:
  - restaurar o comportamento temporal da `050B`
  - nao insistir nesta issue no alinhamento literal dos `timing[]` enquanto o BIOS ainda trava antes do logo
- Build local validada apos o rollback:
  - `BUILD_BID=202604031435-issue238-drop-abs-timing-regression`
  - `BUILD_ID=CBAC`
  - `BUILD_HASH=6967d68-ef1f9b429bfa4c1a6b3fd11d0ad9a32adf1247dd`
- Leitura operacional:
  - a base segura da branch continua sendo o primeiro corte temporal (`050B`)
  - o proximo trabalho util volta a ser renderer `SCREEN 6/7` page-aware + odd/even/interlace

## Atualizacao incremental de 03/04/2026 - primeiro corte de renderer `SCREEN 6/7`

- A base segura da issue foi confirmada em hardware com a `CBAC`: lenta, mas voltando a entrar no boot logo.
- O foco ativo da issue saiu do engine e entrou no primeiro corte do renderer high-res:
  - `src/fmsx_local/Wide.h`
  - alvo primario: `REN-004`
  - recorte associado: parte central de `REN-007`
- Implementacao desta rodada:
  - `SCREEN 6/7` passam a respeitar a ordem logica de paginas derivada de `chrTabBase bit15` quando `R#2 bit5 + multipage` estao ativos
  - o `left-edge mask` em `SCREEN 6/7` deixa de usar o primeiro pixel scrolado como cor de preenchimento e volta a usar a cor de fundo do modo, alinhando o comportamento ao renderer do `blueMSX`
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen67-page-order`
  - `BUILD_ID=70ED`
  - `BUILD_HASH=a621e95-c5907ef75b5ef5ef9c92110459d20bcaa8ebac0f`
- Proximo teste:
  - retestar o boot logo do `MSX2+` em hardware com a `70ED`
  - decidir se o proximo corte segue para border/interlace/odd-even streaming ou se esta rodada ja remove parte relevante da pagina errada

## Atualizacao incremental de 03/04/2026 - host hi-res/interlaced reabilitado

- O teste de hardware da `70ED` nao trouxe melhora perceptivel:
  - `MASK` permaneceu visivel
  - pagina errada/tarja nao melhorou
  - a cadencia seguiu lenta
  - o quadro continuou sem aparencia de interlace
- Diagnostico seguinte da issue:
  - o problema nao estava apenas no renderer `SCREEN 6/7`
  - o host baremetal ainda herdava um default equivalente a `fmsx_hires=OFF` do `libretro`, o que suprimia o path hi-res/interlaced sempre que o projeto nao oferecia um frontend equivalente
- Mudanca aplicada:
  - `src/fmsx_host_stubs.c` passa a inicializar `g_hires_mode` em `HIRES_INTERLACED`
- Build local validada:
  - `BUILD_BID=202604031710-issue238-hires-default-interlaced`
  - `BUILD_ID=C2C2`
  - `BUILD_HASH=d195e4d-5ab3d9413e1422b2cc97922bdec5c5c3dfba61ff`
- Proximo teste:
  - validar em hardware se o boot logo finalmente passa a mostrar comportamento interlaced/odd-even
  - so depois voltar ao proximo corte de renderer page-aware

## Atualizacao incremental de 03/04/2026 - `C2C2` sem efeito visual e recorte no `SCREEN 6` wide

- O teste de hardware seguinte confirmou que a build `C2C2` nao mudou a leitura visual do boot logo:
  - `MASK` seguiu visivel
  - pagina errada/tarja nao mudou
  - a cadencia permaneceu lenta
  - nao apareceu leitura pratica de interlace
- Decisao tecnica desta rodada:
  - parar de tratar o host `hires_mode` como gargalo principal
  - recortar o problema no renderer `SCREEN 6` wide, que e o modo ativo do boot logo
- Mudanca aplicada em `src/fmsx_local/Wide.h`:
  - remocao da heuristica de reorder de paginas baseada em `ChrTab`, porque o core local ja neutraliza `R#2 bit5` em `fmsx_vdp_r2_base()` no caminho `multipage`
  - borda lateral de `SCREEN 6` wide passa a usar o padrao alternado `BGColor[hi/lo]` do `blueMSX`
  - `left-edge mask` fisico de `SCREEN 6` wide passa a cobrir `16` pixels, como no renderer line512 do `blueMSX`
- Build local validada:
  - `BUILD_BID=202604031830-issue238-screen6-edge-mask`
  - `BUILD_ID=E520`
  - `BUILD_HASH=2bcfd13-da6cb9d57eebc4c7ded4856f93b0d0f840a5038a`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware com a `E520`
  - se o `MASK` nao mudar, promover o proximo corte para o source/page streaming de `SCREEN 6`

## Atualizacao incremental de 03/04/2026 - retorno controlado ao pacing do command engine

- O round seguinte em hardware da `E520` confirmou ausencia de ganho visual: nada mudou no boot logo.
- Decisao tecnica desta rodada:
  - parar de insistir em recortes visuais pequenos de `Wide.h`
  - voltar ao eixo de throughput do command engine, mas sem repetir o experimento absoluto descartado na `E3EC`
- Mudanca aplicada em `src/fmsx_local/V9938.c`:
  - `VdpOpsQuantum()` passa a elevar o budget so quando `CE=1`
  - `SCREEN 6/7/8` recebem uplift maior (`500000`)
  - outros caminhos `MSX2+` com `CE=1` recebem uplift moderado (`300000`)
  - sem comando ativo, o baseline seguro da branch permanece em `250000`
- Build local validada:
  - `BUILD_BID=202604031930-issue238-screen6-ce-uplift`
  - `BUILD_ID=2865`
  - `BUILD_HASH=13c4905-e5047616bb1edd3052f3b0e3415715ff51ed12e1`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware
  - se a cadencia continuar identica, promover o proximo corte para sincronizacao de scanout com progresso parcial do engine

## Atualizacao incremental de 03/04/2026 - scanout parcial de `SCREEN 6/7`

- O teste seguinte da `2865` confirmou que o corte de pacing estava no lugar errado: o quadro ruim do boot logo permaneceu igual e os frames uteis seguiam com `CE=0`.
- Decisao tecnica desta rodada:
  - abandonar novos uplifts de `VdpOpsQuantum()` para este sintoma especifico
  - mover o foco para scanout parcial de `SCREEN 6/7`, alinhando o core local ao contrato incremental observado no `blueMSX`
- Mudanca aplicada:
  - `src/fmsx_local/MSX.c` deixa de curto-circuitar o sync antes de write fora da janela do `KMG`
  - `src/fmsx_local/Wide.h` ganha `RefreshLine6WideRange()` e `RefreshLine7WideRange()`
  - o sync de writes do VDP passa a congelar apenas o prefixo ja escaneado da linha em `SCREEN 6/7`
- Build local validada:
  - `BUILD_BID=202604031620-issue238-screen6-partial-scanout`
  - `BUILD_ID=894F`
  - `BUILD_HASH=8a4947c-00efee1ad301422d4ffa66201b3e2a3858304be4`
- Proximo teste:
  - retestar o boot logo `MSX2+` em hardware
  - se a tarja/pagina errada ainda nao reagir, promover o proximo corte para latch por scanline de `odd/even`, page source e scroll
