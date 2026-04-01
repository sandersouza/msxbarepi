# Papel das ROMs no Boot Logo do MSX2+

## Referencia de maquina

O alvo de referencia continua sendo o `Sony HB-F1XDJ`:

- `openMSX`: `third_party/openMSX/share/machines/Sony_HB-F1XDJ.xml:85-200`
- `blueMSX`: `third_party/bluemsx/blueMSX/Make/blueMSXlite/linux-sdl/Machines/MSX2+ - Sony HB-F1XDJ/config.ini:10-38`

Ambos convergem em:

- slot primario `0` expandido
- slot primario `3` expandido
- BIOS no `0-0`
- `MSX-JE` em `0-3`
- RAM mapper em `3-0`
- SubROM e `KANJIBASIC` em `3-1`
- Disk ROM/FDC em `3-2`

## Tabela de ROMs

| ROM | SHA1 | Situacao local | Papel confirmado | Observacao |
| --- | --- | --- | --- | --- |
| `MSX2P.ROM` | `e2fbd56e42da637609d23ae9df9efd1b4241b18a` | presente | BIOS+BASIC principal | `file` identifica `MSX BIOS+BASIC, version=MSX2+` |
| `MSX2PEXT.ROM` | `fe0254cbfc11405b79e7c86c7769bd6322b04995` | presente | `SubROM` do `MSX2+` | aqui ficam as rotinas-chave do boot logo |
| `KANJIBASIC.ROM` | `1ef3956f7f918873fb9b031339bba45d1e5e5878` | presente | extensao BASIC/driver Kanji | mapeada junto da `SubROM` em `3-1`; nao e o dono do logo |
| `KANJI.ROM` | `218d91eb6df2823c924d3774a9f455492a10aecb` | presente | font ROM | acessada por `D8h/D9h`; nao contem o fluxo executavel do logo |
| `MSXJE` (`hb-f1xdj.rom`) | `ade0c5ba5574f8114d7079050317099b4519e88f` | ausente no initramfs atual | sidecar de referencia em `0-3` | o runtime local tenta carregar `MSXJE.ROM`/`HB-F1XDJ_MSXJE.ROM`, mas segue sem ele se o arquivo nao existir |

## Evidencia no core local

- `ResetMSX()` carrega `MSX2P.ROM` e `MSX2PEXT.ROM` obrigatoriamente no perfil `MSX2+` em `src/fmsx_local/MSX.c:2861-2874`.
- `KANJIBASIC.ROM` e opcional, mas se existir e mapeada em `3-1` em `src/fmsx_local/MSX.c:2866-2869` e `2895-2897`.
- `MSXJE.ROM` tambem e opcional; se existir, e mapeada em `0-3` em `src/fmsx_local/MSX.c:2870-2873` e `2898-2910`.
- o perfil `HB-F1XDJ` local tambem realoca RAM mapper para `3-0` e Disk ROM para `3-2` em `src/fmsx_local/MSX.c:4363-4378`.

## O que cada ROM explica no bug do logo

### `MSX2PEXT.ROM`

- explica o fluxo do logo propriamente dito
- concentra o polling de `S#2`, o acesso a `S#7` e os wrappers de `R#32..R#46`

### `MSX2P.ROM`

- explica o boot principal e o handoff para a `SubROM`
- nao apareceu, nesta rodada, como o dono das rotinas do logo

### `KANJIBASIC.ROM`

- importa para reproduzir a topologia real do `MSX2+`
- nao apareceu como origem do callflow critico do logo
- o `strings` mostra assinatura tipica de extensao BASIC, nao de rotina de animacao

### `KANJI.ROM`

- o `file` classifica como `MSX Kanji Font`
- o dump inicial via `xxd` mostra padroes de bitmap, nao fluxo de codigo
- `z80dasm` sequer cabe no espaco de codigo de 16 bits para esse blob, reforcando que nao estamos diante da rotina do logo

### `MSXJE`

- e relevante para paridade completa com o `HB-F1XDJ`
- nao ha evidencia, nesta rodada, de que a ausencia dele explique o logo quebrado
- a causa raiz continua no VDP: status, command engine e renderer

## Conclusao

O conjunto local de `MSX2P.ROM`, `MSX2PEXT.ROM`, `KANJIBASIC.ROM` e `KANJI.ROM` ja e suficiente para estudar o logo, porque:

- os hashes principais batem com a maquina de referencia
- a rotina chave esta na `SubROM`
- o sintoma atual depende mais de fidelidade do `V9958` do que de "descobrir outra ROM"
