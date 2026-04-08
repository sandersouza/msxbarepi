# Issue #240 - Blindar registradores inválidos/inertes do V9958 stock

- URL: https://github.com/sandersouza/msxbarepi/issues/240
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:video`, `area:emulation`, `documentation`
- Estado local atual: BACKLOG

## Objetivo
Blindar no core local os registradores inválidos/inertes do `V9958 stock` (`R#24`, `R#28..R#31`), removendo semântica local indevida e documentando explicitamente a decisão final para o caminho de `R#17` acima de `R#47`.

## Contexto técnico
- A matriz canônica já fechou `REG-003` como `conflict`:
  - o core local ainda persiste valor cru em `VDP[R]` depois do `switch` de `VDPOut()`
  - `blueMSX` e o lineage HDL não dão semântica funcional a `R#24`, `R#28..R#31`
- A trilha dinâmica da `#235` também fechou operacionalmente o residual de `REG-004`:
  - o auto-incremento indireto por `R#17/0x9B` segue acima de `2Fh`
  - o comportamento observado em campo alinhou com o `blueMSX`
- Esta issue separa um saneamento de baixo risco do bloco mais pesado do boot logo, para não misturar:
  - timing do command engine
  - renderer high-res
  - buracos de registrador stock

## Escopo técnico
- Ajustar o decode/escrita de registradores do VDP para que:
  - `R#24`
  - `R#28`
  - `R#29`
  - `R#30`
  - `R#31`
  não carreguem semântica local indevida
- Registrar de forma explícita, no código e na documentação, a decisão adotada para:
  - auto-incremento de `R#17` acima de `R#47`
- Arquivo-alvo principal:
  - `src/fmsx_local/MSX.c`
- Documentação-alvo:
  - `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
  - `docs/handoff/82-auditar-registradores-v9958.md`

## Fora de escopo
- Reescrever timing do command engine
- Corrigir o boot logo do `MSX2+`
- Reabrir a disputa de `STS-006`
- Tratar `R#29+` ou extensões proprietárias do `V9958-Super`

## DoR
- [x] `REG-003` fechado como `conflict` na matriz
- [x] `REG-004` fechado operacionalmente do lado `blueMSX`
- [x] Arquivo-alvo principal identificado

## DoD
- [ ] `R#24`, `R#28..R#31` deixam de carregar semântica local indevida
- [ ] A decisão final para `R#17` acima de `R#47` fica explícita no código e na matriz
- [ ] `REG004` continua passando sem regressão após o ajuste
- [ ] A matriz e o handoff da `#82` ficam sincronizados com o veredito final

## Checklist operacional
- [ ] Blindar o caminho de escrita dos registradores inválidos/inertes
- [ ] Revalidar `REG004`
- [ ] Atualizar matriz e handoff com o veredito final

## Testes e cenários
- Repro sintético de registradores inválidos
  - critério de aceite: os buracos stock deixam de carregar efeito local indevido
- `REG004`
  - critério de aceite: `R17` continua subindo acima de `2Fh` de forma coerente com o alvo escolhido

## Referências iniciais
- `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- `src/fmsx_local/MSX.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- `third_party/V9958-Super/src/vdp/vdp_register.sv`
