# Arquivos para o cartão SD

O fluxo oficial para preparar SD é:

```bash
./scripts/prepare-sd.sh
```

## Geração manual de initramfs (opcional)

Se quiser gerar `msx.cpio` manualmente antes do preparo:

```bash
./scripts/make-initramfs.sh roms/msx1 sdcard/msx.cpio
```

## Conteúdo esperado na partição FAT32

- `kernel8.img`
- `config.txt`
- `cmdline.txt` (opcional, mas usado no fluxo atual)
- `msx.cpio`
- firmware do Raspberry Pi (`bootcode.bin`, `start.elf`, `fixup.dat`, `*.dtb`)

O `scripts/prepare-sd.sh` copia e valida esses itens automaticamente conforme disponibilidade.
