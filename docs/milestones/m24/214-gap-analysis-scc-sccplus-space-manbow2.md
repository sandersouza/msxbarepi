# [P0] Fechar gap analysis SCC/SCC+ vs `openMSX`/`blueMSX` usando `Space Manbow 2`

Milestone remota: #24
Issue remota: #214

## Objetivo
Congelar o baseline estavel atual do `SMANBOW2`, localizar o caminho real da voz `START!` e fechar uma matriz objetiva de diferencas entre o SCC/SCC+ local e as referencias `openMSX`/`blueMSX` antes de mexer no core.

## Escopo tecnico
- Identificar o ponto canonico do baseline estavel do `SMANBOW2` para retorno seguro.
- Comparar o SCC/SCC+ local com `openMSX` e `blueMSX` em:
  - janela de read/write;
  - enable SCC vs SCC+;
  - wave RAM e aliases;
  - deformation/mode registers;
  - comportamento esperado para sample streaming.
- Cruzar os achados com os disassemblies locais do `Space Manbow 2` para isolar a rotina da voz `START!`.
- Definir a instrumentacao UART minima necessaria para validar a hipotese sem flood.

## DoR
- [x] Baseline estavel atual do `SMANBOW2` identificado e documentado.
- [x] Referencias `openMSX`, `blueMSX` e disassemblies locais acessiveis.
- [x] Plano de logs UART direcionados definido.

## DoD
- [x] Matriz de gaps SCC/SCC+ fechada e documentada.
- [x] Rotina/alvo do `START!` localizada no disassembly.
- [x] Lista exata de mudancas no core local definida para a issue seguinte.
- [x] Sem alterar `third_party`.

## Baseline canonico
- Baseline de retorno seguro para `SMANBOW2`:
  - ancora tecnica de boot/VDP: rollback para a base `cf021ce`, conforme consolidado em [176-fix-msx2p-boot-screen-slow.md](/Users/sandersouza/Developer/msxbarepi/docs/handoff/176-fix-msx2p-boot-screen-slow.md);
  - ancora funcional de `Manbow2/SCC`: ajustes locais da `#201` reaplicados em `src/fmsx_local/MSX.c` para manter `MAP_MANBOW2` preso a `9800h-9FFFh` e sem latch `SCC+` em `B000h`;
  - evidencia de hardware preservada: build `7003` (`BUILD_HASH:68fd7fb-ab9f9bec237dc017c77bc8f3665a3b7b4ab6a19a`, `TXTDBG BUILD:7003`), reportada como estavel por ~30 min em [201-space-manbow2-crash-audio-start.md](/Users/sandersouza/Developer/msxbarepi/docs/handoff/201-space-manbow2-crash-audio-start.md).
- Regra de continuidade:
  - qualquer trabalho da `#215` deve preservar esse baseline de `Manbow2` e evitar reabrir experimentos de `VDP`, `boot screen` ou pacing fora do caminho estritamente necessario para SCC/SCC+.

## Diagnostico consolidado

### 1. O core SCC local ainda e praticamente o fMSX minimo
- `src/fmsx_local_scc.c` difere de `third_party/fmsx/EMULib/SCC.c` apenas por um balanceamento de ganho (`kSccBalancePct=98`).
- Isso significa que o core local ainda nao modela o conjunto de comportamento observado nas referencias modernas:
  - modos distintos `Real`, `Compatible` e `Plus`;
  - semantica efetiva do `deformation/mode register`;
  - rotacao/read-only das waveforms;
  - diferenca de acesso a waveform 5 entre SCC compativel e SCC+;
  - semantica de `freq/volume` sensivel a sample streaming.

### 2. O runtime/menu atual nao representa um cartucho SCC real
- O estado `scc_cart` hoje e apenas um gate de mixer em `src/fmsx_runtime.c`:
  - `g_scc_cart_enabled` so mascara/desmascara os canais SCC em `fmsx_runtime_apply_audio_channels()`.
