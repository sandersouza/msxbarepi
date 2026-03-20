# Handoff - branch `207-integrar-sessao-cheats-core-fmsx-multi-poke-restore-seguro`

## Contexto
- Issue remota: #207
- Objetivo: consolidar a sessao de cheats do `Game Codes` no core fMSX com multi-POKE, restore seguro e ciclo de vida coerente em reset/troca de jogo.

## Iteracao atual (20/03/2026 14:47 -03)
- Branch criada a partir do merge da `#206`.
- Base herdada:
  - `Game Codes` ja navega `SD:/cheats/*.mcf`;
  - a UI ja distingue `ON/OFF` e cheats parametrizados por heuristica da descricao;
  - o runtime ja aplicava/removia cheats RAM-based imediatamente.
- Causa raiz tratada nesta rodada:
  - a sessao ainda operava por endereco no `CheatCodes[]`, o que abria margem para conflito entre cheats sobrepostos e nao formalizava limpeza/restauracao em transicoes de runtime.
- Implementacao aplicada:
  - `src/fmsx_runtime.{h,c}`
    - nova sessao propria do `Game Codes`, separada da manipulacao direta ad hoc de `CheatCodes[]`;
    - slots ativos passam a ser rastreados por cheat carregado, com ordem de ativacao (`sequence`) para resolver sobreposicoes de endereco por prioridade do ultimo ajuste;
    - tabela de registros por endereco preserva `orig_value` capturado na primeira ativacao e so restaura esse valor quando o ultimo owner daquele endereco sai da sessao;
    - o commit da sessao recompõe o agregado inteiro em `CheatCodes[]`, marcando entradas do `Game Codes` com tag propria (`GM:`) para nao varrer helpers legados indiscriminadamente;
    - `fmsx_runtime_reset_game_master_session()` restaura memoria e remove apenas os cheats pertencentes ao `Game Codes`;
    - a sessao agora e limpa em pontos que invalidam `Orig` ou os ponteiros do catalogo:
      - `reboot_basic`
      - `menu_reset`
      - `hard_reset`
      - `shutdown`
      - `load_state`
      - `load_cartridge`
      - `unload_cartridge`
  - `src/tools/menu/combo_menu.cpp`
    - ao trocar de `.mcf`, a UI reseta a sessao do runtime antes de recarregar o catalogo, evitando ponteiros stale para o catalogo anterior.
- Decisao tecnica:
  - a sessao ativa e tratada como pertencente ao jogo/catalogo atual carregado no `Game Codes`;
  - ao trocar de catalogo ou atravessar resets/load-state/cart swap, a sessao e descartada e a memoria volta ao estado original anterior aos cheats;
  - `disk swap` nao limpa a sessao nesta rodada.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - `kernel8.img`: `648408` bytes
  - `BUILD_HASH`: `202603201447-0567958`
- Risco em aberto:
  - ainda nao houve validacao em hardware desta nova politica de sobreposicao/restauracao;
  - cheats parametrizados multi-POKE continuam fora do escopo inicial.
