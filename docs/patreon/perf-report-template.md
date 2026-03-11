# Relatório de Performance - {{SESSION_NAME}}

## Metadados
- Sessão: `{{SESSION_NAME}}`
- Tag: `{{SESSION_TAG}}`
- Branch: `{{GIT_BRANCH}}`
- Commit: `{{GIT_COMMIT}}`
- Make target: `{{MAKE_TARGET}}`
- Make flags: `{{MAKE_FLAGS}}`
- Build time (s): `{{BUILD_SECONDS}}`
- Kernel size (bytes): `{{KERNEL_SIZE_BYTES}}`
- Kernel sha256: `{{KERNEL_SHA256}}`

## Ambiente de teste
- Hardware: Raspberry Pi 3B
- Saída: HDMI
- Mídia de boot: SD/USB (especificar)
- ROM/DSK de teste: (especificar)

## Resultado resumido
- Status geral: `PASS` / `FAIL`
- Regressão crítica encontrada: `SIM` / `NÃO`
- Cenários impactados:

## Observações por cenário
- boot:norm->basic:
- boot:fast->basic:
- video:wd-lig-ov100-sc-des:
- video:wd-lig-ov100-sc-lcd:
- video:wd-lig-ov100-sc-crt:
- refresh:50hz-baseline:
- input:rensha-profile-3:
- audio:mute-off-hdmi:

## Evidências
- Arquivo `metrics.csv` da sessão preenchido.
- Logs adicionais / fotos / vídeos (opcional):

## Decisão
- Aprovado para continuar: `SIM` / `NÃO`
- Ação corretiva (se houver):
