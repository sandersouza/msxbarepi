# Framework de Backend por Familia

## Objetivo

Estruturar `src/backend/` para que o kernel consuma um contrato publico por familia e cada implementacao concreta seja um modulo registravel, com possibilidade de empacotamento loadable no mesmo ABI.

Nesta rodada, a primeira familia consolidada e `msx`, com o modulo principal `msx.fmsx`.

## Convencoes de arvore

- Infraestrutura compartilhada: `src/backend/core/`
- Adaptacao interna neutra para o kernel/UI: `src/backend/runtime/`
- Header publico por familia: `src/backend/<family>/backend.h`
- Implementacoes concretas por familia: `src/backend/<family>/modules/<impl>/`

Arvore atual:

- `src/backend/core/module.h`
- `src/backend/core/registry.h`
- `src/backend/core/registry.c`
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
- `src/backend/msx/modules/bluemsx/module.c`
- `src/backend/msx/legacy/`

## Contrato publico

O kernel nao inclui um header generico `backend/backend.h`.

O include publico passa a ser por familia:

- `#include "backend/msx/backend.h"`
- `#include "backend/coco/backend.h"`
- `#include "backend/vice64/backend.h"`

Na baseline atual, somente `backend/msx/backend.h` existe como header publico de familia.

O kernel e os componentes genericos de UI nao dependem mais diretamente de `backend/msx/*`. Eles passam pela adaptacao interna:

- `#include "backend/runtime/runtime.h"`

Essa camada interna:

- encapsula qual familia concreta esta ativa no build
- preserva a API publica por familia fora do kernel
- impede que sistemas genericos como F12/menu shell, debug overlay, UART log, viewport/mailbox e HID precisem conhecer `backend/msx`

## Identidade de backend

O framework trabalha com dois niveis:

- `BACKEND_FAMILY=msx`
- `BACKEND_DEFAULT=msx.fmsx`

O arquivo de configuracao tambem pode persistir o backend selecionado:

```ini
backend_id=msx.fmsx
```

Se `backend_id` for invalido ou indisponivel, o runtime cai para o default da familia e registra o fallback no boot log.

## ABI comum

`src/backend/core/module.h` define o ABI compartilhado entre built-ins e modulos loadable:

- `BackendModuleV1`
- `BackendOps`
- `BackendHostExportsV1`
- `BackendRuntimeStatus`
- `BackendVideoPresentation`
- `BackendInfo`

`src/backend/core/registry.*` centraliza registro, descoberta e selecao por `backend_id`.

## Familia MSX

`src/backend/msx/backend.h` e a fachada publica estavel da familia MSX, usada pela adaptacao interna e pelos modulos da propria familia.

Essa fachada:

- esconde o registry interno
- publica as capabilities da familia (`state`, `machine`, `media`, `cheat`, `debug`)
- encapsula o backend selecionado
- registra os modulos built-in da familia

Modulos MSX atuais:

- `msx.fmsx`: implementacao funcional principal
- `msx.bluemsx`: stub registravel para a segunda implementacao da familia

Com a reorganizacao desta rodada, o `src/` raiz deixa de carregar arquivos `fmsx_*`, `bluemsx_*`, `emulator_backend.*`, `gamemaster_catalog.*` e `machine_profile_catalog.*`; todo esse material fica encapsulado em `src/backend/msx/`.

## Build

Build padrao da baseline:

```bash
make
```

Aliases suportados:

```bash
make EMULATOR_BACKEND=fmsx
make BACKEND_FAMILY=msx BACKEND_DEFAULT=msx.fmsx
make BACKEND_FAMILY=msx BACKEND_DEFAULT=msx.bluemsx
```

Alias legado:

- `EMULATOR_BACKEND=fmsx` -> `BACKEND_FAMILY=msx`, `BACKEND_DEFAULT=msx.fmsx`
- `EMULATOR_BACKEND=bluemsx` -> `BACKEND_FAMILY=msx`, `BACKEND_DEFAULT=msx.bluemsx`

## Modulo loadable

O primeiro artefato loadable gerado nesta rodada e:

```text
artifacts/backend/msx/msx.fmsx.mod.elf
```

O manifesto exportado usa o mesmo ABI do built-in e publica o simbolo:

```text
msxbare_backend_module_v1
```

Caminho futuro previsto para descoberta em runtime:

```text
SD:/modules/msx/msx.fmsx.mod.elf
```

## Fora de escopo desta rodada

- loader completo de codigo em runtime
- suporte multi-familia pronto no kernel ativo
- desacoplamento total dos tipos de debug herdados de `fmsx_runtime.h`

## Limitacoes atuais

- A adaptacao interna `src/backend/runtime/runtime.h` ainda faz bridge para a familia MSX por aliases de tipo e funcao; isso isola o kernel, mas ainda nao e um dispatcher multi-familia completo.
- A fachada publica `src/backend/msx/backend.h` ainda reaproveita tipos `TFmsx*` para alguns blocos de debug e telemetria. Isso preserva compatibilidade nesta rodada e deixa para a proxima o recorte fino de um ABI MSX totalmente autonomo nesses tipos auxiliares.
