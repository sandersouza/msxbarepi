# Issue #236 - Consolidar backlog implementável dos gaps confirmados do V9958 stock

- URL: https://github.com/sandersouza/msxbarepi/issues/236
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: CLOSED
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`, `documentation`
- Estado local atual: DONE

## Objetivo
Converter a matriz comparativa do V9958 stock em backlog real de correções, com itens priorizados, reprodutíveis e mapeados para os arquivos-alvo do nosso core.

## Contexto técnico
- A trilha da `#82` já tem histórico suficiente para mostrar que mexer direto no core sem uma linha técnica fechada gera retrabalho.
- A matriz desta auditoria é a peça que separa:
  - gap confirmado
  - hipótese ainda disputada
  - diferença aceitável entre referências
- Esta issue fecha a camada de descoberta e abre a porta para a camada de correção.

## Escopo técnico
- Transformar linhas `partial`, `missing` e `conflict` relevantes da matriz em itens de backlog.
- Cada item deve incluir:
  - problema em uma frase
  - linha(s) da matriz que originaram o item
  - arquivo-alvo provável
  - repro obrigatório
  - critério de aceite objetivo
  - prioridade `P0`, `P1` ou `P2`
- Agrupar o backlog por subsistema:
  - I/O e protocolo
  - status/interrupts
  - command engine
  - render/addressing
  - sprites/palette
- Só ao final desta issue abrir as issues reais de implementação.

## Fora de escopo
- Implementar correções
- Abrir issue de código antes de o gap estar fechado na matriz
- Tratar extensões do `V9958-Super`

## DoR
- [x] Matriz canônica criada
- [x] Leitura estática e dinâmica da trilha concluídas até o ponto necessário
- [x] Linhas `partial/missing/conflict/disputed` classificadas

## DoD
- [ ] Cada linha `partial/missing/conflict` relevante virou item de backlog
- [ ] Cada item tem arquivo-alvo provável, repro e critério de aceite
- [ ] Cada item recebeu prioridade `P0/P1/P2`
- [ ] As issues reais de implementação foram abertas somente a partir dos gaps confirmados
- [ ] `#82` ficou apontando explicitamente para a trilha derivada de correções

## Checklist operacional
- [ ] Extrair gaps relevantes da matriz
- [ ] Agrupar por subsistema
- [ ] Definir prioridade, repro e aceite por item
- [ ] Abrir as issues de implementação derivadas
- [ ] Atualizar `#82` com a conversão da camada de descoberta para a camada de correção

## Testes e cenários
- Validar que nenhum item do backlog nasceu sem linha da matriz
- Validar que nenhum item relevante ficou sem arquivo-alvo provável
- Validar que cada issue derivada aponta para reprodutor e aceite objetivos

## Referências iniciais
- `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- `docs/reverse-engineering/issues/issue-82/`
- `src/fmsx_local/MSX.c`
- `src/fmsx_local/V9938.c`
- `src/fmsx_local/Common.h`

## Vinculo operacional
- Branch derivada ativa: `236-consolidar-backlog-implementavel-gaps-v9958-stock`
- Branch umbrella/base: `82-auditar-registradores-v9958`
- PR alvo desta branch: `82-auditar-registradores-v9958`

## Atualização incremental de 02/04/2026
- A `#235` foi concluida e mergeada na umbrella `#82` via PR `#239`.
- Esta issue passou a ser a trilha ativa da umbrella e entrou em fase de consolidacao do backlog implementavel.
- O objetivo imediato desta branch nao e mexer no core, e sim transformar a matriz canonica e os achados dinamicos em issues de implementacao priorizadas, com repro e aceite objetivos.
- A issue derivada `#240` foi aberta nesta rodada para cobrir `BL-005` / `REG-003`, e a `#238` foi confirmada como a primeira issue de implementacao do bloco critico do boot logo.

