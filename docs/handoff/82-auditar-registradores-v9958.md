# Handoff Persistente da Branch 82-auditar-registradores-v9958

Ultima atualizacao: 29/03/2026 (18:00 -03)

## Objetivo da branch

Auditar a existencia e a semantica dos registradores do V9958 no perfil `MSX2+`, isolando reproducoes reais de VDP de outros caminhos de hardware do MSX.

## Vinculo de gestao

- Issue remota: [#82 - [P1] Validar VDP9958 e modos adicionais do MSX2+](https://github.com/sandersouza/msxbarepi/issues/82)
- Branch vinculada via `gh issue develop`: `82-auditar-registradores-v9958`

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

1. Validar em hardware o repro `POKE -1,170` no perfil `MSX2+` para confirmar que o reset desapareceu sem regressao de boot/menu.
2. Investigar outra abordagem para `0xFFFF` no perfil `MSX2+` sem repetir o alias em `3-2`.
3. Depois retomar a auditoria real de `R#1` via write direto no VDP (`0x99`) ou shadow BIOS correto.
