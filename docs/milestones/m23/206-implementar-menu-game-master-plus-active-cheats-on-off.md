# Issue #206 - [P2] Implementar menu `Game Master+` e tela `Active Cheats`

- URL: https://github.com/sandersouza/msxbarepi/issues/206
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:settings`, `area:emulation`

## Checklist
- [x] Adicionar item `Game Master+` no menu principal
- [x] Integrar o fluxo `menu principal -> browser de jogos -> lista de cheats`
- [x] Exibir a lista de cheats do jogo selecionado
- [x] Permitir aplicar o cheat selecionado por `ENTER` sem sair do menu
- [x] Localizar labels e mensagens de erro para `PT`, `EN` e `ES`
- [x] Revisar documentacao do menu/debug/browser conforme impacto visual e de UX

## DoR (sugestao)
- Catalogo de jogos disponivel para a UI via issue `#205`.
- Estrutura de cheats por jogo definida pela issue `#204`.
- Decisao de labels e hints visiveis compatibilizada com locale `PT/EN/ES`.

## DoD (sugestao)
- O menu principal exibe a entrada `Game Codes` sem regressao visual no fluxo atual.
- O usuario consegue navegar `menu principal -> jogos -> cheats` e aplicar imediatamente o item selecionado por `ENTER`.
- Hints de acao, feedback visual, erros de carga e lista vazia ficam legiveis e localizados nos tres idiomas.
- Documentacao de menu/browser impactada e atualizada no mesmo ciclo.

## Status da iteracao atual

- O menu raiz ganhou a entrada `Game Codes`; ao seleciona-la, o kernel recarrega `SD:/gamemaster.cht` e abre o browser virtual de jogos da issue `#205`.
- O `CComboPauseMenu` passou a ter duas subviews novas: browser de jogos do `Game Master+` e tela `Active Cheats`, com navegacao independente, `PageUp/PageDown`, jump por letra e retorno por `BACK`.
- A tela `Active Cheats` lista os cheats do jogo selecionado sem `ON/OFF`, mostra `[ENTER] APPLY` no rodape inferior e apresenta feedback visual curto piscando `[ENTER]` invertido uma vez.
- Ao pressionar `ENTER`, o kernel consome a selecao pendente e o runtime aplica imediatamente todos os `pokes` do cheat selecionado na memoria emulada.
- Estados de erro e vazio do catalogo ficaram legiveis no proprio menu, com mensagens localizadas e linha de erro quando o parser reporta falha sintatica/estrutural.
- Locales `PT/EN/ES` atualizados com novas labels/titulos do fluxo `Game Master+`.
- Documentacao do browser atualizada em `docs/file-browser-component.md`.
- Validacao executada:
  - `scripts/check-third-party-pristine.sh` OK
  - `make -j4 DEBUG=1` OK
- PR aberto para review: `#212` `Issue #206: add Game Master menu and Active Cheats UI`
