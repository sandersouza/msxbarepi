# Issue #249 - [P0] Estruturar framework de backend modular por família em src/backend (primeira família: msx)

- URL: https://github.com/sandersouza/msxbarepi/issues/249
- Milestone: issue avulsa (sem milestone)
- Estado remoto: OPEN
- Labels: `priority:P0`, `type:feature`, `area:emulation`, `area:boot`, `area:scripts`
- Projeto: `MSX BarePI` (`Status: In progress`)

## Contexto

O runtime atual ainda carrega a heranca do caminho antigo de backend unico, com pontos do kernel e do menu acoplados diretamente ao `fmsx_runtime` e aos shims de compatibilidade do bootstrap historico.

Essa base precisa virar um framework de backends por familia, no estilo de um kernel com modulos estaticos registraveis, para permitir:

- manter o primeiro backend funcional (`msx.fmsx`) como baseline
- trocar a implementacao concreta da mesma familia sem reescrever o kernel
- preparar o proximo backend da trilha, `coco.vcc`
- deixar a ABI pronta para modulos loadable depois da carga do kernel

## Objetivo

Estruturar `src/backend/` por familia, sem header publico generico, consolidando a primeira familia `msx` com o modulo plugavel `msx.fmsx`.

## Escopo tecnico

- criar a infraestrutura compartilhada em `src/backend/core/`
- expor o contrato publico da familia MSX em `src/backend/msx/backend.h`
- migrar o backend atual para `src/backend/msx/modules/fmsx/`
- preservar `blueMSX` como segundo modulo registravel da familia MSX, ainda como stub
- trocar o kernel para depender apenas de `backend/msx/backend.h`
- remover do kernel a dependencia direta de `fmsx_runtime.h`
- encapsular as diferencas de implementacao por capabilities opcionais
- introduzir `BACKEND_FAMILY=msx` e `BACKEND_DEFAULT=msx.fmsx`
- manter `EMULATOR_BACKEND=fmsx|bluemsx` como alias transitorio
- gerar o artefato loadable `artifacts/backend/msx/msx.fmsx.mod.elf`
- fixar desde ja o caminho futuro de descoberta em runtime: `SD:/modules/msx/msx.fmsx.mod.elf`

## Fora de escopo

- loader completo de modulos em tempo de execucao nesta rodada
- suporte ativo a familias `coco` e `vice64` no kernel atual
- reescrever todo o ABI auxiliar de debug para eliminar nesta rodada os tipos `TFmsx*`

## DoR

- [x] Existe baseline funcional do backend atual em `main`
- [x] Existe plano tecnico para separar familia publica, core comum e modulos concretos
- [x] O proximo consumidor da arquitetura ja esta identificado: `coco.vcc`

## DoD

- [ ] O kernel usa apenas `backend/msx/backend.h` como header publico de backend
- [ ] `msx.fmsx` esta migrado para `src/backend/msx/modules/fmsx/`
- [ ] `msx.bluemsx` permanece registravel como stub da mesma familia
- [ ] `src/backend/core/` define ABI comum e registry para built-ins/loadables
- [ ] O build aceita `BACKEND_FAMILY=msx` e `BACKEND_DEFAULT=msx.fmsx`
- [ ] `EMULATOR_BACKEND=fmsx|bluemsx` segue funcionando como alias transitorio
- [ ] O artefato `artifacts/backend/msx/msx.fmsx.mod.elf` e gerado
- [ ] O config aceita `backend_id=msx.fmsx`
- [ ] Fallback de backend invalido cai para o default com log claro
- [ ] Documentacao e espelho local atualizados para a nova convencao

## Checklist de trabalho

- [ ] Definir `BackendModuleV1`, `BackendOps` e `BackendHostExportsV1`
- [ ] Criar registry/manager generico em `src/backend/core/`
- [ ] Consolidar fachada publica `src/backend/msx/backend.h`
- [ ] Migrar o backend fMSX para `src/backend/msx/modules/fmsx/`
- [ ] Registrar `msx.bluemsx` como segundo modulo da familia
- [ ] Remover includes diretos de `fmsx_runtime.h` do kernel
- [ ] Propagar `backend_id` no load/save de configuracao
- [ ] Ajustar build raiz e `src/Makefile` para familia/default backend
- [ ] Gerar `msx.fmsx.mod.elf`
- [ ] Documentar a convencao de `src/backend/<family>/backend.h`

## Referencias tecnicas

- #100
- #102
- #104
- #106
- #163

## Proximo consumidor previsto

- backend `coco.vcc` como proxima familia/implementacao da trilha
