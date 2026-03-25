# Handoff - Branch 219-fidelidade-render-psg-fm-pac

Data: 2026-03-25
Base: `main`
Issue: #219 (melhorar fidelidade de render PSG/FM-PAC no backend local)

## Objetivo da iteração
- Mapear o estado atual do render local de `PSG` e `FM-PAC`.
- Comparar o pipeline local com as referências `openMSX` e `blueMSX`.
- Fechar o alvo da primeira iteração sem reabrir regressão na trilha de `SCC/SCC+`.

## Estado inicial da branch
- Branch criada a partir de `main` já com o merge do PR `#226`.
- Issue remota `#219` está em `In progress` no projeto `MSX BarePI`.
- Espelho local da issue já existe em:
  - `docs/milestones/m17/219-fidelidade-render-psg-fm-pac.md`

## Escopo técnico inicial
- Revisar:
  - `src/fmsx_local_sound.c`
  - `src/fmsx_local_ym2413.c`
  - `third_party/fmsx/EMULib/AY8910.c`
  - `third_party/fmsx/EMULib/YM2413.c`
  - `third_party/openMSX/src/sound/`
  - `third_party/bluemsx/blueMSX/Src/SoundChips/`
- Preservar invariantes:
  - não reabrir regressões de `SCC/SCC+`
  - não contaminar a trilha de `Knightmare Gold`
  - não mexer em `boot screen`, `VDP` ou timing global fora de necessidade comprovada

## Próximo passo
- Fazer o gap analysis do renderer local de `PSG` e `FM-PAC` contra as referências e decidir o primeiro corte de implementação.

## Gap analysis fechado
- O `PSG` local não mostrou um gap estrutural equivalente ao sintoma relatado em `Xevious`.
- O `FM-PAC` local ainda estava no core simples do `fMSX` por padrão.
- Evidência objetiva no código local:
  - `src/fmsx_local_ym2413.c` ignora o nibble de instrumento em `0x30..0x38`;
  - `src/fmsx_local_ym2413.c` não suporta `user tone` em `0x00..0x07`.
- Isso bate diretamente com o sintoma de "instrumentos faltando" em trilhas `PSG + FM`.
- Referências `openMSX` e `blueMSX` usam cores completos de `YM2413`, inclusive com suporte real a patches/user instrument.

## Primeiro corte de implementação
- Tornar `NukeYKT` o caminho default do `FM-PAC` no backend local.
- Manter o mixer atual e o voicing Harman aprovados, sem mexer no `PSG` nesta rodada.
- Preservar invariantes:
  - não tocar em `SCC/SCC+`;
  - não tocar em `VDP`/timing global;
  - não reabrir a trilha do `Knightmare Gold`.
