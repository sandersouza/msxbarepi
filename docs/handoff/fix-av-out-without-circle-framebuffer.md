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
