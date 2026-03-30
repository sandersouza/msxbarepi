# Issue #234 - Fechar gap analysis do renderer V9958 stock (scroll, multipage, odd/even e addressing)

- URL: https://github.com/sandersouza/msxbarepi/issues/234
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`
- Estado local atual: BACKLOG

## Objetivo
Fechar a análise comparativa do renderer stock do V9958 nos modos relevantes do `MSX2+`, com foco em scroll, multipage horizontal, odd/even page, base tables e addressing, separando o que já está alinhado do que ainda falta ou diverge.

## Contexto técnico
- A `#82` já trouxe várias iterações sobre:
  - `R25`, `R26`, `R27`
  - `R2 bit5`
  - `SCREEN 4/5/6/7/8/10/12`
  - odd/even page
  - boot logo `MSX2+`
- Nosso renderer está espalhado em `src/fmsx_local/Common.h` e parte do cálculo de bases/modos em `src/fmsx_local/MSX.c`.
- O `blueMSX` centraliza boa parte de base tables e screen mode em `VDP.c`, com paths específicos de vídeo e integração com o command engine.
- O `V9958-Super` separa registradores, interrupções e blocos gráficos por módulo.

## Escopo técnico
- Cobrir:
  - `SCREEN 4`, `5`, `6`, `7`, `8`, `10`, `12`
  - multipage horizontal
  - odd/even page
  - scroll fino e grosso
  - máscara de borda
  - base tables / VRAM addressing
  - comportamento `line-latched` vs `live` quando observável
- Mapear divergências para:
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/MSX.c`

## Fora de escopo
- Abrir repro novo de sprite nesta issue
- Mexer em palette além do necessário para explicar comportamento do renderer
- Aplicar correções de código nesta issue

## DoR
- [x] Matriz canônica criada
- [x] Corpus dinâmico base definido
- [x] Histórico da `#82` já contém achados úteis de `R25/R26/R27`

## DoD
- [ ] Linhas de renderer/addressing adicionadas e fechadas na matriz
- [ ] Modos `SCREEN 4/5/6/7/8/10/12` cobertos ao menos no nível necessário para a trilha
- [ ] Cada divergência ligada a `Common.h` e/ou `MSX.c`, ou marcada como `disputed`
- [ ] Multipage, odd/even e scroll mapeados separadamente
- [ ] Sprites permanecem `static-first` e fora do corpus dinâmico desta issue

## Checklist operacional
- [ ] Fechar bloco de base tables e `R2`
- [ ] Fechar bloco de `R25/R26/R27`
- [ ] Fechar odd/even page
- [ ] Fechar scroll fino/grosso por modo
- [ ] Marcar disputas que exigem evidência dinâmica

## Testes e cenários
- Validar que cada linha do renderer aponta para uma função real do nosso core
- Validar que multipage e addressing não foram misturados com command engine
- Validar que a matriz deixa claro quais modos já estão estáveis e quais ainda têm gap aberto

## Referências iniciais
- `src/fmsx_local/Common.h`
- `src/fmsx_local/MSX.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/Common.h`
- `third_party/V9958-Super/src/vdp/vdp_graphic123m.v`
- `third_party/V9958-Super/src/vdp/vdp_graphic4567.v`
- `third_party/V9958-Super/src/vdp/vdp_register.sv`
