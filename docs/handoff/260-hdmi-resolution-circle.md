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
