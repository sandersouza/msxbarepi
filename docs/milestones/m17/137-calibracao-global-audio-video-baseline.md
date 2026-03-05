# Issue #137 - Calibracao global de audio e video (A/V tuning baseline)

- URL: https://github.com/sandersouza/msxbarepi/issues/137
- Milestone: FIX: Minor Issues / Other Issues (m17)
- Estado remoto: OPEN
- Prioridade: P2
- Labels: `priority:P2`, `type:performance`, `area:video`, `area:audio`

## Atualização registrada (2026-03-05)

### Calibrações aplicadas na branch de trabalho (#76)
- FM (build-time):
  - `COMBO_FMSX_FMPAC_BALANCE_PCT`: `92 -> 100`
  - `COMBO_FMSX_FMPAC_ATTENUATION_PCT`: `58 -> 70`
- Pipeline final de áudio (runtime):
  - `AudioGainEffectivePct`: legado `0..30` -> `0..100`
  - `COMBO_FMSX_AUDIO_TARGET_PEAK`: `6000 -> 12000`
  - `COMBO_FMSX_AUDIO_GAIN_MAX`: `8 -> 16`
  - `m_AudioClipMaxRuntime`: `16000 -> 28000`
  - ganho do usuário aplicado antes do clip final

### Método A/B definido para continuidade
1. Mesmo jogo/cena/configuração (captura de 20-30s em `48kHz`).
2. Capturas pareadas: `emulador.m4a` e `referencia.m4a`.
3. Snapshot de `AC1/AC2` em gameplay normal e explosão.
4. Análise com `ffmpeg`/`ffprobe` + métricas de pico/RMS/crest e bandas.
5. Alinhamento temporal por correlação de envelope RMS.
6. Iterar um conjunto pequeno de knobs por vez e registrar hash da build.

### Evidência resumida (até agora)
- Emulador ainda abaixo da referência em loudness integrado (~2dB).
- Picos/transientes ainda abaixo (~12dB).
- Espectro com excesso de grave e falta de médios (200-1kHz).
