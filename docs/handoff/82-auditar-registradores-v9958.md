# Handoff Persistente da Branch 82-auditar-registradores-v9958

Ultima atualizacao: 30/03/2026 (14:18 -03)

## Objetivo da branch

Usar a branch umbrella da `#82` para estruturar e iniciar a trilha de auditoria comparativa do `V9958 stock`, comparando nosso core local com `blueMSX` e `V9958-Super` antes de abrir correções novas no VDP.

## Vinculo de gestao

- Issue remota: [#82 - [P1] Validar VDP9958 e modos adicionais do MSX2+](https://github.com/sandersouza/msxbarepi/issues/82)
- Branch vinculada via `gh issue develop`: `82-auditar-registradores-v9958`

## Reestruturacao da trilha em 29/03/2026

- A `#82` deixou de ser apenas uma issue de “validar modos” e passou a atuar como epic/umbrella da auditoria stock do `V9958`.
- Foram criadas e vinculadas como sub-issues:
  - `#231` matriz comparativa canônica
  - `#232` auditoria de I/O, registradores e status
  - `#233` gap analysis do command engine e timing
  - `#234` gap analysis do renderer/addressing
  - `#235` validação dinâmica mínima com telemetria existente
  - `#236` consolidação do backlog implementável
- Status no projeto `MSX BarePI`:
  - `#82` -> `In progress`
  - `#231` -> `In progress`
  - `#232..#236` -> `Backlog`

## Bootstrap tecnico concluido nesta rodada

- Criado o documento canônico da trilha em:
  - [`docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md)
- Criado o diretório canônico de evidências da `#82` em:
  - [`docs/reverse-engineering/issues/issue-82/README.md`](/Users/sandersouza/Developer/msxbarepi/docs/reverse-engineering/issues/issue-82/README.md)
- A matriz já nasceu com:
  - taxonomia `match/partial/missing/conflict/disputed/n/a`
  - regra de precedência entre `blueMSX`, `V9958-Super` e nosso core
  - corpus dinâmico base
  - primeiras linhas seed para:
    - portas `0x98..0x9B`
    - `R#15` / `S#n`
    - `S#1` / `S#2`
    - `CE` / `TR`
    - `R25/R26/R27`
    - renderer/addressing

## Aprofundamento da `#231` em 30/03/2026

- A matriz canônica saiu do estado puramente seed e ganhou a primeira passada estática granular para:
  - `I/O`: `IO-001..IO-005`
  - `Registradores/status`: `REG-001..REG-004`, `STS-001..STS-006`
  - `IRQ/latches`: `IRQ-001..IRQ-003`
  - `Command engine`: `CMD-001..CMD-004`
- O bloco `renderer/addressing` tambem foi quebrado em linhas fechadas por comportamento:
  - `REN-002`: `SCREEN 4`
  - `REN-003`: `SCREEN 5`
  - `REN-004`: `SCREEN 6/7`
  - `REN-005`: `SCREEN 8`
  - `REN-006`: `SCREEN 10/12`
  - `REN-007`: odd/even page derivado de `S#2 bit1`
  - `REN-008`: `R27`/left-edge mask/alinhamento de sprite
- Achados estáticos já fechados:
  - `REG-001`: a largura do seletor fecha em janela de `6 bits` no `V9958 stock`; linha marcada como `match`
  - `REG-003`: `R#24` e `R#28..R#31` aparecem como buracos inválidos/inertes em `blueMSX` + lineage HDL, enquanto o core local ainda persiste o valor cru; linha marcada como `conflict`
  - `IO-004`: `blueMSX` e `V9958-Super` resetam o sequenciador de latch ao ler `0x99`, enquanto o core local preserva `VKey`; linha marcada como `conflict`
  - `CMD-002`: leitura de `S#7` limpa `TR` nas três bases; linha marcada como `match`
  - `CMD-003`: escrita em `R#44/CLR` limpa `TR` nas três bases; linha marcada como `match`
  - `STS-005`: `S#2 bit4` (`BD/BO`) ficou fechado como ownership do `SRCH`; linha marcada como `match`
- `IO-004` nao deve virar correcao imediata:
  - o historico da branch `fix-acurating-timing-vdp9958` ja registra regressao ao forcar reset de `VKey` na leitura de `0x99`
  - a linha fica mantida como `conflict` real da matriz, mas bloqueada para ajuste cego sem repro dinamico novo
- O bloco de registradores tambem foi refinado nesta rodada:
  - `REG-004` deixou de tratar a cauda como “command engine aberto” e passou a registrar que o decode funcional fecha em `R#32..R#46` nas tres bases
  - o detalhe realmente pendente ficou reduzido ao guardrail do auto-incremento indireto de `R#17` quando a caminhada passa de `R#47`
- Nova disputa materializada para a fase dinamica:
  - `STS-006`: `blueMSX` e o core local expõem `S#8/S#9` como valor latched ao fim do `SRCH`
  - `V9958-Super` e `ocm-pld-dev` expõem `SXTMP` live do command core em `S#8/S#9`
  - a linha sobe para `disputed` e passa a exigir evidencia dinamica antes de qualquer ajuste em `MSX.c` / `V9938.c`
- Achados que saíram de `disputed` para `partial` após o desempate com `ocm-pld-dev`:
  - `IRQ-001`: o lineage HDL reforça `S#1 bit0` como latch sticky mesmo sem `IE1`, enquanto o blueMSX segue divergente
  - `IRQ-003`: o lineage HDL mostra `R#23` entrando no contador vertical lógico antes do compare com `R#19`
  - `CMD-004`: o lineage HDL mantém `REG_R25_CMD` e `commandEnable` fora de `SCR5..SCR12`, alinhando o core local a `blueMSX`
- O desempate estrutural de renderer agora ficou suficiente para trocar o foco da descoberta:
  - sair de "quebrar `REN-002` por modo"
  - entrar em validacao dinamica de `REN-002..REN-008`
- O espelho local da `#235` ja foi preparado com o mapeamento minimo de observabilidade por linha:
  - `TM2` para `R25/R26/R27`, `EP`, `I1/F1`
  - `TM3` para `CE/TR`
  - `TM4/TM4B` para `IE1`, alvo/delta de linha e `EO`
  - `TM6B` + UART `VDP EVT` para `R19/R23/R25/R26/R27`, `S1/S2`, `CS/CE`
- Risco explicitado para a proxima rodada:
  - `REN-008` ainda pode ficar parcialmente bloqueada sem captura visual, porque a telemetria atual nao expõe um contador dedicado do deslocamento final de sprite na saida HDMI
- Comentarios de progresso ja publicados na issue remota `#231`; o proximo comentario remoto deve registrar esse corte do renderer e o bloqueio conhecido de `IO-004`.
- O proximo comentario remoto da `#231` tambem deve registrar:
  - `REG-001` como `match`
  - `REG-003` como `conflict`
  - `STS-005` como `match`
  - `STS-006` como `disputed`

## Estado da camada de descoberta

- `#231`: bootstrap inicial concluído e primeira passada estática granular já incorporada à matriz, incluindo o recorte do renderer por modo; issue segue em `In progress`
- Próximo passo objetivo na branch atual:
  1. confirmar dinamicamente `IRQ-001`, `IRQ-003` e `CMD-004` agora que o desempate estático ganhou suporte do `ocm-pld-dev`
  2. confirmar dinamicamente `STS-006` para desempatar `SXTMP` live vs latched em `S#8/S#9`
  3. confirmar dinamicamente `REN-002..REN-008`, com foco em `SCREEN 4`, odd/even page, left-edge mask e alinhamento de sprite sob `R27`
  4. se `REN-008` continuar inconclusiva, registrar bloqueio explícito por falta de observabilidade direta de sprite em vez de abrir telemetria nova cedo demais
  5. só então promover a `#232` como próxima issue ativa

## Primeiro achado desta rodada

- O repro citado inicialmente, `POKE -1,170`, nao escreve em `R#1` do V9958.
- Em MSX BASIC, `POKE -1,...` equivale a `POKE &HFFFF,...`.
- No core local, `0xFFFF` e tratado explicitamente como registrador seletor de subslot:
  - leitura/escrita em [`src/fmsx_local/MSX.c`](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c)
  - `RdZ80(0xFFFF)` retorna o registrador de subslot do primario expandido da pagina 3
  - `WrZ80(0xFFFF, V)` chama `SSlot(V)`
- No perfil `MSX2+` atual:
  - `slot 3` e expandido
  - RAM mapper fica em `3-0`
  - `DISK.ROM` fica em `3-2`
- Portanto, `0xAA` (`170`) seleciona subslot `2` para os quatro blocos de 16KB do primario expandido alvo. Isso pode remover a RAM da pagina 3 e derrubar a maquina, o que explica o reboot observado.

## Implicacao pratica

- O primeiro ajuste desta trilha nao deve partir desse repro como se fosse bug de `R#1`.
- Se o objetivo for validar `R#1` de verdade, o repro precisa usar:
  - write direto no porto VDP (`0x99`) para registrador `1`; ou
  - rotina/BIOS que atualize o shadow de `R#1` e comite no VDP.

## Tentativa descartada nesta rodada

- Foi testado um alias de compatibilidade no `MSX2+` que espelhava a RAM do mapper em `slot 3-2` nas paginas `0`, `2` e `3`, preservando `DISK.ROM` apenas em `4000h-7FFFh`.
- A hipotese nao funcionou no hardware e foi revertida.
- O core local voltou ao baseline anterior desta branch, mantendo apenas o diagnostico de que o repro atua sobre `0xFFFF` e nao sobre `R#1`.

## Enderecos de referencia levantados

- `R#1` shadow BIOS:
  - `REG1SAV = 0xF3E0` em `third_party/ocm-pld-dev/.../include/msx.asm`
- `0xFFFF`:
  - registrador de subslot no modelo MSX, nao shadow de `R#1`
- Sequencia correta para escrever `R#1` diretamente:
  - valor em `0x99`
  - depois `0x80 | 1` em `0x99`

## Referencias tecnicas usadas

- [`src/fmsx_local/MSX.c`](/Users/sandersouza/Developer/msxbarepi/src/fmsx_local/MSX.c)
  - `RdZ80()` / `WrZ80()` / `SSlot()` / `IsExpandedPrimarySlot()` / `RAMMapperSubSlot()` / `DiskROMSubSlot()`
- [`docs/milestones/m11/82-validar-vdp9958-modos-msx2plus.md`](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m11/82-validar-vdp9958-modos-msx2plus.md)
  - historico do ajuste anterior de fidelidade para `0xFFFF`
- `third_party/ocm-pld-dev/esemsx3/src/peripheral/iplrom3_work/asm_iplrom/compile/include/msx.asm`
  - definicao de `REG1SAV = 0xF3E0`

## Estado da iteracao

- Branch criada e vinculada a `#82`: OK
- Sub-issues `#231..#236` criadas e vinculadas a `#82`: OK
- Matriz canônica e diretório de evidências da `#82`: OK
- Build local do alias descartado: OK (`make -j4 DEBUG=1 BUILD_BID=202603291835-issue82-poke-ffff-compat`)
- `BUILD_ID` do alias descartado: `CEAC`
- Build local do baseline restaurado: OK (`make -j4 DEBUG=1 BUILD_BID=202603291800-issue82-revert-poke-ffff-compat`)
- `BUILD_ID` do baseline restaurado: `B2E2`
- Artefatos:
  - [`artifacts/kernel8-issue82.img`](/Users/sandersouza/Developer/msxbarepi/artifacts/kernel8-issue82.img)
  - [`artifacts/kernel8-default.img`](/Users/sandersouza/Developer/msxbarepi/artifacts/kernel8-default.img)
- Mudancas de codigo no core: tentativa revertida; core restaurado ao baseline anterior da branch
- Validacao em hardware do alias: falhou
- Validacao em hardware do baseline restaurado: pendente

## Proximo passo sugerido

1. Confirmar dinamicamente `IRQ-001`, `IRQ-003` e `CMD-004` agora que o desempate estático ganhou suporte do `ocm-pld-dev`.
2. Confirmar dinamicamente `REN-002..REN-008`, com foco em `SCREEN 4`, odd/even page, left-edge mask e alinhamento de sprite sob `R27`.
3. Se `REN-008` continuar inconclusiva, registrar bloqueio explícito por falta de observabilidade direta de sprite em vez de abrir telemetria nova cedo demais.
4. Só então promover a `#232` como próxima issue de descoberta estática detalhada.

## Gestao paralela registrada nesta branch

- Em 30/03/2026, foi aberta a issue remota `#237` na milestone `#18 / m18` (`Feature requests / Requisição de Features`) para evoluir o UX de `Save State` / `Load State`.
- Escopo registrado na `#237`:
  - slots `0-9` para save
  - tela de load no estilo `file browser`
  - caixa `INFO` com preview/print, data/hora e ROM/DSK carregados
- O espelho local correspondente foi criado em `docs/milestones/m18/`.
- A issue entrou no projeto `MSX BarePI` com status `Backlog`.
- Nenhuma branch de implementacao foi aberta para essa feature nesta rodada.
