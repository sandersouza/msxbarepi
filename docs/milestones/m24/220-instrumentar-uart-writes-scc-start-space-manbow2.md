# Issue #220 - Instrumentar UART para rastrear writes SCC do `START!` em `Space Manbow 2`

- URL: https://github.com/sandersouza/msxbarepi/issues/220
- Milestone: Melhorias audio cart SCC/SCC+ (m24)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:audiochip`, `area:debug`, `area:emulation`

## Objetivo
Adicionar instrumentacao UART cirurgica e debug-gated para rastrear writes SCC na janela `9800h-9FFFh` durante a tela inicial do `SMANBOW2`, de modo a reconstruir a rotina real da voz sintetizada `START!` em execucao.

## Contexto
- O disassembly local ja aponta uma ancora forte de SCC comum em `bank06.asm:1740` com `ld de,09800h`.
- Isso identifica o chip alvo, mas ainda nao fecha a sequencia real de writes que produz o `START!`.
- O caminho correto agora e observar a execucao real:
  - janela SCC `9800h-9FFFh`
  - `PC` de origem
  - endereco/valor escritos
  - bursts em waveform/frequency/volume
  - correlacao com banco ativo/mapper quando necessario
- A instrumentacao deve ser `UART-only`, sem poluir o overlay HDMI e sem introduzir slowdown relevante.

## Escopo tecnico
- Adicionar logs UART agregados para writes SCC do `SMANBOW2` na intro.
- Registrar, no minimo:
  - `PC`
  - endereco SCC
  - valor escrito
  - agrupamento de bursts por tipo (`wave`, `freq`, `volume`, `enable`)
  - contexto minimo de mapper/banco quando o dado for necessario para correlacao
- Definir throttling/rate limit para nao reabrir o problema de stall por flood de debug.
- Cruzar a telemetria com o disassembly local para delimitar a rotina real do `START!`.

## Fora de escopo
- Corrigir imediatamente a voz `START!`
- Alterar a topologia `Konami SCC+`/`DUAL`
- Mudar voicing/EQ de `PSG`, `FM-PAC` ou `SCC`
- Adicionar novas linhas no overlay HDMI

## DoR
- [ ] Baseline estavel atual do `SMANBOW2` preservado
- [ ] Formato de log UART definido para nao causar flood
- [ ] Ponto(s) de hook em `MSX.c` e/ou `kernel.cpp` mapeados

## DoD
- [ ] Captura UART da intro do `SMANBOW2` obtida sem stall induzido por debug
- [ ] Sequencia de writes SCC do `START!` reconstruida com base na execucao real
- [ ] Correlacao minima entre telemetria e disassembly documentada
- [ ] Proximo alvo tecnico da correcao do `START!` fechado

## Referencias iniciais
- `docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank06.asm`
- `src/fmsx_local/MSX.c`
- `src/kernel.cpp`
- `docs/debug-layer.md`
- `third_party/openMSX/src/sound/SCC.*`
- `third_party/bluemsx/blueMSX/Src/SoundChips/SCC.c`
