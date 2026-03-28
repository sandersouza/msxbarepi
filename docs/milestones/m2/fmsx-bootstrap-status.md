# M2 — Bootstrap do core fMSX (status atual)

## Resultado deste passo
- Foi preparada uma integração inicial do core fMSX no app `src` em modo frame-step.
- O build experimental com core habilitado já fecha:
  - `COMBO_ENABLE_FMSX=1` (experimental, compila e gera imagem)
  - `COMBO_ENABLE_FMSX=0` (default estável)

## O que foi adicionado
- Scaffolding de runtime:
  - `src/fmsx_runtime.h`
  - `src/fmsx_runtime.c`
- Host stubs de plataforma para callbacks exigidos pelo fMSX:
  - `src/fmsx_host_stubs.c`
- Wrappers locais para compilar fontes upstream sem editar `third_party/`:
  - `src/fmsx_upstream_*.c`
- Compat layer local para APIs de `libretro-common` usadas pelo core:
  - `src/fmsx_compat/**`
  - `src/fmsx_compat_stubs.c`
- Loader de initramfs CPIO (`msx.cpio`) no runtime:
  - `src/fmsx_initramfs.cpp` parseia DTB (`/chosen/linux,initrd-start/end`) e monta arquivos do `newc` em VFS de memória
  - `src/fmsx_virtual_fs.c` faz lookup case-insensitive por basename para `fopen/rfopen`
  - `kernel.cpp` chama `fmsx_initramfs_mount()` antes de `StartMSX()` e loga quantidade de arquivos detectados
  - nomes padrão do fMSX passam a funcionar diretamente quando presentes no `msx.cpio`:
    - `MSX.ROM` (BIOS)
    - `CARTA.ROM` e `CARTB.ROM` (slots A/B)
    - `DRIVEA.DSK` e `DRIVEB.DSK` (drives A/B)
- Backend temporário de BIOS embutida para bootstrap:
  - `src/fmsx_embedded_roms.S` (`.incbin` de `roms/msx1/MSX.ROM`)
  - `fopen/rfopen` em `fmsx_libc_shim.c` e `fmsx_compat_stubs.c` agora atendem leitura de `MSX.ROM` em memória
- Frontend de vídeo fMSX no bootstrap (software renderer):
  - `src/fmsx_host_stubs.c` agora usa `CommonMux.h` para `RefreshLine*`
  - `PutImage()` publica frame RGB565 para blit no `src/kernel.cpp`
  - Blit HDMI agora escala e centraliza automaticamente o frame do MSX para a resolução ativa do display
  - Overlay de debug passou a ser redesenhado continuamente após o blit, mantendo leitura estável por cima da imagem do emulador
  - Diagnóstico de frame vazio no blit:
    - contador de frames em branco (`B`) no overlay
    - fallback visual em padrão xadrez (`P`) quando o frame do core vier totalmente zerado
  - Ajuste anti-flicker aplicado:
    - frame-step do core limitado para ~60 Hz no loop principal
    - fallback quadriculado automático desativado no caminho normal de render
    - overlay com redraw em cadência controlada (e imediato após blit) para reduzir cintilação
  - Diagnóstico explícito de MMU/cache no runtime:
    - log de boot exibe `MMU/Caches M:C:I`
    - primeira linha do overlay exibe `M/C/I` para validação em hardware sem UART
  - Otimização do hot path de vídeo:
    - blit RGB565 direto em memória do framebuffer (`CBcmFrameBuffer::GetBuffer` + `GetPitch`) no lugar de `SetPixel()` por pixel
    - fallback automático para `SetPixel()` permanece ativo quando depth/framebuffer não atenderem o caminho otimizado
  - overlay ampliado com estado do runtime (`R` ready / `E` erro)
  - Correção de limpeza de borda ao alternar Overscan:
    - ao reduzir o viewport (Overscan OFF), o renderer agora limpa apenas as regiões excedentes da caixa anterior
    - evita “lixo” residual nas bordas após toggle no menu de Settings
  - Ajuste de escala do Overscan ON:
    - `Overscan ON` passou a usar `aspect-fill` (zoom com crop central), ocupando mais área da HDMI
    - ajuste fino posterior: zoom reduzido em ~10% (crop menor) para evitar extrapolar limites visuais em algumas TVs
    - `Overscan OFF` mantém `aspect-fit` com margem de segurança
  - Calibração provisória de overscan em runtime:
    - item `Overscan [000..100]` no Settings
    - ajuste por `seta esquerda/direita` (passo de 10), com aplicação imediata no frame em pausa
    - escala: `0` = sem overscan (safe fit), `100` = overscan máximo configurado
    - guardrail atual: com `Widescreen OFF`, overscan preserva aspecto original do frame (4:3)
  - Toggle de widescreen em runtime:
    - novo item `Widescreen ON/OFF` no Settings
    - `OFF`: renderer mantém 4:3 (aspect preservado)
    - `ON`: renderer força preenchimento 16:9 da viewport (stretch intencional, com quebra de aspecto)
  - Modos de scanline em runtime:
    - item único `Scanlines [DES/LCD/CRT]` no Settings
    - `DES`: sem scanline
    - `LCD`: escurecimento de 50% por paridade da linha de destino (`y`)
    - `CRT`: para cada linha fonte do MSX expandida no framebuffer, a metade superior fica normal e a metade inferior recebe o dim de 85%, mantendo a divisão no espaço da linha do MSX, não na paridade global do framebuffer; o preto interno do frame sobe levemente para cinza escuro, reforçando o visual de tubo
    - controles: `Enter` faz ciclo incremental; `seta esquerda/direita` faz decremento/incremento
  - Correção de redraw no submenu Settings:
    - rotina única de refresh aplicada após qualquer ação de Settings (incluindo novos itens)
    - labels (ex.: `Debugger` e `Audio Mute`) atualizam imediatamente no `Enter` e `setas`, sem depender de mover cursor
  - Correção de redraw no submenu Settings:
    - toggles de Settings agora forçam redraw imediato no `Enter`, atualizando rótulos `[LIG]/[DES]` sem mover cursor
    - em pausa, toggles visuais (Overscan/Scanlines) também pedem refresh do fundo para refletir a mudança no frame atrás do menu
  - Limpeza de HUD de boot na HDMI:
    - `BootTrace` continua no logger serial, mas não escreve mais `BT:*` no canto superior esquerdo da tela
    - removido também o texto inicial `BT:I1` da fase de `Initialize()`

