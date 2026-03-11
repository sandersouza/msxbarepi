# Issue #141 - Build mínimo do openMSX core no pipeline atual (sem SDL/OS)

- URL: https://github.com/sandersouza/msxbarepi/issues/141
- Milestone: Release: Migração fMSX -> openMSX (m19)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:boot`, `area:scripts`

## Objetivo
Produzir build mínimo do core openMSX integrado ao Makefile do projeto, sem frontend desktop.

## Checklist
- [ ] Criar alvo/flags de build para backend openMSX
- [ ] Resolver símbolos/dependências freestanding
- [ ] Gerar artefato testável no RPI3B
- [ ] Documentar flags e limitações iniciais
