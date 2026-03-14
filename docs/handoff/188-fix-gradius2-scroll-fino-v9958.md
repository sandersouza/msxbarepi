# Handoff - Issue #188 (fix-gradius2-scroll-fino-v9958)

## Estado atual
- Branch de trabalho: `188-fix-gradius2-scroll-fino-v9958`
- Base: `176-fix-msx2p-boot-screen-slow`
- Objetivo desta iteracao: investigar glitch de split-scroll no `GRADIUS2E.ROM` (linha superior da caixa `[ ENABLE ]` deslocando durante gameplay em MSX2+).

## Hipotese tecnica consolidada
- O sintoma e sensivel a CPU turbo (`Turbo MAX` mascara o problema), indicando dependencia de janela temporal da ISR raster (HINT/IE1).
- Referencias analisadas:
  - `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`: `scheduleHint()` agenda HINT no fim da linha ativa.
  - `third_party/ocm-pld-dev/esemsx3/src/video/v9938/vdp.vhd`: request de HSYNC interrupt em `preDotCounter_x = 255`.
- Conclusao: waits de I/O do VDP no core local estavam penalizando rotinas de split raster em carga normal.

## Mudancas aplicadas
1. `src/fmsx_local/MSX.c`
- Rebalanceio dos waits de I/O VDP:
  - `kVDPIOWaitCyclesData = 0`
  - `kVDPIOWaitCyclesStatusBase = 0`
  - `kVDPIOWaitCyclesStatusPollingExtra = 10`
- Mantem calibracao de polling de `S#0` (MSXDIAG 50/60Hz), mas evita custo extra em caminho normal de ISR raster.

2. Reverse engineering persistido
- Disassembly do ROM `GRADIUS2E` salvo em:
  - `docs/reverse-engineering/issues/issue-188/GRADIUS2E.disasm.0000.asm`
  - `docs/reverse-engineering/issues/issue-188/gradius2e_banks/bank00.asm` ... `bank31.asm`
- Documentacao atualizada:
  - `docs/reverse-engineering/issues/issue-188/README.md` (secao `Subinvestigacao: GRADIUS2E`).

## Build da iteracao
- Build executado com sucesso via `make -j8`.
- Artefato principal: `artifacts/kernel8-issue188.img`
- BUILD_HASH: `10d884b-ffcd25cf8fb193b2bbc4250e0a7f4ad465de4038`
- INT_BUILD: `7DB6` (FNV-1a 16-bit de `MSXBARE_BUILD_BID=202603132033-10d884b`).

## Iteracao adicional (ajuste fino de latencia raster)

### Sintoma reportado em hardware
- Sem turbo (`DES`): primeira linha do HUD/placar ainda desloca.
- Com turbo (`MAX`): alinhamento volta ao normal.

### Ajuste aplicado
1. `src/fmsx_local/MSX.c`
- Mantido:
  - `kVDPIOWaitCyclesData = 0`
  - `kVDPIOWaitCyclesStatusBase = 0`
  - `kVDPIOWaitCyclesStatusPollingExtra = 10`
- Novo filtro para atraso extra de `S#0`:
  - atraso extra so entra em **polling apertado** (mesmo `PC` repetindo leitura de `0x99`),
  - leituras ocasionais com `DI` nao recebem mais penalidade.
- Implementado com:
  - `kVDPStatusPollingStreakThreshold = 4`
  - rastreamento `g_vdp_status_poll_last_pc` e `g_vdp_status_poll_streak`
  - reset desses contadores no `ResetMSX()`.

### Motivacao tecnica
- Preservar calibracao do `MSXDIAG` (loop de polling apertado) sem afetar caminho normal de gameplay/raster split no `GRADIUS2E`.

### Build desta iteracao
- Build executado com sucesso via `make guard-third-party && make -j8 DEBUG=1`.
- Artefato principal: `artifacts/kernel8-issue188.img`
- BUILD_HASH: `10d884b-2646db6fe8d15ee2ce04a4e77a2e31cf79ded14a`
- INT_BUILD: `BE64` (FNV-1a 16-bit de `MSXBARE_BUILD_BID=202603132105-10d884b`).