- Consequencia:
  - o item de menu atual `Konami SCC` nao modela presenca de cartucho, janela de memoria, modo `SCC/SCC+` ou um segundo cartucho;
  - essa mudanca fica corretamente reservada para a `#216`.

### 3. O mapper `Manbow2` atual esta no trilho certo e deve ser preservado
- Em `src/fmsx_local/MSX.c`:
  - `fmsx_scc_window_match()` restringe `MAP_MANBOW2/MAP_MANBOW2_2` a `9800h-9FFFh`;
  - `fmsx_konami5_bank_write(..., scc_plus_enable)` impede latch `SCC+` por write em `B000h` no `Manbow2`;
  - o caminho `Manbow2` continua encaminhando writes da janela SCC tambem para a Flash/mapper, alinhado com `RomManbow2` do openMSX e `romMapperMegaFlashRomScc.c` do blueMSX.
- Conclusao:
  - o problema remanescente da voz `START!` nao aponta para falta de `SCC+` no `Manbow2`;
  - o alvo principal migra para a semantica do chip SCC e para o caminho de sample streaming.

## Matriz de gaps SCC/SCC+

| Area | Core local | openMSX / blueMSX | Gap para `START!` |
| --- | --- | --- | --- |
| Modo de chip | `ReadSCC` / `ReadSCCP` e `WriteSCC` / `WriteSCCP` sem modelo formal de modo | `Real`, `Compatible`, `Plus` | Falta distinguir SCC comum de SCC+ no proprio chip |
| Waveform 5 | Espelhamento simplificado de writes de ch4->ch5 | `Compatible`: wave5 so e lida em `0xA0..0xBF`; `Plus`: wave5 read/write em `0x00..0x9F` | Falta a semantica correta de wave5 |
| Freq/volume | Atualizacao direta e imediata | `setFreqVol()` em openMSX e `sccUpdateFreqAndVol()` em blueMSX resetam fase/counter e tratam volume de forma dependente do sample boundary | Gap diretamente sensivel a PCM/pseudo-sample |
| Deformation register | Comentario explicito de que e ignorado pelo fMSX local | openMSX/blueMSX implementam leitura, escrita, rotacao e efeitos em posicao/frequencia | Gap alto para sample players SCC |
| Rotacao/read-only | Inexistente | Implementado nas referencias | Gap funcional do chip |
| Janela `Manbow2` | `9800h-9FFFh`, sem `SCC+` em `B000h` | Igual em `RomManbow2` / `romMapperMegaFlashRomScc.c` | Sem gap; deve ser mantido |
| Cartucho SCC+ | Inexistente no runtime/modelo atual | `MegaFlashRomSCCPlus` / `romMapperMegaFlashRomSccPlus.c` com `EN_SCC`, `EN_SCCPLUS`, `BFFE/BFFF`, `9800/B800` | Gap estrutural reservado para `#216` |

## Referencias tecnicas consolidadas

### openMSX
- `third_party/openMSX/src/sound/SCC.hh`
  - define `SCC::Mode { Real, Compatible, Plus }`.
- `third_party/openMSX/src/sound/SCC.cc`
  - documenta explicitamente o uso do SCC para sample streaming;
  - implementa `deformValue`, `rotate[]`, `readOnly[]`, `writeWave()`, `setFreqVol()` e `setDeformReg()`;
  - em `Compatible`, `waveform 5` e lida em `0xA0..0xBF` e nao aceita write;
  - em `Plus`, `waveform 5` e lida/escrita em `0x00..0x9F`.
- `third_party/openMSX/src/memory/RomManbow2.cc`
  - `Manbow2` expoe SCC so em `9800h-9FFFh`;
  - writes da janela SCC vao para SCC e para Flash ao mesmo tempo.
