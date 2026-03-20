# Issue #208 - [P2] Documentar fluxo `Game Master+` e validar catalogo/UX em hardware

- URL: https://github.com/sandersouza/msxbarepi/issues/208
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `documentation`, `area:settings`, `area:storage`

## Checklist
- [ ] Documentar o formato final de `gamemaster.cht`
- [ ] Registrar o fluxo de UI `menu -> browser -> cheats -> ON/OFF`
- [ ] Criar arquivo de exemplo (`gamemaster.cht.example`) com pelo menos um jogo e cheats multi-POKE
- [ ] Validar ausencia/erro de catalogo e comportamento de fallback na UI
- [ ] Rodar smoke test em hardware com ao menos 2 jogos e cheats representativos
- [ ] Atualizar docs tecnicas afetadas e espelho local da milestone/issues

## DoR (sugestao)
- Parser, browser, UI e sessao de runtime estabilizados nas issues `#204..#207`.
- Jogos de referencia e cheats representativos definidos para smoke test.
- Estrategia de validacao de ausencia/erro de catalogo acordada.

## DoD (sugestao)
- Existe documentacao utilizavel por terceiros para formato, fluxo de UI e comportamento de fallback.
- O repositório passa a conter um exemplo minimo de `gamemaster.cht`.
- Smoke test em hardware cobre ao menos 2 jogos com cheats representativos e deixa evidencias registradas.
- Espelho local e documentacao tecnica ficam sincronizados com o estado final da milestone.

## Status da iteracao atual

- Issue criada para fechar a milestone com documentacao suficiente para uso por terceiros e validacao pratica no hardware real.
- O escopo inclui catalogo de exemplo, casos de erro/ausencia de arquivo e registro do fluxo completo de UX.
- A validacao final devera confirmar tanto a navegacao do menu quanto a integridade da aplicacao/remocao de cheats em runtime.
