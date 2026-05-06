# [P2][BUG] HIRES/interlaced ainda degrada em 1080p com Scale 4x

Issue remota: #243
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/243
Estado remoto: CLOSED em 2026-05-04

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
- [x] `HIRES/interlaced` atinge `~60 FPS` ou o máximo tecnicamente viável com evidência clara do gargalo residual
- [x] A correção não reabre regressão visual/funcional no boot logo do `MSX2+`
- [x] `Scale 1x..Nx` continua estável e previsível
- [x] Evidência antes/depois registrada nos docs da issue e no `CHALLENGES.md`

## Checklist operacional
- [x] Consolidar baseline de FPS em `1080p + 4x`
- [x] Isolar o custo residual do presenter/render path em `HIRES/interlaced`
- [x] Comparar com as referências já usadas na `#238`
- [x] Aplicar otimização sem regressão funcional
- [x] Atualizar docs locais e issue remota com o veredito final

## Solução final

Resolvido pela separação explícita entre o framebuffer HDMI padrão e o framebuffer runtime dinâmico:

- `Overscan OFF`: Circle permanece em framebuffer fixo `640x480`; o presenter desenha o MSX em escala inteira `2x` dentro desse framebuffer, preservando a imagem estável e evitando o custo de `1080p + Scale 4x` no caminho normal.
- `Overscan ON`: Circle passa a usar framebuffer dinâmico calculado como `area_fonte_ativa*2`; para a mailbox fMSX padrão isso resulta em `544x456`, e para modos com outra área ativa o framebuffer acompanha o modo sem escala fracionária.
- Menu F12: continua usando `640x480`; ao voltar para o runtime, o modo de display é reaplicado conforme `Overscan OFF/ON`, evitando ficar preso no framebuffer temporário do menu.
- O gargalo residual deixou de ser tratado como renderização `1080p + 4x`; o custo agora fica limitado à escala inteira `2x` sobre a área ativa real do modo.

Arquivos/documentação relevantes:

- `src/kernel.cpp`
- `src/combo_screen_device.cpp`
- `docs/debug-layer.md`

## Veredito

A solução fecha o resíduo de performance da #243 sem reabrir a trilha funcional do boot logo `MSX2+`: `Overscan OFF` mantém o caminho conservador em `640x480`, enquanto `Overscan ON` oferece o caminho dinâmico para ocupar a área ativa do modo sem pagar o custo anterior de `1080p + Scale 4x`.

## Referências iniciais
- `docs/milestones/m11/238-fechar-boot-logo-msx2plus-precisao-core-v9958.md`
- `docs/handoff/238-fechar-boot-logo-msx2plus-precisao-core-v9958.md`
- `src/kernel.cpp`
- `src/combo_screen_device.cpp`
- `src/fmsx_local/Wide.h`
- `third_party/bluemsx/`
