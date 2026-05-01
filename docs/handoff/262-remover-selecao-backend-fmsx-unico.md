# Handoff - Issue #262

Branch: `262-remover-selecao-backend-fmsx-unico`
Issue remota: https://github.com/sandersouza/msxbarepi/issues/262
Milestone: `FIX: Minor Issues / Other Issues`

## Objetivo

Remover suporte ativo a selecao/troca de backend de emulacao e consolidar o runtime/build no backend fMSX unico.

## Contexto inicial

- A issue nasceu porque outros backends deixaram de ser alvo do projeto.
- Separar cuidadosamente selecao de backend de emulacao da selecao de core `.img` para SD multicore.
- Preservar compatibilidade defensiva com configuracoes antigas relacionadas a backend quando isso evitar quebra de boot.

## Plano tecnico

- Auditar referencias a backend/core selecionavel em codigo, scripts e docs.
- Remover variaveis/opcoes que permitam selecionar backend.
- Simplificar inicializacao runtime para fMSX unico.
- Atualizar docs operacionais e espelhos locais afetados.
- Validar com pristine third-party, `git diff --check` e build local relevante.

## Estado

- 2026-04-30: issue criada em `#262`; iniciando branch de trabalho.
- 2026-04-30: implementacao concluida localmente.
  - Makefiles nao aceitam mais `EMULATOR_BACKEND`, `BACKEND_FAMILY` ou `BACKEND_DEFAULT`.
  - Runtime MSX chama diretamente o modulo fMSX built-in; registry multi-backend e stubs blueMSX/legacy foram removidos.
  - `backend_id=` nao e mais lido como selecao nem gravado em `msx.cfg`/RAW/scripts.
  - `CORE` foi mantido por ser selecao de `.img` do modo multicore, nao backend de emulacao.
  - Validacao: third-party pristine, `git diff --check`, `bash -n` dos scripts afetados, `make -j4 DEBUG=1`, `make -j4 DEBUG=0`, `make backend-module DEBUG=0`, `make -n sdcard`.
  - Build final `DEBUG=0`: `BUILD_BID: 202604302253-e82f8ca`, `TXTDBG BUILD:E6EE`, `artifacts/kernel8-issue262.img`.
