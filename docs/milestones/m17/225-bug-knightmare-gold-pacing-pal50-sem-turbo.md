# [P2][BUG] Knightmare Gold: pacing e scroll fino em `50Hz + Turbo OFF`

Milestone remota: #17
Issue remota: #225
Link: https://github.com/sandersouza/msxbarepi/issues/225

## Descrição

## Problema
O `Knightmare Gold` já libera corretamente o `SCROLL SMOOTH` no cenário suportado pelo próprio jogo:
- `50Hz + Turbo OFF` (`3.579545MHz`)
- `60Hz + Turbo MAX` (`7MHz-class`)

Mas o runtime ainda apresenta defeitos no cenário `50Hz + Turbo OFF`, que deveria ser um modo válido:
- cortes/atrasos de áudio, especialmente após a música de apresentação entrar na gameplay
- flicker forte na primeira faixa vertical de `8px` da tela
- no cruzamento de `8px` do scroll fino vertical, a imagem dá um salto curto de `-8px`, reaproveita a linha errada e depois corrige
- resposta de teclado precisa ser revalidada nesse modo, para garantir que o pacing do jogo não esteja interferindo no input

## Contexto
A issue `#224` fechou a parte de gate/detecção do `Knightmare Gold`:
- `50Hz + Turbo OFF` => `SCROLL SMOOTH` selecionável
- `60Hz + Turbo MAX` => `SCROLL SMOOTH` selecionável
- demais combinações => `SCROLL ORIGINAL`

O problema restante deixou de ser detecção e passou a ser fidelidade de pacing/timing do runtime no caminho de gameplay do `Knightmare Gold` em `50Hz + Turbo OFF`.

## Objetivo
Corrigir o pacing do `Knightmare Gold` em `50Hz + Turbo OFF`, eliminando os cortes de áudio e estabilizando o scroll fino vertical sem regressão em outros títulos já estabilizados.

## Escopo técnico
- Investigar e corrigir o pacing de áudio do `Knightmare Gold` em `PAL/50Hz` após a transição da apresentação para a gameplay.
- Corrigir o flicker forte da primeira faixa de `8px` da tela.
- Corrigir o salto visual de `-8px` no rollover do scroll fino vertical.
- Revalidar a resposta do teclado nesse cenário para garantir que o pacing não esteja degradando input.
- Revisar o caminho do VDP usado pelo hack do loader (`KMG.COM`), incluindo:
  - timing de writes em `0x98/0x99`
  - visibilidade dos updates na scanline corrente
  - rollover do tile row a cada `8px`
  - split entre raster do gameplay e elementos fixos da tela
- Comparar o comportamento com referências em `openMSX` e `blueMSX` quando necessário.

## Fora de escopo
- Reabrir a lógica de detecção/gate do menu do `Knightmare Gold`
- Reabrir a regressão já corrigida do `GRADIUS2E` no placar superior
- Alterar o contrato global de `IE1 = R#19 - VScroll`
- Hacks permanentes por título fora do escopo do problema de pacing/timing

## Riscos / invariantes
- Não reabrir a regressão do `GRADIUS2E`, onde as 2 linhas superiores do placar passam a scrollar com a área principal.
- Não mexer no alvo global de `IE1` para tentar compensar o `Knightmare Gold`.
- Não quebrar o pacing de áudio já estabilizado fora do cenário `PAL/50Hz` do `KMG`.

## DoR
- [x] Gate do menu do `Knightmare Gold` já fechado: `50Hz + OFF` e `60Hz + MAX`
- [x] Regressão do `GRADIUS2E` já identificada e documentada como invariável
- [x] Sintomas restantes do `KMG` documentados com padrão reproduzível

## DoD
- [ ] Em `50Hz + Turbo OFF`, a música não some nem trava ao entrar na gameplay
- [ ] Em `50Hz + Turbo OFF`, o áudio não apresenta cortes perceptíveis entre notas
- [ ] Em `50Hz + Turbo OFF`, a primeira faixa vertical de `8px` não apresenta flicker forte
- [ ] Em `50Hz + Turbo OFF`, o scroll fino vertical não dá salto de `-8px` no rollover
- [ ] Resposta de teclado revalidada nesse cenário
- [ ] `GRADIUS2E` permanece sem regressão no placar superior
- [ ] Correção documentada com referência ao caminho do VDP/pacing ajustado

## Evidência atual
- `50Hz + Turbo OFF`: `SCROLL SMOOTH` habilita, mas ainda há flicker intenso na primeira faixa de `8px`, salto visual de `-8px` no rollover e instabilidade de áudio entre apresentação e gameplay.
- `60Hz + Turbo MAX`: o jogo fica quase perfeito, com resíduo visual pequeno na primeira faixa de `8px`.
- Isso sugere que o problema restante está no pacing/timing do runtime no limite do modo `3.579545MHz + 50Hz`, e não mais no gate de detecção.

## Referências
- `docs/milestones/m17/224-bug-knightmare-gold-falha-deteccao-msx2plus-scroll-fino.md`
- `docs/handoff/187-reduzir-latencia-teclado.md`
- `roms/kmaregold/KMG.COM`
- `roms/kmaregold/KMARE.ROM`
- `roms/kmaregold/KMARESCC.OVL`
- `third_party/openMSX/`
- `third_party/bluemsx/`
