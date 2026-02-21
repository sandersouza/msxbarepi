# AGENTS

## Objetivo do projeto

Construir uma base baremetal para Raspberry Pi 3B e evoluir até um emulador MSX executável sem sistema operacional.

## Padrões iniciais

- Arquitetura alvo: `AArch64` (Raspberry Pi 3B, `kernel8.img`)
- Linguagens: `C` para kernel/lógica, `Assembly` apenas para bootstrap
- Build: `make` + toolchain cruzada `aarch64-none-elf-*`
- Sem dependência de libc/OS (`-ffreestanding`, `-nostdlib`)
- Saída de vídeo é obrigatoriamente via HDMI; UART deve ser tratada apenas como canal auxiliar de debug

## Diretrizes de código

- Código simples, determinístico e sem alocação dinâmica nesta fase inicial
- Evitar abstrações prematuras; priorizar clareza e controle de hardware
- Todo acesso MMIO deve ser encapsulado e comentado
- Novos módulos devem incluir teste manual objetivo (procedimento e resultado esperado)
- Scripts com potencial destrutivo (ex.: formatação de disco) devem oferecer modo de validação sem persistência (dry-run) e ser testados nesse modo antes de uso real

## Fluxo de trabalho

- Cada mudança deve atualizar documentação mínima em `docs/`
- A evolução do projeto deve refletir em documentação continuamente, incluindo atualização deste `AGENTS.md` quando necessário
- Novas diretrizes técnicas/processuais identificadas durante o desenvolvimento devem ser registradas no `AGENTS.md`
- Commits pequenos e focados
- Antes de avançar para próximo marco: build limpo (`make clean && make`) e validação em hardware

## Marcos técnicos (alto nível)

- Boot mínimo + UART Hello World
- Timer/IRQ básicos
- Framebuffer/VDP de debug
- Loop principal de emulação (CPU Z80 + memória + IO)
- Carregamento de ROM e mapeamentos principais de MSX

## Definition of Done (fase atual)

- Gera `build/kernel8.img` sem erros
- Boot no Raspberry Pi 3B sem OS
- Mensagem de Hello World visível no serial UART
