## ROMs para initramfs (`msx.cpio`)

Esta pasta é a fonte padrão usada pelo `scripts/prepare-sd.sh` para gerar `sdcard/msx.cpio`.

Nomes de arquivo reconhecidos automaticamente no runtime (`circle_combo`):

- `MSX.ROM` (BIOS)
- `CARTA.ROM` (slot A)
- `CARTB.ROM` (slot B)
- `DRIVEA.DSK` (drive A)
- `DRIVEB.DSK` (drive B)

## Política de uso

- Não versionar BIOS/ROMs protegidas sem autorização.
- Preferir BIOS/ROMs legalmente obtidas pelo usuário.
- Para bootstrap e testes, o projeto mantém fallback configurável de BIOS embutida, mas o fluxo oficial é via `msx.cpio` externo.

## Gerar `msx.cpio` manualmente

```bash
./scripts/make-initramfs.sh roms/msx1 sdcard/msx.cpio
```

Exemplo alternativo com diretório temporário:

```bash
mkdir -p artifacts/initramfs-roms
cp roms/*.ROM artifacts/initramfs-roms/
./scripts/make-initramfs.sh artifacts/initramfs-roms sdcard/msx.cpio
```

Observação:

- O script `scripts/prepare-sd.sh` já tenta gerar `msx.cpio` automaticamente quando `roms/msx1/` existe.
- Não há script `scripts/prepare-roms.sh` neste repositório.
