# Issue #64 - Validar mapeadores e heurísticas de ROM

- URL: https://github.com/sandersouza/msxbarepi/issues/64
- Milestone: Load de ROMs e Discos (m8)
- Estado remoto: OPEN
- Prioridade: P1
- Labels: `priority:P1`, `type:feature`, `area:storage`

## Escopo implementado

- Novo contrato de carga detalhado no runtime:
  - `TFmsxRomLoadError`
  - `TFmsxRomLoadReport`
  - `fmsx_runtime_load_cartridge_ex()`
- Fallback curto de mapper no `LOAD ROM`:
  - `MAP_GUESS -> KONAMI5 -> KONAMI4 -> ASCII8 -> ASCII16 -> GEN8 -> GEN16`
- Rollback seguro em falha total:
  - preserva/restaura ROM anterior do slot quando a nova ROM falha
  - evita persistir caminho novo quando a carga falha
- Preparação de override futuro por slot (sem UI):
  - `fmsx_runtime_set_cartridge_mapper_override()`
  - `fmsx_runtime_get_cartridge_mapper_override()`
  - persistência em `MSXBARE.CFG` via:
    - `cart_a_mapper=<0..7|255>`
    - `cart_b_mapper=<0..7|255>`

## Telemetria/diagnóstico

- Faixa `LD` atualizada para carga de ROM:
  - início de carga
  - tentativas por mapper
  - avanço de fallback
  - erro de open/assinatura/restauração

## Build de validação

```bash
make DEBUG=1 COMBO_ENABLE_DEBUG_OVERLAY=1
```

- Artefato de issue gerado:
  - `artifacts/kernel8-issue64.img`
