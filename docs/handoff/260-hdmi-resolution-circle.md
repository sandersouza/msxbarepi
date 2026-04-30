# Handoff - Issue #260 - HDMI resolution via Circle

Branch ativa: `260-hdmi-resolution-circle`
Issue remota: https://github.com/sandersouza/msxbarepi/issues/260
Status do projeto: `In progress`

## Objetivo

Melhorar a deteccao de resolucao HDMI, os ajustes de escala e a possibilidade de troca de resolucao on-the-fly usando o Circle como referencia/infraestrutura principal.

## Estado inicial

- Issue standalone criada no GitHub: `#260`.
- Branch vinculada criada via `gh issue develop`: `260-hdmi-resolution-circle`.
- Espelho local criado em `docs/issues/260-hdmi-resolution-circle.md`.
- A issue foi adicionada ao projeto `MSX BarePI` e permanece em `Backlog`, conforme regra de issue recem-criada.

## Escopo tecnico inicial

- Auditar inicializacao atual de HDMI/framebuffer.
- Consultar `third_party/circle` antes de desenhar logica propria para modos HDMI.
- Definir fallback deterministico de resolucao.
- Ajustar escala mantendo proporcao e area util previsivel.
- Investigar troca de resolucao em runtime e documentar limites quando nao for segura.
- Registrar telemetria minima de modo detectado, modo aplicado, escala e fallback.

## Proximos passos

1. Mapear pontos atuais de resolucao/escala no codigo.
2. Levantar classes/APIs de video relevantes no Circle.
3. Definir matriz curta de modos prioritarios para validacao no Raspberry Pi 3B.
4. Decidir se a troca on-the-fly pode ser feita sem reinit completo do pipeline.

## Atualizacao 2026-04-29 - Proportion via Circle

- O menu `Settings` deixou de expor `Resolution [720/768]` e passou a expor `Proportion [16:9/4:3]`.
- `Proportion` e persistido em `msx.cfg`/RAW como `proportion=16:9` ou `proportion=4:3`; a leitura aceita `resolution=720/768` como migracao.
- `Proportion` nao altera mais `SD:/config.txt`; a escrita de `config.txt` fica restrita ao bloco `KERNEL` usado pela troca de core.
- O boot aplica a proporcao via `CComboScreenDevice::Resize()` depois da carga dos settings e antes de `backend_runtime_init()`.
- Mapeamento aplicado:
  - `16:9`: framebuffer Circle `960x540`
  - `4:3`: framebuffer Circle `640x480`
- A troca pelo menu aplica resize em runtime via Circle e força redraw/limpeza do viewport.
- O item `Save to Disk` foi removido do menu `Settings`; sair de `Settings` com `ESC` ou fechar o menu com `F12` dentro de `Settings` enfileira persistencia automatica em `msx.cfg`/RAW.
- O header `SETTINGS` foi removido apenas da view `Settings`; a margem superior passa a espelhar a margem inferior.
- O fullscreen do viewport agora usa o maior fator que cabe em largura e altura em passos de `1/16x`, mantendo proporcao e evitando upscale arbitrario mais caro.
- Defaults de `sdcard/msx.cfg` e templates de scripts agora incluem `proportion=16:9`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`
  - `git diff --check`
  - `bash -n scripts/prepare-sd.sh scripts/update-sd-incremental.sh scripts/make-sdcard-package.sh`
  - `make -j4 DEBUG=1`
  - `make -j4 DEBUG=0`
  - `make -n sdcard`
- Build final para teste:
  - artefato: `artifacts/kernel8-issue260.img`
  - `BUILD_BID: 202604291401-c386661`
  - `TXTDBG BUILD:3260`
  - `BUILD_HASH:c386661`

## Atualizacao 2026-04-29 - Joypad Mapping nao abria

- Sintoma reportado: selecionar `Joypad Mapping` em `Settings` retornava para o menu principal em vez de abrir o submenu.
- Causa: ao trocar de `MenuViewSettings` para `MenuViewJoystickMap`, `IsInSettingsContext()` passava a retornar `FALSE`; o kernel interpretava isso como saida de `Settings`, enfileirava auto-save e chamava `ReturnToRoot()` apos salvar.
- Correcao: `IsInSettingsContext()` agora considera `MenuViewJoystickMap` parte do contexto de settings, evitando auto-save/retorno ao root ao entrar no submenu.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1`.
- Build DEBUG=1: `BUILD_BID: 202604291848-35ba6c6`, `TXTDBG BUILD:F53F`, artefato `artifacts/kernel8-default.img`.

## Atualizacao 2026-04-29 - Scale movido para Debug

- `Scale` saiu de `Settings` e passou para o menu `Debug`, antes de `Debugger`.
- `Settings` permanece com `Proportion` e `Scanlines` no bloco visual principal.
- `MenuViewDebug` passou a contar como contexto persistivel para manter auto-save de `Scale`, `Debugger` e `Refresh` ao sair do menu.
- Logs UART/Logger dos itens movidos passam a usar prefixo `Debug:` para `Scale`, `Refresh` e `Debugger`.
- Validacao local: `scripts/check-third-party-pristine.sh`, `git diff --check`, `make -j4 DEBUG=1`.
- Build DEBUG=1: `BUILD_BID: 202604291856-35ba6c6`, `TXTDBG BUILD:75CC`, artefato `artifacts/kernel8-default.img`.

## Atualizacao 2026-04-30 - Fit 4:3 pela area ativa MSX

- Correcao de escala: o fit do viewport agora usa a area ativa MSX `256x192`, nao a altura da surface com borda.
- Frames fMSX com borda (`272x228` e equivalentes hires) sao cortados para a area ativa antes do scale.
- Em `Proportion 4:3` (`640x480`), `Scale 3x`/fullscreen passa a usar fator efetivo `2.5x` e ocupar `640x480`.
- O fullscreen aplica o mesmo multiplicador em X/Y sobre a area ativa.
- Em `Proportion 16:9` (`960x540`), `Scale 3x`/fullscreen usa fator efetivo `2.75x` e apresenta a area ativa em `704x528`.
- Nao ha modo/framebuffer Circle `1280x720` nesta branch; os alvos runtime sao `640x480` e `960x540`.
- A mudanca nao altera `SD:/config.txt`; segue restrita ao framebuffer/runtime.
