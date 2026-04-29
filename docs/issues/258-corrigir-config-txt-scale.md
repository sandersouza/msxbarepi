# Issue #258 - [P1] Corrigir escrita do config.txt ao alterar Scale

- URL: https://github.com/sandersouza/msxbarepi/issues/258
- Milestone: issue avulsa (sem milestone)
- Estado remoto: OPEN
- Labels: `priority:P1`, `bug`, `area:boot`, `area:settings`, `area:storage`
- Projeto: `MSX BarePI` (`Status: Backlog`)
- Branch vinculada: `bug/fix-config-hdmi-output-720-768`

## Contexto

A branch `bug/fix-config-hdmi-output-720-768` deve corrigir a separacao entre configuracao de firmware do Raspberry Pi (`SD:/config.txt`) e settings do MSX BarePI (`SD:/msx.cfg` e snapshot RAW).

O setting `Scale` pertence ao runtime/menu do MSX BarePI e deve ser persistido apenas no payload de settings (`scale=<Nx>` em `msx.cfg`/RAW). A escrita de `SD:/config.txt` deve ficar restrita ao que o firmware do Raspberry Pi entende, como `kernel=`, `initramfs ... followkernel` e, quando aplicavel, parametros reais de resolucao HDMI/framebuffer. O fluxo atual precisa ser auditado/corrigido para nao tratar `Scale` como parte do contrato de `config.txt` nem acoplar mudancas de viewport ao arquivo de boot.

## DoR

- [x] Sintoma/risco delimitado: escrita de `config.txt` esta acoplada indevidamente ao setting `Scale`.
- [x] Branch alvo definida: `bug/fix-config-hdmi-output-720-768`.
- [x] Escopo inicial cobre runtime, settings, config de boot e scripts/docs afetados.
- [x] Issue remota criada no GitHub e vinculada ao projeto `MSX BarePI`.
- [x] Espelho local sincronizado com o numero real da issue.

## DoD

- [x] `Scale` continua salvo/carregado como setting do MSX BarePI (`msx.cfg` e RAW quando habilitado), sem depender de `config.txt`.
- [x] `Scale` fica ativo no menu apenas em builds `DEBUG=1`; em `DEBUG=0`, o runtime usa sempre o maior scale permitido pela resolucao ativa.
- [x] `SD:/config.txt` nao recebe chave `scale=` nem qualquer valor derivado diretamente do menu `Scale`.
- [x] Alterar `Scale` no menu F12 nao reescreve `config.txt` e nao altera `kernel=`/`initramfs`.
- [x] A escrita de `config.txt` permanece limitada aos blocos `KERNEL` de `CORE` e `HDMI` de `Resolution`.
- [x] `Resolution [720/768]` reflete `framebuffer_height` do bloco HDMI em `config.txt`, sem persistir `resolution=`/`proportion=` em `msx.cfg`.
- [x] Ao sair do pause menu com `CORE` alterado, o runtime persiste o bloco `KERNEL` em `SD:/config.txt` e reinicia o Raspberry.
- [x] Leitura/migracao de configs antigas continua aceitando `scale=` em `msx.cfg`/legados, mas ignora qualquer `scale=` encontrado em `config.txt`.
- [x] Docs relevantes registram a fronteira entre `config.txt` de firmware e settings do runtime.
- [x] `scripts/check-third-party-pristine.sh` passa.
- [x] `git diff --check` passa.
- [x] Builds `DEBUG=1` e `DEBUG=0` passam.

## Checklist de trabalho

- [x] Auditar chamadas que escrevem `SD:/config.txt`, especialmente `PersistSelectedCoreToBootConfig()` e `PersistResolutionModeToBootConfig()`.
- [x] Auditar o caminho de save de settings (`BuildSettingsPayload()`/`SaveSettingsToStorage()`) para confirmar que `scale=` fica somente no payload correto.
- [x] Corrigir o fluxo que acopla `Scale` a `config.txt`.
- [x] Validar que troca de `CORE` continua reescrevendo `kernel=` e `initramfs` corretamente.
- [x] Validar que mudanca de resolucao HDMI/framebuffer fica independente de `Scale`.
- [x] Atualizar docs/handoff da branch.

## Validacao planejada

- [x] `bash -n scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`
- [x] `./scripts/check-third-party-pristine.sh`
- [x] `git diff --check`
- [x] `make -n sdcard`
- [x] `make -j4 DEBUG=1`
- [x] `make -j4 DEBUG=0`

## Observacoes

- Esta issue e avulsa por enquanto, sem milestone.
- A branch ja existe e deve ser vinculada retroativamente a esta issue no ciclo de trabalho, ja que ela nao foi criada originalmente por `gh issue develop`.
- O item visivel voltou a ser `Resolution [720/768]` com locale PT/EN/ES.
- `config.txt` agora deve ter o bloco `#---HDMI START---`/`#---HDMI END---`; somente o conteudo entre esses marcadores e substituido.
- `720` grava o mesmo bloco antes usado por `16:9`: `hdmi_group=1`, `hdmi_mode=4`, `framebuffer_width=1280`, `framebuffer_height=720`.
- `768` grava o mesmo bloco antes usado por `4:3`: `hdmi_group=2`, `hdmi_mode=16`, `framebuffer_width=1024`, `framebuffer_height=768`.
- `Resolution` nao e mais persistido em `msx.cfg`; ao abrir Settings, o valor vem de `framebuffer_height` em `config.txt`.
- A troca de `Resolution` no menu nao chama resize em runtime e so altera `config.txt` em `Save to disk`.
- A troca de `CORE` tambem exige o bloco `#---KERNEL START---`/`#---KERNEL END---`; somente `kernel=` e `initramfs ... followkernel` dentro desse bloco sao substituidos.
- A troca de `CORE` e aplicada logo ao sair do pause menu: o runtime monta FAT se necessario, grava o bloco KERNEL e retorna `ComboShutdownReboot`.
- `Scale` agora e controle operacional de debug: aparece no Settings apenas em `DEBUG=1`; em `DEBUG=0`, qualquer `scale=` salvo e ignorado no runtime e o viewport usa o maior scale permitido pela resolucao ativa.
- Build local final: `BUILD_BID: 202604282047-485e5f5`, `TXTDBG BUILD:DBD9`, `BUILD_HASH:485e5f5-2dc0597d9758f411479ac5f8af19f331446a279c`.
