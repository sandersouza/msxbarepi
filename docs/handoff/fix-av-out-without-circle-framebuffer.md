# Handoff - fix/av-out-without-circle-framebuffer

## Objetivo

Corrigir boot/video em AV/composite no Raspberry Pi 3B sem regressao do modo HDMI.

## Contexto

- O `sdcard/config.txt` local foi ajustado para o mesmo perfil AV do SMSBarePI: `enable_tvout=1`, `sdtv_mode=0`, `disable_overscan=1`, sem forcar HDMI.
- O SMSBarePI inicializa e apresenta framebuffer em AV com esse perfil.
- No MSXBarePI, o boot redimensionava o framebuffer Circle para `672x504` quando `Overscan=OFF`, default salvo como `overscan=0`.
- Esse modo excede as 480 linhas seguras de NTSC/composite e pode travar ou impedir a apresentacao antes da UART de debug tardia (`BT11`).
- A deteccao local usa o modo inicial reportado pelo firmware: larguras acima de `640` ate `768` com altura `480..576` sao tratadas como SDTV/AV, cobrindo NTSC/PAL-M (`720x480`) e PAL (`720x576`).

## Mudanca

- A mecanica de tamanho do `Overscan` permanece ativa tambem em AV/SDTV.
- Em `DEBUG=1`, UART/logger passam a subir antes de `BT2`, emitindo `BT1D` e `BOOT_DISPLAY firmware=<w>x<h> valid=<0|1> av=<0|1>` para diagnosticar falhas antes da tela.
- Se AV/SDTV for detectado por mailbox antes de `BT2`, a primeira inicializacao do framebuffer usa `640x480`; apos carregar settings, `Overscan` volta a aplicar `704x528`/`640x480`.
- Se AV/SDTV for detectado, o audio usa `CPWMSoundBaseDevice` (`Audio output: PWM AV`) em vez de `CHDMISoundBaseDevice`, evitando o panic do Circle `sndhdmi: Requires HDMI display with audio support` e habilitando audio pelo jack A/V.
- `Overscan OFF` passa a usar framebuffer Circle `704x528` (10% inteiro sobre `640x480`); `Overscan ON` permanece em `640x480`.
- A documentacao foi atualizada para registrar o fluxo AV.

## Validacao local

- `scripts/check-third-party-pristine.sh`: OK.
- `git diff --check`: OK.
- `make -j4 DEBUG=1`: OK.
- `make -n sdcard`: OK.
- Build final `DEBUG=1`: `BUILD_BID=202605012136-ec2bcc8`, `TXTDBG BUILD:F137`, artefato `artifacts/kernel8-default.img`.
- Log de hardware AV da build `06EA`: `/tmp/msx2p-boot-serial.log` chegou a `BT2: screen... OK` e parou em `sndhdmi: Requires HDMI display with audio support` / `Cannot start HDMI sound`.
- Teste de hardware AV no Raspberry Pi 3B validado pelo usuario na build `F137`: video AV e audio PWM AV funcionando corretamente.

## Atualizacao 2026-05-04 - Machine/MSX1 mapper

- Troca em `Settings -> Machine` agora deixa o hard reset pendente e so reinicia a emulacao ao sair do menu.
- Ao selecionar `MSX1`, o runtime passa a usar 64 KB de RAM no `SLOT2` e o core fMSX deixa slots primarios nao expandidos; portas `FC-FFh` de RAM mapper retornam `NORAM`/ignoram writes nesse perfil.
- Layout MSX1: `SLOT0` ROM `BIOS+BASIC`, `SLOT1` Cartucho A, `SLOT2` RAM principal, `SLOT3` Cartucho B ou `DISK.ROM`.
- No `MSX1`, `DISK.ROM` fica em `3-0` quando nao ha Cartucho B; carregar Cartucho B desabilita a Disk ROM para liberar o `SLOT3`, e remover Cartucho B restaura a Disk ROM se o toggle seguir `ON`.
- `MSXDOS2.ROM` continua restrito a MSX2/MSX2+.
- Alternar `Disk ROM` agora reinicia o runtime inteiro para que a BIOS enxergue a troca imediatamente, em vez de carregar so Disk BASIC 1.0 ate um reset manual.
- `Load ROMS` em `MSX1` mostra `DISKROM` no segundo slot de cartucho quando nao ha Cartucho B e `Disk ROM [ON]`; mostra `EMPTY` nesse slot apenas com `Disk ROM [OFF]` ou quando nao ha ROM efetiva.
- Ao voltar de `MSX1` para MSX2/MSX2+, o mapper volta ao default de 256 KB quando o valor anterior era o default MSX1.
- Validacao local desta rodada: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`; build DEBUG=1 `BUILD_BID=202605041720-80bcca4`, `TXTDBG BUILD:F767`.

## Atualizacao 2026-05-04 - Layout Panasonic MSX2/MSX2+

- O mapa de ROM/RAM dos perfis MSX2/MSX2+ passa a seguir as configs `blueMSX` dos Panasonic `FS-A1F` e `FS-A1WSX`.
- `MSX2`/`MSX2+`: Cartucho A em `1-0`, Cartucho B em `2-0`, RAM em `3-0`, SubROM em `3-1`, `DISK.ROM` em `3-2`.
- `MSX2+`: mantém `SLOT0` expandido como no `FS-A1WSX`; componentes japoneses opcionais seguem fora do caminho crítico quando ausentes.
- O helper interno do runtime deixa de mapear cartucho de sistema em `3-0`, para não colidir com a RAM Panasonic.
- Validacao local apos o ajuste Panasonic: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`; build DEBUG=1 `BUILD_BID=202605041727-80bcca4`, `TXTDBG BUILD:3202`.

