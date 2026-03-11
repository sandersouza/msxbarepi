# M1 — HDMI Debug Overlay (combo standalone)

## Objetivo
Implementar overlay HDMI compacto de runtime para debug sem depender de UART, preservando o formato validado em hardware.

## Implementação
- Alvo: `src/kernel.cpp`
- Formato de 4 linhas no canto superior esquerdo:
  - `TXTDBG OS:xx`
  - `CI R:? F:? K:? S:? G:? B:? P:?????`
  - `EV Q:###### E:###### K0:### M:###`
  - `JY BJ:#### MJ:####`
- Atualização com throttle no loop principal (a cada ~50 ms).
- Console HDMI mantido legível: callback de teclado não imprime mais texto bruto no framebuffer.
- Ordem de render para modo gráfico/framebuffer: desenhar overlay sempre **após** o blit do frame principal (emulador), preservando legibilidade.

## Ativação/Desativação simples
- Runtime: tecla `F1` alterna overlay `ON/OFF`.
- Build-time default:
  - `COMBO_DEBUG_OVERLAY_DEFAULT=1 make m0-combo` (inicia ligado)
  - `COMBO_DEBUG_OVERLAY_DEFAULT=0 make m0-combo` (inicia desligado)

## Indicadores atuais
- `OS`: fase simples do overlay (baseado no tick do loop)
- `CI`:
  - `R`: frames ocupados na fila de áudio
  - `F`: frames livres da fila de áudio
  - `K`: teclado USB anexado
  - `S`: dispositivo de áudio ativo
  - `G`: eventos de hotplug processados
  - `B`: ocorrências de escrita parcial/queda na fila de áudio
  - `P`: tick do loop principal
- `EV`:
  - `Q`: operações de escrita de áudio
  - `E`: contador de erros de escrita
  - `K0`: contador de eventos de tecla
  - `M`: último código ASCII observado
- `JY`:
  - `BJ`: bitmap de botões/direções pressionados (bridge local via HID raw)
  - `MJ`: bitmap mapeado em formato MSX ativo-em-zero (`~BJ & 0x3F`)
  - Mapeamento atual: setas (`↑↓←→`) + `Space/Z` (botão 1) + `X` (botão 2)

## Referências
- Template de layout/regras: `docs/debug-layer.md`
- API de console/framebuffer Circle: `third_party/circle/include/circle/screen.h` e `third_party/circle/doc/screen.txt`
- Base conceitual de áudio (fila/refill): `third_party/circle/sample/34-sounddevices/kernel.cpp`

## Teste manual
1. Build: `make m0-combo`
2. Preparar SD:
   - `KERNEL_IMG=artifacts/kernel8-m0-combo.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh`
3. Boot no RPi3B:
  - Esperado: overlay de 4 linhas no topo esquerdo, rotor ativo, áudio contínuo HDMI e `K` mudando para `1` ao conectar teclado.
4. Pressionar `F1`:
  - Esperado: alternância imediata do painel (`ON/OFF`) sem interromper áudio/input.
