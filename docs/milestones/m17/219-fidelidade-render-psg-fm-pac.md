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
- Tentativa validada e revertida:
  - ativar `NukeYKT` por padrão confirmou a hipótese de fidelidade, mas derrubou o frame pacing para ~31fps no hardware alvo;
  - por isso, o default global foi revertido nesta mesma rodada.
- Rodada seguinte:
  - com o pacing restaurado, o sintoma refinado passou a ser mascaramento do `PSG` quando `FM-PAC` está ativo no `Xevious`;
  - o renderer local do `PSG` permaneceu alinhado ao caminho mono do `blueMSX`, então o próximo suspeito passou a ser o ganho/timbre do `FM` simples.
- Corte incremental atual:
  - manter `NukeYKT` fora do default;
  - reduzir o ganho default do layer `FM` para `80%` e validar se o `PSG` reaparece sem regressão de performance.
- Rodada seguinte fechada no código:
  - o `FM-PAC` default sai do `YM2413` simples do `fMSX` e passa a usar um wrapper local do core `OpenMsxYM2413_2` (`blueMSX/openMSX`);
  - o `FM` deixa de passar pelo mixer genérico `SND_MELODIC` e ganha bus dedicado em `src/fmsx_local_sound.c`;
  - a rodada seguinte remove as compensações escondidas por chip (`PSG` e `SCC` em `100%`, `FM` nominal do `blueMSX`) e passa a aplicar a mesma curva `Harman-inspired` a `PSG/FM/SCC/SCC2`, com ganho unitário em todos os buses;
  - `load state` passa a reconstruir explicitamente o estado do `FM` a partir dos registradores `OPLL`, evitando divergência entre save-state e síntese real.
- Rodada de suporte ao pacing, fechada no kernel sem mudar contrato visual:
  - `BlitFmsxFrame()` passa a flushar o framebuffer por linha e largura exata, em vez de invalidar grandes áreas contínuas com padding de `pitch`;
  - scanlines duplicadas reaproveitam a linha já renderizada quando `dst_y` consecutivos mapeiam para o mesmo `src_y` e o mesmo `dim_mode`;
  - `FillRect565()` ficou mais barato para clears de letterbox;
  - `RefillAudioQueue()` limita refill não urgente quando o frame já está atrasado e a fila ainda está acima de `low_water`.
- Validação local da rodada:
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603270952-95155be`
  - `BUILD_ID: 957D`
- Feedback de hardware da rodada `957D`:
  - a estratégia piorou o pacing percebido no cenário real de `Scale` alto;
  - a `957D` deixa de ser baseline desta trilha.
- Rodada corretiva seguinte:
  - `RefillAudioQueue()` volta ao comportamento anterior, sem throttle especial para frame atrasado;
  - o flush do framebuffer vira híbrido: contíguo em retângulos largos, por linha apenas em faixas estreitas;
  - `CopyLine565()` passa a usar cópia packed local em vez de `memcpy()` genérico;
  - reaproveitamento de scanlines duplicadas e `FillRect565()` otimizado foram mantidos.
- Validação local da rodada corretiva:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271003-95155be`
  - `BUILD_ID: 04D3`
- Feedback de hardware da rodada `04D3`:
  - o rollback parcial piorou ainda mais o cenário;
  - a trilha experimental inteira foi descartada.
- Rodada seguinte:
  - `src/kernel.cpp` voltou integralmente ao baseline anterior a qualquer tentativa desta trilha de otimização;
  - `957D` e `04D3` permanecem apenas como referências de regressão.
- Validação local do rollback total:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271010-95155be`
  - `BUILD_ID: 26E3`
- Rodada seguinte:
  - em vez de nova otimização, o kernel ganhou instrumentação UART periódica controlada por `F10` para diferenciar gargalo de áudio (`AUDQ`) de gargalo de pacing/blit (`VIDP`);
  - a hipótese atual é que a queda não seja custo fixo do `Scale`, mas mudança de regime quando a gameplay entra.
- Validação local da rodada de instrumentação:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271023-95155be`
  - `BUILD_ID: 3E8F`
