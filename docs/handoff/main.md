# Handoff Persistente da Branch main

Ultima atualizacao: 28/03/2026 (16:54 -03)

## Objetivo da branch

Manter a baseline principal do `msxbarepi` coerente entre codigo, fluxo operacional e documentacao.

## Atualizacao desta iteracao

- Criada uma arte vetorial do boot baremetal do projeto, do firmware do Raspberry Pi ate o loop de emulacao:
  - `docs/diagrams/fluxograma-boot-baremetal-rpi-msx.svg`
- Adicionado documento de apoio para leitura/manutencao da arte:
  - `docs/fluxograma-boot-baremetal-rpi-msx.md`
- `README.md` atualizado com ponteiro para a nova documentacao.
- `CONTEXT.md` voltou a apontar para o handoff correto da branch `main`.

## Fonte tecnica usada para a arte

- `scripts/prepare-sd.sh`
- `Makefile`
- `src/main.cpp`
- `src/kernel.cpp`
- `src/emulator_backend.c`
- `src/fmsx_backend_shim.c`
- `src/fmsx_initramfs.cpp`

## Validacao desta iteracao

- Revisao textual do SVG e do documento de apoio: OK
- Build do kernel: nao executado, pois a mudanca foi apenas documental/visual

## Observacoes

- A ordem `BT0..BT12` usada no diagrama segue a ordem oficial do boot registrada nas instrucoes do projeto e confirmada no `src/kernel.cpp`.
- O frame path final reflete o runtime atual: backend -> `BlitFmsxFrame()` -> overlay/menu -> HDMI.
