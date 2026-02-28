# Issue #53 - Adicionar Rensha (auto-fire SPACE) no Settings para testes de jogos

- URL: https://github.com/sandersouza/msxbarepi/issues/53
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `area:input`, `beta:v0.1`
- Status no projeto: `Ready`
- Última sincronização local: 2026-02-28

## Escopo
- adicionar item `Rensha` no menu Settings, abaixo de `Z80 Turbo`
- implementar auto-fire para SPACE (estilo Panasonic FX/WX/WSX)
- manter sync estável em 50/60Hz sem regressão de FPS/áudio

## Critérios de aceite
- `Rensha` aparece no Settings e alterna corretamente
- com `Rensha` ligado, SPACE gera pulsos automáticos para jogos
- sem regressão de input normal com `Rensha=DES`
