---
description: "Use para build, validacao, empacotamento, scripts, SD e entrega de artefatos."
name: "MSXBarePi Build and Release"
applyTo:
  - "Makefile"
  - "scripts/**"
  - "README.md"
  - "docs/**"
---
# MSXBarePi Build and Release

## Build

- Confirmar que o comando roda na raiz do repo `msxbarepi`.
- Executar builds/testes locais necessarios e ler erros antes de propor proximos passos.
- Antes de targets que dependem de Circle/fMSX, rodar `scripts/check-third-party-pristine.sh` ou `make guard-third-party`.
- Em gates maiores, preferir build limpo e validacao em hardware quando aplicavel.

## Artefatos

- Artefato padrao: `artifacts/kernel8-default.img`.
- Em branch de issue `<numero>-...`, gerar/priorizar `artifacts/kernel8-issue<numero>.img`.
- Ao entregar build para hardware, informar:
  - `BUILD_BID`
  - `TXTDBG BUILD:XXXX`
  - `BUILD_HASH`
  - comando `make sdcard`
- Se o hardware ainda nao exibiu o ID, calcular `TXTDBG BUILD:XXXX` com o mesmo algoritmo do kernel a partir de `MSXBARE_BUILD_BID`.

## SD e package

- Usar `make sdcard` como comando oficial para preparar/gravar SD em docs e respostas.
- Antes de executar `make sdcard`, pedir confirmacao explicita do usuario.
- Se o boot exigir novo arquivo no SD, atualizar `scripts/prepare-sd.sh` na mesma mudanca.
- Em package, usar `DEBUG=0|1` e `OWNER=\"<nome>\"`; zip esperado: `artifacts/sdcard-package-<OWNER>.zip`.

## Docs

- Atualizar README/docs quando comandos, flags, artefatos ou fluxo de entrega mudarem.
