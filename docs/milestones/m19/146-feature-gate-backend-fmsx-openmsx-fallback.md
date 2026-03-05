# Issue #146 - Feature gate de backend: alternar fMSX/openMSX com fallback seguro

- URL: https://github.com/sandersouza/msxbarepi/issues/146
- Milestone: Release: Migração fMSX -> openMSX (m19)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:boot`, `area:emulation`, `area:settings`

## Objetivo
Permitir coexistência de backends durante a migração, com fallback para fMSX em caso de falha.

## Checklist
- [ ] Criar gate de build para seleção de backend
- [ ] Garantir fallback para fMSX quando openMSX falhar
- [ ] Expor telemetria de backend ativo
- [ ] Documentar estratégia de rollout gradual
