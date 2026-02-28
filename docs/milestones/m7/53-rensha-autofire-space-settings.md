# Issue #53 - Adicionar Rensha (auto-fire SPACE) no Settings para testes de jogos

- URL: https://github.com/sandersouza/msxbarepi/issues/53
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `area:input`, `beta:v0.1`
- Status no projeto: `In review`
- Última sincronização local: 2026-02-28

## Escopo
- adicionar item `Rensha` no menu Settings, abaixo de `Z80 Turbo`
- implementar auto-fire Panasonic-style (gate por frame em FIREA, com fallback em SPACE)
- manter sync estável em 50/60Hz sem regressão de FPS/áudio

## Critérios de aceite
- `Rensha` aparece no Settings e alterna corretamente com `ENTER`/`ESQ`/`DIR`
- perfis `0..3` aplicam cadência distinta de auto-fire em runtime
- sem regressão de input normal com `Rensha=0`

## Progresso
- 2026-02-28: implementação estabilizada para review (build OK).
  - menu migrado para `Rensha [0..3]` (0=DES, 1=0.5/10f, 2=1.0/10f, 3=1.5/10f)
  - persistência em settings (`rensha=0..3`)
  - gate aplicado em `FIREA` + `SPACE` no mesmo pulso por frame
