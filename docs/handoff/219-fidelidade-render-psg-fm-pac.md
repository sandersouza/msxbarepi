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

## Atualização 2026-03-27 - Quebra fina do `RunZ80` e do `BlitFmsxFrame()`
- A captura seguinte com fonte/cabo estáveis confirmou que o sintoma não depende do aviso de `undervoltage`:
  - o ponto de quebra continua entrando com a mesma assinatura temporal;
  - `AUDQ` volta a degradar depois da queda, então o áudio permanece como efeito secundário.
- Leitura consolidada do log estável:
  - em torno de `00:00:54.21`, `VIDP` entra no regime ruim (`C:2/2`, `L:9999/9999`, `S:~9.8ms`, `B:9999`);
  - `VRTM` mostrou que `A:0/0` continua zerado e `SL:1/1` não sobe;
  - o custo que explode dentro do `step_frame()` é o `Z`, isto é, o slice único do `RunZ80`, e não `RenderAndPlayAudio()`.
- Corte implementado nesta rodada:
  - `src/fmsx_local/MSX.c` passa a contabilizar subfases reais do `RunZ80()` quando `F10` está ativo:
    - `PutImage()` -> bucket `P`;
    - `LoopVDP()` -> bucket `V`;
    - renderer VDP (`fmsx_vdp_render_scanline()` e `fmsx_vdp_render_screen4_partial()`) -> bucket `R`;
    - bloco especial de `ScanLine==192` -> bucket `L`;
  - `src/fmsx_runtime_step_frame()` passa a expor esses acumulados e também o residual de core puro (`C`), que corresponde ao custo do slice `RunZ80` depois de descontar `P/V/R/L`;
  - `src/kernel.cpp` volta a expor uma linha `VIDB`, agora sem tocar no boot path nem em pacing:
    - `P`: fetch do frame + viewport/box;
    - `C`: clears;
    - `M`: geração/atualização do mapa `x/y`;
    - `D`: draw/dim/scanlines;
    - `F`: flush.
- Objetivo operacional da nova captura:
  - fechar se o salto de `~9.8ms` está no core puro do `RunZ80`, no renderer VDP interno do `fMSX`, ou no draw/flush do `blit` do kernel.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603271215-c4dd79a`
  - `BUILD_ID: E0B5`
- Próxima captura esperada:
  - repetir o mesmo repro em hardware com `F10` ligado;
  - trazer `VIDP`, `VRTM`, `VIDB` e `AUDQ` 2 a 3 segundos antes/depois da quebra;
  - se possível, marcar o instante em que a gameplay entra e o ponto do pause de referência no log UART.

## Atualização 2026-03-27 - `screen 4` em `BG/SP` e draw do blit em `shade/write`
- A captura seguinte com fonte estável consolidou o recorte da build `E0B5`:
  - a quebra continua abrindo primeiro em `VIDP`, não em `AUDQ`;
  - no instante ruim, `VRTM` mostrou `C` e `R` maiores ao mesmo tempo;
  - `VIDB` mostrou `D` saturando, enquanto `P/C/M/F` permanecem pequenos.
- Decisão desta rodada:
  - aprofundar o diagnóstico só nas fatias que ainda estavam agregadas demais;
  - não tocar em pacing, boot, geometria, mixer ou política de áudio.
- Corte implementado:
  - `src/fmsx_local/Common.h` passa a separar o renderer de `screen 4` em:
    - `BG`: composição/background do `RefreshLine4()` / `RefreshLine4PlainRange()`;
    - `SP`: preparação de sprites via `ColorSprites()`;
  - `src/fmsx_runtime_step_frame()` agrega esses novos buckets em `VRTM`, mantendo `R` como total do renderer e `C` como residual do core;
  - `src/kernel.cpp` mantém `VIDB D` como custo total de draw, mas passa a expor `VIDD` com:
    - `S`: custo do preparo de shade/cache para `CRT dim`;
    - `W`: aproximação da escrita efetiva de pixels no framebuffer (`D-S`).
- Objetivo operacional:
  - fechar se a piora da gameplay vem mais do compositor `screen 4` (background ou sprites) ou do custo de escrita escalada no framebuffer;
  - evitar nova rodada de “otimização no escuro”.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272033-c4dd79a`
  - `BUILD_ID: 7EC4`
- Próxima captura esperada:
  - repetir o mesmo repro com `F10` ligado;
  - trazer `VIDP`, `VRTM`, `VIDB`, `VIDD` e `AUDQ` 2 a 3 segundos antes/depois da queda;
  - se possível, pausar logo depois da transição para manter uma âncora temporal no log.

