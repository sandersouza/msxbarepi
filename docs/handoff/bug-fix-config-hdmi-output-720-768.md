# Handoff - bug/fix-config-hdmi-output-720-768

## Estado atual

- Branch ativa: `bug/fix-config-hdmi-output-720-768`
- Issue ativa: `#258 [P1] Corrigir escrita do config.txt ao alterar Scale`
- URL: https://github.com/sandersouza/msxbarepi/issues/258
- Tipo: issue avulsa, sem milestone
- Projeto: `MSX BarePI` (`Status: Backlog`)

## Contexto

O objetivo da branch e corrigir a fronteira entre `SD:/config.txt`, que pertence ao firmware do Raspberry Pi, e os settings do runtime MSX BarePI, persistidos em `SD:/msx.cfg` e no snapshot RAW quando habilitado.

O setting `Scale` deve continuar sendo tratado como configuracao do runtime/menu e nao como diretiva de firmware. A issue #258 registra explicitamente que `config.txt` nao deve receber `scale=` nem ser reescrito apenas por mudanca de `Scale` no menu F12.

## Pontos de auditoria inicial

- `src/kernel.cpp`: `BuildSettingsPayload()` grava `scale=<Nx>` no payload correto de settings.
- `src/kernel.cpp`: `SaveSettingsToStorage()` persiste settings em RAW e `msx.cfg`.
- `src/kernel.cpp`: `PersistSelectedCoreToBootConfig()` reescreve apenas o bloco KERNEL de `SD:/config.txt`.
- `src/kernel.cpp`: `PersistResolutionModeToBootConfig()` reescreve apenas o bloco HDMI de `SD:/config.txt`.
- Scripts de SD/package devem manter `config.txt` como arquivo de boot e `msx.cfg` como settings.

## Proximos passos

- Retestar em hardware que alternar `Resolution` nao altera a resolucao da sessao corrente e que `Save to disk` continua sendo o unico ponto que altera o bloco HDMI do `config.txt`.

## Atualizacao 2026-04-28

- Menu `Settings` voltou a usar `Resolution [720/768]`.
- Locale/i18n atualizado em PT/EN/ES:
  - EN: `Resolution`
  - PT: `Resolucao`
  - ES: `Resolucion`
- `msx.cfg` e os scripts nao gravam mais `proportion=` nem `resolution=`; `Resolution` reflete `framebuffer_height` em `SD:/config.txt`.
- `Scale` permanece como setting independente (`scale=<Nx>`) e nao escreve `SD:/config.txt`; o item fica ativo apenas em `DEBUG=1`.
- Em `DEBUG=0`, o runtime ignora `scale=` salvo e usa sempre o maior scale permitido pela resolucao ativa.
- `PersistResolutionModeToBootConfig()` agora exige o bloco `#---HDMI START---`/`#---HDMI END---` e substitui apenas o conteudo entre os marcadores:
  - `720`: `hdmi_group=1`, `hdmi_mode=4`, `framebuffer_width=1280`, `framebuffer_height=720`
  - `768`: `hdmi_group=2`, `hdmi_mode=16`, `framebuffer_width=1024`, `framebuffer_height=768`
- `PersistSelectedCoreToBootConfig()` agora exige o bloco `#---KERNEL START---`/`#---KERNEL END---` e substitui apenas `kernel=<core>.img` e `initramfs <core>.cpio followkernel` dentro dele.
- Ao sair do pause menu com `CORE` pendente, `TryCoreSwitchReboot()` monta FAT se necessario, chama `PersistSelectedCoreToBootConfig()` e retorna reboot imediatamente.
- `RefreshCoreListFromStorage()` passa a preferir o `kernel=` dentro do bloco KERNEL para detectar o core ativo.
- Fora desses blocos, o conteudo existente do `config.txt` e preservado byte a byte dentro do buffer lido.
- A mecanica de resize em runtime foi removida: alternar `Resolution` no menu muda apenas o estado pendente, e `Save to disk` grava somente o bloco HDMI quando houver divergencia.
- Validacao local:
  - `bash -n scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`
  - `./scripts/check-third-party-pristine.sh`
  - `git diff --check`
  - `make -n sdcard`
  - `make -j4 DEBUG=1`
  - `make -j4 DEBUG=0`
- Build local final para reteste:
  - `BUILD_BID: 202604282047-485e5f5`
  - `TXTDBG BUILD:DBD9`
  - `BUILD_HASH:485e5f5-2dc0597d9758f411479ac5f8af19f331446a279c`
