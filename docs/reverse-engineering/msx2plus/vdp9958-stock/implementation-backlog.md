# Backlog Implementavel - V9958 Stock

## Objetivo

Transformar a auditoria comparativa em uma sequencia de trabalho que possa ser implementada sem novas decisoes de produto.

## Itens

| Item | Mudanca | Arquivos-alvo provaveis | Repro obrigatorio | Criterio de aceite |
| --- | --- | --- | --- | --- |
| `BL-001` | Trocar o sync de status read por um modelo temporal equivalente ao `blueMSX` | `src/fmsx_local/MSX.c`, `src/fmsx_local/V9938.c` | `STS006`, boot logo `MSX2+` | `S#2`, `S#7`, `S#8`, `S#9` deixam de chegar atrasados em relacao ao evento que o BIOS esta observando |
| `BL-002` | Substituir o quantum fixo do command engine por um acumulador temporal compatvel com `systemTime` | `src/fmsx_local/V9938.c`, `src/fmsx_local/MSX.c` | boot logo `MSX2+`, `Knightmare Gold`, `Gradius2E/Nemesis2E` | o logo ganha cadencia normal sem regressao obvia em workloads de blit pesado |
| `BL-003` | Fechar a semantica de `CE`, `TR`, `BD` e o contrato de `S#7` | `src/fmsx_local/V9938.c`, `src/fmsx_local/MSX.c` | `STS006`, telemetria `TM6D` | os estados do bloco de comandos passam a bater com o alvo escolhido em toda a janela do comando |
| `BL-004` | Reescrever `SCREEN 6/7` para um renderer page-aware, com `jump/page/hscroll512` na linha | `src/fmsx_local/Common.h`, `src/fmsx_local/Wide.h` | boot logo `MSX2+` | desaparecem tarjas, pagina errada e desalinhamento horizontal durante a animacao |
| `BL-005` | Revisar `R#2 bit5`, `R#25`, `R#26`, `R#27`, odd/even e `R#9 interlace` como um unico bloco | `src/fmsx_local/MSX.c`, `src/fmsx_local/Common.h`, `src/fmsx_local/Wide.h` | boot logo `MSX2+`, `Knightmare Gold` | page split, left-edge mask e odd/even passam a seguir o mesmo modelo da referencia |
| `BL-006` | Blindar registradores invalidos e documentar decisao final para `R#17` acima de `R#47` | `src/fmsx_local/MSX.c` | `REG004`, repro sintetico de `R17/0x9B` | `R#24`, `R#28..R#31` deixam de carregar semantica local indevida e `R17` fica explicitamente alinhado ao alvo escolhido |
| `BL-007` | Regerar e validar o corpus dinamico depois das correcoes | `scripts/build-v9958-debug-disks.py`, `docs/reverse-engineering/issues/issue-82/dynamic-capture-recipes.md` | `STS006`, `REG004`, boot logo, `Knightmare Gold`, `Gradius2E/Nemesis2E` | cada gap fechado na matriz volta com evidencia dinamica atualizada |

## Ordem obrigatoria

1. `BL-001`
2. `BL-002`
3. `BL-003`
4. `BL-004`
5. `BL-005`
6. `BL-006`
7. `BL-007`

## Decisoes fechadas para a proxima implementacao

- O alvo preferencial para semantica stock e `blueMSX`, usando `V9958-Super` como cheque de HDL e nao como criterio unico de desempate.
- `STS-006` continua aberto apenas como disputa de referencia, nao como bloqueio para corrigir `S#2/S#7/CE/TR`.
- O primeiro patch funcional nao deve mexer em ROMs nem no mapa de slots; deve atacar temporalidade e renderer.
- `MSXJE` nao e prerequisito para iniciar a correcao do logo. Se for usado depois, entra como passo de paridade de topologia, nao como causa raiz primaria.