## Atualização 2026-03-27 - Renderer ativo identificado como `SCREEN 5`
- A captura da build `7EC4` fechou um ponto importante do diagnóstico:
  - o primeiro degrau da quebra vem do blit do kernel (`VIDB D`/`VIDD W` saturam antes);
  - só no sample seguinte o `RunZ80` também sobe para o regime ruim;
  - `VIDD S` ficou zerado o tempo todo, então o custo do draw não está no `CRT dim`, mas na escrita real de pixels;
  - `BG/SP` permaneceram zerados, o que mostrou que o repro não passa pelo `RefreshLine4*()`.
- Correlação técnica adicional:
  - o caminho ativo desse caso é `ScrMode=5`, então o bucket `R` precisava ser aberto em `RefreshLine5()`, não em `screen 4`.
- Corte implementado nesta rodada:
  - `VRTM` agora expõe também `SM`, para o log UART carregar o `ScrMode` efetivo do frame;
  - `src/fmsx_local/Common.h` passa a instrumentar `RefreshLine5()` em dois buckets próprios:
    - `VRM5 B`: bitmap/background/composição;
    - `VRM5 S`: preparação de sprites via `ColorSprites()`;
  - o bucket `R` de `VRTM` continua como total do renderer, mas agora a próxima captura consegue dizer quanto dele vem especificamente do renderer de `SCREEN 5`.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272050-c4dd79a`
  - `BUILD_ID: 8367`
- Próxima captura esperada:
  - repetir o mesmo repro com `F10` ligado;
  - trazer `VIDP`, `VRTM`, `VRM5`, `VIDB`, `VIDD` e `AUDQ` 2 a 3 segundos antes/depois da quebra.

## Atualização 2026-03-27 - Separação do residual `C` entre CPU puro e callback `LoopZ80`

- A captura da build `8367` isolou dois fatos:
  - o primeiro degrau da quebra continua vindo do draw do blit;
  - dentro do `RunZ80`, o bucket `R` já foi suficientemente explicado pelo `VRM5`, então a incógnita real passou a ser o residual `C`.
- Hipótese desta rodada:
  - parte relevante do `C` pode não ser CPU puro do `RunZ80`, mas trabalho agregado dentro do callback `LoopZ80()` (teclado, manutenção periódica de áudio ou outros auxiliares do loop principal).
- Corte implementado nesta rodada:
  - `src/fmsx_local/MSX.c` agora cronometra o callback `LoopZ80()` como um todo e, dentro dele, separa explicitamente:
    - drenagem de teclado;
    - bloco periódico de manutenção de áudio;
    - callback total para posterior cálculo do residual;
  - `src/fmsx_runtime.c` / `src/fmsx_runtime.h` agregam isso em novos buckets de frame:
    - `loop_callback_us`;
    - `cpu_core_only_us = Z - loop_callback_us`;
    - `loop_audio_maint_us`;
    - `loop_keyboard_us`;
    - `loop_misc_us` como residual do callback;
  - `src/kernel.cpp` passa a expor a nova linha UART `VRCL`:
    - `LO`: custo total do callback `LoopZ80()`;
    - `CPU`: aproximação do CPU puro do `RunZ80()` fora do callback;
    - `AU`: manutenção periódica de áudio dentro do callback;
    - `KB`: drenagem de teclado;
    - `MI`: residual do callback após descontar os buckets já medidos.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272109-c4dd79a`
  - `BUILD_ID: D84F`
- Próxima captura esperada:
  - repetir o mesmo repro com `F10` ligado;
  - trazer `VIDP`, `VRTM`, `VRCL`, `VRM5`, `VIDB`, `VIDD` e `AUDQ` 2 a 3 segundos antes/depois da quebra.

## Atualização 2026-03-27 - Separação de `CPU` entre memória/IO e residual de execução

- A leitura da build `D84F` fechou o callback `LoopZ80()`:
  - no ponto ruim, `VRCL` mostrou `CPU` puro em torno de `7.5ms`, contra `LO` em torno de `2.2ms`;
  - dentro de `LO`, teclado (`KB`) e manutenção periódica de áudio (`AU`) permaneceram marginais;
  - o callback sobe principalmente junto com o renderer (`R`/`VRM5`), mas não explica o grosso do residual `C`.
- Conclusão operacional desta rodada:
  - a próxima pergunta deixou de ser "o callback pesa?" e passou a ser "o `CPU` puro está indo para fetch/read/write/portas ou sobra no loop de execução do core?".
