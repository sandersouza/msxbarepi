# [BUG] Space Manbow 2 - crash no gameplay apos alguns minutos + voice START ausente

Issue remota: #201
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/201

## Descricao

## Problema
- O jogo entra em gameplay, mas trava apos alguns minutos.
- A voz `START` antes da gameplay nao toca no core atual.

## Objetivo
Alinhar o mapper `Manbow2` ao comportamento de referencia (`MegaFlashROM SCC`) para restaurar audio SCC esperado e remover instabilidade em runtime.

## Escopo tecnico
- Revisar janela de registradores SCC usada no `MAP_MANBOW2`.
- Revisar latch de habilitacao SCC no caminho de bank-switch do `Manbow2`.
- Preservar o comportamento legado de outros mappers (`MAP_KONAMI5`, SCC+/SCC-I) sem regressao.

## Critérios de aceite
- [ ] Voz `START` reproduz antes da gameplay.
- [ ] Sessao de gameplay estavel ate pelo menos o primeiro boss.
- [ ] Validado em perfil `MSX2` e `MSX2+`.
- [ ] Sem regressao observavel em carts `KONAMI5` nao-Manbow2.

## Status local (20/03/2026)
- Baseline funcional recomposto para teste:
  - rollback do core de VDP/render para a base `cf021ce` da trilha da `#176`;
  - reaplicado ajuste local de `MegaFlashROM SCC` do `Manbow2`:
    - janela SCC apenas em `9800h-9FFFh`;
    - sem latch `SCC+` por `B000h` no `MAP_MANBOW2`;
    - `MAP_KONAMI5` legado preservado.
- Refinamento aplicado na rodada seguinte:
  - leitura SCC do `MAP_MANBOW2` agora usa a mesma janela restrita do write path;
  - removido alias de leitura em `B800h-BFFFh`, alinhando o core a `RomManbow2` da referencia `openMSX`.

## Referencias obrigatorias
- `third_party/bluemsx/blueMSX/Src/Memory/romMapperMegaFlashRomScc.c`
- `third_party/openMSX` (RomManbow2 / AmdFlash), quando aplicavel.
