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
- [ ] Gap analysis da #214 concluida.
- [ ] Baseline do `SMANBOW2` preservado para comparacao A/B.
- [ ] Estrategia de logs UART validada para nao causar slowdown.

## DoD
- [ ] Voz `START!` audivel no inicio do jogo.
- [ ] Musica/SFX SCC sem regressao perceptivel.
- [ ] Sem stall novo causado por SCC/SCC+.
- [ ] Sem flood de UART e sem alterar `third_party`.
- [ ] Referencias usadas registradas na documentacao/handoff.

## Referencias obrigatorias
- `third_party/openMSX/src/sound/SCC.*`
- `third_party/openMSX/src/sound/MSXSCCPlusCart.*`
- `third_party/bluemsx/blueMSX/Src/Memory/romMapperMegaFlashRomScc*.c`
