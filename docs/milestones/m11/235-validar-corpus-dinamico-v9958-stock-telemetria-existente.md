# Issue #235 - Validar corpus dinâmico do V9958 stock com telemetria já existente

- URL: https://github.com/sandersouza/msxbarepi/issues/235
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`, `documentation`
- Estado local atual: BACKLOG

## Objetivo
Usar apenas a instrumentação já existente no projeto para fechar ou bloquear explicitamente as linhas `disputed` e as divergências mais importantes da matriz comparativa do V9958 stock.

## Contexto técnico
- O projeto já tem observabilidade útil em hardware sem precisar de harness novo:
  - overlays `TM2`, `TM3`, `TM4`, `TM6`
  - eventos `VDP EVT` na UART
  - contadores e traces em `src/fmsx_local/MSX.c` e `src/fmsx_runtime.c`
- A `#82` já usou esse caminho para vários achados sobre:
  - `S#1`
  - `S#2`
  - `IE1`
  - multipage
  - boot logo `MSX2+`
- O objetivo desta issue é transformar isso em evidência formal da matriz, não inventar um novo ambiente de teste.

## Corpus fixo
- boot logo `MSX2+`
- `MSXDIAG`
- `Gradius2E/Nemesis2E`
- `Knightmare Gold`

## Regra de execução
- Usar apenas infraestrutura existente:
  - overlay `TM2/TM3/TM4/TM6`
  - UART `VDP EVT`
  - contadores/trace já disponíveis no runtime
- Telemetria nova só entra se uma linha crítica da matriz não puder ser fechada sem ela.

## Fora de escopo
- Criar harness novo
- Corrigir o core nesta issue
- Abrir novos repros fora do corpus definido sem necessidade comprovada

## DoR
- [x] Matriz canônica criada
- [x] Linhas `disputed` e gaps prioritários já identificados
- [x] Corpus dinâmico fixo escolhido
- [x] Telemetria existente mapeada

## DoD
- [ ] Toda linha `disputed` importante tem evidência dinâmica anexada ou bloqueio explícito
- [ ] Nenhum harness novo foi criado
- [ ] Nenhuma telemetria nova foi adicionada sem justificativa objetiva
- [ ] Cada repro do corpus está ligado a linhas concretas da matriz

## Checklist operacional
- [ ] Mapear quais linhas exigem evidência dinâmica
- [ ] Executar o corpus base com telemetria existente
- [ ] Anexar evidências relevantes no diretório da `#82` e na matriz
- [ ] Registrar bloqueios explícitos quando a evidência não puder ser coletada

## Mapeamento preliminar de evidência

### IRQ e command engine
- `IRQ-001`:
  - repro principal: `Knightmare Gold`
  - overlay: `TM2` (`I1/F1`) e `TM4` (`I1:a/b`, `IA`, `IH`)
  - trace: `TM6B` (`I1A`, `I1F`, `S1`) e UART `VDP EVT`
  - objetivo: provar se o latch de `S#1 bit0` continua sticky mesmo com `IE1` desabilitado
- `STS-006`:
  - repro principal: `MSXDIAG` sintético de `SRCH` com polling de `S#8/S#9`
  - overlay: `TM3` (`CE/TR`)
  - trace: `TM6B` (`S2`, `CE`, `CS`) e UART `VDP EVT`
  - objetivo: desempatar se `S#8/S#9` expõem `SXTMP` live durante o `SRCH` ou só o valor latched ao fim do comando
- `IRQ-003`:
  - repro principal: `Knightmare Gold`
  - overlay: `TM4B` (`TL/TD`, `EO`)
  - trace: `TM6B` (`R19`, `R23`, `I1A`, `I1F`) e UART `VDP EVT`
  - objetivo: correlacionar writes em `R#19/R#23` com o alvo lógico efetivo no frame corrente
- `CMD-004`:
  - repro principal: boot logo `MSX2+` e `MSXDIAG`
  - overlay: `TM3` (`CE/TR`)
  - trace: `TM6B` (`R25`, `CS`, `CE`, `S2`) e UART `VDP EVT`
  - objetivo: confirmar em runtime o `commandEnable` derivado de `R#25 bit6` fora de `SCR5..SCR12`

### Renderer e addressing
- `REN-002` (`SCREEN 4`):
  - repro principal: `Knightmare Gold` e `Gradius2E`
  - overlay: `TM2` (`R25/R26/R27`, `EP`, `I1/F1`)
  - trace: `TM6B` (`R25`, `R26`, `R27`, `S2`) e UART `VDP EVT`
  - objetivo: validar se o corte do core local entre path plain e compositor estendido acompanha o comportamento observado em raster hacks
- `REN-003` (`SCREEN 5`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R25`, `R26`, `R27`) e UART `VDP EVT`
  - objetivo: fechar multipage 256px, `SP2` e page flip em `0x8000`
- `REN-004` (`SCREEN 6/7`):
  - repro principal: `Gradius2E/Nemesis2E`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R25`, `R26`, `R27`) e UART `VDP EVT`
  - objetivo: fechar scroll high-res, troca de página e alinhamento do plano interleaved do `SCREEN 7`
- `REN-005` (`SCREEN 8`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R25`, `R26`, `R27`) e UART `VDP EVT`
  - objetivo: confirmar o path interleaved 256px com palette expandida e page flip
- `REN-006` (`SCREEN 10/12`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`) e `TM3` (`CE/TR`)
  - trace: `TM6B` (`R25`, `R26`, `R27`, `CS`, `CE`) e UART `VDP EVT`
  - objetivo: fechar scroll em `YJK/YAE` sem telemetria nova
- `REN-007` (odd/even page por `S#2 bit1`):
  - repro principal: boot logo `MSX2+`
  - overlay: `TM2` (`EP`) e `TM4B` (`EO`)
  - trace: `TM6B` (`S2`) e UART `VDP EVT`
  - objetivo: correlacionar o `field` observado com a página efetiva usada pelo renderer
- `REN-008` (`R27`/mask/alinhamento de sprite):
  - repro principal: `Gradius2E/Nemesis2E` e boot logo `MSX2+`
  - overlay: `TM2` (`R25/R26/R27`, `EP`)
  - trace: `TM6B` (`R27`) e UART `VDP EVT`
  - objetivo: fechar o backdrop por telemetria existente e registrar explicitamente se o alinhamento prático de sprite continuar dependendo de evidência visual/screenshot

## Riscos e bloqueios esperados
- `REN-008` pode continuar parcialmente bloqueada sem captura visual:
  - a telemetria atual observa bem `R27`, page source e writes do pipeline
  - ela nao expõe diretamente um contador dedicado do deslocamento final de sprite na saida HDMI
- `REN-002` pode exigir leitura cuidadosa de `Knightmare Gold`:
  - o core local tem path plain proposital em `SCREEN 4` quando o scroll está inativo
  - a evidência dinâmica precisa distinguir “scroll realmente inativo” de “raster hack esperando o compositor estendido”

## Testes e cenários
- Boot logo `MSX2+`: `S#2`, multipage, odd/even, command engine
- `MSXDIAG`: identificação do VDP e polling/status básicos
- `Gradius2E/Nemesis2E`: `R25/R26/R27` e scroll
- `Knightmare Gold`: `IE1`, `S#2 bit5`, raster e renderer

## Referências iniciais
- `docs/debug-layer.md`
- `docs/reverse-engineering/msxdiag/`
- `src/fmsx_local/MSX.c`
- `src/fmsx_runtime.c`
- `src/kernel.cpp`
