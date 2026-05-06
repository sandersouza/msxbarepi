# Backend MSX fMSX

## Objetivo

Manter o kernel consumindo uma fachada interna estavel para o backend MSX, mas sem suporte ativo a escolha entre backends de emulacao. O backend funcional e unico e o fMSX local.

## Convencoes de arvore

- ABI interno comum: `src/backend/core/module.h`
- Adaptacao interna para kernel/UI: `src/backend/runtime/runtime.h`
- Fachada publica da familia MSX: `src/backend/msx/backend.h`
- Implementacao fMSX: `src/backend/msx/modules/fmsx/`

Arvore ativa:

- `src/backend/core/module.h`
- `src/backend/runtime/runtime.h`
- `src/backend/msx/backend.h`
- `src/backend/msx/backend.c`
- `src/backend/msx/backend_internal.h`
- `src/backend/msx/gamemaster_catalog.c`
- `src/backend/msx/gamemaster_catalog.h`
- `src/backend/msx/machine_profile_catalog.c`
- `src/backend/msx/machine_profile_catalog.h`
- `src/backend/msx/machine_profiles/`
- `src/backend/msx/modules/fmsx/module.c`
- `src/backend/msx/modules/fmsx/loadable_manifest.c`
- `src/backend/msx/modules/fmsx/fmsx_runtime.c`
- `src/backend/msx/modules/fmsx/fmsx_runtime.h`
- `src/backend/msx/modules/fmsx/fmsx_host_stubs.c`
- `src/backend/msx/modules/fmsx/fmsx_initramfs.cpp`
- `src/backend/msx/modules/fmsx/fmsx_virtual_fs.c`
- `src/backend/msx/modules/fmsx/fmsx_local/`
- `src/backend/msx/modules/fmsx/fmsx_compat/`

## Contrato publico

O kernel e os componentes genericos de UI passam pela adaptacao interna:

```c
#include "backend/runtime/runtime.h"
```

Essa camada aponta diretamente para a fachada MSX/fMSX e evita que sistemas genericos como F12/menu, debug overlay, UART log, viewport e HID acessem detalhes de `fmsx_runtime` diretamente.

## Identidade de backend

Nao existe selecao runtime ou build-time de backend de emulacao. O runtime inicializa diretamente o modulo fMSX built-in.

Configuracoes antigas com `backend_id=` sao tratadas como legado inerte: nao sao gravadas pelo projeto e nao alteram o backend ativo.

## ABI comum

`src/backend/core/module.h` define os tipos compartilhados pelo modulo fMSX built-in e pelo artefato loadable fMSX:

- `BackendModuleV1`
- `BackendOps`
- `BackendHostExportsV1`
- `BackendRuntimeStatus`
- `BackendVideoPresentation`
- `BackendInfo`

Nao ha registry ou descoberta de multiplos backends no runtime ativo.

## Build

Build padrao:

```bash
make
```

Flags como `EMULATOR_BACKEND`, `BACKEND_FAMILY` e `BACKEND_DEFAULT` foram removidas. A unica implementacao de emulacao compilada e o fMSX local.

## Modulo loadable

O artefato loadable preservado para o fMSX e:

```text
artifacts/backend/msx/msx.fmsx.mod.elf
```

O manifesto exportado usa o mesmo ABI do built-in e publica o simbolo:

```text
msxbare_backend_module_v1
```

Esse artefato nao implica selecao entre backends; ele representa apenas o modulo fMSX.

## Initramfs e midia

O modulo fMSX consome BIOS/cartuchos/discos pelo VFS interno preenchido a partir do CPIO em `src/backend/msx/modules/fmsx/fmsx_initramfs.cpp` e `src/backend/msx/modules/fmsx/fmsx_virtual_fs.c`.

- No modo `standalone`, o build gera `build/initramfs/msx-embedded.cpio` e o embedda no kernel.
- No modo `multicore`, o boot externo usa `msx.cpio` via `initramfs <core>.cpio followkernel`.
- Nomes canonicos de boot incluem `MSX.ROM`, `MSX2.ROM`, `MSX2P.ROM`, `MSX2EXT.ROM`, `MSX2PEXT.ROM`, `DISK.ROM`, `CARTA.ROM`, `CARTB.ROM`, `DRIVEA.DSK`, `DRIVEB.DSK`, `CARTS.CRC` e `CARTS.SHA`.

## Referencias

- Base fMSX upstream consultada/adaptada sem alterar upstream: `third_party/fmsx/fMSX/MSX.c`, `third_party/fmsx/fMSX/V9938.c`, `third_party/fmsx/fMSX/Z80.c`, `third_party/fmsx/EMULib/`.
- Contratos e build baremetal Circle usados pelo kernel: `third_party/circle/include/circle/types.h`, `third_party/circle/include/circle/startup.h`, libs Circle em `third_party/circle/lib/` e addons SD/FAT em `third_party/circle/addon/`.
- Guardrail operacional: `scripts/check-third-party-pristine.sh` deve passar antes de builds que dependem de Circle/fMSX.

## Limitacoes atuais

- A adaptacao interna `src/backend/runtime/runtime.h` ainda faz bridge por aliases de tipo e funcao para a familia MSX.
- A fachada publica `src/backend/msx/backend.h` ainda reaproveita tipos `TFmsx*` para alguns blocos de debug e telemetria.