- Leitura do log `3E8F`:
  - a virada acontece em `00:00:57.23`, quando `VIDP` salta de regime estável para `C:2/2`, `S:8291/8604` e `B:9999/9999`;
  - a fila HDMI ainda segue cheia nessa janela, então a trilha de áudio não é a causa primária;
  - os sintomas de `AUDIOQ` aparecem depois, como dano secundário do loop já atrasado.
- Rodada seguinte:
  - sem mexer em pacing nem em política de refill, o kernel ganhou telemetria mais fina:
    - `AUDR` para quebrar `RefillAudioQueue()` em `audio_pull`, mistura local, `Write()` HDMI e frames sem retorno do backend;
    - `VIDB` para quebrar `BlitFmsxFrame()` em fetch/viewport, clears, mapa `x/y`, draw e flush;
    - `VIDP/VIDB` deixam de emitir amostra ociosa quando a emulação está pausada ou sem frame novo.
- Validação local da telemetria fina:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271100-95155be`
  - `BUILD_ID: 6A87`
- Feedback de hardware da `6A87`:
  - a build passou a travar no boot logo após `Boot step: init USB`;
  - a rodada de telemetria fina foi invalidada antes mesmo de chegar ao loop principal.
- Rodada corretiva:
  - removidos `AUDR` e `VIDB`;
  - `BlitFmsxFrame()` e `RefillAudioQueue()` voltam ao shape anterior da `3E8F`;
  - a investigação continua com `AUDQ` + `VIDP`, porque o diagnóstico já fechado do log `3E8F` continua útil: a queda entra em `step/blit` antes de aparecer no áudio.
- Validação local do rollback:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271109-95155be`
  - `BUILD_ID: 94FA`
- Leitura do log da `94FA`:
  - a quebra continua abrindo em `00:00:57.22`, com `VIDP` indo de regime normal para `C:2/2`, `L:9999/9999`, `S:~9.8ms` e `B:9999`;
  - a `AUDIOQ` ainda está cheia nessa transição e a ring seca só depois, confirmando que áudio continua sendo sintoma secundário.
- Rodada seguinte:
  - em vez de reabrir telemetria fina no kernel, a instrumentação foi movida para dentro de `fmsx_runtime_step_frame()`;
  - nova linha UART `VRTM` expõe:
    - steps pedidos;
    - frames concluídos;
    - slices usados;
    - custo do trecho `RunZ80`;
    - custo de `RenderAndPlayAudio()`;
    - samples enviados para render de áudio;
    - contagem de frames não fechados dentro do limite de slices.
- Validação local da rodada `VRTM`:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271125-95155be`
  - `BUILD_ID: 3F4D`
- Leitura de hardware da `3F4D`:
  - a queda continua abrindo perto de `00:00:54.21` e o pause de referência veio em `00:00:58.51`;
  - porém a telemetria `VRTM` ficou zerada em toda a captura, invalidando essa build para separar custo de `RunZ80` e `RenderAndPlayAudio()`.
- Correção seguinte:
  - o `kernel` passa a sincronizar `SetUartTelemetryEnabled(m_UartTelemetryEnabled)` ainda no boot, para que `VRTM` herde o estado efetivo de `F10` mesmo quando a UART já nasce ligada por default;
  - o ícone de `undervoltage` visto em campo passa a ser tratado como confounder real de performance, devendo ser verificado em paralelo com a nova captura.
- Validação local da correção:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271140-95155be`
  - `BUILD_ID: 93FE`

## Referências iniciais
- `src/fmsx_local_sound.c`
- `src/fmsx_local_ym2413.c`
- `third_party/fmsx/EMULib/AY8910.c`
- `third_party/fmsx/EMULib/YM2413.c`
- `third_party/openMSX/src/sound/`
- `third_party/bluemsx/blueMSX/Src/SoundChips/`
- `third_party/bluemsx/blueMSX/Src/SoundChips/OpenMsxYM2413_2.h`
- `third_party/bluemsx/blueMSX/Src/SoundChips/OpenMsxYM2413_2.cpp`
