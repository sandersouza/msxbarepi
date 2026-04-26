# Issue #256 - [P1] Habilitar suporte a carregamento .CAS e leitura cassete

- URL: https://github.com/sandersouza/msxbarepi/issues/256
- Milestone: issue avulsa (sem milestone)
- Estado remoto: OPEN
- Labels: `priority:P1`, `type:feature`, `area:storage`, `area:settings`
- Projeto: `MSX BarePI` (`Status: In progress` pendente de confirmacao no item do projeto)
- Branch vinculada: `256-msx-suporte-a-leitura-cassete`

## Contexto

O backend local derivado de fMSX ja possui suporte tecnico a cassete em `src/backend/msx/modules/fmsx/fmsx_local/MSX.c`: `CasName`, `ChangeTape()`, `RewindTape()` e deteccao de tipo ASCII/BINARY/BASIC. A issue ativa esse caminho pela fachada de backend, pelo menu F12 e pelo navegador de arquivos, sem reimplementar o formato `.CAS`.

## Objetivo

Adicionar ao F12, abaixo de `Load Disk`, a opcao `Load Cassete`, navegando por arquivos `.cas` em `SD:/msx/cassete/` e carregando o arquivo selecionado no runtime MSX via suporte existente do fMSX.

## Implementacao atual

- `fmsx_runtime` ganhou `fmsx_runtime_load_cassette()`, `fmsx_runtime_unload_cassette()` e `fmsx_runtime_get_cassette_path()`.
- A fachada `msx_backend_*`/`backend_runtime_*` expoe `media_load_cassette`, `unload_cassette` e `get_cassette_path`.
- `combo_file_browser` ganhou `ComboFileBrowserModeCassette`, root `SD:/msx/cassete` e filtro `.cas`.
- O menu F12 exibe `Load Cassete` abaixo de `Load Disk`.
- A selecao de arquivo chama `ChangeTape()` no runtime e registra sucesso/falha no logger.
- Novas strings foram adicionadas em PT/EN/ES.
- O handler local `PatchZ80()` foi ativado via `PATCH_Z80` e implementa as rotinas BIOS de cassete (`TAPION`, `TAPIN`, `TAPIOF`, `TAPOON`, `TAPOUT`, `TAPOOF`, `STMOTR`) em `fmsx_local_patch.c`.
- Esse handler e necessario para que comandos como `BLOAD"CAS:",R` encontrem o header do `.CAS` e exibam mensagens como `Found: ZANAC`.
- `Disk ROM [ON/OFF]` voltou para `Settings`, abaixo de `MegaRAM`, saiu do menu `Debug` e permanece disponivel em builds `DEBUG=1` e `DEBUG=0`.

## DoR

- [x] Suporte `.CAS` existente identificado no backend local fMSX.
- [x] Escopo inicial limita a entrega a exposicao do suporte existente na UI/runtime.
- [x] Root de navegacao definido como `SD:/msx/cassete`.
- [x] Issue criada com DoR/DoD iniciais e labels coerentes.

## DoD

- [x] F12 mostra `Load Cassete` abaixo de `Load Disk`.
- [x] Browser de cassete lista apenas diretorios e arquivos `.cas`, confinado a `SD:/msx/cassete`.
- [x] Selecionar um `.cas` chama API do backend baseada em `ChangeTape()`/`CasName`.
- [x] Rotinas BIOS de cassete chamam `PatchZ80()` local em vez de ficarem presas em leitura fisica inexistente.
- [x] O fluxo trata falha de abertura/carregamento com log claro.
- [x] Strings novas passam pelo sistema de locale PT/EN/ES.
- [x] Documentacao do file browser/menu/handoff atualizada.
- [x] `scripts/check-third-party-pristine.sh` passa.
- [x] `git diff --check` passa.
- [x] Build local `DEBUG=1` passa.
- [x] Build local `DEBUG=0` passa.

## Validacao local

- [x] `scripts/check-third-party-pristine.sh`
- [x] `git diff --check`
- [x] `make -j4 DEBUG=1`
- [x] `make -j4 DEBUG=0`
- [x] Pos-merge do PR #255: `make -j4 DEBUG=1` (`BUILD_BID: 202604261506-31776ef`, `TXTDBG BUILD:C09B`)
- [x] Handler `PatchZ80()` de cassete compilado em `make -j4 DEBUG=1`.
- [x] Handler `PatchZ80()` de cassete compilado em `make -j4 DEBUG=0`.
- [x] Build final para reteste em hardware: `BUILD_BID: 202604261517-31776ef`, `TXTDBG BUILD:65B9`.
- [x] `Disk ROM [ON/OFF]` reposicionado em `Settings`, abaixo de `MegaRAM`, fora de `Debug`, independente de `DEBUG`.
- [x] Build `DEBUG=1` apos reposicionamento de `Disk ROM`: `BUILD_BID: 202604261535-31776ef`, `TXTDBG BUILD:C7A1`.
- [x] Ajuste posterior removeu o travamento que forcava Disk ROM `ON` em `DEBUG=0`; `make -j4 DEBUG=0` e `make -j4 DEBUG=1` passam.

## Observacoes

- A branch foi criada a partir de `254-preparacao-sd-multicore` e depois atualizada para `origin/main` apos o merge do PR #255, preservando as alteracoes locais de cassete.
- O item usa a grafia solicitada `Cassete` nas labels visiveis.
