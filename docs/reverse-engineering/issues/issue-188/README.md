# Issue #188 - VDP R#9 50/60Hz investigation

## Objetivo
Validar por que o chaveamento de 50/60Hz via software (VDP R#9 bit1) nao estava funcionando no core local e alinhar com referencias.

## Evidencias coletadas

### Nosso core (fMSX local)
- O arquivo `src/fmsx_local/MSX.c` continha forca de NTSC em pontos criticos:
  - write de R#9 mascarando bit PAL (case `R==9`),
  - reset de VDP chamando rotina de forca NTSC,
  - load state forçando NTSC apos restauracao,
  - loop de frame usando `Mode` (politica) em vez de `VDP[9]` para cadencia.

### Referencia blueMSX
- Em `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`:
  - `vdpIsVideoPal(vdp)` deriva PAL/NTSC de `vdpRegs[9]` (com `palMask/palValue` apenas quando sync e travado externamente),
  - no write de R#9 (`case 9`) o valor e aceito e aplicado,
  - timing/refresh usa `isPal` dinamico para `lastLine` (313/262) e `refreshRate` (50/60).

### Referencia V9958-Super (VHDL)
- Em `third_party/V9958-Super/src/vdp/vdp_register.sv`:
  - write no registrador #9 faz `REG_R9_PAL_MODE <= VDPP1DATA[1]`.
- Em `third_party/V9958-Super/src/vdp/vdp_ssg.v` e `vdp_hvcounter.v`:
  - PAL/NTSC entra no gerador de sincronismo e no numero de linhas por quadro.

### Engenharia reversa SMANBOW2
- ROM disassemblada por bancos em `docs/reverse-engineering/issues/issue-188/smanbow2_banks/`.
- Exemplo observado (bank27): escrita em `0x99` com index `0x89` (R#9) apos manipular mirror em `0xFFE8`, indicando tentativa de chavear bit de PAL por software.

## Acao aplicada nesta iteracao
- `src/fmsx_local/MSX.c`:
  - removida a forca global de NTSC sobre R#9,
  - write de R#9 voltou a aceitar o valor,
  - cadencia do loop voltou a derivar de `PALVideo` (VDP[9] bit1),
  - removida forca NTSC apos `LoadState()`.

## Proximo passo de validacao em hardware
1. MSX2/2+ com `MSXDIAG.ROM`: confirmar 60Hz em boot normal.
2. `SMANBOW2.ROM`: confirmar chaveamento para 50Hz na tela de selecao/execucao onde esperado.
3. Revalidar que MSX1 permanece 60Hz e que nao houve regressao no boot.

---

## Subinvestigacao: GRADIUS2E (split-scroll HUD)

### Sintoma observado
- Em `GRADIUS2E.ROM` no MSX2+, a primeira linha da caixa `[ ENABLE ]` no placar inferior fica com deslocamento horizontal durante scroll da gameplay.
- Com `Turbo = MAX`, o efeito tende a desaparecer.

### Evidencias de referencia
- `blueMSX` agenda HINT (IE1) no fim da linha ativa:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c:488-495` (`scheduleHint`).
- `V9958-Super` gera request de HSYNC interrupt no final da linha (x=255):
  - `third_party/ocm-pld-dev/esemsx3/src/video/v9938/vdp.vhd:960-969`.
- Isso indica que rotina raster de jogo depende de janela curta e previsivel para trocar `R#25/#26/#27` entre linhas.

### Hipotese tecnica
- Os wait-states de I/O VDP introduzidos no core local atrasavam a ISR raster em carga normal.
- Em `Turbo MAX`, o aumento de clock da CPU mascarava a latencia extra.

### Acao aplicada nesta iteracao
- Ajuste de waits em `src/fmsx_local/MSX.c`:
  - `kVDPIOWaitCyclesData = 0`
  - `kVDPIOWaitCyclesStatusBase = 0`
  - `kVDPIOWaitCyclesStatusPollingExtra = 10`
- Objetivo: manter calibracao de polling de `S#0` (MSXDIAG 50/60Hz) sem penalizar o caminho normal de ISR raster.

### Acao aplicada (timing IE1/HINT fiel a HBlank)
- `src/fmsx_local/MSX.c`:
  - removido disparo imediato de IE1 na fase ativa (`J==2`),
  - adotado fluxo em duas etapas:
    1. arma o evento quando a linha alvo logica e atingida,
    2. dispara `S#1 bit0` + `INT_IE1` na entrada de HBlank da mesma linha.
  - linha alvo modelada explicitamente por registradores:
    - `target = (R19 - R23[VScroll]) & 0xFF`.
  - limpeza de estado pendente preservada em:
    - leitura de `S#1`,
    - escrita de `R19`,
    - saida da janela ativa.
- Telemetria de diagnostico adicionada:
  - `ie1_armed`,
  - `ie1_fired_hblank`.

### Artefatos de engenharia reversa adicionados
- `docs/reverse-engineering/issues/issue-188/GRADIUS2E.disasm.0000.asm`
- `docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank00.asm` ... `bank31.asm`

### Proxima validacao em hardware
1. Rodar `GRADIUS2E.ROM` em MSX2+ com `Turbo=DES` e observar estabilidade da primeira linha da caixa `[ ENABLE ]`.
2. Repetir com `Turbo=MAX` para confirmar que o comportamento ficou equivalente.
3. Revalidar `MSXDIAG.ROM` (MSX1/2/2+) para garantir que a leitura de 60Hz permaneceu correta.
