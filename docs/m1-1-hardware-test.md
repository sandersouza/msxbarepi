# M1.1 Teste em Hardware (fMSX real)

## Requisitos no initramfs

Monte um arquivo CPIO `newc` contendo no minimo:

- `MSX.ROM` (BIOS MSX1)
- `CARTA.ROM` (ROM de cartucho para teste)

Opcional:

- `CARTB.ROM`
- `DISK.ROM`
- `DRIVEA.DSK`

## Gerar initramfs

```bash
scripts/make-initramfs.sh roms/msx1 sdcard/msx.cpio
```

Exemplo de `roms/msx1/`:

- `roms/msx1/MSX.ROM`
- `roms/msx1/CARTA.ROM`

## Configuração do boot

No `config.txt` do SD:

```ini
arm_64bit=1
enable_uart=1
kernel=kernel8.img
hdmi_force_hotplug=1
disable_overscan=1
dtoverlay=pi3-disable-bt
initramfs msx.cpio followkernel
```

Copie para a raiz da partição FAT32:

- `kernel8.img`
- `config.txt`
- `msx.cpio`
- firmwares do Raspberry Pi (`bootcode.bin`, `start.elf`, `fixup.dat`, `bcm2710-rpi-3-b.dtb`)

## Resultado esperado

- HDMI mostra boot do msxbare e inicialização do fMSX.
- Se BIOS/ROM estiverem ausentes no initramfs, mensagem de falha na inicialização.
