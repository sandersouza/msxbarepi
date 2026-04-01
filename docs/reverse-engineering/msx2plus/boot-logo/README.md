# Boot Logo MSX2+

Subdossie dedicado a explicar por que o boot logo do `MSX2+` ainda nao fecha no core local e o que o `z80dasm` confirmou sobre a rotina real do `MSX2PEXT.ROM`.

## ROM set auditado

- `MSX2P.ROM` sha1 `e2fbd56e42da637609d23ae9df9efd1b4241b18a`
- `MSX2PEXT.ROM` sha1 `fe0254cbfc11405b79e7c86c7769bd6322b04995`
- `KANJIBASIC.ROM` sha1 `1ef3956f7f918873fb9b031339bba45d1e5e5878`
- `KANJI.ROM` sha1 `218d91eb6df2823c924d3774a9f455492a10aecb`

Esses quatro hashes batem com o `Sony_HB-F1XDJ.xml` do `openMSX`.

## Importante

- o logo esta no caminho da `SubROM`, nao na `KANJI.ROM`
- a `KANJI.ROM` e fonte, acessada pelos ports `D8h/D9h`
- `KANJIBASIC.ROM` participa da topologia do `MSX2+`, mas nao e o dono do fluxo principal do logo
- o runtime local suporta `MSXJE`, mas o arquivo nao esta presente em `roms/initramfs/` nesta workspace

## Conteudo

- `rom-role-map.md`
  - papel de cada ROM e topologia de slots
- `boot-callflow.md`
  - offsets e wrappers de comando confirmados via `z80dasm`
- `fix-strategy.md`
  - ordem fechada para convergencia do logo

## Comando-base usado

```bash
z80dasm -a -t -l -g 0x0000 -o /tmp/MSX2PEXT.asm roms/initramfs/MSX2PEXT.ROM
```

Os offsets citados abaixo foram validados nesse dump temporario, sem versionar o arquivo `.asm` completo.
