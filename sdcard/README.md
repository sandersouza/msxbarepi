# Arquivos para o cartão SD

Antes de copiar para o SD, gere o `initramfs` com as ROMs/BIOS (arquivo `msx.cpio`):

```sh
scripts/make-initramfs.sh roms/msx1 sdcard/msx.cpio
```

Exemplo alternativo (para empacotar apenas ROMs da raiz de `roms/`):

```sh
mkdir -p artifacts/initramfs-roms
cp roms/*.ROM artifacts/initramfs-roms/
scripts/make-initramfs.sh artifacts/initramfs-roms sdcard/msx.cpio
```

Copie para a partição FAT32 de boot:

- `kernel8.img` (gerado em `build/kernel8.img`)
- `config.txt` (já disponível nesta pasta)
- `msx.cpio` (gerado em `sdcard/msx.cpio`)

Opcional, mas recomendado para preservar os defaults de áudio/clock usados no projeto:

- `cmdline.txt`
  - `sounddev=sndvchiq`
  - `fast=true`
  - `socmaxtemp=75`
- `config.txt`
  - `arm_freq=1100`
  - `arm_freq_min=900`
