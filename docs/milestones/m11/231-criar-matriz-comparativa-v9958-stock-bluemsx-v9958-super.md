# Issue #231 - Criar matriz comparativa do V9958 stock vs blueMSX e V9958-Super

- URL: https://github.com/sandersouza/msxbarepi/issues/231
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`, `documentation`
- Estado local atual: EM PROGRESSO

## Objetivo
Criar o documento canônico da auditoria comparativa do V9958 stock em `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`, definindo taxonomia, fontes obrigatórias, corpus de validação e a estrutura que será usada para fechar os gaps reais do nosso VDP.

## Contexto técnico
- A issue `#82` já acumula investigação prática sobre `MSX2+`, `R25/R26/R27`, `S#1`, `S#2`, `IE1`, `command engine` e renderer local, mas ainda sem uma matriz única para distinguir:
  - comportamento confirmado;
  - semântica divergente;
  - bloco faltante;
  - hipótese ainda não fechada.
- O repositório já contém as três fontes-base da trilha:
  - nosso core local em `src/fmsx_local/`
  - referência software em `third_party/bluemsx/blueMSX/Src/VideoChips/`
  - referência HDL em `third_party/V9958-Super/src/vdp/` e `third_party/V9958-Super/docs/`
- Sem uma matriz canônica, qualquer correção nova corre o risco de misturar:
  - bug real do nosso core;
  - diferença esperada entre implementações;
  - comportamento ainda não desempregado por evidência dinâmica.

## Escopo técnico
- Criar `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`.
- Definir colunas fixas da matriz:
  - `ID`
  - `Categoria`
  - `Escopo`
  - `blueMSX`
  - `V9958-Super`
  - `Nosso core`
  - `Evidência dinâmica`
  - `Veredito`
  - `Impacto`
  - `Direção de correção`
  - `Repro`
  - `Observações`
- Definir a taxonomia oficial:
  - `match`
  - `partial`
  - `missing`
  - `conflict`
  - `disputed`
  - `n/a`
- Registrar as regras de precedência entre referências.
- Bootstrapar as primeiras linhas da matriz com anchors reais das fontes obrigatórias.

## Fora de escopo
- Corrigir o core nesta issue
- Criar harness novo
- Incluir extensões `R#29+`, modos super e features proprietárias do `V9958-Super`
- Fechar toda a auditoria estática ou dinâmica nesta mesma issue

## DoR
- [x] Escopo da trilha fechado como `V9958 stock`
- [x] Milestone alvo confirmada: `m11` / remota `#12`
- [x] Issue `#82` definida como umbrella da auditoria
- [x] Fontes obrigatórias identificadas no repositório local

## DoD
- [x] Matriz canônica criada em `docs/reverse-engineering/msx2plus/v9958-stock-compare-matrix.md`
- [x] Taxonomia `match/partial/missing/conflict/disputed/n/a` definida no documento
- [x] Regras de precedência entre `blueMSX`, `V9958-Super` e nosso core registradas
- [x] Seções canônicas da trilha criadas: I/O, registradores/status, IRQ/latches, command engine, renderer/addressing
- [x] Primeiras linhas seed preenchidas com anchors reais das três fontes
- [x] `#82` atualizada local e remotamente para apontar explicitamente para a matriz como referência central

## Checklist operacional
- [x] Consolidar no documento as fontes obrigatórias da auditoria
- [x] Definir taxonomia, precedência e método de fechamento das linhas
- [x] Criar as seções canônicas da matriz
- [x] Preencher as primeiras linhas seed usando leitura cruzada dos três cores
- [x] Ligar a matriz à `#82` remota e ao espelho local final da milestone

## Avanço estático em 30/03/2026
- A matriz saiu do bootstrap seed e passou a refletir uma primeira passada estática mais granular para:
  - `I/O`: `IO-001..IO-005`
  - `Registradores/status`: `REG-001..REG-004`, `STS-001..STS-006`
  - `IRQ/latches`: `IRQ-001..IRQ-003`
  - `Command engine`: `CMD-001..CMD-004`