## Atualizacao 2026-05-04 - LOAD ROMS SLOT2

- `LOAD ROMS` bloqueia o segundo slot apenas em `MSX1` com `Disk ROM [ON]`, porque nesse perfil ele representa o `SLOT3` ocupado por `DISK.ROM`.
- Em `MSX2/MSX2+`, o segundo slot de cartucho continua carregavel com `Disk ROM [ON]` ou `OFF`; o bloqueio preventivo por SCC+ Dual foi removido para permitir que o runtime substitua/desative o dual ao carregar CartB.
- Ao reativar `Disk ROM` em `MSX1`, qualquer CartB carregado no segundo slot é descarregado antes do hard reset que restaura `DISK.ROM`.
- Validacao local apos ajuste de `SLOT2`: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`; build DEBUG=1 `BUILD_BID=202605041730-80bcca4`, `TXTDBG BUILD:F87A`.

## Atualizacao 2026-05-04 - MSX1 CartB com Disk ROM OFF

- Corrigido o caminho em que `Disk ROM [OFF]` limpava `MemMap[3][0][2..3]` apos o boot, apagando o CartB recem-carregado no MSX1.
- Agora a limpeza da Disk ROM no MSX1 preserva o segundo slot quando `ROMName[1]`, `ROMData[1]` ou o path de CartB indicam cartucho carregado.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`; build DEBUG=1 `BUILD_BID=202605041801-80bcca4`, `TXTDBG BUILD:A350`.

## Atualizacao 2026-05-04 - FM Music ON

- Foco apos revert das duas ultimas tentativas: corrigir somente a ativacao do `FM Music`.
- Causa localizada:
  - o toggle chamava `backend_runtime_set_fm_music_enabled()`, que atualiza `g_fm_music_enabled`/`g_fmsx_fmpac_enabled` e canais de audio;
  - porem `FMPAC.ROM` e carregado apenas no caminho `StartMSX()`, durante a carga de cartuchos de sistema;
  - portanto, ligar `FM Music` com a maquina ja rodando nao expunha o FM-PAC ate um restart do core.
- Ajuste aplicado:
  - ao alternar `FM Music`, o menu aplica o flag ao runtime e marca `m_MachineResetPending=TRUE`;
  - o hard reset segue acontecendo apenas ao sair do menu, pelo mesmo fluxo ja usado para troca de `Machine`;
  - a mensagem de falha desse reset pendente foi tornada generica: `Settings: reset failed`.
- Reteste esperado:
  - ligar `FM Music`, sair do menu e confirmar que o FM-PAC/OPLL fica visivel para o software.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`; build DEBUG=1 `BUILD_BID=202605041848-80bcca4`, `TXTDBG BUILD:A456`.

## Atualizacao 2026-05-04 - Boot travado no USB

- UART analisada: `/tmp/msx2p-boot-serial.log`.
- Resultado:
  - boot chegou a `BT10: emulator backend... OK`;
  - debug tardio chegou a `BT12: debug overlay... READY`;
  - `ApplyRuntimeSettingsToBackend()` retornou `runtime OK`;
  - primeiro frame foi desenhado (`Boot step: blit OK`);
  - o ultimo marcador foi `Boot step: init USB`.
- Leitura objetiva:
  - nao houve `USB host ready` nem `BT13`, entao o travamento esta dentro de `m_USBHCI.Initialize()`;
  - o sintoma nao aponta para falha de carga do fMSX/FM, porque o backend ja estava pronto antes do USB.
- Ajuste de diagnostico/contencao:
  - chamado `DebugRepairTimerIrqBinding(0x8F)` imediatamente antes do init USB inicial;
  - chamado `DebugRepairTimerIrqBinding(0x8E)` antes do retry de USB no loop;
  - adicionado log `Boot step: USB IRQ checked` antes de entrar em `m_USBHCI.Initialize()`.
- Proximo reteste:
  - se o log parar em `Boot step: USB IRQ checked`, o bloqueio continua dentro do `m_USBHCI.Initialize()`;
  - se aparecer `TIRQ`/`UIRQ` antes disso, havia corrupcao/reparo de binding IRQ antes do init USB.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`; build DEBUG=1 `BUILD_BID=202605041858-80bcca4`, `TXTDBG BUILD:6737`.

## Atualizacao 2026-05-04 - FM Music sem sobrescrever ROM

- Restricao aplicada: ativar `FM Music` nao pode remover nem sobrescrever ROM ja carregada; o core precisa encontrar um slot livre.
- Causa adicional localizada:
  - o layout Panasonic MSX2/MSX2+ tinha preservado apenas `3-3` como helper interno;
  - `MSXDOS2.ROM` e `PAINTER.ROM` podiam ocupar esse unico helper antes da tentativa de `FMPAC.ROM`, deixando o FM sem slot.
- Ajuste aplicado:
  - MSX2/MSX2+ mantêm os slots visiveis Panasonic (`CartA=1-0`, `CartB=2-0`, `RAM=3-0`, `SubROM=3-1`, `DiskROM=3-2`);
  - o runtime voltou a expor helpers internos extras em `0-2` e `0-3`, alem de `3-3`;
  - `fmsx_system_cart_slot_is_available()` continua aceitando apenas subslots com paginas vazias, entao `FMPAC.ROM` so entra se houver espaco livre real.
- Reteste esperado:
  - com `Disk ROM [ON]` e `FM Music [ON]`, sair do menu deve resetar a emulacao e carregar `FMPAC.ROM` em um helper livre, sem desalojar `MSXDOS2.ROM` ou cartuchos A/B.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`; build DEBUG=1 `BUILD_BID=202605041907-80bcca4`, `TXTDBG BUILD:AD7E`.