- Corte implementado nesta rodada:
  - `src/fmsx_local/Z80.c` agora instrumenta o caminho de CPU puro diretamente no core:
    - `RdZ80()` / `OpZ80()` viram bucket `MR`;
    - `WrZ80()` vira bucket `MW`;
    - `InZ80()` vira bucket `IR`;
    - `OutZ80()` vira bucket `IW`;
  - `src/fmsx_runtime.c` / `src/fmsx_runtime.h` agregam esses buckets e calculam `EX` como residual de execução do core após descontar `MR/MW/IR/IW` de `CPU`;
  - `src/kernel.cpp` expõe duas novas linhas UART:
    - `VRIO MR/MW/IR`;
    - `VRIX IW/EX`.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272125-c4dd79a`
  - `BUILD_ID: 4E7B`
- Próxima captura esperada:
  - repetir o mesmo repro com `F10` ligado;
  - trazer `VIDP`, `VRTM`, `VRCL`, `VRIO`, `VRIX`, `VRM5`, `VIDB`, `VIDD` e `AUDQ` 2 a 3 segundos antes/depois da quebra.

## Atualização 2026-03-27 - Descarte da `4E7B` e troca para contadores de acesso de baixo overhead

- A captura da `4E7B` invalidou a abordagem de temporizar acessos no `Z80.c`:
  - o emulador já passou a nascer em `~34-38 FPS`, muito antes da gameplay;
  - `VIDP` entrou saturado desde os primeiros samples do boot;
  - `VRIO/VRIX` acabaram medindo o custo do próprio observador, não do gargalo real.
- Leitura consolidada dessa regressão:
  - a telemetria por timestamp em `RdZ80/WrZ80/InZ80/OutZ80` ficou invasiva demais para o hot path;
  - por isso, a build `4E7B` fica descartada para qualquer inferência de performance.
- Corte corretivo implementado nesta rodada:
  - `src/fmsx_local/Z80.c` voltou ao baseline anterior da `D84F`, sem cronômetro por acesso;
  - `src/fmsx_local/MSX.c` passou a contar acessos de baixo overhead em `RdZ80/WrZ80/InZ80/OutZ80`, mas só fora do callback `LoopZ80()`;
  - `src/fmsx_runtime.c` / `src/fmsx_runtime.h` agregam esses contadores por `step_frame()`;
  - `src/kernel.cpp` substitui `VRIO/VRIX` por uma única linha UART `VRCN`:
    - `MR`: leituras de memória/opcode;
    - `MW`: escritas de memória;
    - `IR`: leituras de portas;
    - `IW`: escritas de portas.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272139-c4dd79a`
  - `BUILD_ID: A8DE`
- Próxima captura esperada:
  - repetir o mesmo repro com `F10` ligado;
  - trazer `VIDP`, `VRTM`, `VRCL`, `VRCN`, `VRM5`, `VIDB`, `VIDD` e `AUDQ` 2 a 3 segundos antes/depois da quebra.

## Atualização 2026-03-27 - Descarte da `A8DE` e retorno ao baseline da `D84F`

- A leitura do log da `A8DE` mostrou uma regressão mais cedo do que o repro original:
  - o segundo boot da própria `A8DE` já nasceu lento desde os primeiros samples úteis;
  - com isso, a captura deixou de servir para investigar o choke de gameplay, porque o observador passou a contaminar o baseline do boot.
- Leitura consolidada dessa regressão:
  - mesmo sem timestamps por acesso, a trilha `VRCN` continuou invasiva o bastante para invalidar a build como instrumento de diagnóstico;
  - na prática, a última telemetria ainda confiável volta a ser a `D84F`.
- Corte corretivo implementado nesta rodada:
  - `src/fmsx_local/MSX.c` remove os contadores em `RdZ80/WrZ80/InZ80/OutZ80` e o estado auxiliar que os desarmava dentro de `LoopZ80()`;
  - `src/fmsx_runtime.c` / `src/fmsx_runtime.h` deixam de agregar/exportar os buckets de contagem por acesso;
  - `src/kernel.cpp` remove a linha UART `VRCN`, retornando ao pacote de telemetria da `D84F`;
  - `docs/debug-layer.md` volta a documentar somente `AUDQ`, `VIDP`, `VRTM`, `VRCL`, `VIDB`, `VIDD` e `VRM5` como telemetrias frequentes.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272150-c4dd79a`
  - `BUILD_ID: AAF9`
- Próxima captura esperada:
  - repetir o mesmo repro com `F10` ligado;
  - trazer `VIDP`, `VRTM`, `VRCL`, `VRM5`, `VIDB`, `VIDD` e `AUDQ` 2 a 3 segundos antes/depois da quebra.

## Atualização 2026-03-27 - Ativação de `CCPUThrottle` para fazer `fast=true` valer no Pi 3

- A captura da `AAF9` removeu `VRCN`, mas o boot continuou lento e o log ainda veio com `timer: SpeedFactor is 1.51`.
- Correlação técnica usada nesta rodada:
  - o `sdcard/cmdline.txt` já contém `fast=true`;
  - a documentação do Circle diz que, no Raspberry Pi 2/3/4/Zero, essa flag só tem efeito quando a classe `CCPUThrottle` existe no kernel; sem ela, o padrão é velocidade baixa.
- Corte implementado nesta rodada:
  - `src/kernel.h` passa a manter uma instância de `CCPUThrottle` no kernel, seguindo o padrão dos samples do Circle;
  - `src/kernel.cpp` registra um handler de `throttled state`, chama `m_CPUThrottle.Update()` no loop principal e adiciona uma linha UART de boot/runtime:
    - `CLK <fase> ARM:<mhz> CORE:<mhz> TEMP:<c> DYN:<0|1> RNG:<min>-<max> THR:<hex>`;
  - isso faz `fast=true` deixar de ser inerte e, ao mesmo tempo, expõe clock real e flags de cap/throttle do firmware no boot.
- Referência técnica usada:
  - `third_party/circle/include/circle/cputhrottle.h`
  - `third_party/circle/lib/cputhrottle.cpp`
  - `third_party/circle/doc/cmdline.txt`
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272207-c4dd79a`
  - `BUILD_ID: C367`
