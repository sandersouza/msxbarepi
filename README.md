# MSX BarePI Circle

Projeto de emulação MSX baremetal no Raspberry Pi 3B (AArch64), com integração progressiva de fMSX + Circle.

## Estado atual

- Fase ativa: **M2 (bootstrap fMSX no `circle_combo`)**.
- Build default (`make`) gera perfil estável em `artifacts/kernel8.img`.
- Build de desenvolvimento principal: `make m2-fmsx-bootstrap`.
- Fluxo de boot usa HDMI como saída principal, com UART como debug auxiliar.
- ROMs/BIOS/DSK devem ser fornecidas externamente via `initramfs` (`msx.cpio`).

## Requisitos

- macOS (fluxo de SD usa `diskutil` no `scripts/prepare-sd.sh`)
- toolchain baremetal no `PATH`:
  - `aarch64-none-elf-*` (preferencial)
  - ou `aarch64-elf-*`
- `third_party/circle` e `third_party/fmsx` populados localmente

## Build

Comando default (perfil estável):

```bash
make
```

Artefato gerado:

- `artifacts/kernel8.img`

Build de desenvolvimento M2:

```bash
make m2-fmsx-bootstrap
```

Artefato gerado:

- `artifacts/kernel8-m2-fmsx-bootstrap.img`

Targets auxiliares (bring-up/diagnóstico):

- `make m0`
- `make m0-circle-input`
- `make m0-circle-input-full`
- `make m0-hdmi-audio`
- `make m0-hdmi-audio-integrated`
- `make m0-hdmi-audio-full`
- `make m0-combo`
- `make m0-combo-integrated`
- `make m0-combo-full`
- `make circle-usbkeyboard-debug`
- `make circle-sounddevices-debug`

## Knobs relevantes (M2)

Principais flags para `make m2-fmsx-bootstrap`:

- `COMBO_INITRAMFS_MOUNT=0|1`
- `COMBO_REQUIRE_CPIO_BIOS=0|1`
- `COMBO_EMBED_INITRAMFS=0|1`
- `COMBO_EMBEDDED_BIOS_PATH=<path>`
- `COMBO_FMSX_AUDIO=0|1`
- `COMBO_HARD_DISABLE_AUDIO=0|1`
- `COMBO_CARTA_ONLY=0|1`
- `COMBO_FMSX_MSX1_TEXT80=0|1`
- `COMBO_FMSX_RAMMAPPER_KB=64|256|512|1024`
- `COMBO_FMSX_MEGARAM_ENABLED=0|1`
- `COMBO_FMSX_MEGARAM_KB=256|512|1024`
- `COMBO_FMSX_CART_GUESS=0|1`
- `COMBO_FMSX_CARTA_MAPPER=0..8|255`
- `COMBO_FMSX_CARTB_MAPPER=0..8|255`
- `COMBO_FMSX_BOOT_PROFILE=0|1|2` (`NORMAL`/`FAST BOOT`/`GAME BOOT`)
- `COMBO_ENABLE_DEBUG_OVERLAY=0|1`
- `COMBO_DEBUG_OVERLAY_DEFAULT=0|1`
- `COMBO_TEST_TONE_DEFAULT=0|1`
- `COMBO_BOOT_QUIET=0|1`

Exemplo:

```bash
make m2-fmsx-bootstrap COMBO_FMSX_BOOT_PROFILE=1 COMBO_ENABLE_DEBUG_OVERLAY=0
```

## Build configurável (menu)

Para configurar mapper, MegaRAM, boot profile e overlay de forma interativa:

```bash
bash ./scripts/build-m2-config.sh
```

## Runtime (teclas)

Atalhos atuais no runtime `circle_combo`:

- `F12`: pausa/retoma emulação
- `F11`: toggle de overlay de debug (somente se compilado)
- `Pause` (teclado PC): mapeado para `STOP` do MSX

Menu em pausa (`F12`):

- `Enter`: ativa item
- `ESC`: volta do submenu `Settings`
- `F12`: fecha menu e retoma

Submenu `Settings`:

- `Overscan ON/OFF`
- `Scanlines ON/OFF`
- `Overlay DBG ON/OFF`
- `Audio Mute ON/OFF`

## Política de BIOS/ROM/DSK (compliance)

- Não versionar BIOS/ROM protegidas no repositório.
- Fornecer assets externamente via `initramfs` (`msx.cpio`).
- Nomes padrão reconhecidos no runtime:
  - `MSX.ROM`
  - `CARTA.ROM`
  - `CARTB.ROM`
  - `DRIVEA.DSK`
  - `DRIVEB.DSK`

Referência de autorização/licença:

- `docs/legal/fmsx-authorization.md`
- `docs/legal/email.md`

## Preparar SD

Script oficial:

```bash
./scripts/prepare-sd.sh
```

Exemplo direto com artefato M2:

```bash
KERNEL_IMG=artifacts/kernel8-m2-fmsx-bootstrap.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```

Notas:

- O script gera `msx.cpio` automaticamente a partir de `roms/msx1/` quando aplicável.
- O `config.txt` é validado para garantir linha de `initramfs msx.cpio`.

## Third-party

A pasta `third_party/` contém upstreams de referência/integração:

- `third_party/circle`
- `third_party/fmsx`

Guia completo:

- `third_party/README.md`

## Documentação

- Estado atual / handoff contínuo: `docs/ai-handoff-context.md`
- Status M2: `docs/m2-fmsx-bootstrap-status.md`
- Roadmap: `docs/roadmap-fmsx-circle-port.md`
- Bring-up M0: `docs/m0-hello-world.md`
- Overlay HDMI (template): `docs/debug-overlay-hdmi-template.md`