## Atualização incremental de 03/04/2026
- O PR `#241` foi aprovado e mergeado na umbrella `#82`.
- A issue remota `#236` foi fechada.
- O item da issue `#236` no projeto `MSX BarePI` foi movido para `Done`.
- A próxima issue ativa da camada de correção passa a ser a `#238`.

## Backlog consolidado da rodada

| Item | Linhas da matriz | Estado operacional | Prioridade | Arquivos-alvo prováveis | Repro obrigatório | Encaminhamento |
| --- | --- | --- | --- | --- | --- | --- |
| `BL-001` | `IO-004` | implementável agora | `P1` | `src/fmsx_local/MSX.c`, `src/fmsx_local/V9938.c` | `STS006`, boot logo `MSX2+`, `UNKNOWN1.DSK` | consolidado dentro da issue `#238` |
| `BL-002` | `CMD-005` | implementável agora | `P0` | `src/fmsx_local/V9938.c`, `src/fmsx_local/MSX.c` | boot logo `MSX2+`, `Knightmare Gold`, `Gradius2E/Nemesis2E`, `UNKNOWN1.DSK` | consolidado dentro da issue `#238` |
| `BL-003` | `CMD-002`, `CMD-003`, parte operacional de `STS-005` | já alinhado; não abre issue nova | `n/a` | `src/fmsx_local/MSX.c`, `src/fmsx_local/V9938.c` | `STS006`, `REG004` | manter apenas como gate de regressão |
| `BL-004` | `REN-004`, parte relevante de `REN-007` | implementável agora para o recorte do boot logo | `P1` | `src/fmsx_local/Common.h`, `src/fmsx_local/Wide.h`, `src/fmsx_local/MSX.c` | boot logo `MSX2+`, `Gradius2E/Nemesis2E` | consolidado dentro da issue `#238` |
| `BL-005` | `REG-003` | implementável agora | `P2` | `src/fmsx_local/MSX.c` | repro sintético de registradores inválidos + sanity com `REG004` | abrir issue derivada própria |
| `BL-006` | `REG-004` | operacionalmente fechado | `n/a` | `src/fmsx_local/MSX.c` | `REG004` | só documentar decisão final ao encerrar a trilha |
| `BL-007` | `STS-006` | decisão de alvo já fechada | `n/a` | `src/fmsx_local/V9938.c` | `STS006` | não abrir issue nova; manter `blueMSX` como alvo |
| `BL-008` | `CMD-004` | sem repro dinâmico útil; não promover nesta rodada | `deferred` | `src/fmsx_local/V9938.c`, `src/fmsx_local/MSX.c` | repro ainda inconclusivo | sustentar pela base estática até surgir repro melhor |
| `BL-009` | `REN-002` | desvio leve, sem bloqueio atual | `P2` | `src/fmsx_local/Common.h` | `Knightmare Gold` | manter em backlog técnico, sem issue nova nesta rodada |
| `BL-010` | `REN-005`, `REN-006` | parcial, mas sem bug de campo prioritário nesta rodada | `P2` | `src/fmsx_local/Common.h`, `src/fmsx_local/MSX.c` | corpus high-color dedicado | manter em backlog técnico, sem issue nova nesta rodada |
| `BL-011` | cauda de `REN-007`, `REN-008` | bloqueado por falta de evidência dinâmica útil no corpus atual | `blocked` | `src/fmsx_local/Common.h`, `src/fmsx_local/Wide.h`, `src/fmsx_local/MSX.c` | repro high-res com `R27`/odd-even relevante | não abrir issue nova nesta rodada |

## Decisão de consolidação
- A issue `#238` já existe no remoto e passa a ser tratada como a primeira issue de implementação derivada da `#236`, cobrindo o bloco crítico do boot logo:
  - `BL-001`
  - `BL-002`
  - `BL-004`
- A derivada ainda faltante nesta rodada é a blindagem dos registradores inválidos stock (`BL-005`).
- Os itens `BL-008`, `BL-009`, `BL-010` e `BL-011` permanecem no backlog consolidado, mas não sobem para implementação imediata nesta rodada.
