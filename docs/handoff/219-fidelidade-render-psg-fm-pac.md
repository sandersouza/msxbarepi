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
- A tentativa de tornar `NukeYKT` o caminho default do `FM-PAC` confirmou o diagnóstico de fidelidade, mas abriu regressão grave de performance em hardware (`V` caiu para ~31fps no `Xevious` em Raspberry Pi 3B).
- Decisão técnica desta rodada:
  - `NukeYKT` nao pode ser o default global da `#219` no hardware alvo atual;
  - o baseline volta ao caminho anterior para restaurar o frame pacing;
  - o proximo corte precisa focar em alternativa incremental: seletor opcional de core FM, otimização do caminho `NukeYKT`, ou melhoria do `YM2413` simples sem custo de 2x no frame time.
- Invariantes mantidas:
  - não tocar em `SCC/SCC+`;
  - não tocar em `VDP`/timing global;
  - não reabrir a trilha do `Knightmare Gold`.

## Atualização 2026-03-25 - PSG mascarado quando FM está ativo
- Após o revert do `NukeYKT` default, o pacing geral voltou ao normal na build `96EB`.
- Feedback de hardware no `Xevious`:
  - performance normal restaurada;
  - o áudio ainda parece "faltar canais" no `PSG` quando o `FM-PAC` está ativo.
- Varredura técnica desta rodada:
  - o renderer dedicado do `PSG` em `src/fmsx_local_sound.c` continua alinhado ao caminho mono do `blueMSX` (`sampleVolume[3] -> ctrlVolume -> daVolume`);
  - o write path do `AY8910` local em `src/fmsx_local_ay8910.c` continua equivalente ao upstream;
  - o próximo suspeito deixou de ser o `PSG` e passou a ser o `FM-PAC` simples mascarando o mix final:
    - o `YM2413` simplificado continua sem instrumentos reais;
    - o ganho default do layer `FM` ainda estava em `100%`.
- Corte incremental adotado:
  - manter `NukeYKT` fora do default;
  - reduzir o ganho default do layer `FM` para `80%`;
  - não tocar em `PSG`, `SCC`, `VDP` ou timing global.
- Build desta rodada:
  - `BUILD_HASH: 4a54cb9-947feee84427a6890b5bafe3623677d4e27d4047`
  - `BUILD_BID: 202603251145-issue219-fm-default-80`
  - `BUILD_ID: 0A5D`

## Atualização 2026-03-27 - Boot phases e rename do cfg
- A base atual voltou a expor fases de boot na UART via `BT0..BT12`, cobrindo:
  - logger/timer
  - storage/FatFs
  - carga de config
  - initramfs/runtime
  - screen/backend
  - overlay/USB/main loop
- O arquivo de configuracao canonico passou a ser `SD:/msxbarepi.cfg`.
- Compatibilidade de leitura preservada:
  - primeiro `SD:/msxbarepi.cfg`
  - fallback para `SD:/MSXBARE.CFG`
- Gravacao continua sempre no arquivo canonico novo.
