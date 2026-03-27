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

## Atualização 2026-03-27 - FM BlueMSX default e mix neutro
- O `FM-PAC` default saiu do core simples do `fMSX` e passou a usar um renderer dedicado baseado em `blueMSX/openMSX`:
  - wrapper local: `src/fmsx_local_ym2413_bluemsx.cpp`
  - core de referência compilado sem tocar `third_party`: `third_party/bluemsx/blueMSX/Src/SoundChips/OpenMsxYM2413_2.cpp`
- O `src/fmsx_local_ym2413.c` foi mantido como fronteira de compatibilidade com o runtime/save-state do `fMSX`, mas a geração real de PCM agora vem do core dedicado:
  - `user tone` (`0x00..0x07`) e instrumentos reais (`0x30..0x38`) passam a existir no caminho default;
  - o `Sync2413()` local deixa de alimentar o mixer genérico via `Sound()` para evitar duplicação/mascaramento de notas.
- O `src/fmsx_local_sound.c` passou a:
  - remover o `FM` do caminho genérico `SND_MELODIC`;
  - renderizar o `FM` em bus próprio via `RenderFmToMix()`;
  - neutralizar o post-EQ por bus (`PSG/FM/SCC`) e remover o boost específico do `SCC secundário`, para deixar a equalização final mais uniforme entre chips.
- O runtime agora reidrata explicitamente o core `FM` após `load state` com `fmsx_local_ym2413_refresh(&OPLL)`, evitando divergência entre registradores salvos e síntese real.
- Risco residual conhecido:
  - a compatibilidade funcional do `YM2413` melhorou estruturalmente, mas ainda falta validação em hardware para calibrar o patamar final de loudness percebido entre `FM/SCC/PSG` e confirmar se o sintoma de notas faltando desapareceu nos casos de mistura real (`Xevious` e outros).
- Build local desta rodada:
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_BID: 202603270203-95155be`
- Referências usadas nesta rodada:
  - `third_party/bluemsx/blueMSX/Src/SoundChips/OpenMsxYM2413_2.h`
  - `third_party/bluemsx/blueMSX/Src/SoundChips/OpenMsxYM2413_2.cpp`
  - `third_party/bluemsx/blueMSX/Src/SoundChips/YM2413.cpp`
  - `third_party/bluemsx/blueMSX/Src/SoundChips/AudioMixer.c`

## Atualização 2026-03-27 - Curva Harman unificada e volume nominal igual entre chips
- Feedback após a migração do `FM` dedicado:
  - ainda havia percepção de `PSG` subindo sobre `FM` ou vice-versa;
  - o problema residual deixou de ser compatibilidade estrutural do `YM2413` e passou a ser consistência de loudness/voicing entre buses.
- Corte técnico desta rodada:
  - remover compensações escondidas por chip:
    - `PSG` local volta a `100/100` para melódico e ruído;
    - `SCC` local volta a `100%` no ganho bruto;
    - metadados do `FM` local deixam de aplicar atenuação extra (`100/100`);
  - restaurar o volume nominal do core `YM2413` do `blueMSX` no wrapper local (`32767 * 9 / 10`, sem o redutor adicional de `80%`);
  - aplicar a mesma curva `Harman-inspired` a todos os buses sintetizados (`PSG/FM/SCC/SCC2`) com um low-shelf comum de `+16%`;
  - manter ganho unitário comum (`100%`) em todos os buses, inclusive `SCC2`, para eliminar boosts assimétricos no mixer final.
- Resultado esperado:
  - `PSG`, `FM-PAC` e `SCC` passam a compartilhar o mesmo referencial de volume nominal e a mesma assinatura tonal no pós-mix;
  - qualquer ajuste fino futuro deixa de depender de correções escondidas dentro de cada chip e passa a ser visível no estágio de mix.
- Base de referência usada para calibrar o alvo:
  - `third_party/bluemsx/blueMSX/Src/Emulator/Properties.c`
    - `PSG = 100`
    - `SCC = 100`
    - `MSXMUSIC = 95`
  - decisão local desta rodada: alinhar os geradores ao patamar nominal do `blueMSX` e usar `100%` uniforme no nosso mixer final, para não manter viés residual entre chips.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603270214-95155be`
  - `BUILD_ID: 1F65`
- Validação em hardware ainda pendente:
  - `Xevious` para `PSG + FM`
  - algum caso com `FM + SCC + PSG` simultâneos
  - confirmar se o equilíbrio ficou estável sem notas sumindo quando os três buses disputam headroom.

