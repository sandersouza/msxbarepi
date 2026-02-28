# Issue #53 - Adicionar Rensha (auto-fire SPACE) no Settings para testes de jogos

- URL: https://github.com/sandersouza/msxbarepi/issues/53
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: CLOSED
- Prioridade: P1
- Labels: `priority:P1`, `area:input`, `beta:v0.1`
- Status no projeto: `Done`
- Última sincronização local: 2026-02-28
- PR: https://github.com/sandersouza/msxbarepi/pull/54

## Escopo
- adicionar item `Rensha` no menu Settings, abaixo de `Z80 Turbo`
- implementar auto-fire Panasonic-style (FIREA com fallback SPACE)
- manter sync estável em 50/60Hz sem regressão de FPS/áudio

## Critérios de aceite
- `Rensha` aparece no Settings e alterna corretamente com `ENTER`/`ESQ`/`DIR`
- perfis `0..3` aplicam cadência distinta de auto-fire em runtime
- sem regressão de input normal com `Rensha=0`

## Resultado
- menu final: `Rensha [0..3]`
- persistência em settings: `rensha=0..3`
- gate de pulso aplicado em `FIREA` + `SPACE`

Perfis:
- `0`: DES
- `1`: 0.5 pulso / 10 frames (~3.0/s @60Hz, ~2.5/s @50Hz)
- `2`: 1.0 pulso / 10 frames (~6.0/s @60Hz, ~5.0/s @50Hz)
- `3`: 1.5 pulso / 10 frames (~9.0/s @60Hz, ~7.5/s @50Hz)
