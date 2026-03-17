# Issue #176 - Boot screen MSX2+ extremamente lento (logo/scroll em paginas alternadas)

- URL: https://github.com/sandersouza/msxbarepi/issues/176
- Milestone: FIX: Minor Issues / Other Issues (m17)
- Estado remoto: OPEN

## Contexto
No MSX2+, o boot screen do logo MSX esta muito lento, com progresso visual apenas apos centenas/milhares de frames.

Evidencias de hardware:
- alternancia de `R26` durante o boot, sugerindo animacao por paginas alternadas;
- diferenca de aproximadamente ~1000 frames entre estados visuais do logo.

## Objetivo
Restaurar velocidade normal da animacao de boot no MSX2+ sem regressao em:
- boot MSX1/MSX2;
- deteccao de 60Hz no MSXDIAG;
- estabilidade do pipeline de video durante boot.

## Analise tecnica consolidada (12/03/2026)
- Documento de referencia criado para guiar a correcao definitiva:
  - `docs/workflow_boot_msx2plus.md`
- Conteudo consolidado no documento:
  - fluxo real da SUBROM por disassembly (`0x2BE4` e chamadas do startup em `0x2E3E`, `0x2EBF`, `0x3040`, `0x3299`);
  - workflow dos emuladores de referencia (BlueMSX/openMSX) para:
    - render multipagina/odd-even em `SCREEN6/7`,
  - progressao temporal do command engine;
  - matriz de gaps do core atual e estrategia faseada sem tentativa/erro.

## Estado atual (15/03/2026)
- A branch saiu do sintoma inicial do boot lento e hoje esta focada em dois defeitos remanescentes do V9958/MSX2+ que expuseram o mesmo gap estrutural:
  - corrupcao visual no `SMANBOW2` (titulo e selecao de save);
  - travamento apos a apresentacao / `STARDATE`.
- Entregas recentes:
  - pacote canonico de reverse engineering em `docs/reverse-engineering/` cobrindo `SMANBOW2`, `MSX2P.ROM`, `MSX2PEXT.ROM`, `KANJIBASIC.ROM` e `KANJI.ROM`;
  - matriz de correlacao em `docs/reverse-engineering/issues/issue-176/correlation-matrix.md`;
  - trace circular VDP/IRQ no runtime (`DEBUG=1`) com eventos de `IE0`, `IE1`, `R#19/R#23`, `S#1/S#2` e command engine;
  - correcao estrutural de odd/even page baseada em `S#2 bit1` e remapeamento intercalado de `SCREEN7`.
- Status tecnico:
  - build local `DEBUG=1` passa;
  - a investigacao passou a tratar `S#1 bit0` como latch horizontal sticky, com clear por `S#1`, `R#19`, `R#0` e inicio de VBlank, alinhando o core ao HDL usado como referencia para o `SMANBOW2`;
  - `R0/R1` e `ScreenON` passaram a ser efetivados por linha, nao no meio da linha, seguindo o mesmo racional das referencias HDL/BlueMSX para reduzir tearing no `SMANBOW2`;
  - o renderer bitmap (`SCREEN5/6/7/8/10/12`) agora recompõe a base da linha preservando apenas os bits de pagina de `R#2`, em vez de somar `lineOffset` diretamente sobre `ChrTab`, para aproximar o enderecamento do BlueMSX/openMSX;
  - `TM6B` agora mostra o ultimo evento do trace VDP/IRQ capturado nas janelas do `bank27`, para diagnosticar por screenshot a transicao para a tela preta apos a apresentacao;
  - a causa raiz do freeze na entrada da gameplay foi refinada: `SMANBOW2.ROM` estava sendo tratado como `MAP_KONAMI5`, mas o cart correto e `Manbow2`, com Flash AMD gravavel no ultimo setor de 64KB; isso prende o jogo no loop de verificacao em `PC:C698/C699` antes da gameplay;
- a branch agora possui fallback SHA1 para `MAP_MANBOW2`, emulacao minima de erase/program da Flash do cart e persistencia do setor gravavel em `.sav`;
- a emulacao do cart `Manbow2` foi refinada para o modelo real do openMSX:
  - sequencias AMD passam a casar por offset real da Flash (`addr & 07FFh`);
  - `F0`/`AA 55 F0` e `AA 55 90` passaram a existir;
  - writes na janela SCC agora seguem para SCC **e** Flash/mapper, em vez de morrerem antes do chip;
- havia ainda um bug no proprio loader:
  - o fallback SHA1 acertava `MAP_MANBOW2`, mas `LoadCart()` testava `Type>=MAP_GUESS` e reexecutava a autodeteccao para os tipos locais `9/10`, rebaixando o cart outra vez para o caminho heuristico;
  - isso foi corrigido para `Type==MAP_GUESS`, e as tabelas locais de mapper passaram a cobrir explicitamente `MAP_MANBOW2` e `MAP_MANBOW2_2`;
- o overlay ganhou a linha `TM6C`, dedicada ao cart/Flash do `SMANBOW2`, expondo:
  - `A8`, `EnWrite` da pagina `4000h-7FFFh`, slot/logical cart e `ROMType`;
  - bancos correntes em `4000h/6000h/8000h/A000h`;
  - ultima operacao/estado da Flash `Manbow2` (`PROGRAM`, `ERASE`, `READ`, etc.);
- objetivo da rodada atual:
  - distinguir se o loop em `PC:C698/C699` falha por banco incorreto, write que nao chega ao cart ou readback incoerente da Flash.
- ainda falta validacao em hardware para confirmar se o freeze fechou e quanto de distorcao visual ainda resta no renderer do V9958.

## Checklist
- [x] Abrir issue e vincular a milestone m17
- [x] Criar branch vinculada da issue
- [x] Consolidar analise de causa raiz + workflow de referencia (ROM/BlueMSX/openMSX)
- [x] Instrumentar telemetria focada no boot logo MSX2+ / V9958
- [ ] Corrigir gargalo de cadencia de pagina/comando VDP no boot
- [x] Build local com `DEBUG=1`
- [ ] Validar em hardware (MSX1/MSX2/MSX2+)
- [ ] Abrir PR para `fix-acurating-timing-vdp9958`
- [ ] Merge e fechamento da issue