## Atualização 2026-03-27 - Otimização leve de vídeo/framebuffer/pacing sem mudar `Scale`
- Feedback após a equalização de áudio:
  - ao aumentar `Scale`, o hardware passou a mostrar uma queda pequena porém perceptível de frame rate, suficiente para dar sensação de jogo lento;
  - a exigência desta rodada foi preservar o enquadramento atual, sem desacoplar `Scale` de overscan e sem introduzir novos toggles visuais.
- Corte técnico implementado no kernel:
  - `BlitFmsxFrame()` mantém o mapa `x/y` atual, mas deixa de flushar o viewport inteiro por faixa contínua e passa a usar flush por linha com largura exata escrita, evitando custo no padding de `pitch`;
  - o scaler agora reaproveita a linha já pronta quando dois `dst_y` consecutivos apontam para o mesmo `src_y` com o mesmo `dim_mode` (`OFF/LCD/CRT`), evitando refazer o mapeamento horizontal nas scanlines duplicadas;
  - `FillRect565()` foi reescrito para preencher a primeira linha e replicá-la nas demais, reduzindo o custo dos clears de letterbox;
  - `RefillAudioQueue()` ganhou um guardrail: quando o loop principal já está atrasado no deadline do frame e a fila de áudio ainda está acima do `low_water`, o refill não urgente fica limitado a um batch curto por iteração para não roubar tempo do vídeo durante catch-up.
- Invariantes preservadas:
  - nenhuma mudança na semântica de `Scale`, `Widescreen`, `Scanline` ou `resolution`;
  - nenhum ajuste em síntese dos chips, sample rate, tamanho de ring ou timing de emulação nesta rodada;
  - nenhuma alteração direta em `third_party`.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603270952-95155be`
  - `BUILD_ID: 957D`
- Validação em hardware ainda pendente:
  - repetir o repro com `Scale=250` e `Scale=450`;
  - testar `Scanline=OFF` e o modo de scanline do repro atual;
  - smoke opcional em `LCD` e `CRT`;
  - observar se a queda de ~5 FPS desaparece sem introduzir borda suja, regressão visual ou piora de `underrun/short pull/trim`.

## Atualização 2026-03-27 - Correção após regressão de pacing na build `957D`
- Feedback de hardware recebido após a build `957D`:
  - a estratégia da rodada anterior piorou o cenário de pacing em vez de aliviar;
  - a build `957D` não deve ser tratada como novo baseline de performance.
- Hipótese técnica adotada para o rollback parcial:
  - o throttle de `RefillAudioQueue()` quando o frame já estava atrasado provavelmente aumentou a frequência de refill em batches curtos, elevando o custo total do áudio no loop principal;
  - o flush por linha aplicado também a retângulos largos do framebuffer pode ter ficado mais caro no Raspberry Pi 3B do que o flush contíguo antigo, apesar de evitar o padding do `pitch`.
- Corte corretivo implementado:
  - `RefillAudioQueue()` volta ao comportamento anterior, sem limitação especial para frame atrasado;
  - `FlushDCacheRect565()` vira híbrido:
    - retângulos largos usam flush contíguo;
    - faixas estreitas continuam com flush por linha e largura exata;
  - `CopyLine565()` deixa de usar `memcpy()` genérico e passa a fazer cópia packed local em palavras de `32 bits`;
  - foram mantidos os pontos que continuam defensáveis nesta trilha:
    - reaproveitamento de scanlines duplicadas;
    - `FillRect565()` baseado em preencher/copiar linha.
- Build local desta rodada corretiva:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271003-95155be`
  - `BUILD_ID: 04D3`
- Próximo passo obrigatório:
  - repetir exatamente o repro que expôs a piora da `957D`;
  - se o pacing ainda estiver pior do que o baseline anterior, o próximo corte deve remover também o reaproveitamento de scanline e voltar a perfis A/B menores em vez de manter otimização composta.

## Atualização 2026-03-27 - Rollback total da trilha experimental de vídeo/pacing
- Feedback de hardware recebido após a build `04D3`:
  - o rollback parcial piorou ainda mais o cenário;
  - a trilha experimental inteira foi considerada inválida no hardware alvo.
- Decisão técnica desta rodada:
  - remover integralmente do `kernel` todos os cortes introduzidos para essa tentativa de otimização;
  - voltar exatamente ao comportamento anterior ao primeiro experimento, sem flush híbrido, sem flush por linha, sem reaproveitamento de scanlines duplicadas e sem `FillRect565()` reescrito.
- Estado final do código após o rollback:
  - `src/kernel.cpp` volta ao baseline anterior desta trilha de performance;
  - `957D` e `04D3` ficam registradas apenas como builds regressivas, sem valor de baseline.
