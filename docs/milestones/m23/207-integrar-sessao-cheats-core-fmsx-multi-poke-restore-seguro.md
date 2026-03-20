# Issue #207 - [P2] Integrar sessao de cheats ao core fMSX com multi-POKE e restore seguro

- URL: https://github.com/sandersouza/msxbarepi/issues/207
- Milestone: Game Master+ (m23)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:emulation`, `area:memory`

## Checklist
- [ ] Definir modelo de sessao de cheats ativa por jogo carregado
- [ ] Permitir multiplos cheats ativos simultaneamente
- [ ] Aplicar POKEs `8-bit` e `16-bit` em pontos seguros do runtime
- [ ] Preservar/restaurar valores originais ao desligar um cheat
- [ ] Evitar regressao nos helpers legados de `CHT` e `MCF`
- [ ] Definir comportamento para ROM-based cheat fora do escopo inicial, se necessario

## DoR (sugestao)
- Estrutura de cheats e `poke` estabilizada pela issue `#204`.
- Pontos de aplicacao no runtime e estrategia de restore definidos contra os helpers legados do fMSX.
- Escopo inicial de RAM-based cheats e limites para ROM-based cheats registrados antes da implementacao.

## DoD (sugestao)
- E possivel manter mais de um cheat ativo ao mesmo tempo para o jogo selecionado.
- Cada cheat multi-POKE aplica `8-bit`/`16-bit` com restauracao segura ao desligar.
- O mecanismo novo nao quebra `CHT`/`MCF` legados nem introduz corrupcao evidente de memoria.
- Comportamento fora de escopo inicial fica explicitamente documentado.

## Status da iteracao atual

- Issue criada para fechar a ponte entre o catalogo `Game Master+` e a infraestrutura existente de cheats no fMSX.
- O core ja possui `AddCheat()`, `ResetCheats()`, `ApplyCheats()` e suporte a `CHT`/`MCF`, mas ainda nao oferece uma sessao interativa com multiplos toggles independentes.
- A meta inicial e cobrir cheats RAM-based com multi-POKE e restore seguro, sem quebrar compatibilidade com os helpers atuais.
