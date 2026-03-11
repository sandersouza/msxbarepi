## Arquivos para montagem do initramfs
A initramfs é um sistema de arquivos em memória que contém os arquivos necessários para a inicialização do sistema. Ele é empacotado em um arquivo `cpio` e carregado pelo bootloader durante o processo de boot. 

Para o projeto `msx1`, o initramfs contém as ROMs do MSX, incluindo a BIOS (essescial),os cartuchos e imagens de disco (opcionais), que são necessárias para emular o ambiente do MSX1.

No runtime atual do `src`, esses nomes são detectados automaticamente no `msx.cpio` e aplicados nos slots/drives padrão do fMSX.

```
MSX.ROM   - BIOS do MSX ( Slot 0 )
CARTA.ROM - Cartucho porta A ( Slot 1-1 )
CARTB.ROM - Cartucho porta B ( Slot 1-2 )
DRIVEA.DSK - Drive de disquete virtual A
DRIVEB.DSK - Drive de disquete virtual B
```

Para boot completo de MSX2+ (logo do HB-F1XDJ), use as ROMs Sony HB-F1XDJ
nos nomes canônicos já usados pelo runtime:

```bash
cp roms/machines/sony/hb-f1xdj_basic-bios2p.rom roms/initramfs/MSX2P.ROM
cp roms/machines/sony/hb-f1xdj_msx2psub.rom roms/initramfs/MSX2PEXT.ROM
cp roms/machines/sony/hb-f1xdj_kanjibasic.rom roms/initramfs/KANJIBASIC.ROM
cp roms/machines/sony/hb-f1xdj.rom roms/initramfs/HB-F1XDJ.ROM
cp roms/machines/sony/hb-f1xdj_disk.rom roms/initramfs/DISK.ROM
```

Opcional (variantes alternativas de DiskROM do HB-F1XDJ, escolhendo uma para `DISK.ROM`):

```bash
cp roms/machines/sony/hb-f1xdj_disk_205.rom roms/initramfs/DISK.ROM
cp roms/machines/sony/hb-f1xdj_disk_206.rom roms/initramfs/DISK.ROM
```

Sem `KANJIBASIC.ROM`, o boot pode seguir sem ativar a rotina de logo/h-scroll por linha.

Para fins de desenvolvimento, a `BIOS` usada nessa etapa, é a do `MSX Expert 1.1` da `Gradiente`. Ela é compatível com o padrão `MSX1` e pode ser encontrada em diversos sites de ROMs de **MSX**.

Não nos responsabilizamos por qualquer uso indevido dessas ROMs, e recomendamos que você obtenha as ROMs de fontes legítimas, como a partir de um cartucho ou BIOS original, ou de um repositório confiável que distribua ROMs legalmente.

## Preparação do msx.cpio
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

O script `scripts/prepare-roms.sh` faz esse passo automaticamente, gerando o `msx.cpio` na pasta `sdcard/`; desde que as ROMs estejam na pasta `roms/msx1/`.

> **Nota**: O `initramfs` é um sistema de arquivos em memória que contém os arquivos necessários para a inicialização do sistema. Ele é empacotado em um arquivo `cpio` e carregado pelo bootloader durante o processo de boot.
