# Issue #50 - Persistência FAT32 robusta no SD (save/load settings)

- URL: https://github.com/sandersouza/msxbarepi/issues/50
- Milestone: Beta pública v0.1 - Performance e Boot (m7)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `area:boot`, `beta:v0.1`
- Status no projeto: `In review`
- Última sincronização local: 2026-02-28

## Escopo
- implementar persistência real de settings em FAT32 no SD do slot (nunca USB)
- garantir fluxo confiável `Gravar -> reboot -> restore`
- manter emulador responsivo (sem freeze) durante save/load
- preservar telemetria no overlay para diagnóstico de I/O

## Contexto
- issue #48 foi estabilizada para remover freeze e encerrada com save desativado (`SV:95`)
- esta issue assume a implementação definitiva de persistência FAT32

## Progresso
- 2026-02-28: persistência FAT32 validada em hardware (save + reload após reboot).
  - backend final: FatFs (`SD:/MSXBARE.CFG`) com arquivo pré-criado no SD
  - `Gravar` enfileira a operação; escrita executa no loop principal (evita lock no callback de input)
  - escrita fixa de 512 bytes e leitura de settings na inicialização
  - telemetria de validação usada no teste: `SV:07 C:512 A:0512`
