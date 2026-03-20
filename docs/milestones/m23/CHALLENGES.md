# Desafios da Milestone

Registro de desafios enfrentados por issue, decisao adotada e status da solucao.

## Status
- `Resolvido` = solucao aplicada e validada
- `Parcial` = mitigado, requer iteracao
- `Futuro` = movido para issue/milestone futura

## Itens por issue

### #204 - formato canonico de `gamemaster.cht`
- Desafio: definir um catalogo de cheats rico o bastante para multi-POKE e simples o bastante para parse baremetal sem parser JSON/XML generico.
- Solucao adotada: modulo `src/gamemaster_catalog.{h,c}` com formato texto declarativo (`game`, `rom`, `cheat`, `poke`, `endcheat`, `endgame`), limites fixos, path canonico `SD:/gamemaster.cht` e status/linha de erro explicitos; formato documentado em `docs/game-master-plus-format.md`.
- Status: Resolvido
- Referencia: [204-definir-formato-canonico-gamemaster-cht-parser-baremetal.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m23/204-definir-formato-canonico-gamemaster-cht-parser-baremetal.md)

### #205 - catalogo navegavel de jogos com cheat
- Desafio: reaproveitar a ergonomia do file browser atual sem acoplar o fluxo a uma arvore real de diretorios.
- Solucao adotada: `CComboFileBrowser` ganhou modo virtual `Game Master+` via `OpenGameMaster()`, com selecao/indexacao por fonte virtual e labels curtos legiveis para jogos, preservando scroll, paginacao, auto-repeat e jump por letra sem acoplar o menu a diretorios reais.
- Status: Resolvido
- Referencia: [205-criar-catalogo-navegavel-jogos-cheat-estilo-file-browser.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m23/205-criar-catalogo-navegavel-jogos-cheat-estilo-file-browser.md)

### #206 - menu `Game Master+` e tela `Active Cheats`
- Desafio: encaixar um novo fluxo de UI no menu principal sem regressao visual e mantendo localizacao PT/EN/ES.
- Solucao adotada: o menu raiz passou a abrir `Game Master+` via carga sob demanda de `gamemaster.cht`; a UI foi separada em browser de jogos e tela `Active Cheats`, com mensagens localizadas de erro/vazio, hint `[ENTER] APPLY` centralizado, blink curto no `[ENTER]` e aplicacao imediata do cheat selecionado no runtime. A causa raiz de um falso `ENTER` sem efeito foi um retorno incorreto de `ComboMenuActionNone` na view de cheats, corrigido para propagar `ComboMenuActionApplyGameMasterCheat` ao kernel.
- Ajustes posteriores: a sessao de cheats RAM-based deixou de ser reiniciada a cada `APPLY`; os novos pokes agora se acumulam na sessao ativa e enderecos repetidos atualizam a entrada existente. Em seguida, a UI voltou a mostrar `ON/OFF` por cheat, mas derivando esse estado da memoria emulada em vez de um flag local, com `ENTER` operando como toggle real.
- Ajuste de UX posterior: o hint visual de rodape foi removido e o toggle passou a responder tambem a `LEFT/RIGHT`, reduzindo a caixa e deixando a interacao mais direta.
- Status: Resolvido
- Referencia: [206-implementar-menu-game-master-plus-active-cheats-on-off.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m23/206-implementar-menu-game-master-plus-active-cheats-on-off.md)

### #207 - sessao de cheats no core fMSX
- Desafio: transformar a infraestrutura atual de `CHT`/`MCF` em uma sessao interativa com multiplos cheats ativos e restauração segura dos valores originais.
- Solucao adotada: a `#207` passou a usar uma sessao propria do `Game Codes` no runtime, com slots ativos por cheat, prioridade pelo ultimo ajuste em casos de sobreposicao, `orig_value` por endereco para restore seguro e limpeza explicita da sessao em reset, reboot, troca de cartucho, load-state e troca de catalogo `.mcf`. As entradas do `Game Codes` em `CheatCodes[]` agora sao marcadas com tag `GM:` para evitar remocao cega de helpers legados.
- Status: Parcial
- Referencia: [207-integrar-sessao-cheats-core-fmsx-multi-poke-restore-seguro.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m23/207-integrar-sessao-cheats-core-fmsx-multi-poke-restore-seguro.md)

### #208 - documentacao e validacao em hardware
- Desafio: evitar que a feature dependa de conhecimento implícito do autor e fechar a milestone com evidencia de UX/runtime no hardware real.
- Solucao adotada: exigir documentacao do formato, arquivo de exemplo, fallbacks para erro/ausencia de catalogo e smoke test com jogos representativos.
- Status: Futuro
- Referencia: [208-documentar-fluxo-game-master-plus-validar-catalogo-ux-hardware.md](/Users/sandersouza/Developer/msxbarepi/docs/milestones/m23/208-documentar-fluxo-game-master-plus-validar-catalogo-ux-hardware.md)