## Validacao pendente em hardware
1. `GRADIUS2E.ROM` em MSX2+ com `Turbo=DES`: confirmar se a primeira linha de `[ ENABLE ]` parou de deslocar.
2. Repetir com `Turbo=MAX`: confirmar equivalencia visual.
3. Revalidar `MSXDIAG.ROM` em MSX1/2/2+ para garantir que 60Hz nao regrediu.

## Iteracao adicional (IE1 fiel a HBlank)

### Plano implementado
- Ajustado o timing interno de HINT/IE1 no core local para modelo em duas fases:
  1. **armar** no momento em que a linha logica alvo e alcancada na fase ativa;
  2. **disparar** somente na entrada do HBlank da mesma linha.
- A linha alvo deixou de usar comparacao implicita com offset fixo (`J==2`) e passou a ser derivada explicitamente de:
  - `R#19` (linha de interrupcao),
  - `R#23` (`VScroll`) -> `target = (R19 - VScroll) & 0xFF`.

### Arquivos alterados
1. `src/fmsx_local/MSX.c`
- novo estado interno `FmsxIE1PendingHBlank`;
- novo fluxo `arm -> fire on HBlank`;
- limpeza do estado pendente em:
  - leitura de `S#1`,
  - escrita em `R#19`,
  - saida da janela ativa de line coincidence.
- contadores de telemetria adicionados:
  - `FmsxIE1ArmedCount`,
  - `FmsxIE1FiredHBlankCount`.

2. `src/fmsx_runtime.h` / `src/fmsx_runtime.c`
- exportados para overlay os novos campos:
  - `ie1_armed`,
  - `ie1_fired_hblank`.

3. `src/kernel.cpp`
- linha `TM4` atualizada para exibir `IA` (armed) e `IH` (fired em HBlank).

4. `docs/debug-layer.md`
- documentados os novos indicadores `IA` e `IH`.

### Build desta iteracao (final validado)
- Build executado com sucesso via:
  - `make guard-third-party`
  - `make -j8`
- Artefato principal: `artifacts/kernel8-issue188.img`
- BUILD_HASH: `10d884b-7f870b81b1f35c27275cc18779f31bfc437ba8aa`
- INT_BUILD: `1B84` (FNV-1a 16-bit de `MSXBARE_BUILD_BID=202603132247-10d884b`).

## Iteracao adicional (fix persistencia de Machine em Settings Save)

### Sintoma
- Ao alterar `Machine` (MSX1/MSX2/MSX2+) no menu e executar `Save`, o valor nao persistia no proximo boot.

### Causa raiz
- `NormalizeSettingsForBuild()` sempre sobrescrevia `m_MachineProfile` para MSX1 quando `MSXBARE_MACHINE_BOOT_PROFILE` nao estava definido no build.
- Isso anulava o valor carregado do `machine=<n>` salvo no `settings.cfg`.

### Correcao aplicada
1. `src/kernel.cpp`
- `NormalizeSettingsForBuild()`:
  - manteve lock por build quando `MSXBARE_MACHINE_BOOT_PROFILE` existe;
  - sem lock de build, passou a preservar `m_MachineProfile` salvo e apenas aplicar `ClampMachineProfileForBuild(...)`.
- parser de `machine` em `LoadSettingsFromStorage()`:
  - trocado `machine_profile_clamp(value)` por `ClampMachineProfileForBuild(value)` para fallback imediato em perfis nao suportados.

### Build desta iteracao
- Build executado com sucesso via `make -j8`.
- Artefato principal: `artifacts/kernel8-issue188.img`
- BUILD_HASH: `10d884b-8bd280906dc5da4712fc8a1bfcbaa430755c4784`
- INT_BUILD: `DE76` (FNV-1a 16-bit de `MSXBARE_BUILD_BID=202603132321-10d884b`).

## Comando para preparar SD (sem dry-run)
```bash
KERNEL_IMG=artifacts/kernel8-issue188.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```
