# Handoff Persistente da Branch 236-consolidar-backlog-implementavel-gaps-v9958-stock

Ultima atualizacao: 02/04/2026 (10:05 -03)

## Objetivo da branch

Fechar a issue `#236` convertendo os gaps relevantes da matriz comparativa do `V9958 stock` em backlog implementavel, com prioridades, repros, criterios de aceite e arquivos-alvo provaveis antes de abrir as proximas issues de correcao.

## Vinculo de gestao

- Issue remota: [#236 - [P1] Consolidar backlog implementável dos gaps confirmados do V9958 stock](https://github.com/sandersouza/msxbarepi/issues/236)
- Branch vinculada via `gh issue develop`: `236-consolidar-backlog-implementavel-gaps-v9958-stock`
- Branch base/umbrella: `82-auditar-registradores-v9958`
- Target de PR desta branch: `82-auditar-registradores-v9958`
- PR remoto desta branch: ainda nao aberto

## Estado herdado da umbrella

- A `#235` ja foi concluida e mergeada na umbrella via PR `#239`.
- O backlog dinamico da `#235` deixou estes cortes operacionais prontos para consolidacao:
  - `STS-006` fechado operacionalmente do lado `blueMSX`, com `S8/S9` latched ao fim do `SRCH`
  - `REG-004` fechado operacionalmente do lado `blueMSX`, com auto-incremento indireto de `R17` acima de `2Fh`
  - `IRQ-001` e `IRQ-003` tratados como estaveis operacionalmente na trilha, mas mantidos como `partial` na matriz
  - `REN-004` e `REN-008` bloqueados na `#235` por falta de evidencia dinamica util no corpus atual
  - `UNKNOWN1.DSK` passou a ser smoke/stress pass complementar apos os ajustes `DD8E` e `1052`
- A referencia semantica primaria da convergencia continua sendo o `blueMSX`, com `ocm-pld-dev` e `V9958-Super` como validacao cruzada/desempate.

## Proximo passo objetivo

1. Extrair da matriz canonica apenas as linhas realmente prontas para virar backlog de implementacao.
2. Agrupar esses gaps por subsistema:
   - I/O e protocolo
   - status/interrupts
   - command engine
   - render/addressing
   - sprites/palette
3. Para cada item, registrar:
   - problema em uma frase
   - linha(s) da matriz de origem
   - arquivo-alvo provavel
   - repro obrigatorio
   - criterio de aceite objetivo
   - prioridade `P0`, `P1` ou `P2`
4. So depois abrir as issues derivadas de implementacao e atualizar a umbrella `#82` apontando para a camada de correcao.

## Orientacao operacional imediata

- Fonte canonica de gaps: `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- Handoff umbrella: `docs/handoff/82-auditar-registradores-v9958.md`
- Espelho local da issue: `docs/milestones/m11/236-consolidar-backlog-implementavel-gaps-v9958-stock.md`
- Estado remoto esperado neste ciclo:
  - issue `#236`: `In progress`
  - branch ativa: `236-consolidar-backlog-implementavel-gaps-v9958-stock`
- Esta branch nao deve abrir correcoes de codigo do VDP; o objetivo imediato e apenas consolidar backlog implementavel e abrir as proximas issues certas.

## Atualizacao incremental de 02/04/2026 - ativacao da branch

- A branch derivada `236-consolidar-backlog-implementavel-gaps-v9958-stock` foi criada a partir da umbrella `82-auditar-registradores-v9958` via `gh issue develop`.
- A subtrilha `#235` ja esta encerrada:
  - PR `#239` mergeado na umbrella
  - issue `#235` fechada
  - issue e PR movidos para `Done` no projeto `MSX BarePI`
- O primeiro trabalho desta branch passa a ser documental/estrutural:
  - corrigir o ponteiro de contexto para a nova branch
  - mover a issue `#236` para `In progress`
  - converter a camada de descoberta da `#82/#235` em backlog real de correcoes

## Atualizacao incremental de 02/04/2026 - consolidacao inicial do backlog

- A rodada encontrou duas verdades importantes antes de abrir novas derivadas:
  - a issue `#238` ja existe remotamente como primeira issue de implementacao da trilha
  - o backlog tecnico consolidado ja estava parcialmente registrado em `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- Com isso, a `#236` passa a consolidar o backlog em tres grupos:
  - `implementavel agora`:
    - `IO-004`
    - `CMD-005`
    - `REN-004` e recorte critico de `REN-007`
    - `REG-003`
  - `fechado operacionalmente / nao vira issue nova`:
    - `REG-004`
    - `STS-006`
    - `CMD-002`
    - `CMD-003`
    - `STS-005`
  - `deferred` ou `blocked` nesta rodada:
    - `CMD-004`
    - `REN-002`
    - `REN-005`
    - `REN-006`
    - cauda de `REN-007`
    - `REN-008`
- Consequencia pratica:
  - `#238` vira a primeira issue tecnica ativa da camada de correcao
  - a `#236` ainda precisa abrir pelo menos a derivada faltante de `REG-003` e sincronizar o espelho local das issues abertas pela camada de correcao

## Proximo passo objetivo

1. Sincronizar localmente a issue `#238`, que ja existe no remoto.
2. Abrir a derivada faltante para `REG-003`/blindagem stock dos registradores invalidos.
3. Atualizar a umbrella `#82` para apontar explicitamente para `#238` como primeira issue de implementacao da trilha.
4. Se nao surgirem novos gaps confirmados, preparar a `#236` para review logo depois desse corte de organizacao.

## Orientacao operacional imediata

- Backlog tecnico consolidado: `docs/reverse-engineering/msx2plus/vdp9958-stock/implementation-backlog.md`
- Primeira issue de implementacao ja existente no remoto:
  - `#238` para o bloco critico do boot logo (`IO-004`, `CMD-005`, `REN-004` e recorte central de `REN-007`)
- Derivada ainda faltante nesta rodada:
  - blindagem stock de `REG-003`

## Atualizacao incremental de 02/04/2026 - issue derivada ja existente no remoto

- A auditoria da rodada mostrou que a issue `#238` ja foi aberta remotamente, mas ainda nao tinha espelho local sincronizado.
- O corpo da `#238` ja assume explicitamente que:
  - o backlog implementavel foi derivado da `#236`
  - a primeira frente de implementacao combina:
    - sync temporal de status
    - command engine por tempo
    - renderer `SCREEN 6/7` page-aware
- Isso confirma a leitura operacional da `#236`:
  - a camada de consolidacao ja convergiu para uma primeira issue real de correcao
  - o proximo passo da trilha, depois de sincronizar o espelho local, passa a ser ativar a branch da `#238`

## Atualizacao incremental de 02/04/2026 - pendencia remanescente da consolidacao

- O backlog ainda tinha um gap que nao subiu para issue remota nesta rodada:
  - `BL-005` / `REG-003` / blindagem de `R#24`, `R#28..R#31`
- Esse item permanece implementavel e de baixo risco, mas separado da `#238` para nao misturar:
  - correcao do boot logo e timing do command engine
  - saneamento de registradores invalidos/inertes do `V9958 stock`

## Atualizacao incremental de 02/04/2026 - derivada `#240` aberta

- A issue `#240` foi aberta e vinculada ao projeto `MSX BarePI` em `Backlog`.
- Papel dela na consolidacao:
  - cobrir `BL-005`
  - retirar `REG-003` da lista de gaps sem dono
  - manter separado do bloco mais pesado do boot logo da `#238`
- Com isso, a `#236` ja fechou nesta rodada os dois encaminhamentos principais da camada de correcao:
  - `#238` como primeira implementacao do bloco critico do logo
  - `#240` como saneamento stock de registradores invalidos/inertes
