# M1.1 Core Bring-up

## Core escolhido (provisório)

- Nome: `fMSX` via `libretro/fmsx-libretro`
- Commit fixado: `fbe4dfc4c3e3f7eb27089def3d663a905b181845`
- Status: integrado como upstream em `third_party/fmsx/` para avaliação técnica.

## Licença (status atual)

A licença presente em `third_party/fmsx/LICENSE` impõe condições adicionais para modificação/port e uso comercial.

Status operacional atual:

- mantenedor confirmou autorização direta do autor para o escopo do projeto;
- registro em `docs/legal/fmsx-authorization.md`.

## Dependências mapeadas (surface)

Arquivos centrais (ex.: `libretro.c`) dependem de:

- `stdio/stdlib/string/assert/ctype`
- alocação dinâmica (`malloc/free`)
- APIs de frontend `libretro` (vídeo, input, áudio, ambiente)
- VFS e carregamento de arquivos

Conclusão prática para baremetal:

- portar diretamente o core libretro exige uma camada de compatibilidade ampla;
- neste M1.1 foi criada uma camada `platform` e um adapter baremetal para fechar o bring-up de boot/frame loop.

## O que ficou funcional neste M1.1

- boot baremetal em HDMI;
- repasse do ponteiro DTB do firmware para o kernel;
- leitura de `initramfs` (`linux,initrd-start/end`) a partir do DTB;
- loader mínimo de ROM a partir do arquivo de initramfs no SD;
- execução real do núcleo fMSX integrada (`StartMSX` + `RunZ80`) no loop baremetal;
- frontend HDMI ligado aos callbacks de vídeo do core.

## Limitações atuais da integração

- camada `libc`/VFS mínima para freestanding (sem filesystem completo de escrita);
- áudio em modo stub (sem saída PCM real);
- entrada de joystick/teclado ainda não conectada ao hardware real;
- operações avançadas de disco usam stubs nesta fase.

## Próximo passo imediato

Validar em hardware real com `initramfs` CPIO contendo `MSX.ROM` e `CARTA.ROM` (ver `docs/m1-1-hardware-test.md`).
