# Issue 82 - Umbrella do V9958 Stock

Diretorio canonico de evidencias da umbrella `#82`.

## Entradas principais

- [`../../msx2plus/v9958-stock-compare-matrix.md`](../../msx2plus/v9958-stock-compare-matrix.md)
  - matriz canonica da auditoria do `V9958 stock`
- [`../../msx2plus/vdp9958-stock/README.md`](../../msx2plus/vdp9958-stock/README.md)
  - leitura tecnica orientada a implementacao
- [`../../msx2plus/boot-logo/README.md`](../../msx2plus/boot-logo/README.md)
  - engenharia reversa do boot logo do `MSX2+`
- [`dynamic-capture-recipes.md`](dynamic-capture-recipes.md)
  - repros dinamicos e corpus de validacao

## Relacao com as sub-issues

- `#231`: matriz comparativa canonica
- `#233`: status, I/O e command engine
- `#234`: renderer, addressing, odd/even, multipage
- `#235`: corpus dinamico e telemetria existente
- `#236`: backlog implementavel

## Leitura executiva

- O logo do `MSX2+` ja nao esta bloqueado por falta de evidencia.
- O gargalo restante esta documentado como um problema conjunto de:
  - status sync
  - command engine
  - renderer `SCREEN 6/7`
- O objetivo deste diretorio e manter a trilha auditavel sem espalhar notas em caminhos paralelos.