- Próxima captura esperada:
  - o boot deve mostrar `CLK BT1 ...`;
  - trazer esse trecho do boot junto com `timer: SpeedFactor is ...`;
  - se a hipótese estiver certa, o próximo boot deve subir com `ARM` no teto da faixa e `SpeedFactor` próximo do regime saudável anterior.

## Atualização 2026-03-27 - Leitura da `7E07`: o gargalo volta em gameplay, mas o clock ARM já caiu para `600MHz` muito antes disso

- A captura mais recente fechou a distinção entre gargalo de runtime e configuração de boot:
  - o boot entra saudável com `SpeedFactor is 3.03` e `CLK BT1 ARM:1200`;
  - o choke antigo continua abrindo em gameplay, por volta de `00:00:57.20`;
  - porém o `ARM` já cai de `1200MHz` para `600MHz` em `00:00:11.48` e permanece ali até a degradação.
- Leitura consolidada do log:
  - em `00:00:11.20`, ainda há `CLK F10 ARM:1200`, `VIDP F:60.8`, `Z:4655us`, `VIDB D:7209us`;
  - em `00:00:11.48`, o clock cai para `CLK F10 ARM:600`, mas o emulador continua saudável (`~59-60 FPS`, `Z ~4.6ms`, `VIDB D ~7.0-7.2ms`);
  - em `00:00:57.20`, já em `ARM:600`, o choke reabre: `VIDP S/B` saturam, `VRTM Z` vai para `~10ms`, `C` para `~8ms`, `VRM5` dobra e `VIDB D` volta a `9999`.
- Conclusão técnica desta rodada:
  - `sdcard/config.txt` não é o gatilho principal; ele já fixa `arm_freq=1200` e o boot de fato começa em `1200MHz`;
  - o problema de configuração está no `sdcard/cmdline.txt`: com `fast=true` e sem `socmaxtemp=...`, o `CCPUThrottle.Update()` do Circle aplica o default implícito `socmaxtemp=60`, exatamente na faixa de temperatura observada (`60-63C`);
  - isso derruba o ARM para `600MHz` cedo demais e deixa a emulação sem margem para a carga maior da gameplay.
- Corte implementado nesta rodada:
  - `sdcard/cmdline.txt` passa a incluir `socmaxtemp=75`, mantendo o governor do Circle ativo, mas removendo o downclock prematuro em `60C`;
  - `sdcard/config.txt` passa a usar `arm_freq=1100` e `arm_freq_min=900`, criando uma faixa dinâmica `900-1100` em vez de `600-1200`;
  - `sdcard/README.md` passa a tratar `cmdline.txt` e `config.txt` como recomendados para os defaults de áudio/clock usados no projeto.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272230-c4dd79a`
  - `BUILD_ID: C7F8`
- Referência técnica usada:
  - `third_party/circle/doc/cmdline.txt`
  - `third_party/circle/include/circle/cputhrottle.h`
  - `third_party/circle/lib/cputhrottle.cpp`

## Atualização 2026-03-27 - Core `RunZ80` restaurado ao baseline da branch; mantido apenas o corte de clock/config

- Depois de confirmar que o gatilho principal era a política de clock (`CCPUThrottle` + `config/cmdline`), a trilha de instrumentação profunda do core foi descartada.
- Rodada atual:
  - `src/fmsx_local/Common.h`, `src/fmsx_local/MSX.c`, `src/fmsx_runtime.c` e `src/fmsx_runtime.h` voltam ao estado do `HEAD` da branch;
  - `src/kernel.cpp` / `src/kernel.h` mantêm somente:
    - `CCPUThrottle`;
    - `CLK BT1/THR/F10`;
    - `AUDQ`, `VIDP` e `VRTM` básico.
  - as linhas profundas `VRCL`, `VRM5`, `VIDB` e `VIDD` saem do pacote ativo para tirar trabalho do hot path.
- Motivação:
  - o usuário reportou `Z80` acelerado e menor controle de teclado após as rodadas de investigação;
  - como o problema raiz já foi isolado no boot/clock, não faz sentido manter telemetria invasiva no caminho de emulação.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272243-c4dd79a`
  - `BUILD_ID: 1E0B`

