# Handoff Persistente da Branch main

Ultima atualizacao: 10/04/2026 (17:25 -03)

## Objetivo da branch

Manter a baseline principal do `msxbarepi` coerente entre codigo, fluxo operacional e documentacao.

## Atualizacao desta iteracao

- A arvore `src/backend/` foi introduzida para separar o framework de backend por familia da implementacao concreta atual.
- O include publico do kernel passou a ser por familia:
  - `backend/msx/backend.h`
- A infraestrutura comum foi consolidada em:
  - `src/backend/core/module.h`
  - `src/backend/core/registry.h`
  - `src/backend/core/registry.c`
- A primeira familia publica consolidada foi `msx`, com fachada em:
  - `src/backend/msx/backend.h`
  - `src/backend/msx/backend.c`
  - `src/backend/msx/backend_internal.h`
- O primeiro modulo plugavel real foi migrado para:
  - `src/backend/msx/modules/fmsx/module.c`
- O restante do runtime fMSX associado ao backend tambem saiu do `src/` raiz e foi consolidado em:
  - `src/backend/msx/modules/fmsx/`
- O segundo modulo da familia foi preservado como stub registravel em:
  - `src/backend/msx/modules/bluemsx/module.c`
- Catalogos e perfis MSX da familia agora vivem em:
  - `src/backend/msx/gamemaster_catalog.*`
  - `src/backend/msx/machine_profile_catalog.*`
  - `src/backend/msx/machine_profiles/`
- O artefato loadable do primeiro backend passou a ser gerado em:
  - `artifacts/backend/msx/msx.fmsx.mod.elf`
- O kernel e o menu deixaram de depender diretamente de `fmsx_runtime.h`; o acesso agora passa pela fachada `msx_backend_*`.
- O `src/` raiz ficou limpo de arquivos `fmsx_*`, `bluemsx_*`, `emulator_backend.*`, `gamemaster_catalog.*` e `machine_profile_catalog.*`.
- O config passou a aceitar `backend_id=msx.fmsx`, com fallback explicito para o backend default quando a selecao for invalida.
- A documentacao de gestao foi atualizada para suportar issue avulsa em `docs/issues/`.
- Foi preparado o espelho local da issue umbrella desta trilha para publicacao remota fora de milestone.

## Fontes tecnicas desta iteracao

- `Makefile`
- `src/Makefile`
- `src/kernel.h`
- `src/kernel.cpp`
- `src/machine_profile_catalog.c`
- `src/tools/menu/combo_menu.cpp`
- `src/backend/core/module.h`
- `src/backend/core/registry.h`
- `src/backend/core/registry.c`
- `src/backend/msx/backend.h`
- `src/backend/msx/backend.c`
- `src/backend/msx/backend_internal.h`
- `src/backend/msx/modules/fmsx/module.c`
- `src/backend/msx/modules/fmsx/loadable_manifest.c`
- `src/backend/msx/modules/bluemsx/module.c`
- `docs/backend-framework.md`
- `docs/github-project-management.md`

## Validacao desta iteracao

- `make clean && make`: OK
- `make EMULATOR_BACKEND=fmsx`: OK
- `make BACKEND_FAMILY=msx BACKEND_DEFAULT=msx.fmsx`: OK
- `make backend-module`: OK
- `aarch64-elf-nm artifacts/backend/msx/msx.fmsx.mod.elf | rg 'msxbare_backend_module_v1|g_msx_backend_module_fmsx'`: OK
- `aarch64-elf-readelf -h artifacts/backend/msx/msx.fmsx.mod.elf`: OK (`ELF64`, `REL`, `AArch64`)

## Observacoes

- O loader completo de modulos em runtime continua fora do escopo desta rodada; o que ficou pronto agora foi a ABI, o registry e o artefato loadable.
- A fachada publica `src/backend/msx/backend.h` ainda reaproveita tipos `TFmsx*` para parte da telemetria de debug; isso preserva compatibilidade nesta baseline e deixa o desacoplamento fino desses tipos para uma rodada posterior.
- O caminho futuro previsto para descoberta de modulo em runtime ja ficou documentado como `SD:/modules/msx/msx.fmsx.mod.elf`.
