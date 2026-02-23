# M1.2 - Audio HDMI (Plano de Integracao)

Objetivo: implementar backend de audio HDMI no `msxbare` reutilizando a fila `audio_pcm`, sem alterar o core fMSX.

## Estado atual

- `audio_pcm` ja entrega PCM (`s16`, mono) do frontend fMSX.
- Backend `P2/PWM` esta funcional para audio basico.
- Backend `HDMI` foi separado como scaffold (`src/audio_out_hdmi.c`) e ainda nao produz som.

## Referencias consultadas (Circle)

Uso conceitual / referencia de registradores e sequenciamento (nao copiar codigo diretamente):

- `third_party/circle/include/circle/sound/hdmisoundbasedevice.h`
- `third_party/circle/lib/sound/hdmisoundbasedevice.cpp`
- `third_party/circle/include/circle/bcm2835.h`
- `third_party/circle/include/circle/dmacommon.h`

## Arquitetura alvo no msxbare

1. `fmsx_frontend.c`
   - continua gerando PCM por `WriteAudio()`
   - continua escrevendo na fila `audio_pcm`
2. `audio_out_hdmi.c`
   - consome `audio_pcm`
   - converte PCM para framing IEC958 (quando necessario)
   - envia para HDMI MAI via DMA
3. `Makefile`
   - seleciona backend por `AUDIO_BACKEND=hdmi`

## Etapas tecnicas (proximas)

1. Inicializacao minima MAI/HDMI (sem DMA) e deteccao de display com audio.
2. Polling write de samples (smoke test HDMI).
3. DMA cyclic para `RegMaiData` consumindo blocos da `audio_pcm`.
4. Ajuste de clock/sample rate (48kHz) e frame pacing de audio.
5. Validacao em hardware + comparacao com P2.

## Criterio de aceite desta trilha

- `artifacts/kernel8-audio-hdmi-test.img` inicializa sem regressao de video/boot
- audio audivel via HDMI em 48kHz
- P2 permanece funcional como backend alternativo
