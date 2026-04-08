# [P2][BUG] HIRES/interlaced ainda degrada em 1080p com Scale 4x

Issue remota: #243
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/243

## Descrição

## Problema
Depois da estabilização funcional do boot logo do `MSX2+`, do presenter e da política de viewport/scale, ainda sobrou um resíduo específico de performance:

- em `1080p` com `Scale 4x`, modos `HIRES/interlaced` continuam abaixo de `60 FPS`
- no último corte validado em hardware, `Screen 7 / HIRES` ficou em média de `~53 FPS`
- em resoluções menores e escalas menores, o comportamento já voltou ao esperado

Isso indica que o gargalo remanescente não é mais o core principal da emulação, e sim o custo residual do presenter/render path em cenários high-res/interlaced grandes.

## Contexto
- A `#238` fechou os bugs principais do boot logo do `MSX2+`, inclusive o desvio visual dependente do pacing do Z80.
- O presenter local já voltou para single-buffer por padrão e o `Scale` voltou a ser numérico.
- O último corte local ainda recuperou parte do custo do viewport grande com:
  - fast path para escalas físicas inteiras exatas
  - flush de dirty rect sem varrer padding invisível entre linhas
- Mesmo assim, o alvo de `60 FPS` em `1080p + 4x` para `HIRES/interlaced` ainda não foi atingido.

## Objetivo
Fechar o resíduo de performance de `HIRES/interlaced` em `1080p + 4x`, sem reabrir os bugs funcionais já resolvidos na `#238`.

## Escopo técnico
- Medir e isolar o custo residual no path de apresentação/renderização de:
  - `Screen 7 / HIRES`
  - modos interlaced/high-res equivalentes
- Comparar o custo local entre:
  - presenter atual
  - renderer wide/high-res
  - referências do `blueMSX`
- Buscar otimizações de baixo risco, por exemplo:
  - fast paths adicionais para mailbox grande
  - menor custo de flush/cópia em viewport centralizado
  - reuso/caching de linhas e blocos em cenários de escala inteira

## Fora de escopo
- Reabrir a correção funcional do boot logo do `MSX2+`
- Reabrir problemas já segregados em `#242`
- Reintroduzir `Scale [MAX]` ou novos modos especiais de viewport

## DoR
- [x] `#238` estabilizou funcionalmente boot logo, presenter e política de scale
- [x] O resíduo foi reproduzido em hardware com valor observável (`~53 FPS` em `1080p + 4x`)
- [x] Milestone correta definida como `FIX: Minor Issues / Other Issues`

## DoD
- [ ] `HIRES/interlaced` atinge `~60 FPS` ou o máximo tecnicamente viável com evidência clara do gargalo residual
- [ ] A correção não reabre regressão visual/funcional no boot logo do `MSX2+`
- [ ] `Scale 1x..Nx` continua estável e previsível
- [ ] Evidência antes/depois registrada nos docs da issue e no `CHALLENGES.md`

## Checklist operacional
- [ ] Consolidar baseline de FPS em `1080p + 4x`
- [ ] Isolar o custo residual do presenter/render path em `HIRES/interlaced`
- [ ] Comparar com as referências já usadas na `#238`
- [ ] Aplicar otimização sem regressão funcional
- [ ] Atualizar docs locais e issue remota com o veredito final

## Referências iniciais
- `docs/milestones/m11/238-fechar-boot-logo-msx2plus-precisao-core-v9958.md`
- `docs/handoff/238-fechar-boot-logo-msx2plus-precisao-core-v9958.md`
- `src/kernel.cpp`
- `src/combo_screen_device.cpp`
- `src/fmsx_local/Wide.h`
- `third_party/bluemsx/`