- Build local do rollback puro:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271010-95155be`
  - `BUILD_ID: 26E3`
- Critério de uso desta build:
  - comparar `26E3` diretamente contra o último baseline bom conhecido antes da minha intervenção no `kernel`;
  - se o comportamento voltar ao normal, a trilha de otimização deve ser reiniciada do zero com medição por corte único, e não com múltiplas mudanças acopladas.

## Atualização 2026-03-27 - Instrumentação UART para `AUDIOQ` e pacing de vídeo
- Novo sintoma trazido do hardware:
  - o FPS permanece estável mesmo em `Scale` máximo até certo ponto da execução e só cai alguns frames quando a gameplay realmente entra;
  - isso desloca a investigação de "custo fixo de `Scale`" para "mudança de regime" em runtime.
- Decisão desta rodada:
  - não tocar em otimização do `kernel`;
  - reativar telemetria UART controlada por `F10` para observar `AUDIOQ` e pacing de vídeo no momento da transição.
- Implementação no `kernel`:
  - `LogAudioQueueUart()` voltou a emitir uma linha periódica `AUDQ` (~250ms) com:
    - fila HDMI atual/mínima/capacidade;
    - hits de `low_water`;
    - nível/pico da ring de áudio;
    - último pull retornado/solicitado;
    - drops, trim, short-pull, underrun;
    - custo do `RefillAudioQueue()` no último loop e pico da janela;
  - novo `LogVideoPacingUart()` emite uma linha `VIDP` (~250ms) com:
    - fps atual;
    - catch-up do último loop e pico;
    - quantidade de vezes em que o loop bateu no teto de catch-up;
    - atraso bruto em microssegundos no último loop e pico;
    - média/pico do erro de pacing já existente;
    - custo do `emulator_backend_step_frame()` e do `BlitFmsxFrame()` (último/pico).
  - a janela de picos é reiniciada ao togglar `F10` e ao resetar o runtime, para não carregar lixo entre cenários.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271023-95155be`
  - `BUILD_ID: 3E8F`
- Procedimento de captura esperado:
  - habilitar `F10`;
  - reproduzir o momento exato em que a gameplay começa e o FPS cai;
  - trazer o trecho UART com as linhas `AUDQ` e `VIDP` imediatamente antes e depois da transição.

## Atualização 2026-03-27 - Diagnóstico do log `3E8F` e telemetria fina de vídeo/áudio
- O log UART capturado em `/tmp/msx2p-boot-serial.log` fechou o primeiro diagnóstico temporal da queda:
  - a transição forte acontece em `00:00:57.23`;
  - até `00:00:56.95`, o pacing ainda está normal (`F:59.9`, `C:0/1`, `S:4028`, `B:7305`) com a fila HDMI cheia (`Q:5760/3840/5760`);
  - em `00:00:57.23`, o loop entra em regime atrasado de uma vez (`C:2/2`, `L:1097/9999`, `S:8291/8604`, `B:9999/9999`);
  - só depois a trilha de áudio começa a mostrar dano secundário (`R:0/8251`, `P:0/128`, e `low_water` real em `00:00:59.41`).
- Conclusão técnica desta rodada:
  - a queda não começa na `AUDIOQ`;
  - o gargalo primário entra primeiro em `emulator_backend_step_frame()` e/ou `BlitFmsxFrame()`;
  - o áudio passa a sofrer depois porque o loop principal já está perdendo o deadline.
- Corte implementado no `kernel`, sem alterar política de pacing nem geometria:
  - `AUDQ` foi mantida como visão de fila/ring;
  - nova linha `AUDR` abre o `RefillAudioQueue()` em:
    - `audio_pull`;
    - mistura/conversão local;
    - `Write()` HDMI;
    - frames preenchidos sem áudio retornado do backend;
  - nova linha `VIDB` abre o `BlitFmsxFrame()` em:
    - fetch do frame + cálculo de viewport;
    - clears de letterbox/box antiga;
    - geração do mapa `x/y`;
    - draw/dim/scanlines;
    - flush de framebuffer;
  - `VIDP` e `VIDB` deixam de emitir amostra quando a emulação está pausada ou sem frame novo na janela, para não repetir o último sample ativo como se fosse telemetria nova.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271100-95155be`
  - `BUILD_ID: 6A87`
- Próximo procedimento de captura:
  - habilitar `F10`;
  - reproduzir a queda até a gameplay;
  - trazer a janela UART com `AUDQ`, `AUDR`, `VIDP` e `VIDB` 2 a 3 segundos antes/depois da transição.

## Atualização 2026-03-27 - Rollback da telemetria fina após regressão de boot
- Feedback de hardware da build `6A87`:
  - a imagem deixou de concluir o boot em campo, travando logo após `Boot step: init USB`;
  - como o travamento acontece antes do loop principal, a rodada de telemetria fina ficou invalidada para continuação da investigação.
- Decisão técnica desta rodada:
  - desfazer integralmente a instrumentação extra introduzida na `6A87`;
  - voltar ao baseline conhecido que já havia bootado em hardware, mantendo apenas:
    - `AUDQ` para fila/ring de áudio;
    - `VIDP` para pacing geral de vídeo.
- Estado atual do código:
  - removidos `AUDR` e `VIDB`;
  - `BlitFmsxFrame()` e `RefillAudioQueue()` voltam ao shape da `3E8F`, sem a quebra interna por subfase;
  - a investigação do gargalo continua válida no nível já provado pelo log `3E8F`: a queda abre em `step_frame/blit` antes de o áudio secar.
- Build local do rollback:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271109-95155be`
  - `BUILD_ID: 94FA`
