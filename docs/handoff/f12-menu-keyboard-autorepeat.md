# Handoff Persistente da Branch f12-menu-keyboard-autorepeat

Ultima atualizacao: 29/03/2026 (16:25 -03)

## Objetivo da branch

Adicionar auto-repeat de teclado ao menu de pausa (`F12`) sem alterar o contrato atual de hotkeys e sem mexer no auto-repeat proprio do file browser.

## Atualizacao 2026-03-29 - tuning de cadencia apos feedback

- Feedback da rodada anterior:
  - a primeira repeticao ainda demorava demais;
  - a taxa de repeticao estava lenta demais no uso real.
- Ajuste aplicado:
  - repeat do `pause menu` acelerado de `30/6` para `12/2` frames;
  - repeat do `combo_file_browser` acelerado no mesmo passo para manter a UX do `F12` uniforme entre menu raiz/settings e listas de ROM/DISK/Cheats.
- Build desta iteracao de tuning:
  - Comando: `make -j4 DEBUG=1 BUILD_BID=202603291622-f12-menu-repeat-fast`
  - Resultado: `OK`
  - Artefato: `artifacts/kernel8-default.img`
  - BUILD_HASH: `8fb858c-452c086e6c69e2a43f2b4bf97764fa2f0ce282b6`
  - BUILD_BID: `202603291622-f12-menu-repeat-fast`
  - BUILD_ID: `47ED`

## Implementacao realizada

- `src/tools/menu/combo_menu.h`
  - adicionados contadores internos de hold para repeat (`Up/Down/Left/Right`) e helper privado para resetar o estado entre telas.
- `src/tools/menu/combo_menu.cpp`
  - introduzido helper de repeat com cadencia rapida de menu (`delay=12 frames`, `period=2 frames`);
  - listas do pause menu (`Root`, `Settings`, `Debug`, `Load*`, `GameMasterCheats`) passaram a aceitar hold em `Up/Down`;
  - itens ciclicos de `Settings`/`Debug` passaram a aceitar hold em `Left/Right`;
  - o estado de repeat e zerado ao sair do pause, ao trocar de view e ao entrar nas telas de browser, evitando vazamento de hold entre contextos diferentes;
  - `GameMasterCheats` manteve `Left/Right/Enter` por edge para nao alternar cheats continuamente por hold.
- `src/tools/file_browser/combo_file_browser.cpp`
  - o browser do `F12` foi retunado para a mesma cadencia rapida (`12/2` frames), evitando diferenca perceptivel entre menu raiz/settings e listas de ROM/DISK/Cheats.

## Referencia tecnica usada

- `src/tools/file_browser/combo_file_browser.cpp`
  - a cadencia do browser foi usada como ponto de alinhamento de UX, mas nesta rodada ambos os lados do `F12` foram acelerados juntos para `12/2` frames.

## Documentacao sincronizada

- `docs/debug-layer.md`
  - atualizada a secao do menu `PAUSE` para refletir auto-repeat em `Up/Down` e, em `Settings/Debug`, tambem em `Left/Right`.
- `CONTEXT.md`
  - ponteiro da branch atualizado para este handoff.

## Build desta iteracao

- Guardrail: `scripts/check-third-party-pristine.sh` -> `OK`
- Comando: `make -j4 DEBUG=1 BUILD_BID=202603291620-f12-menu-repeat`
- Resultado: `OK`
- Artefato: `artifacts/kernel8-default.img`
- BUILD_HASH: `8fb858c-ba5b698d2ed5cb0c6b3105f329a4344b165ca306`
- BUILD_BID: `202603291620-f12-menu-repeat`
- BUILD_ID: `16E3`

## Validacao executada

- Build local completa com `DEBUG=1`: `OK`
- Teste de hardware: nao executado nesta rodada

## Observacoes

- O kernel ja repetia chamadas de input no loop principal para setas e `PgUp/PgDn` quando o menu estava pausado; a mudanca desta branch fecha o lado do `combo_menu`, que ainda dependia majoritariamente de edge-trigger.
- O file browser continua com seu repeat proprio para navegacao em catalogos grandes; esta branch apenas estende comportamento equivalente ao restante do menu `F12`.
