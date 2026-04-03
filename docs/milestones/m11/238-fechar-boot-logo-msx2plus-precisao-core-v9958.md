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
