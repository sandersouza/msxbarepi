# Dynamic Capture Recipes - Issue 82

## Objetivo

Registrar quais repros dinamicos continuam sendo o corpus minimo para validar a convergencia do `V9958 stock` depois de cada mudanca.

## Corpus obrigatorio

- `MSX2+ boot logo`
  - repro natural do problema visual e de cadencia
- `STS006`
  - repro sintetico para `SRCH`, `S#2`, `S#8`, `S#9` e janela de `CE`
- `REG004`
  - repro sintetico para `R#17/0x9B`
- `Knightmare Gold`
  - regressao de scroll/timing ja historica na trilha
- `Gradius2E/Nemesis2E`
  - regressao de renderer/addressing e cadence

## Estado atual dos artefatos

- o repo atual nao contem `sdcard/disks/DEBUG/` versionado
- o gerador canonicamente usado continua sendo `scripts/build-v9958-debug-disks.py`
- `scripts/README.md` ainda referencia:
  - `V9958_STS006_SRCH.DSK`
  - `V9958_REG004_R17.DSK`

## Receita `STS006`

- Fonte de verdade: `scripts/build-v9958-debug-disks.py`
- Intencao:
  - preparar um `SRCH`
  - acompanhar `CE`
  - capturar `S#2`, `S#8`, `S#9` e `FINAL X`
- Aceite esperado para a trilha atual:
  - o repro continua valido depois das correcoes
  - a janela observada de `CE` e coerente com o alvo escolhido

## Receita `REG004`

- Fonte de verdade: `scripts/build-v9958-debug-disks.py`
- Intencao:
  - exercitar auto-incremento de `R#17`
  - confirmar comportamento da escrita indireta via `0x9B`
- Aceite esperado:
  - o comportamento permanece consistente com a decisao registrada na matriz

## Ordem de uso

1. rodar o boot logo do `MSX2+`
2. se o sintoma principal sumir, repetir `STS006`
3. repetir `REG004`
4. fechar com `Knightmare Gold`
5. fechar com `Gradius2E/Nemesis2E`

## Observacao

Esses repros nao substituem a matriz estatica. Eles existem para verificar se a implementacao escolhida continua fiel quando o BIOS e os jogos exercitam o `V9958` em tempo real.
