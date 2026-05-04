# Handoff Persistente da Branch main

Ultima atualizacao: 04/05/2026 (viewport MSX classico)

## Atualizacao 04/05/2026 - viewport MSX classico

- Corrigido o recorte do presenter fMSX classico em `src/kernel.cpp`: a fonte apresentada passou de `256x192` centralizado para a mailbox completa `272x228`.
- Objetivo: preservar as bordas superior/inferior/laterais usadas pelo BASIC e evitar corte vertical da area util observado em hardware/captura.
- O caminho `V9990/GFX9000` continua fora do crop classico por `disable_scanline_postfx`.
- Documentacao sincronizada em `docs/debug-layer.md`.

Ultima atualizacao anterior: 30/04/2026 (midias fora do settings)

## Atualizacao 30/04/2026 - midias nao persistidas

- `msx.cfg`/snapshot RAW nao gravam nem leem mais caminhos de ROM, DISK ou cassete.
- O boot nao monta `FatFs` por causa de midia de startup salva; com raw valido, o mount volta a ficar deferido.
- O fMSX nao inicia mais tentando abrir automaticamente `CARTA.ROM`, `CARTB.ROM`, `DRIVEA.DSK`, `DRIVEB.DSK` ou `DEFAULT.CAS`.
- O carregamento manual pelo menu F12 permanece como fluxo explicito para ROM, DISK e cassete.

Ultima atualizacao anterior: 19/04/2026 (handoff da #251 para pausa)

## Objetivo da branch

Manter a baseline principal do `msxbarepi` coerente entre codigo, fluxo operacional e documentacao.

## Atualizacao 19/04/2026 - checkpoint local da issue #251

- A branch `251-suporte-cartucho-vdp-v9990` foi preparada para merge local em `main` como checkpoint de trabalho.
- A issue `#251` e a branch correspondente continuam abertas; nao fechar/remover ate a trilha `V9990/GFX9000` ser retomada e concluida.
- A telemetria UART do `V9990/GFX9000` (`G9*`) foi desinstrumentada por padrao:
  - macro canonica: `MSXBARE_V9990_UART_TRACE`
  - default: `0`
  - reativacao futura:

```bash
make DEBUG=1 MSXBARE_V9990_UART_TRACE=1
```

- O `DEBUG [MIN]` continua usando `VDP R#9 bit1` para exibir `PAL/NTSC`, sem depender dos logs `G9*`.
- A issue `#251` ficou pausada com os problemas remanescentes de fidelidade V9990 documentados em `docs/handoff/251-suporte-cartucho-vdp-v9990.md`.

## Atualizacao desta iteracao

- Foi aberta a issue avulsa `#251` para a trilha `V9990/GFX9000`, com espelho local em `docs/issues/251-suporte-cartucho-vdp-v9990.md`.
- A issue `#251` foi ativada, recebeu branch vinculada `251-suporte-cartucho-vdp-v9990` e esta no projeto `MSX BarePI` com `Status: In progress`.
- O PR `#250` foi aceito e mergeado em `main`, fechando a issue `#249`.
- `origin/main` agora aponta para o merge commit `1e936ec`.
- A branch remota `249-backend-framework-modular-por-familia-msx` foi removida apos o merge.
- O baseline atual de `main` inclui, alem da modularizacao de backend por familia:
  - fastboot com ordem `screen/audio -> msxbarepi.cfg -> backend -> debug/UART (DEBUG=1) -> USB HID -> init diferido`
  - `msxbarepi.cfg` como nome canonico do arquivo de configuracao no SD e nos scripts
  - `logger/serial` e o renderer do overlay condicionados a `DEBUG=1`
  - wipe global do overlay nas transicoes `MAX/MIN/OFF`
  - overlay sempre iniciado em `OFF` no boot e so depois assumindo `debugger=` do cfg
- Durante a sincronizacao local pos-merge, o commit local isolado `a9d9ea5` foi preservado em `backup/main-a9d9ea5` antes de realinhar `main` com `origin/main`.
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
- `src/tools/debug/debug_runtime_gate.h`
- `src/tools/debug/combo_debug_overlay.cpp`
- `src/backend/core/module.h`
- `src/backend/core/registry.h`
- `src/backend/core/registry.c`
- `src/backend/msx/backend.h`
- `src/backend/msx/backend.c`
- `src/backend/msx/backend_internal.h`
- `src/backend/msx/modules/fmsx/module.c`
- `src/backend/msx/modules/fmsx/loadable_manifest.c`
- `src/backend/msx/modules/bluemsx/module.c`
- `scripts/make-sdcard-package.sh`
- `scripts/prepare-sd.sh`
- `scripts/update-sd-incremental.sh`
- `sdcard/msxbarepi.cfg`
- `docs/backend-framework.md`
- `docs/debug-layer.md`
- `docs/fluxograma-boot-baremetal-rpi-msx.md`
- `docs/github-project-management.md`

## Validacao desta iteracao

- `make clean && make DEBUG=1`: OK
- `make clean && make DEBUG=0`: OK
- `make clean && make`: OK
- `make EMULATOR_BACKEND=fmsx`: OK
- `make BACKEND_FAMILY=msx BACKEND_DEFAULT=msx.fmsx`: OK
- `make backend-module`: OK
- `aarch64-elf-nm artifacts/backend/msx/msx.fmsx.mod.elf | rg 'msxbare_backend_module_v1|g_msx_backend_module_fmsx'`: OK
- `aarch64-elf-readelf -h artifacts/backend/msx/msx.fmsx.mod.elf`: OK (`ELF64`, `REL`, `AArch64`)

## Observacoes

- A issue `#249` esta fechada e o PR `#250` ja foi mergeado em `main`.
- A branch remota da issue foi apagada; a branch local correspondente foi mantida para remocao apenas sob confirmacao explicita do usuario.
- O loader completo de modulos em runtime continua fora do escopo desta rodada; o que ficou pronto agora foi a ABI, o registry e o artefato loadable.
- A fachada publica `src/backend/msx/backend.h` ainda reaproveita tipos `TFmsx*` para parte da telemetria de debug; isso preserva compatibilidade nesta baseline e deixa o desacoplamento fino desses tipos para uma rodada posterior.
- O caminho futuro previsto para descoberta de modulo em runtime ja ficou documentado como `SD:/modules/msx/msx.fmsx.mod.elf`.