- `third_party/openMSX/src/memory/MegaFlashRomSCCPlus.cc`
  - define `SCCMode { NONE, SCC, SCCPLUS }`;
  - usa `0x9800..0x9FFF` para SCC e `0xB800..0xBFFF` para SCC+;
  - modo SCC/SCC+ e controlado por `0xBFFE/0xBFFF`.

### blueMSX
- `third_party/bluemsx/blueMSX/Src/Memory/romMapperMegaFlashRomScc.c`
  - `Manbow2/MegaFlash SCC` trabalha so com a janela `9800h-9FFFh`;
  - enable SCC por `(value & 0x3F) == 0x3F` no banco 2;
  - write na janela SCC tambem segue para Flash.
- `third_party/bluemsx/blueMSX/Src/Memory/romMapperMegaFlashRomSccPlus.c`
  - separa `EN_SCC` de `EN_SCCPLUS`;
  - usa `0xBFFE/0xBFFF` como registrador de modo;
  - faz a separacao de janela `9800h` x `B800h`.
- `third_party/bluemsx/blueMSX/Src/SoundChips/SCC.c`
  - implementa `SCC_REAL`, `SCC_COMPATIBLE`, `SCC_PLUS`;
  - implementa `deformReg`, rotacao, read-only e semantica de `phase/volume` coerente com sample streaming.

## Alvo localizado no disassembly do `START!`
- O disassembly atual da `issue-176` nao reconstruiu toda a rotina de audio com simbolos bons, mas o alvo util para a `#215` ficou localizado:
  - `docs/reverse-engineering/issues/issue-176/smanbow2/banks/bank06.asm:1740`
    - `ld de,09800h ;4884`
  - mesma janela usada pelo SCC comum, nao por SCC+.
- O boot/startup tambem confirma o padrao de bank switching do cart:
  - `bank00.asm:245` `ld (09000h),a ;419b`
  - `bank00.asm:248` `ld (0b000h),a ;41a2`
  - helpers repetidos em `7205`, `720e`, `7237`, `728a`.
- Leitura consolidada:
  - o caminho da voz nao depende de `B800h-BFFFh`;
  - o alvo operacional para logs e validacao continua sendo a trilha de acesso SCC em `9800h`.

## Plano de instrumentacao UART para a `#215`
- A telemetria deve ser `UART-only`, gated por debug e agregada por burst, sem flood por byte.
- Eventos necessarios:
  - `SCC MODE`: toggle de enable/mode em writes de `9000h`, `B000h`, `BFFE/BFFF`;
  - `SCC WAVE`: resumo de burst de writes em waveform RAM (`pc_ini`, `pc_fim`, janela, canal, offset inicial, comprimento);
  - `SCC FV`: resumo de writes de frequencia/volume por canal;
  - `SCC DEF`: escrita/leitura do deformation register quando o core passar a implementa-lo;
  - `SCC CART`: opcional para rastrear quando `Manbow2` escreve SCC e Flash na mesma operacao.
- Guardrail:
  - nao adicionar linhas novas no overlay HDMI nesta issue; o caminho de debug aqui e exclusivamente UART.

## Escopo exato da `#215`
- Portar para codigo local o comportamento de chip SCC/SCC+ ausente, inspirado em openMSX/blueMSX, sem tocar `third_party`.
- Preservar sem alteracoes a semantica atual de `MAP_MANBOW2`:
  - janela SCC em `9800h-9FFFh`;
  - sem `SCC+` em `B000h`;
  - writes SCC tambem chegando a Flash/mapper.
- Validar a voz `START!` primeiro em SCC comum no `Space Manbow 2`.
- Deixar o modelo de cartucho/menu (`Konami SCC+`, `Dual SCC+`) para a `#216`.

## Referencias obrigatorias
- `third_party/openMSX/src/sound/SCC.*`
- `third_party/openMSX/src/memory/RomManbow2.*`
- `third_party/bluemsx/blueMSX/Src/Memory/romMapperMegaFlashRomScc*.c`
- `docs/reverse-engineering/issues/issue-176/smanbow2/`
