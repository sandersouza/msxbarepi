# Issue #53 - Adicionar Rensha (auto-fire SPACE) no Settings para testes de jogos

- URL: https://github.com/sandersouza/msxbarepi/issues/53
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `area:input`, `beta:v0.1`
- Status no projeto: `In progress`
- Última sincronização local: 2026-02-28

## Escopo
- adicionar item `Rensha` no menu Settings, abaixo de `Z80 Turbo`
- implementar auto-fire para SPACE (estilo Panasonic FX/WX/WSX)
- manter sync estável em 50/60Hz sem regressão de FPS/áudio

## Critérios de aceite
- `Rensha` aparece no Settings e alterna corretamente
- com `Rensha` ligado, SPACE gera pulsos automáticos para jogos
- sem regressão de input normal com `Rensha=DES`

## Progresso
- 2026-02-28: iteração 1 implementada (build OK).
  - novo item `Rensha [DES/LIG]` no Settings, abaixo de `Z80 Turbo`
  - persistência em settings (`rensha=0/1`)
  - pulsos automáticos de `SPACE` aplicados por frame quando `Rensha=LIG` e SPACE está pressionado