## Limitação encontrada (estado atual)
- O caminho `COMBO_ENABLE_FMSX=1` usa camada de compatibilidade local para libc/streams (`fmsx_compat`) e stubs de I/O/disco neste estágio.
- Objetivo desta fase foi destravar integração e loop do core; render completo de vídeo fMSX e carga de ROM/disco reais ainda são próximos incrementos.
- Em hardware, ainda há cenário de “só overlay”; o fallback recém-adicionado separa visualmente se o problema é frame vazio do core (padrão `P`) ou falha no caminho de blit.
- O backend de BIOS embutida é provisório para destravar `StartMSX()` no M2; o caminho definitivo continua sendo BIOS/ROM externas via initramfs (M2.2).
- `FDIDisk` upstream foi integrado para suportar carga de imagens de disco pelo caminho padrão `LoadFDI()`; fallback de BIOS embutida permanece apenas como contingência quando `MSX.ROM` não estiver no `msx.cpio`.

## Impacto
- `make m0-combo` permanece estável e gera artefato testável.
- `make default` gera imagem experimental com core integrado no loop em `artifacts/kernel8-bootstrap.img`.
- Overlay debug com toggle (`F1`) e input/audio continuam funcionando.
- Áudio de teste contínuo foi desativado por padrão (`COMBO_TEST_TONE_DEFAULT=0`).

## Knobs de build úteis
- `COMBO_ENABLE_FMSX=1`: habilita bootstrap do core fMSX no `src`.
- `COMBO_FMSX_BOOT_PROFILE=1`: default de build (Fast Boot) no `Makefile` raiz, `src/Makefile` e no configurador `scripts/build-config.sh`.
- `COMBO_TEST_TONE_DEFAULT=0`: desativa tom de teste HDMI (default).
- `COMBO_TEST_TONE_DEFAULT=1`: reativa tom de teste HDMI para diagnóstico.

## Próximo incremento recomendado
1. Substituir stubs de `PutImage`/`RefreshLine*` por blit real no framebuffer HDMI.
2. Rodar frame-step do core no loop principal, mantendo ordem de render:
   - frame do emulador
   - overlay debug por último

## Referências
- Core fMSX: `third_party/fmsx/fMSX/MSX.c`, `third_party/fmsx/fMSX/MSX.h`
- CPU Z80: `third_party/fmsx/Z80/Z80.c`
- Dependências listadas pelo upstream: `third_party/fmsx/Makefile.common`
