# Issue #206 - [P2] Implementar menu `Game Master+` e tela `Active Cheats` com ON/OFF

- URL: https://github.com/sandersouza/msxbarepi/issues/206
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:settings`, `area:emulation`

## Checklist
- [ ] Adicionar item `Game Master+` no menu principal
- [ ] Integrar o fluxo `menu principal -> browser de jogos -> lista de cheats`
- [ ] Exibir cada cheat com estado `ON/OFF`
- [ ] Permitir alternar cheats individuais sem sair do menu
- [ ] Localizar labels e mensagens de erro para `PT`, `EN` e `ES`
- [ ] Revisar documentacao do menu/debug/browser conforme impacto visual e de UX

## DoR (sugestao)
- Catalogo de jogos disponivel para a UI via issue `#205`.
- Estrutura de cheats por jogo definida pela issue `#204`.
- Decisao de labels e estados visiveis compatibilizada com locale `PT/EN/ES`.

## DoD (sugestao)
- O menu principal exibe a entrada `Game Master+` sem regressao visual no fluxo atual.
- O usuario consegue navegar `menu principal -> jogos -> cheats` e alternar itens individualmente.
- Estados `ON/OFF`, erros de carga e lista vazia ficam legiveis e localizados nos tres idiomas.
- Documentacao de menu/browser impactada e atualizada no mesmo ciclo.

## Status da iteracao atual

- Issue criada para concentrar a experiencia do usuario da feature, da entrada no root menu ate a tela de toggles por jogo.
- A referencia funcional adotada e o fluxo `Active Cheats` do blueMSX, adaptado ao layout e as guardrails atuais do menu.
- Toda string nova devera entrar no sistema de locale e o fluxo devera evitar regressao visual no menu principal.
