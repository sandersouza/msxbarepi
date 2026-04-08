# Issue #232 - Fechar auditoria de protocolo I/O, registradores e status do V9958 stock

- URL: https://github.com/sandersouza/msxbarepi/issues/232
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`
- Estado local atual: BACKLOG

## Objetivo
Fechar a leitura cruzada estática das portas `0x98..0x9B`, da semântica de `R#0..R#27` e dos `S#0..S#9` relevantes, populando a matriz canônica com veredito fechado ou `disputed` para cada linha desse bloco.

## Contexto técnico
- Hoje a `#82` mistura achados importantes de `IE1`, `S#1`, `S#2`, `R25/R26/R27` e portos do VDP, mas esses tópicos ainda não estão separados por linha técnica.
- A topologia do nosso core está concentrada em:
  - I/O e parte dos latches em `src/fmsx_local/MSX.c`
  - renderer em `src/fmsx_local/Common.h`
  - engine de comandos em `src/fmsx_local/V9938.c`
- No `blueMSX`, a parte correspondente fica majoritariamente em `VDP.c` e `V9938.c`.
- No `V9958-Super`, os sinais e registradores stock passam principalmente por `vdp_register.sv`.

## Escopo técnico
- Auditar:
  - portas `0x98`, `0x99`, `0x9A`, `0x9B`
  - latch de endereço/registrador
  - auto-incremento
  - `R#0..R#27`
  - `S#0..S#9` relevantes
- Dar foco explícito a:
  - `R#1`, `R#2`, `R#9`, `R#15`, `R#18`, `R#19`, `R#23`, `R#25`, `R#26`, `R#27`
  - `S#0`, `S#1`, `S#2`, `S#7`, `S#8`, `S#9`
- Para cada linha da matriz, registrar:
  - anchor do `blueMSX`
  - anchor do `V9958-Super`
  - anchor do nosso core
  - veredito
  - impacto
  - direção de correção provável

## Fora de escopo
- Alterar o core
- Fechar timing fino do command engine
- Abrir repro novo de sprite
- Resolver linhas `disputed` só por inferência visual

## DoR
- [x] Matriz canônica criada
- [x] Taxonomia e regra de precedência documentadas
- [x] Fontes obrigatórias mapeadas

## DoD
- [ ] Todas as linhas de I/O, registradores e status relevantes adicionadas à matriz
- [ ] Cada divergência ligada a anchors concretos nas três fontes
- [ ] Cada linha marcada como `match`, `partial`, `missing`, `conflict`, `disputed` ou `n/a`
- [ ] Nenhuma linha desse bloco fica sem dono técnico (`MSX.c`, `Common.h`, `V9938.c` ou `disputed`)
- [ ] Nenhuma mudança de código é feita nesta issue

## Checklist operacional
- [ ] Fechar bloco `0x98..0x9B`
- [ ] Fechar bloco `R#15` e seleção de `S#n`
- [ ] Fechar bloco `R#19`, `R#23`, `S#1` e `S#2`
- [ ] Fechar bloco `R#25/R#26/R#27`
- [ ] Marcar linhas disputadas que exigirão corpus dinâmico

## Testes e cenários
- Validar que cada linha importante do bloco tem anchor nas três fontes
- Validar que nenhuma divergência caiu em `missing` ou `conflict` sem justificativa
- Validar que o documento não mistura semântica de registrador com bug de subslot/slotmapper

## Referências iniciais
- `src/fmsx_local/MSX.c`
- `src/fmsx_local/Common.h`
- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- `third_party/V9958-Super/src/vdp/vdp_register.sv`
- `third_party/V9958-Super/docs/revisions.md`
