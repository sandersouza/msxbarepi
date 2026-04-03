# VDP9958 Stock

Subdossie que traduz a matriz comparativa em leitura tecnica orientada a implementacao.

## Conteudo

- `../v9958-stock-compare-matrix.md`
  - matriz canonica de semantica e completude
- `gap-report.md`
  - resumo do que ja fecha, do que ainda diverge e do que esta em disputa
- `msx-c-vdp-usage-map.md`
  - mapa de como `MSX.c` e o renderer local exercitam a semantica do VDP
- `implementation-backlog.md`
  - backlog implementavel, com repro e criterio de aceite

## Conclusao rapida

- I/O basico, `S#7`, `R#44` e o decode de comandos estao suficientemente proximos do alvo.
- O maior bloco restante esta no trio `status temporal`, `command engine` e `renderer SCREEN 6/7`.
- O boot logo do `MSX2+` so vai "fechar perfeito" quando esses tres blocos convergirem ao mesmo tempo.
