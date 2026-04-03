# Handoff Persistente da Branch 238-fechar-boot-logo-msx2plus-precisao-core-v9958

Ultima atualizacao: 03/04/2026 (00:18 -03)

## Objetivo da branch

Fechar a issue `#238` implementando a precisao minima de core do `V9958 stock` necessaria para fazer o boot logo do `MSX2+` rodar com cadencia, paginacao e composicao coerentes com a referencia principal `blueMSX`.

## Vinculo de gestao

- Issue remota: [#238 - [P1] Fechar boot logo do MSX2+ com precisão de core no V9958](https://github.com/sandersouza/msxbarepi/issues/238)
- Branch vinculada via `gh issue develop`: `238-fechar-boot-logo-msx2plus-precisao-core-v9958`
- Branch base/umbrella: `82-auditar-registradores-v9958`
- Target de PR desta branch: `82-auditar-registradores-v9958`
- PR remoto desta branch: ainda nao aberto

## Estado herdado da umbrella

- A `#236` ja foi concluida e mergeada na umbrella via PR `#241`.
- A camada de consolidacao deixou este recorte pronto para implementacao:
  - `IO-004` como ajuste de sync/contrato do status read
  - `CMD-005` como rework do command engine por tempo
  - `REN-004` e o recorte critico de `REN-007` como renderer high-res page-aware
- Itens que ficam fora desta branch:
  - `REG-003` foi desviado para a `#240`
  - `CMD-004` continua sustentado pela base estatica, sem repro dinamico util nesta rodada
  - `REN-008` e a cauda de odd/even permanecem bloqueados por falta de evidencia dinamica util

## Proximo passo objetivo

1. Auditar o caminho atual do boot logo no core local contra o `blueMSX` com foco em:
   - `S#2`, `S#7`, `S#8`, `S#9`
   - `CE`, `TR`, `BD`
   - progressao temporal do command engine
   - composicao page-aware de `SCREEN 6/7`
2. Fechar a ordem real dos patches:
   - status sync
   - engine por tempo
   - renderer `SCREEN 6/7`
3. Implementar e revalidar:
   - boot logo `MSX2+`
   - `STS006`
   - `REG004`
   - `Knightmare Gold`
   - `Gradius2E/Nemesis2E`

## Orientacao operacional imediata

- Fonte tecnica principal:
  - `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- Dossie do boot logo:
  - `docs/reverse-engineering/msx2plus/boot-logo/boot-callflow.md`
  - `docs/reverse-engineering/msx2plus/boot-logo/fix-strategy.md`
- Matriz canonica:
  - `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- Arquivos-alvo provaveis desta branch:
  - `src/fmsx_local/MSX.c`
  - `src/fmsx_local/V9938.c`
  - `src/fmsx_local/Common.h`
  - `src/fmsx_local/Wide.h`

## Atualizacao incremental de 03/04/2026 - ativacao da branch

- A `#236` foi encerrada:
  - PR `#241` mergeado na umbrella
  - issue `#236` fechada
  - item da issue `#236` em `Done` no projeto `MSX BarePI`
- A `#238` passa a ser a primeira issue tecnica ativa da camada de correcao derivada da trilha `#82`.
- O objetivo desta branch deixa de ser descoberta/documentacao e passa a ser implementacao no core, guiada pelo backlog consolidado:
  - `IO-004`
  - `CMD-005`
  - `REN-004`
  - recorte central de `REN-007`
