# Arquivos para o cartão SD

O fluxo padrão usa `MSXBARE_BOOT_STRATEGY=standalone`. No SD, o arquivo de boot do core MSX e `msx.img`; nesse modo, o boot direto nao precisa de `msx.cpio` nem da linha `initramfs msx.cpio followkernel` no `config.txt`, e os settings usam SD RAW com fallback para `SD:/msx.cfg`.

Para preparar o SD em modo multicore, compile e copie com `MSXBARE_BOOT_STRATEGY=multicore`; nesse caso o `msx.cpio` volta a ser copiado para a particao FAT32, o `config.txt` mantem `initramfs msx.cpio followkernel` e os settings passam a ser lidos/escritos apenas em `SD:/msx.cfg`.

Em SD multicore com alternancia pelo Settings `CORE`, mantenha tambem o `<core>.cpio` correspondente na raiz. Ao trocar de core, o runtime grava `kernel=<core>.img` e `initramfs <core>.cpio followkernel` apenas dentro do bloco `#---KERNEL START---`/`#---KERNEL END---` antes do reboot.

O Settings nao expoe mais `Proportion`; chaves antigas `proportion=`/`resolution=` em `msx.cfg`/RAW sao ignoradas. `Overscan=0` e o default: o framebuffer Circle usa `704x528` e o presenter centraliza o emulador em `640x480`, preservando a mesma area fonte do backend usada no modo `640x480` com margem inteira de 10%. Com `Overscan=1`, o runtime usa `640x480` e o presenter preenche toda a area. Em AV/SDTV detectado pelo firmware, o boot pula audio HDMI, mas a mecanica de tamanho do Overscan permanece ativa. Isso nao altera `config.txt`, que fica restrito ao boot/firmware do Raspberry Pi e pode permanecer com deteccao HDMI/AV automatica.

Payload esperado na partição FAT32 de boot:

- `msx.img` (copiado a partir de `artifacts/kernel8-default.img` ou `artifacts/kernel8-issue<N>.img` em branch de issue)
- `config.txt` (já disponível nesta pasta)
- `msx.cfg`
- `msx.cpio` quando `MSXBARE_BOOT_STRATEGY=multicore` ou quando o SD for usado com alternancia de `CORE`
- `msx/roms/`, `msx/disks/` e `msx/cheats/` para uso do file browser e Game Codes
- em SD multicore, outros cores ficam como `<core>.img` na raiz e podem usar `<core>.cpio`

Opcional, mas recomendado para preservar os defaults de áudio/clock usados no projeto:

- `cmdline.txt`
  - `sounddev=sndvchiq`
  - `fast=true`
  - `socmaxtemp=75`
- `config.txt`
  - `arm_freq=1100`
  - `arm_freq_min=900`
