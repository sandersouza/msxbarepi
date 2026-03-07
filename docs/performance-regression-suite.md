# Suite de Benchmark e Regressão de Performance (Beta)

## Objetivo
Padronizar a coleta de métricas para comparar builds e detectar regressão de boot, vídeo, áudio e input antes de fechar issues de performance.

## Referências
- Issue remota: `#40` (suite benchmark/regressão)
- Milestone: `m7` (beta pública v0.1)
- Fluxo de gestão: `docs/github-project-management.md`

## Cenários oficiais
Os cenários ficam no `metrics.csv` gerado pelo script:
- boot: normal e fast até BASIC
- vídeo: combinações críticas de widescreen + overscan + scanlines
- refresh: baseline 50Hz
- input: rensha (0 e 3)
- áudio: mute ON/OFF em HDMI

## Métricas oficiais
- `avg_fps` (média)
- `min_fps` (mínimo observado)
- `boot_ms` (tempo de boot em ms, via indicador BT no overlay)
- `audio_ok` (`yes/no`)
- `input_ok` (`yes/no`)
- `notes` (anomalias observadas)

## Como executar
1. Gerar uma sessão (compila e prepara estrutura de benchmark):
```bash
./scripts/perf-regression.sh init --tag baseline --make-target default --make-flags "DEBUG=1"
```

2. Testar no hardware e preencher:
- `artifacts/benchmarks/<sessao>/metrics.csv`
- `artifacts/benchmarks/<sessao>/report.md`

3. Comparar sessão candidata contra baseline:
```bash
./scripts/perf-regression.sh compare --base artifacts/benchmarks/<sessao-base> --candidate artifacts/benchmarks/<sessao-candidate>
```

4. Anexar evidência no fechamento de issue:
- comentar na issue com caminho da sessão e resumo do `comparison.md`
- marcar checklist técnico da issue

## Critério de aprovação (beta)
- Sem regressão crítica de boot (travamento/black screen/menu quebrado)
- FPS dentro do esperado para cada cenário oficial
- Áudio sem stutter perceptível nos cenários oficiais
- Input funcional nos cenários oficiais

## Integração com fluxo de issue
- Ao iniciar otimização, gerar sessão baseline.
- Após alterações, gerar sessão candidate.
- Rodar `compare` e anexar resultado na issue/PR.
- Só mover para `In review` com relatório preenchido e comparativo gerado.
