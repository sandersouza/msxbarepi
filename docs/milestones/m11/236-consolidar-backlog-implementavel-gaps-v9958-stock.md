# Issue #236 - Consolidar backlog implementável dos gaps confirmados do V9958 stock

- URL: https://github.com/sandersouza/msxbarepi/issues/236
- Milestone: Release: Suporte MSX2+ (m11)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:video`, `area:emulation`, `documentation`
- Estado local atual: BACKLOG

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
