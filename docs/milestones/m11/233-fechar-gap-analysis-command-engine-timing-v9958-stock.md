# Issue #233 - Fechar gap analysis do command engine e timing do V9958 stock

- URL: https://github.com/sandersouza/msxbarepi/issues/233
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`
- Estado local atual: BACKLOG

## Objetivo
Fechar a análise comparativa do command engine stock do V9958, cobrindo enable por modo, semântica de `CE/TR`, polling via `S#2`, custo relativo dos comandos e conflitos `CPU/VRAM`, para transformar gaps confirmados em backlog técnico implementável.

## Contexto técnico
- O boot `MSX2+`, `Knightmare Gold` e partes do BIOS dependem de semântica correta de `S#2`, `CE/TR` e throughput do engine.
- Nosso core tem lógica de engine em `src/fmsx_local/V9938.c`, mas parte da observabilidade e do consumo de status passa por `src/fmsx_local/MSX.c`.
- O `blueMSX` já separa:
  - write dos registradores de comando
  - `vdpCmdSetCommand()`
  - `vdpSetScreenMode()`
  - `vdpGetStatus()` / `vdpGetColor()`
- O `V9958-Super` expõe sinais stock equivalentes em `vdp_command.sv`, incluindo `CE`, `TR`, `BD` e a família de registradores `R32..R46`.

## Escopo técnico
- Cobrir:
  - enable de comandos por modo
  - `CE`, `TR`
  - polling via `S#2`
  - avanço temporal do engine
  - custo relativo dos comandos
  - conflitos `CPU/VRAM` durante comando
  - comandos `POINT`, `PSET`, `SRCH`, `LINE`, `LMMV`, `LMMM`, `LMCM`, `LMMC`, `HMMV`, `HMMM`, `YMMM`, `HMMC`
- Mapear cada gap para provável arquivo-alvo:
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/MSX.c`

## Fora de escopo
- Implementar correções do engine nesta issue
- Criar telemetria nova sem necessidade comprovada
- Fechar renderer, sprites ou palette

## DoR
- [x] Matriz canônica criada
- [x] Fontes do command engine identificadas nas três implementações
- [x] Corpus dinâmico base já escolhido para a trilha

## DoD
- [ ] Linhas do command engine adicionadas e fechadas na matriz
- [ ] `CE/TR` mapeados entre as três implementações
- [ ] Enable por modo e exceções documentados
- [ ] Comandos prioritários classificados por impacto e risco
- [ ] Cada divergência relevante mapeada para `V9938.c` ou `MSX.c`
- [ ] Nenhuma correção de código é aplicada nesta issue

## Checklist operacional
- [ ] Fechar enable por modo
- [ ] Fechar `CE/TR` e `S#2`
- [ ] Fechar mapeamento dos registradores de comando
- [ ] Fechar custo relativo e progressão temporal onde a leitura estática permitir
- [ ] Separar linhas que exigem evidência dinâmica

## Testes e cenários
- Validar que as linhas do engine referenciam funções/módulos concretos nas três fontes
- Validar que `CE` e `TR` não foram tratados como bits independentes sem olhar o produtor real
- Validar que a matriz diferencia claramente:
  - semântica do engine
  - throughput/timing observável
  - conflito de arbitragem com VRAM

## Referências iniciais
- `src/fmsx_local/V9938.c`
- `src/fmsx_local/MSX.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- `third_party/V9958-Super/src/vdp/vdp_command.sv`
- `third_party/V9958-Super/docs/HMMM-loop.md`
- `third_party/V9958-Super/docs/revisions.md`
