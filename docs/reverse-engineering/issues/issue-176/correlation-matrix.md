# Issue #176 - Matriz de Correlacao SMANBOW2 / BIOS / VDP

Objetivo: amarrar as rotinas do `SMANBOW2.ROM` aos pontos equivalentes de BIOS/SUBROM/KANJIBASIC e ao comportamento esperado nas referencias do V9958.

## Referencias-base

- BlueMSX
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
  - `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
- openMSX
  - `third_party/openMSX/src/video/VDP.cc`
  - `third_party/openMSX/src/video/VDP.hh`
  - `third_party/openMSX/src/video/VDPCmdEngine.cc`
- OCM-PLD
  - `third_party/ocm-pld-dev/esemsx3/src/video/vdp_interrupt.vhd`
  - `third_party/ocm-pld-dev/esemsx3/src/video/v9938/graphic4567.vhd`
  - `third_party/ocm-pld-dev/esemsx3/src/video/vdp_command.vhd`
- V9958-Super
  - `third_party/V9958-Super/src/vdp/address_bus.sv`
  - `third_party/V9958-Super/src/vdp/vdp_super_res.sv`

## Matriz

| Rotina / janela | Evidencia no SMANBOW2 | BIOS / SUBROM / KANJIBASIC correlato | Referencia de comportamento | Campo VDP afetado | Implicacao |
| --- | --- | --- | --- | --- | --- |
| Init do titulo / menu | `bank27.asm:51dc-51ee`, `523f-5297` | `KANJIBASIC.ROM.dis:04c1-04d2`, `MSX2PEXT.ROM.dis:06c1-06e9` | BlueMSX `VDP.c` atualiza PAL/EO por `R#9` e reavalia saida ao trocar registradores | `R#9`, espelhos `F3DFh/FFE7h/FFE8h` | O jogo e o firmware usam os mesmos espelhos BIOS para `R#8/R#9`; se o core divergir nesses mirrors, o estado de video parte errado ja no titulo. |
| Hook de raster / IRQ | `bank27.asm:5372-5392` | `MSX2PEXT.ROM.dis:2adb-2b0b` | BlueMSX `scheduleHint()` e openMSX `scheduleHscan()` calculam o compare com `R#19-R#23` e disparam em HBlank | `R#19`, `R#23`, `R#15`, `S#1` | O setup da IRQ de linha depende de compare reschedulado sem limpar o latch antigo indevidamente. |
| ISR da tela inicial / selecao | `bank27.asm:53da-5403` | `MSX2PEXT.ROM.dis:2af2-2b0b`, `KANJIBASIC.ROM.dis:3a83-3a9c` | BlueMSX `peekStatus()` e openMSX `peekStatusReg(1)` preservam semantica de `R#15` e de leitura de `S#1`/`S#2` | `R#15`, `S#1 bit0`, `S#2 bit5/bit6` | A rotina alterna `R#15` varias vezes por frame; limpar flags erradas ou devolver `S#2` estatico desvia o fluxo do menu. |
| Polling de HBlank / retomada do loop | `bank27.asm:582e-5897`, `5e6f-5e72` | `KANJIBASIC.ROM.dis:3a5d-3a9c` | BlueMSX `peekStatus()` compoe `HR/VR` dinamicamente; openMSX `getHR()` usa o ponto exato dentro da linha | `S#2 bit5`, `S#2 bit6` | O jogo e o firmware esperam que `HR/VR` reflitam a fase real da linha, nao apenas o ultimo valor gravado em `VDPStatus[2]`. |
| Selecao de save / split multipagina | `bank27.asm:5897-58cc`, `5e19-5e6e` | `MSX2P.ROM.dis:062b-0637`, `MSX2PEXT.ROM.dis:06f3-0704` | BlueMSX `Common.h` usa `vdpIsOddPage()` baseado em `S#2 bit1` e stride intercalado de bitmap | `R#2`, `R#9 bit2`, `S#2 bit1`, pagina efetiva de display | A tela depende de odd/even page real do V9958; usar paridade do host ou stride linear gera logo/menu corrompidos. |
| Entrada no jogo apos `STARDATE` | `bank27.asm:586e-5897`, `5e87-5ec5` | `KANJIBASIC.ROM.dis:3a5d-3a9c`, `MSX2PEXT.ROM.dis:2adb-2b0b` | BlueMSX/openMSX convergem em `S#2` live + compare `IE1`; command engine usa mapeamento de `SCR9..12 -> mode 3` | `S#2`, `IE1`, command engine | O travamento pos-apresentacao precisa ser fechado com trace para mostrar se falta `IE1`, `S#2 HR/VR` ou termino de comando VDP. |

## Leitura operacional

- `bank27.asm:53da-5403` e `582e-5897` sao as janelas mais sensiveis para o trace de `R#15/S#1/S#2`.
- `KANJIBASIC.ROM.dis:3a5d-3a9c` confirma que o firmware MSX2+ tambem usa polling de `S#2 bit5/bit6`, reforcando que o defeito nao e especifico do jogo.
- BlueMSX e openMSX concordam em dois pontos que o core local estava modelando de forma simplificada:
  - odd/even page deriva de `S#2 bit1`, nao do frame do host;
  - `S#2 bit5/bit6` sao estados efetivos da linha/frame, nao latches persistentes.
