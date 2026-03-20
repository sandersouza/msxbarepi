# [P0] Implementar core SCC/SCC+ compativel para sample streaming do `Space Manbow 2`

Milestone remota: #24
Issue remota: #215

## Objetivo
Atualizar o core local de SCC/SCC+ para reproduzir corretamente a voz sintetizada `START!` do `Space Manbow 2`, mantendo o baseline estavel atual do `SMANBOW2`.

## Escopo tecnico
- Portar para codigo local o comportamento necessario de SCC/SCC+ a partir das referencias.
- Separar claramente chip SCC/SCC+ de comportamento de mapper/cartucho.
- Ajustar:
  - read/write window;
  - SCC vs SCC+ mode/enable;
  - wave RAM e aliases validos;
  - deformation/mode registers;
  - caminho de sample streaming observado no `START!`.
- Adicionar logs UART agregados e debug-gated para:
  - mudanca de modo SCC/SCC+;
  - bursts de wave RAM;
  - writes de frequencia/volume;
  - hits no caminho da rotina `START!`.

## DoR
- [x] Gap analysis da #214 concluida.
- [x] Baseline do `SMANBOW2` preservado para comparacao A/B.
- [ ] Estrategia de logs UART validada para nao causar slowdown.

## DoD
- [ ] Voz `START!` audivel no inicio do jogo.
- [ ] Musica/SFX SCC sem regressao perceptivel.
- [ ] Sem stall novo causado por SCC/SCC+.
- [x] Sem flood de UART e sem alterar `third_party`.
- [x] Referencias usadas registradas na documentacao/handoff.

## Implementacao em andamento
- `src/fmsx_local_scc.c` recebeu a primeira rodada de port do comportamento de `openMSX`/`blueMSX`, sem alterar a struct publica `SCC` do fMSX.
- Mudancas ativas nesta branch:
  - modos locais `Compatible` e `Plus`;
  - treatment correto da janela wave/freq-volume/deformation;
  - `deformation register` com mascaramento de bit7 fora de `Real`;
  - frequencia efetiva usando `(period + 1)` e mute para `period <= 8`;
  - volume aplicado imediatamente no backend local;
  - reset do contador de wave quando ha write de frequencia;
  - equalizacao SCC reduzida para ficar mais proxima de PSG/FM-PAC;
  - `Sound.c` migrado para copia local (`src/fmsx_local_sound.c`) para permitir voicing do bus SCC sem alterar `third_party`;
  - voicing `Harman-inspired` aplicado por bus (`PSG`, `FM-PAC`, `SCC`) como low-shelf suave, substituindo o reforco anterior dependente da frequencia da nota.
- O teste com `GRADIUS1E.ROM` tambem fechou uma lacuna estrutural do audio:
  - `src/fmsx_audio_layout.h` abriu o layout para `25` canais totais;
  - `src/fmsx_compat/EMULib.h` + `src/fmsx_compat/Sound.h` garantem que o build real use `SND_CHANNELS=25`;
  - isso corrige o caso em que o segundo `SCC+` existia no core, mas nao entrava no mixer final.
- O caminho `Manbow2` em `src/fmsx_local/MSX.c` foi preservado, sem reabrir o problema de janela do SCC.

## Validacao local mais recente
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1`: OK
- `BUILD_HASH:910d31c-e5e75ad868e6f41146d7c95d8db43e2a84e279d5`
- `BUILD_BID:202603201917-910d31c`
- `BUILD_ID (TXTDBG): B777`

## Ajuste estrutural posterior: `SND_WAVE`
- A comparacao de capturas reais entre `OpenMSX` e `MSXBarePI` mostrou que a diferenca restante de voz nao era apenas de ganho/EQ, mas de articulacao espectral.
- Causa localizada no renderer generico `SND_WAVE` em `src/fmsx_local_sound.c`:
  - o caminho herdado do fMSX simplesmente abandonava a reproducao quando a taxa efetiva de avancar a waveform ultrapassava um limite (`K < 0x8000`);
  - isso degrada exatamente o uso de voz/sample em `SCC+`.
- Correcao aplicada:
  - substituicao do renderer por acumulador de fase `Q16`;
  - suporte a avancar mais de um byte de waveform por amostra de saida sem mutar o canal;
  - melhoria estrutural valida para todo uso de `SND_WAVE`, inclusive `PSG` e `FM-PAC` se esses caminhos vierem a usar wave playback mais rapido.

## Referencias obrigatorias
- `third_party/openMSX/src/sound/SCC.*`
- `third_party/openMSX/src/sound/MSXSCCPlusCart.*`
- `third_party/bluemsx/blueMSX/Src/Memory/romMapperMegaFlashRomScc*.c`