## Atualização 2026-03-27 - UART desinstrumentada para baseline limpo de próximas fases

- Rodada atual:
  - a UART deixa de emitir os resumos periódicos de performance desta fase (`AUDQ`, `VIDP`, `VRTM`) e também não aciona mais as trilhas frequentes de `VDP/SCC/AUD/KMG`;
  - `F10` permanece reservado como toggle de `UART Log`, mas a fase atual não injeta mais telemetria de pacing/runtime no hot path;
  - permanecem apenas:
    - marcadores de boot `BT0..BT12`;
    - logs pontuais de runtime/configuração;
    - eventos críticos como `Throttle event` e `CLK BT1/THR`.
- Motivação:
  - preparar uma base de UART limpa para as próximas fases de debug, sem o ruído e o overhead das instrumentações temporárias desta issue.
- Build local desta rodada:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272246-c4dd79a`
  - `BUILD_ID: 38FF`

## Atualização 2026-03-27 - README documenta fase térmica, dissipação e fonte como pré-requisito de validação

- `README.md` passa a explicitar que, no Raspberry Pi 3B, fonte/cabo, dissipadores e ventilação fazem parte do ambiente de teste.
- O texto novo registra o padrão observado nesta investigação:
  - sintomas térmicos ou de alimentação podem parecer regressão de emulação;
  - o ARM pode cair de frequência em carga sustentada;
  - gameplay mais pesada expõe o problema antes de qualquer conclusão de software.
- Objetivo:
  - reduzir falso positivo de bug em futuras fases de debug;
  - deixar a recomendação já visível no onboarding do projeto, sem depender do histórico da issue.

## Atualização 2026-03-27 - Leitura da `C367`: boot saudável, choke antigo preservado e throttle do firmware ainda suspeito

- A captura da `C367` mudou o quadro de forma útil:
  - o boot voltou ao regime saudável de entrada, com `SpeedFactor is 3.03`;
  - o gameplay ainda degrada quase no mesmo ponto de sempre, em `00:00:57.17`;
  - então o problema de runtime original continua existindo, mas o baseline de boot melhorou.
- Leitura consolidada do log:
  - até `00:00:56.87`, o frame fica em `~59.6-60.1 FPS`, com `Z ~4.8-5.1ms`, `R ~0.93-1.11ms` e `VIDB D ~7.0-7.2ms`;
  - em `00:00:57.17`, o choke reabre no mesmo padrão das capturas anteriores:
    - `VIDP S` salta para `~9.7ms`;
    - `VRTM Z` sobe para `~9.7ms`, com `C ~7.8ms` e `R ~1.86ms`;
    - `VRM5` dobra para `B ~1.5ms` e `S ~0.18ms`;
    - `VIDB D` volta a saturar.
  - o áudio segue vindo depois como consequência, e não como causa primária.
- Ponto novo que continua em aberto:
  - logo na entrada do loop principal, o kernel registrou `Throttle event: MIXED state=0x00050000`;
  - a linha `CLK THR` seguinte veio `THR:00050005`, ou seja, o firmware reportou bits ocorridos e também bits correntes;
  - ao mesmo tempo, `CLK BT1` ainda mostrou `ARM:600 CORE:400`, o que não bate de forma limpa com o `SpeedFactor 3.03`.
- Corte implementado na sequência:
  - `src/kernel.cpp` passa a forçar `CPUSpeedMaximum` explicitamente após `BT1`;
  - a linha `CLK` também passa a ser emitida no pacote periódico do `F10`, para correlacionar `ARM/CORE/THR` com o instante exato da queda de FPS.
- Próxima captura esperada:
  - repetir o mesmo repro com `F10` ligado;
  - trazer `CLK`, `VIDP`, `VRTM`, `VRCL`, `VRM5`, `VIDB`, `VIDD` e `AUDQ`;
  - o alvo é fechar se o clock/throttle muda junto do choke em `~57s` ou se o gargalo é puramente de renderer/blit/core.

## Atualização 2026-03-27 - `Scanline CRT` passa a dividir cada linha do MSX em metade normal e metade escurecida

- Ajuste aplicado no renderer do viewport:
  - o modo `CRT` deixa de tratar a linha escurecida como efeito uniforme por linha de destino do framebuffer;
  - agora, para cada linha fonte do MSX expandida verticalmente, a metade superior do grupo permanece em brilho normal e a metade inferior recebe o dim de `85%`.
- Implementação:
  - `src/kernel.cpp` agora decide o `dark_crt` pela posição da linha de destino dentro do grupo de linhas que mapeia para o mesmo `src_y`;
  - `src/tools/render/viewport_screenshot.cpp` espelha exatamente a mesma regra para manter screenshot e viewport consistentes.
- Intenção:
  - alinhar a semântica do `CRT` ao espaço das linhas do MSX, e não à paridade global do framebuffer/mailbox;
  - manter um split aproximado de `50/50` entre parte normal e parte escurecida em cada linha expandida.

## Atualização 2026-03-27 - `CRT` ganha cantos arredondados no viewport para simular tubo

- Ajuste aplicado:
  - o modo `CRT` agora mascara os cantos do viewport do emulador com um rounded-rect discreto, usando o próprio `letterbox` preto ao redor;
  - o raio é derivado do tamanho do viewport e fica limitado para evitar exagero em escalas pequenas.
- Implementação:
  - `src/kernel.cpp` aplica o mask diretamente no framebuffer ao final do blit do viewport, tanto no path RGB565 quanto no fallback com `SetPixel`;
  - `src/tools/render/viewport_screenshot.cpp` aplica o mesmo rounded-rect no screenshot do viewport, para o frame de pausa manter exatamente a mesma geometria visual.
- Objetivo:
  - dar ao modo `CRT` uma leitura mais próxima de tubo de televisão sem alterar o enquadramento, o scale nem os outros modos de scanline.

## Atualização 2026-03-27 - Geometria do viewport estabilizada para parar o topo do `CRT` de “respirar”

- Sintoma reportado em hardware:
  - após os cantos arredondados, a borda superior do `CRT` parecia entrar/sair entre frames, enquanto a inferior permanecia visualmente estável.
- Causa tratada:
  - o backend `fMSX` pode variar `src_h` conforme `LastScanline`/overscan;
  - isso fazia `ComputeViewportBox()` recalcular a altura do viewport com pequenas oscilações frame a frame, deslocando principalmente a leitura visual do topo.
- Ajuste aplicado:
  - `src/kernel.cpp` agora normaliza a altura usada para layout do viewport em buckets canônicos estáveis (`243/256` e equivalentes doubled `486/512` para hi-res) antes de calcular `dst_height`, `box_y` e o raio do `CRT`.
- Objetivo:
  - manter o contorno e o posicionamento do viewport estáveis durante a gameplay, sem mexer no conteúdo amostrado do frame.

## Atualização 2026-03-27 - `CRT` passa a levantar levemente o preto para cinza escuro

- Ajuste aplicado:
  - no modo `CRT`, pixels `RGB565=0x0000` dentro do viewport do emulador deixam de sair em preto absoluto e passam a ser renderizados com um cinza muito escuro;
  - o `letterbox` externo e a máscara preta dos cantos arredondados permanecem em preto puro.
- Implementação:
  - `src/kernel.cpp` aplica um `black lift` local antes do write no viewport do `CRT`;
  - a LUT de dim de `85%` do `CRT` também passa a respeitar esse mesmo piso para preto;
  - `src/tools/render/viewport_screenshot.cpp` espelha exatamente a mesma regra.
- Objetivo:
  - simular a claridade residual de um tubo CRT sem lavar o restante da imagem e sem alterar os modos `DES` e `LCD`.

## Atualização 2026-03-27 - Box arredondado do `CRT` passa a ser latched por geometria real

- Sintoma residual em hardware:
  - mesmo após o bucket mais agressivo de `src_h`, a borda do `CRT` ainda alternava ocasionalmente entre arredondada e mais “quadrada”.
- Causa tratada:
  - o viewport ainda era recalculado frame a frame;
  - pequenas oscilações internas de geometria podiam trocar o retângulo usado pelo mask do `CRT`, mesmo sem mudança visual real de modo ou enquadramento.
- Ajuste aplicado:
  - `src/kernel.cpp` agora mantém o box do `CRT` travado enquanto a chave de layout permanecer igual:
    - largura lógica da fonte;
    - bucket de altura do `CRT` (`256/512`);
    - resolução da tela;
    - overscan;
    - widescreen.
- Validação local:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603272341-c4dd79a`
  - `BUILD_ID: AA12`
