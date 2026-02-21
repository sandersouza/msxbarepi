# Boot no Raspberry Pi 3B (M0-Hello HDMI)

## Pré-requisitos

- Raspberry Pi 3B
- Cartão microSD FAT32
- Conversor USB-TTL 3.3V
- Toolchain `aarch64-none-elf-*`

## Arquivos no cartão SD

- `kernel8.img` (copiar de `build/kernel8.img`)
- `config.txt` com:

```ini
arm_64bit=1
enable_uart=1
kernel=kernel8.img
hdmi_force_hotplug=1
disable_overscan=1
dtoverlay=pi3-disable-bt
```

## Vídeo HDMI

- Conecte um monitor HDMI antes de energizar a placa.
- Resultado esperado: texto de boot e `Hello World` visível na tela.

## Serial (auxiliar de debug)

- GPIO14 (TXD0) e GPIO15 (RXD0), `115200 8N1`

Exemplo com `screen`:

```bash
screen /dev/tty.usbserial-XXXX 115200
```

## Resultado esperado

Após energizar/resetar:

- Saída HDMI contendo:
  `Hello World via HDMI on Raspberry Pi 3B`
