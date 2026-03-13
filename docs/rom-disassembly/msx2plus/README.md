# Disassembly MSX2+

Arquivos de disassembly persistidos fora de `src/` para consulta durante investigacoes de boot/logo e rotinas BIOS/SUBROM:

- `MSX2P.ROM.dis`
- `MSX2PEXT.ROM.dis`

## Como regenerar

```bash
mkdir -p docs/rom-disassembly/msx2plus
z80dasm -a -g 0x0000 -o docs/rom-disassembly/msx2plus/MSX2P.ROM.dis roms/initramfs/MSX2P.ROM
z80dasm -a -g 0x0000 -o docs/rom-disassembly/msx2plus/MSX2PEXT.ROM.dis roms/initramfs/MSX2PEXT.ROM
```

## Observacao

`z80dasm` gera saida linear sem analise de bancos/slots. Para mapear PC do runtime, considerar a janela de endereco efetiva mapeada no momento da execucao.
