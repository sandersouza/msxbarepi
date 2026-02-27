# Milestone m3

## Mapeamento GitHub
- Milestone remota: #3
- Título: Bring-up do Core
- Estado: closed
- Due date: 2026-02-28
- Open issues: 0
- Closed issues: 1
- URL: https://github.com/sandersouza/msxbarepi/milestone/3

## Descrição (GitHub)
emulador sobe em baremetal e renderiza frames em HDMI, mesmo sem áudio final.

1. Escolher core base e congelar commit/tag.
2. Validar licença e registrar obrigações no repositório.
3. Integrar upstream em `third_party/<core>/` com patchset mínimo.
4. Mapear dependências de OS/libc e criar plano de substituição.
5. Implementar camada `platform` mínima (logging, ticks, vídeo, input básico stub).
6. Conectar loop principal do core ao runtime baremetal.
7. Implementar vídeo MSX1 -> framebuffer HDMI (primeiro frame visível e contínuo).
8. Criar loader de ROM simples a partir do SD.
9. Rodar ROM de teste simples e validar boot em tela.
