# Roadmap — fMSX + Circle (RPi 3B)

## Contexto atual

Estado já alcançado no repositório:

- Build estável default (`make`) com artefato `artifacts/kernel8.img`.
- Build principal de desenvolvimento (`make m2-fmsx-bootstrap`).
- Core fMSX em execução no `circle_combo` com vídeo/input/áudio ativos.
- Menu de pausa funcional com `Settings` em runtime.
- Fluxo oficial de SD via `scripts/prepare-sd.sh`.
- Guardrail de integridade para `third_party` ativo (`make guard-third-party`).

## Objetivo macro (próxima fase)

Sair do "bootstrap funcional" para uma base M2/M3 mais previsível em hardware real, com documentação de operação estável e regressão objetiva.

## Backlog priorizado

## P0 — Estabilidade operacional (curto prazo)

1. Checklist de regressão em hardware (vídeo, áudio, input, pause menu).
2. Consolidar preset "estável recomendado" (README + script configurável).
3. Validar fluxo SD fim-a-fim com `msx.cpio` externo em diferentes cenários (BIOS-only, cartucho, disk).

## P1 — Runtime e UX

1. Evoluir submenu `Settings` sem quebrar layout validado.
2. Refinar telemetria do overlay para diagnóstico de A/V sync e loop principal.
3. Melhorar defaults de boot profile (`NORMAL`/`FAST BOOT`/`GAME BOOT`) por tipo de uso.

## P2 — Performance e qualidade

1. Benchmark reproduzível no RPi 3B (tempo até BASIC, FPS percebido, estabilidade de áudio).
2. Tuning de latência/buffer de áudio por perfil.
3. Ajustes de blit/escalonamento com medição objetiva de impacto.

## P3 — Compliance e reprodutibilidade

1. Manter política de assets protegidos (BIOS/ROM/DSK externos, não versionados).
2. Atualizar inventário de upstreams (`third_party/README.md`) com commits fixados.
3. Garantir documentação de repopulação local de `third_party` + licenças.

## Referências upstream prioritárias

- fMSX: `third_party/fmsx/fMSX`, `third_party/fmsx/Z80`
- Circle áudio: `third_party/circle/include/circle/sound/hdmisoundbasedevice.h`, `third_party/circle/lib/sound/hdmisoundbasedevice.cpp`
- Circle input: `third_party/circle/sample/08-usbkeyboard`

## Comandos-base do ciclo

Build principal:

```bash
make m2-fmsx-bootstrap
```

Preparar SD para teste:

```bash
KERNEL_IMG=artifacts/kernel8-m2-fmsx-bootstrap.img FIRMWARE_DIR=./rpi-firmware ./scripts/prepare-sd.sh
```
