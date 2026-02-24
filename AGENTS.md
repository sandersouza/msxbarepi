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
- Integrações de `third_party` devem registrar commit fixado e análise de licença antes de adoção definitiva
- `third_party/README.md` deve documentar o propósito da pasta, o inventário atual de referências e os comandos para repovoar os repositórios locais; manter esse arquivo atualizado sempre que um novo projeto third-party for adicionado/removido
- Projetos em `third_party/` devem ser tratados como referência/upstream e **nao devem ser alterados diretamente**; se for necessario reutilizar codigo com modificacoes, criar copia fora da pasta original (ou patch local claramente separado) e alterar essa copia
- Para o core fMSX autorizado neste projeto: manter uso não comercial, atribuição explícita, LICENSE original intacta e proibição de redistribuir BIOS/ROMs protegidos
- Nesta fase, BIOS/ROM do fMSX devem ser fornecidas externamente via `initramfs` CPIO no SD (não versionar assets protegidos no repositório)
- Usar `third_party/fmsx` e `third_party/circle` como fontes de consulta prioritárias para novas implementações e correções (especialmente core, vídeo, áudio, timers, GPIO e periféricos do Raspberry Pi), evitando reinventar a roda quando houver solução já validada
- Antes de implementar drivers/periféricos sensíveis (ex.: áudio PWM/HDMI, DMA, clocks), consultar primeiro referências em `third_party/circle` e registrar no código/documentação qual arquivo/classe foi usado como base conceitual
- Sempre que o fluxo de boot exigir novos arquivos no SD, atualizar `scripts/prepare-sd.sh` para copiar esses arquivos automaticamente
- Quando houver trade-off de estabilidade vs desempenho (ex.: otimização do frontend do renderer), manter knobs de build explícitos no `Makefile` e documentados no `README.md`
- Reutilizar o padrao de painel validado em `docs/debug-overlay-hdmi-template.md` para novos debugs HDMI; preservar formato/layout quando ele estiver legivel e alterar apenas indicadores/contadores durante iteracoes de diagnostico.
- Para debug em runtime com framebuffer HDMI (especialmente com MMU/cache ativo), preferir painel de debug dedicado com area reservada (viewport de blit deslocado) e overlay desenhado apos o frame; evitar misturar `console_puts()` com o painel. Em modo de debug visual, silenciar escrita do console HDMI apos o boot do core, manter logs compactos (codigos curtos em poucas linhas), e fazer flush de cache do framebuffer (`dc cvac` + `dsb`) apos desenhar o overlay para evitar caracteres parciais/corrompidos. Se a leitura visual continuar ruim, usar preset `text-only` (sem blit do emulador) ou UART como fallback.
- Preset de debug visual que se mostrou funcional na pratica (Circle input + HDMI): emulador em `0,0` com escala limitada a `2x`, overlay compacto no canto superior esquerdo (4 linhas: `TXTDBG/CI/EV/JY`), texto branco sobre caixa preta, `console` HDMI silenciado apos boot do core, e `framebuffer_flush_rect()` apenas na area do painel com throttle de flush (para reduzir flicker e evitar travas por flush em MMU/cache). Reutilizar este formato antes de tentar novos overlays complexos.

## Fluxo de trabalho

- Diretorio de trabalho deste projeto (workspace atual): `/Users/sandersouza/Developer/msxbarepi`; usar este caminho como referencia padrao nas operacoes locais e comandos
- Cada mudança deve atualizar documentação mínima em `docs/`
- A evolução do projeto deve refletir em documentação continuamente, incluindo atualização deste `AGENTS.md` quando necessário
- Novas diretrizes técnicas/processuais identificadas durante o desenvolvimento devem ser registradas no `AGENTS.md`
- A documentacao do projeto deve sempre referenciar explicitamente as fontes de consulta/referencias utilizadas (ex.: arquivos/classes de `third_party/fmsx` e `third_party/circle`) quando influenciarem implementacoes ou correcoes
- Por padrao, seguir iterando de forma autonoma ate entregar build/resultado testavel; so pausar para status intermediario se o usuario pedir explicitamente
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
