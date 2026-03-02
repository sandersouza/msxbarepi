# Issue #124 — [P0] Feature gates de kernel para remover SD IO/Menu/Debug em compile-time

- URL: https://github.com/sandersouza/msxbarepi/issues/124
- Labels: `priority:P0`, `type:feature`, `area:boot`, `area:storage`, `area:debug`
- Objetivo: modularizar o kernel para remover módulos por flags de build.

## Aceite

- módulos OFF removem paths de código e comportamento
- build sem SD IO remove carga de ROM/DSK via SD
