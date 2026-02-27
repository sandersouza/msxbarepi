# M2 — Bootstrap do core fMSX (status atual)

## Resultado deste passo
- Foi preparada uma integração inicial do core fMSX no app `circle_combo` em modo frame-step.
- O build experimental com core habilitado já fecha:
  - `COMBO_ENABLE_FMSX=1` (experimental, compila e gera imagem)
  - `COMBO_ENABLE_FMSX=0` (default estável)

## O que foi adicionado
- Scaffolding de runtime:
  - `circle_combo/fmsx_runtime.h`
  - `circle_combo/fmsx_runtime.c`
- Host stubs de plataforma para callbacks exigidos pelo fMSX:
  - `circle_combo/fmsx_host_stubs.c`
- Wrappers locais para compilar fontes upstream sem editar `third_party/`:
  - `circle_combo/fmsx_upstream_*.c`
- Compat layer local para APIs de `libretro-common` usadas pelo core:
  - `circle_combo/fmsx_compat/**`
  - `circle_combo/fmsx_compat_stubs.c`
- Loader de initramfs CPIO (`msx.cpio`) no runtime:
  - `circle_combo/fmsx_initramfs.cpp` parseia DTB (`/chosen/linux,initrd-start/end`) e monta arquivos do `newc` em VFS de memória
  - `circle_combo/fmsx_virtual_fs.c` faz lookup case-insensitive por basename para `fopen/rfopen`
  - `kernel.cpp` chama `fmsx_initramfs_mount()` antes de `StartMSX()` e loga quantidade de arquivos detectados
  - nomes padrão do fMSX passam a funcionar diretamente quando presentes no `msx.cpio`:
    - `MSX.ROM` (BIOS)
    - `CARTA.ROM` e `CARTB.ROM` (slots A/B)
    - `DRIVEA.DSK` e `DRIVEB.DSK` (drives A/B)
- Backend temporário de BIOS embutida para bootstrap:
  - `circle_combo/fmsx_embedded_roms.S` (`.incbin` de `roms/msx1/MSX.ROM`)
  - `fopen/rfopen` em `fmsx_libc_shim.c` e `fmsx_compat_stubs.c` agora atendem leitura de `MSX.ROM` em memória
- Frontend de vídeo fMSX no bootstrap (software renderer):
  - `circle_combo/fmsx_host_stubs.c` agora usa `CommonMux.h` para `RefreshLine*`
  - `PutImage()` publica frame RGB565 para blit no `circle_combo/kernel.cpp`
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

## Limitação encontrada (estado atual)
- O caminho `COMBO_ENABLE_FMSX=1` usa camada de compatibilidade local para libc/streams (`fmsx_compat`) e stubs de I/O/disco neste estágio.
- Objetivo desta fase foi destravar integração e loop do core; render completo de vídeo fMSX e carga de ROM/disco reais ainda são próximos incrementos.
- Em hardware, ainda há cenário de “só overlay”; o fallback recém-adicionado separa visualmente se o problema é frame vazio do core (padrão `P`) ou falha no caminho de blit.
- O backend de BIOS embutida é provisório para destravar `StartMSX()` no M2; o caminho definitivo continua sendo BIOS/ROM externas via initramfs (M2.2).
- `FDIDisk` upstream foi integrado para suportar carga de imagens de disco pelo caminho padrão `LoadFDI()`; fallback de BIOS embutida permanece apenas como contingência quando `MSX.ROM` não estiver no `msx.cpio`.

## Impacto
- `make m0-combo` permanece estável e gera artefato testável.
- `make m2-fmsx-bootstrap` gera imagem experimental com core integrado no loop.
- Overlay debug com toggle (`F1`) e input/audio continuam funcionando.
- Áudio de teste contínuo foi desativado por padrão (`COMBO_TEST_TONE_DEFAULT=0`).

## Knobs de build úteis
- `COMBO_ENABLE_FMSX=1`: habilita bootstrap do core fMSX no `circle_combo`.
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
