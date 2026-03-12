---
description: "Use quando trabalhar no msxbarepi em tarefas de C/C++/ASM/Make/shell/docs, incluindo alteracoes baremetal no Raspberry Pi 3B, fluxo de build/teste, preparacao de SD, guardrails de third_party e atualizacoes de documentacao do projeto."
name: "MSXBarePi Guardrails de Workflow"
applyTo: "**"
---
# MSXBarePi Guardrails de Workflow

## Nivel das regras

- Tratar os itens abaixo como preferencias fortes de engenharia do projeto.
- Pode flexibilizar quando houver bloqueio tecnico real, registrando o motivo no PR ou na documentacao afetada.

## Plataforma e arquitetura

- Alvo: Raspberry Pi 3B em AArch64 (`kernel8.img`) com premissas freestanding/no-libc.
- Manter C para logica de kernel/runtime e Assembly apenas para bootstrap de baixo nivel.
- Tratar HDMI como saida obrigatoria de video; UART como canal auxiliar de debug.

## Estilo de codigo e implementacao

- Preferir codigo simples, deterministico e sem alocacao dinamica nesta fase.
- Evitar abstracoes prematuras; priorizar controle de hardware e legibilidade.
- Encapsular acesso MMIO em helpers/wrappers dedicados e documentar o objetivo.
- Para drivers/perifericos sensiveis (audio, DMA, clocks, HDMI), consultar `third_party/circle` primeiro e registrar arquivo/classe de referencia usada como base conceitual.
- Preferir `third_party/fmsx` e `third_party/circle` como referencias tecnicas principais antes de introduzir implementacoes totalmente novas.

## Integridade de third_party e restricoes legais

- Nunca modificar arquivos-fonte diretamente em `third_party/circle` ou `third_party/fmsx`.
- Se adaptacao for necessaria, copiar para caminho proprio do projeto ou manter patch local claramente separado.
- Antes de targets que dependem de Circle/fMSX, rodar `scripts/check-third-party-pristine.sh` (ou `make guard-third-party`) salvo override explicito com `ALLOW_DIRTY_THIRD_PARTY=1`.
- Manter restricoes de uso nao comercial do fMSX, atribuicao, arquivos de licenca originais e nunca versionar BIOS/ROM protegidas.

## Workflow de build e validacao

- Confirmar que o diretorio de trabalho e `/Users/sandersouza/Developer/msxbarepi` antes de comandos de build/debug.
- Executar localmente as iteracoes de build/teste necessarias e inspecionar erros/warnings antes de propor proximos passos.
- Em gates de milestone ou antes de avancos maiores, preferir build limpo (`make clean && make`) e validacao em hardware.
- Manter expectativa de artefatos alinhada: `artifacts/kernel8-default.img` e imagem especifica da issue em branches de issue (`artifacts/kernel8-issue<numero>.img`).
- Ao entregar build para teste, informar id curto de rastreio (`BUILD_HASH:<git>-<sha1>`) e incluir comando de preparo de SD sem `DRY_RUN=1`.

## Fluxo de SD e assets de runtime

- Usar apenas `scripts/prepare-sd.sh` como caminho oficial de preparacao de SD em docs/comandos.
- Antes de executar `scripts/prepare-sd.sh` sem `DRY_RUN=1`, pedir confirmacao explicita do usuario no chat.
- Sempre que o fluxo de boot exigir novos arquivos no SD, atualizar `scripts/prepare-sd.sh` na mesma mudanca.
- Nesta fase, assets de BIOS/ROM para runtime devem ser fornecidos externamente via initramfs CPIO (sem versionar assets protegidos).

## Consistencia de UX/debug

- Em novos trabalhos de overlay de debug, reutilizar baseline de `docs/debug-layer.md`, salvo motivo concreto para divergir.
- Manter `docs/debug-layer.md` atualizado quando mudarem flags de build de debug, hotkeys, labels, itens de menu ou semantica de campos.
- Ao adicionar/alterar labels visiveis ao usuario, atualizar locales PT/EN/ES na mesma mudanca; evitar strings hardcoded fora do sistema de locale.

## Documentacao e gestao de projeto

- Toda mudanca relevante de codigo deve incluir atualizacao minima em `docs/` quando aplicavel.
- Manter contexto de handoff atualizado em `docs/handoff/<nome-da-branch>.md` e consistencia do ponteiro em `CONTEXT.md`.
- Refletir regras de gestao de milestone/issue de `docs/github-project-management.md` e manter espelho local em `docs/milestones/` sincronizado.
- Usar commits pequenos e focados, sem reescrever historico da `main`.

## Formato de resposta para comandos de terminal

- Ao apresentar comandos de terminal no chat, usar apenas blocos Markdown cercados com linguagem `bash`.