- Objetivo:
  - fazer o contorno arredondado mudar apenas quando houver alteração real de geometria, eliminando o “square/rounded flicker” residual.

## Atualização 2026-03-28 - `CRT` ganha histerese de box para matar o flicker residual do topo

- Sintoma reportado em hardware:
  - mesmo com o latch por geometria, o topo do `CRT` ainda alternava ocasionalmente entre leitura arredondada e mais “quadrada”.
- Causa tratada:
  - o backend ainda podia sugerir microvariações de `1-2px` no box calculado;
  - essas oscilações são pequenas demais para representar mudança real de enquadramento, mas suficientes para a borda superior “piscar”.
- Ajuste aplicado:
  - `src/kernel.cpp` agora aplica histerese ao box do `CRT`;
  - enquanto o candidato novo permanecer dentro de uma janela de tolerância de `2px` em `x/y/w/h`, o runtime reaproveita o box arredondado anterior.
- Validação local:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603281427-c4dd79a`
  - `BUILD_ID: F4B7`
- Objetivo:
  - absorver jitter residual do viewport sem congelar mudanças reais de geometria.

## Atualização 2026-03-28 - Clamp de escala do `CRT` passa a seguir o aspect ratio final, não a largura variável do frame

- Hipótese tratada:
  - mesmo com bucket e histerese, o `CRT` ainda podia oscilar quando o backend variava a largura reportada do frame;
  - no modo `CRT`, isso não deveria influenciar o box visual, porque a apresentação final já é sempre calculada em `4:3` ou `16:9`.
- Ajuste aplicado:
  - `src/kernel.cpp` agora calcula o `max_scale_percent` do `CRT` a partir do aspect ratio final do viewport;
  - com isso, a limitação de altura/largura do box deixa de depender da largura momentânea que veio do frame fonte.
- Objetivo:
  - impedir que variações de `src_width` ou de clamp em overscan alterem o contorno arredondado quando a caixa visual do `CRT` deveria permanecer fixa.

## Atualização 2026-03-28 - Moldura do `CRT` passa a ficar totalmente congelada por família de layout

- Sintoma residual em hardware:
  - mesmo com bucket, histerese e clamp por aspect ratio, a borda ainda podia alternar entre leitura mais curva e mais quadrada.
- Ajuste aplicado:
  - `src/kernel.cpp` deixa de aceitar qualquer microvariação intra-família no box do `CRT`;
  - enquanto `layout_src_h` (`256/512`), resolução da tela, overscan e widescreen não mudarem, o box arredondado reaproveita exatamente o mesmo retângulo.
- Validação local:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603281436-c4dd79a`
  - `BUILD_ID: 5986`
