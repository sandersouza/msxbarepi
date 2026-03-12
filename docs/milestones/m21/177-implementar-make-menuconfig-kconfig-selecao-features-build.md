# Issue #177 - [P0] Implementar MAKE MENUCONFIG (estilo Linux/Kconfig) para seleção de features de build

- URL: https://github.com/sandersouza/msxbarepi/issues/177
- Milestone: Release: Build Menuconfig e Feature Gates (m21)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:scripts`, `area:settings`, `area:boot`

## Checklist
- [x] `make menuconfig` funcional
- [x] Persistencia de `.config`
- [x] Geracao de config de build (`.mk`/`.h`)
- [x] Integracao incremental com baseline #176

## Status da iteracao atual

- Implementado `make menuconfig` + `make syncconfig`.
- Script novo: `scripts/menuconfig.sh` (gera `.config`, `.config.mk`, `build/config.mk`).
- Script novo: `scripts/gen-build-header.sh` (gera `build/config_build.h`).
- `Makefile` integrado para:
  - carregar config automaticamente;
  - gerar header antes do build (`config-header`);
  - propagar flags para `src/Makefile`.
- `src/Makefile` passou a incluir `../build/config_build.h` e a receber macros de features estaticas.
