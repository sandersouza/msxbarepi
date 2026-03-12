# Issue #176 - Boot screen MSX2+ extremamente lento (logo/scroll em paginas alternadas)

- URL: https://github.com/sandersouza/msxbarepi/issues/176
- Milestone: FIX: Minor Issues / Other Issues (m17)
- Estado remoto: OPEN

## Contexto
No MSX2+, o boot screen do logo MSX esta muito lento, com progresso visual apenas apos centenas/milhares de frames.

Evidencias de hardware:
- alternancia de `R26` durante o boot, sugerindo animacao por paginas alternadas;
- diferenca de aproximadamente ~1000 frames entre estados visuais do logo.

## Objetivo
Restaurar velocidade normal da animacao de boot no MSX2+ sem regressao em:
- boot MSX1/MSX2;
- deteccao de 60Hz no MSXDIAG;
- estabilidade do pipeline de video durante boot.

## Checklist
- [x] Abrir issue e vincular a milestone m17
- [x] Criar branch vinculada da issue
- [ ] Instrumentar telemetria focada no boot logo MSX2+
- [ ] Corrigir gargalo de cadencia de pagina/comando VDP no boot
- [ ] Build local com `DEBUG=1`
- [ ] Validar em hardware (MSX1/MSX2/MSX2+)
- [ ] Abrir PR para `fix-acurating-timing-vdp9958`
- [ ] Merge e fechamento da issue
