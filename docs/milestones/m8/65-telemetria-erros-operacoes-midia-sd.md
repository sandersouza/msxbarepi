# Issue #65 - Telemetria e erros de operações de mídia SD

- URL: https://github.com/sandersouza/msxbarepi/issues/65
- Milestone: Load de ROMs e Discos (m8)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:storage`

## Escopo implementado

- Telemetria de scan de mídia:
  - `LD:4101` no início do scan
  - `LD:4102` no fim sem erros
  - `LD:419x` no fim com erros (`x` proporcional à contagem)
- Telemetria FATFS por etapa em `fmsx_compat_stubs`:
  - open/read/seek/write com códigos de sucesso/falha e `FRESULT` embutido
- Logs compactos para operações SD em kernel:
  - formato `SD <OP> fr=<code> path=<...>`
  - aplicado em `MSXBARE.CFG` e `state` (open/read/write/seek/stat/mkdir/close)

## Build de validação

```bash
make DEBUG=1 COMBO_ENABLE_DEBUG_OVERLAY=1
```

- artefato esperado da issue:
  - `artifacts/kernel8-issue65.img`
