# Remover selecao de backend e consolidar fMSX como backend unico

Issue remota: #262
URL: https://github.com/sandersouza/msxbarepi/issues/262

## Contexto

O projeto nao precisa mais manter caminhos de codigo, scripts ou variaveis para alternar entre backends de emulacao. O backend oficial passa a ser somente o fMSX local.

Isso deve simplificar o fluxo de build/runtime e remover configuracoes que sugiram suporte ativo a outros backends.

## Objetivo

- Remover scripts, variaveis de build e opcoes de configuracao que permitam escolher backend de emulacao.
- Remover logica runtime de troca/selecao de backend quando ela existir apenas para alternancia entre cores.
- Consolidar defaults, docs e nomes auxiliares para fMSX como backend unico.
- Preservar o comportamento funcional atual do fMSX.

## Escopo tecnico inicial

- Build/scripts: `Makefile`, scripts de configuracao e scripts de SD/package.
- Configuracao persistida: leitura/escrita de settings e migracao defensiva de chaves antigas, se necessario.
- Runtime: pontos que inicializam, exibem ou persistem selecao de backend.
- Documentacao: README/docs/handoff/CONTEXT quando comandos, flags ou fluxo forem alterados.

## Fora de escopo inicial

- Remover codigo de referencia em `third_party` que nao participa do build atual.
- Reescrever o backend fMSX.
- Alterar comportamento de maquina MSX, midias, video, audio ou input fora do necessario para eliminar selecao de backend.

## Definition of Ready

- Identificar todas as referencias a backend/core selecionavel em codigo, scripts, configuracao e docs operacionais.
- Separar o que e selecao real de backend do que e selecao de core/arquivo `.img` para SD multicore.
- Definir quais chaves antigas de configuracao devem ser ignoradas, aceitas como legado ou removidas.

## Definition of Done

- Nao ha mais variavel, menu, script ou caminho runtime ativo para escolher backend de emulacao.
- O build inicializa diretamente o backend fMSX unico.
- Configuracoes antigas relacionadas a backend nao quebram boot/runtime.
- Documentacao operacional nao orienta mais selecao ou fallback de outro backend.
- `scripts/check-third-party-pristine.sh`, `git diff --check` e build local relevante passam.

## Checklist

- [x] Auditar referencias a backend/core selecionavel no repo.
- [x] Remover opcoes/variaveis/scripts de selecao de backend.
- [x] Simplificar inicializacao runtime para fMSX unico.
- [x] Ajustar leitura/escrita de configuracao legada.
- [x] Atualizar docs, espelho local e handoff da branch.
- [x] Rodar validacao local.

## Atualizacao 2026-04-30

- Removidas as flags publicas `EMULATOR_BACKEND`, `BACKEND_FAMILY` e `BACKEND_DEFAULT` dos Makefiles e docs operacionais.
- Removidos o registry de multiplos backends, o stub `msx.bluemsx` e os shims legados de selecao `emulator_backend`.
- A fachada MSX agora inicializa diretamente o modulo fMSX built-in.
- `backend_id=` deixou de ser gravado em `msx.cfg`, scripts de SD/package e payload runtime.
- Chaves antigas `backend_id=` em configuracoes existentes ficam inertes: nao alteram o backend ativo.
- O item `CORE` do modo multicore foi preservado porque seleciona o arquivo `.img` no SD, nao backend de emulacao.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `git diff --check`
  - `bash -n scripts/prepare-sd.sh scripts/make-sdcard-package.sh scripts/menuconfig.sh scripts/build-config.sh`
  - `make -j4 DEBUG=1`
  - `make -j4 DEBUG=0`
  - `make backend-module DEBUG=0`
  - `make -n sdcard`
- Build final `DEBUG=0`: `BUILD_BID: 202604302253-e82f8ca`, `TXTDBG BUILD:E6EE`, artefato `artifacts/kernel8-issue262.img`.
