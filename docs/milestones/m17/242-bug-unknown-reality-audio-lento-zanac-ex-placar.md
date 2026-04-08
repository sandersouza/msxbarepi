# [P2][BUG] UNKNOWN REALITY: lentidão residual de áudio + ZANAC EX: linha do placar

Issue remota: #242
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/242

## Descrição

## Problema
Após a estabilização do boot logo do `MSX2+`, sobraram dois resíduos menores mas ainda reproduzíveis:

- no demo `UNKNOWN REALITY`, o vídeo/interlace já voltou a funcionar, mas o áudio ainda apresenta lentidão residual em trechos específicos
- no `ZANAC EX`, a faixa do placar ainda sofre sobrescrita/glitch em uma linha, sugerindo falha remanescente no split por scanline entre HUD e viewport

Os dois sintomas são considerados `minor fixes` porque não bloqueiam o core nem a cadeia principal de boot, mas ainda representam desvio perceptível de fidelidade.

## Contexto
- A trilha da `#238` fechou o gargalo principal do boot logo do `MSX2+`, inclusive removendo a dependência acidental do pacing do Z80.
- O demo `UNKNOWN REALITY` voltou a passar nas telas interlaced/high-res depois dos ajustes no presenter/renderer, mas permaneceu com lentidão residual de áudio.
- O `ZANAC EX` continua como caso útil para validar mudança de screen/viewport por scanline, especialmente no limite entre área fixa do placar e área scrollável do gameplay.

## Objetivo
Fechar os dois resíduos remanescentes de baixa prioridade sem reabrir a trilha principal do boot logo:

- corrigir a lentidão residual de áudio no demo `UNKNOWN REALITY`
- corrigir a linha do placar sobrescrita no `ZANAC EX`

## Escopo técnico
- Reproduzir e isolar o caminho de áudio residual do `UNKNOWN REALITY`, com foco em:
  - pacing do mixer
  - acoplamento vídeo/áudio nos modos high-res/interlaced
  - possíveis waits indevidos herdados da trilha do `V9958`
- Reproduzir e isolar o bug da linha do placar no `ZANAC EX`, com foco em:
  - split por scanline
  - troca de screen/viewport
  - consumo visual de writes tardias de registradores em `SCREEN 6/7`
- Comparar as áreas relevantes do core local com:
  - `blueMSX`
  - `V9958-Super`
  - referências já usadas na `#238`

## Fora de escopo
- Reabrir o bug principal do boot logo do `MSX2+`
- Reabrir `MASK`, `R#9 interlace` ou hipóteses já descartadas na `#238`, salvo se uma nova evidência objetiva exigir isso
- Mudanças amplas no presenter/host sem repro direta dos dois sintomas

## DoR
- [x] Boot logo do `MSX2+` estabilizado operacionalmente
- [x] Resíduo de áudio do `UNKNOWN REALITY` documentado como follow-up
- [x] Resíduo da linha do placar no `ZANAC EX` confirmado como follow-up
- [x] Milestone correta definida como `FIX: Minor Issues / Other Issues`

## DoD
- [ ] `UNKNOWN REALITY` roda sem lentidão residual de áudio nos trechos afetados
- [ ] `ZANAC EX` deixa de sobrescrever a linha reportada do placar
- [ ] As correções não reabrem regressão no boot logo do `MSX2+`
- [ ] Evidência antes/depois registrada nos docs da issue e no `CHALLENGES.md`

## Checklist operacional
- [ ] Consolidar evidência atual dos dois sintomas
- [ ] Isolar o caminho de áudio residual do `UNKNOWN REALITY`
- [ ] Isolar o caminho do split/placar no `ZANAC EX`
- [ ] Corrigir os dois resíduos sem regressão no trabalho da `#238`
- [ ] Atualizar docs locais e issue remota com o veredito final

## Referências iniciais
- `docs/milestones/m11/238-fechar-boot-logo-msx2plus-precisao-core-v9958.md`
- `docs/handoff/238-fechar-boot-logo-msx2plus-precisao-core-v9958.md`
- `roms/games/disks/DEMOS/UNKNOWN1.DSK`
- referências de `ZANAC EX` já coletadas em runtime/handoff
- `third_party/bluemsx/`
- `third_party/V9958-Super/`
