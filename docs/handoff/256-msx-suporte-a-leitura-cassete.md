# Handoff - 256-msx-suporte-a-leitura-cassete

## Estado atual

- Branch ativa: `256-msx-suporte-a-leitura-cassete`
- Issue ativa: `#256 [P1] Habilitar suporte a carregamento .CAS e leitura cassete`
- PR base mergeado: `#255` (`254-preparacao-sd-multicore -> main`)
- Base atual da branch: `origin/main` em `31776ef`

## Resumo tecnico

- Suporte `.CAS` confirmado no backend local fMSX em `fmsx_local/MSX.c` (`CasName`, `ChangeTape()`, `RewindTape()`, deteccao ASCII/BINARY/BASIC).
- A integracao atual nao altera `third_party/fmsx`; usa o core local ja adaptado em `src/backend/msx/modules/fmsx`.
- `fmsx_runtime` expoe carga/descarga de cassete e preserva o caminho carregado em buffer proprio.
- `msx_backend` e `backend_runtime` repassam `media_load_cassette`.
- `combo_file_browser` ganhou modo `Cassette`, root `SD:/msx/cassete` e filtro `.cas`.
- F12 ganhou `Load Cassete` abaixo de `Load Disk`; selecionar arquivo chama `backend_runtime_media_load_cassette()`.
- Locales PT/EN/ES foram atualizados.
- A leitura via BASIC (`BLOAD"CAS:",R`) depende dos trampolines BIOS `00E1..00F3` chamando `PatchZ80()`.
- `src/backend/msx/modules/fmsx/fmsx_local_patch.c` implementa apenas o handler local de tape I/O, baseado semanticamente em `third_party/fmsx/fMSX/Patch.c`, sem alterar `third_party/fmsx`.
- `src/Makefile` define `PATCH_Z80` e compila `fmsx_local_patch.o`, permitindo que `ResetMSX()` instale os trampolines da BIOS.
- `Disk ROM [ON/OFF]` voltou para `Settings`, imediatamente abaixo de `MegaRAM`, foi removido de `Debug` e nao depende de `DEBUG`.

## Validacao local

- `scripts/check-third-party-pristine.sh`: OK
- `git diff --check`: OK
- `make -j4 DEBUG=1`: OK
- `make -j4 DEBUG=0`: OK
- Pos-merge do PR #255:
  - `scripts/check-third-party-pristine.sh`: OK
  - `git diff --check`: OK
  - `make -j4 DEBUG=1`: OK (`BUILD_BID: 202604261506-31776ef`, `TXTDBG BUILD:C09B`)
- Pos-relato `ZANAC.CAS`:
  - causa provavel: `.CAS` carregava com `ChangeTape()`, mas a BIOS nao tinha handler local de `PatchZ80()` para `TAPION`/`TAPIN`; `BLOAD"CAS:",R` ficava procurando header indefinidamente.
  - correcao: habilitado `PATCH_Z80` e adicionado `fmsx_local_patch.c` com rotinas BIOS de cassete.
  - validacao local: `git diff --check`, `scripts/check-third-party-pristine.sh`, `make -j4 DEBUG=1`, `make -j4 DEBUG=0`
  - build final DEBUG=1 para reteste:
    - `artifacts/kernel8-issue256.img`
    - `BUILD_BID: 202604261517-31776ef`
    - `TXTDBG BUILD:65B9`
    - `BUILD_HASH:31776ef-8bbca2e3fc909cbf3c00f30b075250a0e00c0792`
- Ajuste de UI solicitado:
  - `Settings` agora mostra `Disk ROM [ON/OFF]` abaixo de `MegaRAM`.
  - `Debug` nao mostra mais `Disk ROM`.
  - O item e o toggle existem tambem em `DEBUG=0`; o estado persistido nao e mais forcado para `ON` em build sem debug.
  - validacao local: `git diff --check`, `scripts/check-third-party-pristine.sh`, `make -j4 DEBUG=0`, `make -j4 DEBUG=1`
  - build DEBUG=1: `BUILD_BID: 202604261535-31776ef`, `TXTDBG BUILD:C7A1`, `BUILD_HASH:31776ef-51d348c6e93c90733d89a57fa6ba1ea0bbb449b7`

## Riscos/proximos passos

- Validar em hardware se os jogos em `.CAS` precisam de autotype/autoload adicional (`LOAD\"CAS:\",R`, `BLOAD\"CAS:\",R` etc.).
- Se autoload for necessario, usar a rotina de referencia do fMSX/libretro apenas como guia sem portar dependencias desnecessarias.
- A branch foi atualizada para o merge de `main` apos o PR #255, preservando as alteracoes locais de cassete.
