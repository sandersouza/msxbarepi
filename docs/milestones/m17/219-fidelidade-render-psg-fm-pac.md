# Issue #219 - Melhorar fidelidade de render PSG/FM-PAC no backend local

- URL: https://github.com/sandersouza/msxbarepi/issues/219
- Milestone: FIX: Minor Issues / Other Issues (m17)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:feature`, `area:audio`, `area:audiochip`, `area:emulation`

## Objetivo
Abrir uma trilha separada para melhorar a fidelidade de render do `PSG` e do `FM-PAC` no backend local, sem contaminar a milestone ativa de `SCC/SCC+`.

## Contexto
- A correção estrutural recente do renderer `SND_WAVE` em `src/fmsx_local_sound.c` resolveu o caso crítico de inteligibilidade de voz no caminho `SCC/SCC+`.
- Essa correção não se aplica diretamente ao `PSG` e ao `FM-PAC`, porque hoje eles usam caminhos diferentes:
  - `PSG`: `SND_MELODIC` / `SND_NOISE` via `AY8910`
  - `FM-PAC`: `SND_MELODIC` no caminho simples do `YM2413`, ou pipeline separado quando `NukeYKT` está ativo
- O voicing `Harman-inspired` aprovado pelo usuário melhorou o balanço global, mas não substitui fidelidade de síntese/render.
- Faz sentido tratar `PSG/FM-PAC` como trilha paralela de qualidade, com baseline e critérios próprios, fora da milestone de `SCC+`.

## Escopo técnico
- Comparar o render atual de `PSG` e `FM-PAC` com referências (`openMSX`, `blueMSX` quando aplicável).
- Identificar gaps no caminho de síntese local para:
  - transientes
  - resposta espectral
  - envelopes
  - ruído/artefatos de stepping
  - consistência entre caminho `YM2413` simples e `NukeYKT`
- Definir se a próxima iteração deve atacar:
  - renderer de `PSG`
  - renderer simples de `FM-PAC`
  - mixer final/voicing
  - ou combinação pequena e incremental desses pontos
- Preservar o baseline aprovado do `SCC/SCC+`; esta issue não pode reabrir regressão no trabalho da milestone `Melhorias audio cart SCC/SCC+`.

## Fora de escopo
- Corrigir a voz `START!` do `Space Manbow 2`
- Alterar topologia de cartucho `SCC+`
- Reabrir mudanças de `boot screen`, `VDP` ou timing global

## DoR
- [ ] Capturas A/B ou baseline auditivo definidos para `PSG` e `FM-PAC`
- [x] Referências `openMSX` / `blueMSX` mapeadas para os chips alvo
- [x] Escopo da primeira iteração fechado sem conflitar com a milestone `SCC/SCC+`

## DoD
- [x] Gaps de fidelidade documentados por chip (`PSG` e `FM-PAC`)
- [x] Plano técnico da primeira iteração fechado com alvo claro de implementação
- [ ] Sem regressão no mix aprovado atual de `SCC/SCC+`
- [ ] Espelho local e issue remota sincronizados

## Rodada atual
- Diagnóstico inicial fechado com `Xevious` como caso reprodutor de `PSG + FM-PAC`.
- Conclusão: o problema principal não estava no `PSG`; o `FM-PAC` default ainda seguia o core simples do `fMSX`, que ignora instrumentos e `user tone`.
- Primeiro corte escolhido:
  - ativar `NukeYKT` por padrão no backend local;
  - preservar mixer/voicing aprovados;
  - deixar a análise fina do `PSG` para a próxima rodada, se ainda houver gap audível após o corte do `FM-PAC`.

## Referências iniciais
- `src/fmsx_local_sound.c`
- `src/fmsx_local_ym2413.c`
- `third_party/fmsx/EMULib/AY8910.c`
- `third_party/fmsx/EMULib/YM2413.c`
- `third_party/openMSX/src/sound/`
- `third_party/bluemsx/blueMSX/Src/SoundChips/`
