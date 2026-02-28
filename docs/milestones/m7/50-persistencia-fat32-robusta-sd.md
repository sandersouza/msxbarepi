# Issue #50 - Persistência FAT32 robusta no SD (save/load settings)

- URL: https://github.com/sandersouza/msxbarepi/issues/50
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `area:boot`, `beta:v0.1`
- Status no projeto: `Ready`
- Última sincronização local: 2026-02-28

## Escopo
- implementar persistência real de settings em FAT32 no SD do slot (nunca USB)
- garantir fluxo confiável `Gravar -> reboot -> restore`
- manter emulador responsivo (sem freeze) durante save/load
- preservar telemetria no overlay para diagnóstico de I/O

## Contexto
- issue #48 foi estabilizada para remover freeze e encerrada com save desativado (`SV:95`)
- esta issue assume a implementação definitiva de persistência FAT32
