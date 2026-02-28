# Issue #99: [P1] Save State / Load State no menu Settings (persistência no SD)

- URL: https://github.com/sandersouza/msxbarepi/issues/99
- Milestone (GitHub): #9 - Load de ROMs e Discos
- Labels: `type:feature`, `priority:P1`, `area:storage`, `area:settings`, `area:emulation`
- Status: Open

## Objetivo
Adicionar no menu **Settings** as opções **Save State** e **Load State** para persistir no MicroSD o estado completo do emulador e restaurar exatamente o ponto salvo.

## Escopo
- Nova entrada no menu para `Save State`.
- Nova entrada no menu para `Load State`.
- Persistência em arquivo no SD (ex.: `states/slot-last.sav`), com caminho estável e documentado.
- Salvar/restaurar estado completo necessário para retomar execução no mesmo ponto (CPU, VDP, RAM, slots/mappers, PSG/SCC e contexto de timing relevante).
- Tratamento de erro amigável no overlay/menu quando arquivo não existir, estiver corrompido ou operação falhar.

## Critérios de aceite
- Ao acionar `Save State`, o arquivo é gravado no SD sem travar o emulador.
- Ao acionar `Load State`, o emulador retorna ao mesmo ponto lógico de execução.
- Se não houver save válido, `Load State` não trava e informa falha de forma clara.
- Fluxo funciona com ROM carregada e com disco carregado.
- Regressão: boot/menu/input/audio continuam estáveis após múltiplos ciclos de save/load.

## Notas
- Priorizar formato simples e robusto para primeira versão (um slot "último estado").
- Evolução futura pode incluir múltiplos slots e metadata (timestamp/jogo).