- Objetivo:
  - separar de vez a moldura visual do `CRT` das oscilações frame a frame reportadas pelo backend.

## Atualização 2026-03-28 - Última tentativa: topo do `CRT` ganha um pequeno bezel interno fixo

- Sintoma remanescente:
  - a base da moldura já estava estável, mas o topo ainda alternava entre leitura mais curva e mais “quadrada”.
- Ajuste aplicado:
  - `src/kernel.cpp` reforça a máscara do `CRT` com um pequeno cap interno só nas primeiras linhas do viewport;
  - `src/tools/render/viewport_screenshot.cpp` espelha exatamente o mesmo desenho para manter o frame de pausa coerente com a tela.
- Validação local:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603281441-c4dd79a`
  - `BUILD_ID: 2EA5`
- Objetivo:
  - fazer a leitura da curva superior depender da própria moldura, e não do conteúdo que encosta nas primeiras linhas do frame.

## Atualização 2026-03-28 - Borda arredondada removida do `CRT`

- Resultado em hardware:
  - mesmo após bucket de altura, latch por geometria, histerese, clamp por aspect ratio e bezel superior, a borda do `CRT` continuou instável no topo.
- Decisão:
  - remover completamente a moldura arredondada em vez de continuar acumulando heurísticas visuais.
- Ajuste aplicado:
  - `src/kernel.cpp` deixa de aplicar qualquer máscara/arredondamento no viewport `CRT`;
  - `src/tools/render/viewport_screenshot.cpp` deixa de aplicar o rounded mask no screenshot do viewport;
  - o `CRT` mantém os demais efeitos já aprovados:
    - split `50/50` por linha do MSX;
    - `black lift` discreto do preto interno;
    - geometria/enquadramento atuais.
- Validação local:
  - `./scripts/check-third-party-pristine.sh` OK
  - `make -j4` OK
  - artefatos gerados: `artifacts/kernel8-default.img` e `artifacts/kernel8-issue219.img`
  - `BUILD_HASH: c4dd79a-c4dd79a6001d7446bd09b3a57945eef798a76b56`
  - `BUILD_BID: 202603281449-c4dd79a`
  - `BUILD_ID: FCF3`
- Objetivo:
  - preservar a qualidade do efeito `CRT` sem o flicker visual do contorno arredondado.

## Atualização 2026-03-28 - `CRT` volta a compartilhar o mesmo box pixel-perfect de `OFF/LCD`

- Sintoma residual em hardware:
  - mesmo sem a borda arredondada, o viewport ainda ficava levemente maior no modo `CRT` do que nos modos `OFF` e `LCD`.
- Ajuste aplicado:
  - `src/kernel.cpp` deixa de usar bucket de altura, clamp de escala e latch exclusivos do `CRT` para o cálculo do viewport;
  - `OFF`, `LCD` e `CRT` passam a usar o mesmo `NormalizeViewportSourceHeight()` e o mesmo `ComputePixelScaleMaxPercent()` para resolver a caixa do emulador;
  - o estado morto do latch antigo do `CRT` foi removido de `src/kernel.h`.
- Resultado esperado:
  - o tamanho do mailbox/viewport fica idêntico entre os três modos de scanline em qualquer `Scale`, preservando a mesma proporção pixel-perfect;
  - o `CRT` mantém apenas o tratamento visual interno (`split 50/50` por linha do MSX e `black lift`), sem alterar geometria.

## Atualização 2026-03-28 - `KANJI.ROM` vira toggle real no menu `DEBUG`

- Necessidade desta rodada:
  - facilitar A/B do boot screen do `MSX2+` sem rebuild, ativando ou desativando a `KANJI.ROM` direto pelo menu `DEBUG`.
- Ajuste aplicado:
  - o item `DEBUG -> KANJI ROM [ON/OFF]`, que antes só alternava flag no `kernel`/UI, passa a atuar no runtime do `fMSX`;
  - `src/fmsx_local/MSX.c` guarda a base da `KANJI.ROM` carregada em separado;
  - `src/fmsx_runtime.c` ganha setter/getters para ligar/desligar a ROM em tempo de execucao, preservando a blob carregada quando existir;
  - `src/kernel.cpp` sincroniza o estado efetivo com o menu no boot, no load de settings e no toggle em runtime;
  - ajuste seguinte: o item volta a ser sempre navegavel no `DEBUG`; quando a `KANJI.ROM` nao existir, `Enter` apenas registra indisponibilidade em vez de o cursor pular a linha.
- Resultado esperado:
  - o usuario consegue testar `KANJI ROM ON/OFF` diretamente do menu `DEBUG` para investigar o boot screen do `MSX2+`;
  - sem `KANJI.ROM` presente, o item permanece visivel mas nao induz toggle falso.

## Atualização 2026-03-28 - `Boot Screen OFF` deixa de remover `KANJI.ROM` do initramfs

- Causa raiz encontrada:
  - o toggle do menu `DEBUG` ja estava correto no runtime, mas o `msx.cpio` embarcado continuava sem `KANJI.ROM`;
  - o filtro de `scripts/make-initramfs.sh` ainda removia `KANJI*.ROM` junto com `KANJIBASIC*.ROM` quando `Boot Screen` estava `OFF`.
- Ajuste aplicado:
  - `scripts/make-initramfs.sh` passa a preservar `KANJI*.ROM` mesmo com `Boot Screen OFF`;
  - apenas `KANJIBASIC*.ROM` continua sendo removido nesse modo, para manter o boot path do `MSX2+` limpo;
  - `scripts/README.md` e `docs/debug-layer.md` foram alinhados com a nova semantica.
- Resultado esperado:
  - `DEBUG -> KANJI ROM [ON/OFF]` finalmente passa a alternar de verdade quando o set de ROMs incluir `KANJI.ROM`;
  - o A/B do boot screen do `MSX2+` deixa de depender de rebuild manual do `msx.cpio`.

## Atualização 2026-03-28 - Toggle `KANJI ROM` passa a cortar tambem o mapeamento japones do `MSX2+`

- Sintoma em hardware:
  - mesmo com a `KANJI.ROM` preservada no `msx.cpio`, o item `DEBUG -> KANJI ROM [ON/OFF]` ainda nao produzia um efeito pratico no boot path do `MSX2+`.
- Causa provavel:
  - desligar apenas o ponteiro `Kanji` cortava o porto `D9h`, mas o perfil `MSX2+` continuava com `KANJIBASIC` e `MSX-JE` mapeados nos slots de boot japones.
- Ajuste aplicado:
  - `src/fmsx_runtime.c` passa a aplicar o mesmo estado do toggle tambem sobre os mapas `MemMap[3][1][2..5]` (`KANJIBASIC`) e `MemMap[0][3][0..7]` (`MSX-JE`) quando o modelo ativo e `MSX2+`;
  - ao religar, o runtime restaura os mesmos blobs ja carregados, sem rebuild;
  - ao desligar, o runtime substitui essas faixas por `EmptyRAM`.
- Resultado esperado:
  - o toggle deixa de afetar so a fonte `KANJI.ROM` e passa a produzir um A/B real do caminho japones do `MSX2+`;
  - para observar o boot screen, o fluxo continua sendo alternar o item e executar `Reset`.
