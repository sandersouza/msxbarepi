# AGENTS

## Objetivo do projeto

Construir uma base baremetal para Raspberry Pi 3B e evoluir até um emulador MSX executável sem sistema operacional.

## Fonte canonica de regras de fluxo

As regras operacionais estao centralizadas em `.github/instructions/`.

Regra unica: sempre carregar e aplicar **todos** os arquivos `*.instructions.md` dessa pasta.

Prioridade interna:

- Novas regras devem ser adicionadas dentro de seus arquivos de contexto (ex.: regras de gestao em `project-management.instructions.md`).
- Regras que impactam o fluxo geral do projeto (ex.: sincronizacao de docs, atualizacao de contexto) devem ser adicionadas em `docs-sync.instructions.md`.
- Regras que impactam a organizacao do trabalho e ciclo de desenvolvimento devem ser adicionadas em `project-management.instructions.md`.
- Regras que impactam a implementacao tecnica e padrao de codigo devem ser adicionadas em arquivos de instrucoes especificos (ex.: `debug-layer.instructions.md` para regras de debug layer).
- Caso o arquivo de instrucoes especifico ainda nao exista crie um novo arquivo.
- Regras marcadas como imutaveis/obrigatorias tem precedencia maxima.
- Regras de preferencia podem ser flexibilizadas apenas com justificativa tecnica registrada.

## Referencias rapidas

- Contexto persistente da branch: `docs/handoff/<nome-da-branch>.md`
- Ponteiro de contexto atual: `CONTEXT.md`
- Fonte de verdade de gestao: `docs/github-project-management.md`
