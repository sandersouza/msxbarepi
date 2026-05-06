# Issue #106 - [P1] Migrar bootstrap atual do fMSX para o novo scaffold de adapter

- URL: https://github.com/sandersouza/msxbarepi/issues/106
- Milestone: Framework de Migração de Emuladores Bare Metal (m14)
- Estado remoto: OPEN em 2026-05-04; tecnicamente apta para encerramento apos validacao local abaixo.

## Objetivo

Usar o bootstrap fMSX existente como caso real do framework de backend/adapters, preservando `third_party/` pristine.

## Criterios de aceite

- [x] Adapter fMSX compila no scaffold/ABI comum.
- [x] Kernel consome a fachada MSX/fMSX sem selecao runtime/build-time de multiplos backends.
- [x] Fluxo BIOS/cart/disco por initramfs CPIO esta documentado.
- [x] Referencias `third_party/fmsx` e `third_party/circle` usadas pelo adapter estao citadas em documentacao.
- [x] Guardrail de licenciamento/upstream pristine passa localmente.

## Evidencia em `main` em 2026-05-04

- Implementacao ativa: `src/backend/msx/modules/fmsx/module.c`.
- ABI comum: `src/backend/core/module.h`.
- Fachada MSX usada pelo kernel/UI: `src/backend/msx/backend.c` e `src/backend/msx/backend.h`.
- Initramfs/VFS fMSX: `src/backend/msx/modules/fmsx/fmsx_initramfs.cpp` e `src/backend/msx/modules/fmsx/fmsx_virtual_fs.c`.
- Documentacao: `docs/backend-framework.md` e `README.md`.

Validacao local:

```bash
make guard-third-party
make backend-module
make
```

Resultado:

- `make guard-third-party`: OK, `third_party` integro.
- `make backend-module`: OK, gera `artifacts/backend/msx/msx.fmsx.mod.elf`.
- `make`: OK, gera `artifacts/kernel8-default.img`.
- Tamanho de `kernel8.img`: `781096 / 5242880` bytes.
- `_end`: `0x45FFD5 / 0x580000`.

## Decisao

A issue pode ser fechada como concluida pelo estado atual de `main`. A unica validacao nao repetida nesta checagem foi boot fisico no Raspberry Pi 3B; nao ha evidencia local nova de regressao no build.
