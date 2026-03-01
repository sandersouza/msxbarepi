# Issue #59 - Scanner FAT32 de ROMs/Disks

- URL: https://github.com/sandersouza/msxbarepi/issues/59
- Milestone: Load de ROMs e Discos (m8)
- Estado remoto: OPEN
- Prioridade: P0
- Labels: `priority:P0`, `type:feature`, `area:storage`

## Entrega desta issue
- Scanner FAT32 incremental implementado em:
  - [media_catalog.h](/Users/sandersouza/Developer/msxbarepi-circle/circle_combo/media_catalog.h)
  - [media_catalog.cpp](/Users/sandersouza/Developer/msxbarepi-circle/circle_combo/media_catalog.cpp)
- Integração no loop do kernel para varredura em passos por frame (sem bloquear runtime):
  - [kernel.cpp](/Users/sandersouza/Developer/msxbarepi-circle/circle_combo/kernel.cpp)
- Catálogo em memória com:
  - varredura recursiva de `SD:/roms` e `SD:/disks`
  - filtros por extensão (`.rom`, `.mx1`, `.mx2`, `.dsk`)
  - metadados mínimos (caminho completo, tamanho, tipo)
  - contadores de erro e overflow (`drop`) para telemetria

## Teste manual objetivo
1. Preparar SD com subpastas e arquivos válidos/inválidos em `roms/` e `disks/`.
2. Bootar o kernel e observar log serial/HDMI.
3. Resultado esperado:
   - linha `media scan started: SD:/roms + SD:/disks`
   - linha `media scan done: total=... rom=... dsk=... dir=... file=... err=... drop=...`
   - emulação permanece responsiva durante o período de scan.
