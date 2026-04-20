# Arquivos para o cartão SD

O fluxo padrão embute o initramfs no `kernel8.img` durante o build. Nesse modo, o SD não precisa de `msx.cpio` nem da linha `initramfs msx.cpio followkernel` no `config.txt`.

Para usar o fallback externo, compile e prepare o SD com `MSXBARE_EMBED_INITRAMFS=0`; nesse caso o `msx.cpio` volta a ser copiado para a partição FAT32.

Copie para a partição FAT32 de boot:

- `kernel8.img` (gerado em `artifacts/kernel8-default.img` ou `artifacts/kernel8-issue<N>.img` em branch de issue)
- `config.txt` (já disponível nesta pasta)
- `msx.cpio` somente quando `MSXBARE_EMBED_INITRAMFS=0`
- `roms/` e `disks/` vazios na raiz para uso do file browser
- `cheats/` copiado de `roms/games/cheats`, mesmo quando a cópia completa de `roms/games` for desativada

Opcional, mas recomendado para preservar os defaults de áudio/clock usados no projeto:

- `cmdline.txt`
  - `sounddev=sndvchiq`
  - `fast=true`
  - `socmaxtemp=75`
- `config.txt`
  - `arm_freq=1100`
  - `arm_freq_min=900`
