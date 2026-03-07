---
description: "Use quando trabalhar em build, validacao, empacotamento e entrega de artefatos no msxbarepi-circle (make, scripts/, Makefile, README)."
name: "MSXBarePi Build and Release"
applyTo:
  - "Makefile"
  - "scripts/**"
  - "README.md"
  - "docs/**"
---
# MSXBarePi Build and Release

## Escopo

- Padronizar iteracoes de build/teste local, artefatos esperados e entrega para teste em hardware.

## Workflow de build

- Confirmar `PWD` em `/Users/sandersouza/Developer/msxbarepi-circle` antes de build/debug.
- Executar iteracoes locais necessarias e analisar erros/warnings antes de orientar proximo passo.
- Em gates de milestone ou antes de avancos maiores, preferir `make clean && make` e validacao em hardware.

## Guardrails de dependencias

- Antes de targets dependentes de Circle/fMSX, executar `scripts/check-third-party-pristine.sh` ou `make guard-third-party`.
- So flexibilizar com override explicito (`ALLOW_DIRTY_THIRD_PARTY=1`) quando houver motivo tecnico claro.
- Nunca modificar diretamente `third_party/circle` e `third_party/fmsx`; usar copia/patch separado.

## Artefatos e rastreio

- Preservar expectativa de artefatos: `artifacts/kernel8-default.img`.
- Em branch de issue (`<numero>-...`), garantir tambem `artifacts/kernel8-issue<numero>.img` e prioriza-lo para a issue ativa.
- Ao entregar build para teste, informar identificador curto `BUILD_HASH:<git>-<sha1>`.

## SD e empacotamento

- Usar apenas `scripts/prepare-sd.sh` para preparo de SD em docs/comandos.
- Ao finalizar build de teste, sempre incluir comando de preparo de SD sem `DRY_RUN=1`.
- Em `make package`, usar `DEBUG=0|1` e `OWNER=\"<nome>\"`; nome esperado do zip: `artifacts/sdcard-package-<OWNER>.zip`.

## Alinhamento com docs

- Se um novo arquivo for necessario no boot, atualizar `scripts/prepare-sd.sh` na mesma mudanca.
- Atualizar `README.md`/`docs/` sempre que flags de build, comandos ou fluxo de entrega mudarem.