- Situação operacional:
  - `6A87` fica descartada por regressão de boot;
  - a nova build de recuperação deve ser comparada primeiro só pelo boot, antes de voltar à captura do pacing em gameplay.

## Atualização 2026-03-27 - Instrumentação interna do `fmsx_runtime_step_frame()`
- Leitura consolidada dos logs `3E8F` e `94FA`:
  - a queda continua abrindo no mesmo ponto, por volta de `00:00:57.22`, quando `VIDP` salta para `C:2/2`, `L:9999/9999`, `S:~9.8ms` e `B:9999`;
  - a fila HDMI ainda está cheia nessa transição e a ring de áudio só seca depois, então o gargalo primário segue antes da `AUDIOQ`;
  - o próximo corte seguro precisava separar `RunZ80` de `RenderAndPlayAudio()` sem reabrir o boot path do kernel.
- Corte implementado nesta rodada:
  - `fmsx_runtime_step_frame()` agora mede internamente:
    - steps pedidos no call;
    - frames realmente concluídos;
    - pico de slices `RunZ80()` usados no call;
    - custo do trecho de CPU/emulação até o frame fechar;
    - custo de `RenderAndPlayAudio()`;
    - quantidade de samples enviados para `RenderAndPlayAudio()`;
    - quantas vezes o runtime não conseguiu fechar frame dentro do limite de slices desde o último log.
  - o kernel passa a expor isso em uma nova linha UART `VRTM`, mantendo `AUDQ` e `VIDP` inalteradas;
  - o estado dessa telemetria segue o mesmo toggle de `F10`;
  - a janela é resetada em `start`, `shutdown`, `load state`, toggle de `F10` e após cada emissão UART, para não carregar lixo entre cenários.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271125-95155be`
  - `BUILD_ID: 3F4D`
- Próxima captura esperada:
  - habilitar `F10`;
  - reproduzir até a queda de velocidade;
  - trazer a janela UART com `VIDP`, `VRTM` e `AUDQ` imediatamente antes e depois da transição.

## Atualização 2026-03-27 - Correção do armamento de `VRTM` no boot
- A captura de hardware da build `3F4D` mostrou um defeito na própria telemetria nova:
  - o slowdown continuou reproduzível;
  - mas todas as linhas `VRTM` ficaram zeradas (`ST/FR/SL/Z/A/N/M = 0`), então a build não serve para separar `RunZ80` de `RenderAndPlayAudio()`.
- Causa identificada:
  - o runtime só recebia `fmsx_runtime_set_frame_perf_telemetry_enabled()` quando o usuário alternava `F10`;
  - quando a UART já subia habilitada por default, o `kernel` não sincronizava esse estado no boot e o `fmsx_runtime_step_frame()` seguia com a telemetria desarmada.
- Corte corretivo desta rodada:
  - o `kernel` passa a chamar `SetUartTelemetryEnabled(m_UartTelemetryEnabled)` ainda no boot, depois de montar o estado do menu e antes de entrar na trilha de runtime;
  - com isso, `AUDQ`, `VIDP` e `VRTM` passam a compartilhar o mesmo estado efetivo de `F10` já desde a primeira janela de logs, sem exigir toggle manual pós-boot.
- Observação operacional importante:
  - o ícone de `undervoltage` relatado no Raspberry Pi 3B é um fator externo real e pode causar throttling/instabilidade; ele não invalida a necessidade da telemetria, mas contamina qualquer conclusão final sobre gargalo de software enquanto a alimentação não estiver estável.
- Build local desta rodada corretiva:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: 95155be-95155be3a7fd865c8f478ae9965b14750866da0a`
  - `BUILD_BID: 202603271140-95155be`
  - `BUILD_ID: 93FE`