- O bloco `renderer/addressing` também deixou de ser seed-only e foi quebrado em linhas por comportamento:
  - `REN-002`: `SCREEN 4`
  - `REN-003`: `SCREEN 5`
  - `REN-004`: `SCREEN 6/7`
  - `REN-005`: `SCREEN 8`
  - `REN-006`: `SCREEN 10/12`
  - `REN-007`: odd/even page derivado de `S#2 bit1`
  - `REN-008`: `R27`/mask/alinhamento de sprite
- Linhas já fechadas nesta passada:
  - `REG-001`: a largura do seletor fecha em janela de `6 bits` no `V9958 stock`; veredito `match`
  - `REG-003`: `R#24` e `R#28..R#31` aparecem como buracos inválidos/inertes em `blueMSX` + lineage HDL, enquanto o core local ainda persiste o valor cru; veredito `conflict`
  - `IO-004`: leitura de `0x99` reseta o sequenciador de latch nas duas referências, enquanto o core local preserva `VKey` por escolha explícita em `MSX.c`; veredito `conflict`
  - `CMD-002`: leitura de `S#7` limpa `TR`; veredito `match`
  - `CMD-003`: escrita em `R#44/CLR` limpa `TR`; veredito `match`
  - `STS-005`: `S#2 bit4` (`BD/BO`) pertence ao `SRCH` e se propaga de forma convergente nas três bases; veredito `match`
- `IO-004` segue sem correção local deliberadamente:
  - o histórico da branch `fix-acurating-timing-vdp9958` já registra regressão ao forçar reset de `VKey` em leitura de `0x99`
  - a linha fica tratada como `conflict` fechado, mas bloqueada para “fix” sem repro dinâmico novo
- O corte de `REG-004` também ficou mais objetivo:
  - o decode funcional do `command engine` fecha em `R#32..R#46` nas três bases
  - o aberto remanescente não é mais “se `R#47+` pertence ao engine”, e sim o guardrail exato do auto-incremento indireto de `R#17` quando a caminhada passa de `R#47`
- Nova disputa aberta para a fase dinâmica:
  - `STS-006`: `blueMSX` e o core local tratam `S#8/S#9` como valor latched ao fim do `SRCH`, enquanto `V9958-Super`/`ocm-pld-dev` expõem `SXTMP` live do command core
  - essa linha agora precisa de evidência dinâmica antes de qualquer correção em `MSX.c` / `V9938.c`
- Linhas que saíram de `disputed` para `partial` com apoio do `ocm-pld-dev`:
  - `IRQ-001`: o HDL lineage fecha `S#1 bit0` como latch sticky mesmo sem `IE1`, mas o blueMSX continua divergindo com modelo live-window
  - `IRQ-003`: o compare lógico com `R#19` já aparece afetado por `R#23` no lineage HDL, embora isso não fique explícito só no bloco `vdp_interrupt.v` do `V9958-Super`
  - `CMD-004`: `blueMSX`, `ocm-pld-dev` e o core local convergem em `R#25 bit6` como `commandEnable` fora de `SCR5..SCR12`, enquanto o snapshot atual do `V9958-Super` parece ter removido esse path
- O próximo corte útil desta issue deixou de ser “quebrar o renderer por modo” e passou a ser confirmar dinamicamente:
  - `IRQ-001`, `IRQ-003`, `CMD-004`
  - `STS-006`
  - `REN-002..REN-008`, com foco em `SCREEN 4`, odd/even page, left-edge mask e alinhamento de sprite sob `R27`

## Testes e cenários
- Validar que o documento aponta para arquivos e módulos reais do repositório
- Validar que cada coluna obrigatória da matriz existe
- Validar que a taxonomia está explícita e sem categorias ambíguas
- Validar que o documento diferencia claramente:
  - baseline de referência;
  - divergência confirmada;
  - linha ainda disputada

## Referências iniciais
- `src/fmsx_local/MSX.c`
- `src/fmsx_local/V9938.c`
- `src/fmsx_local/Common.h`
- `third_party/bluemsx/blueMSX/Src/VideoChips/VDP.c`
- `third_party/bluemsx/blueMSX/Src/VideoChips/V9938.c`
- `third_party/V9958-Super/src/vdp/vdp_register.sv`
- `third_party/V9958-Super/src/vdp/vdp_command.sv`
- `third_party/V9958-Super/docs/revisions.md`
