# Handoff - branch `204-gamemaster-cht-parser`

## Contexto
- Issue remota: #204
- Objetivo: definir o formato canonico de `gamemaster.cht` e implementar o parser baremetal para o catalogo `Game Master+`.

## Iteracao atual (20/03/2026 10:07 -03)
- Solicitacao do usuario:
  - ativar a milestone `Game Master+` e iniciar o trabalho nela.
- Acao de gestao aplicada:
  - milestone `Game Master+` ativada no board;
  - issues abertas da milestone movidas para `Ready`;
  - issue `#204` promovida para `In progress`;
  - branch criada e vinculada via `gh issue develop`: `204-gamemaster-cht-parser`.
- Implementacao aplicada:
  - novo modulo `src/gamemaster_catalog.h` / `src/gamemaster_catalog.c`;
  - novo documento `docs/game-master-plus-format.md`;
  - `src/Makefile` atualizado para compilar `gamemaster_catalog.o`.
- Contrato definido para `SD:/gamemaster.cht`:
  - comandos suportados: `game`, `rom`, `cheat`, `poke`, `endcheat`, `endgame`;
  - comentarios com `#` ou `;`;
  - strings com espacos em aspas duplas;
  - `poke` aceita `ADDR_HEX`, `VALUE_HEX` e `SIZE` (`8`, `8-bit`, `16`, `16-bit`);
  - estrutura em memoria com limites fixos para `games`, `cheats` e `pokes`;
  - parser expone `status` e `error_line` para a UI futura consumir.
- Regras de validacao implementadas:
  - proibicao de jogos duplicados;
  - proibicao de cheats duplicados dentro do mesmo jogo;
  - `rom_id` unico no catalogo;
  - erro para catalogo vazio, linha longa, hex invalido, tamanho invalido e blocos mal fechados.
- Validacao local:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
  - smoke test host do parser com catalogo valido:
    - `status=0`
    - `games=1`
    - `cheats=2`
    - `pokes=3`
- Proximo passo:
  - PR aberto: `#210` `Issue #204: add Game Master+ catalog parser`
  - issue `#204` movida para `In review` no projeto `MSX BarePI`
  - link para review: https://github.com/sandersouza/msxbarepi/pull/210
