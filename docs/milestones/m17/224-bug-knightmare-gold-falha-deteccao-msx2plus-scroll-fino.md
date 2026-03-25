# [P2][BUG] Knightmare Gold: falha na detecção de MSX2+ impede opção de scroll fino

Issue remota: #224
Milestone remota: #17
Link: https://github.com/sandersouza/msxbarepi/issues/224

## Descrição

## Problema
O jogo `Knightmare Gold` não está detectando corretamente o ambiente `MSX2+` no MSXBarePI. Com isso, a opção de `scroll fino` deixa de aparecer, apesar de o hardware/emulador alvo já expor recursos de `MSX2+`.

## Evidência
- Mídia de teste local em `roms/kmaregold/`
- Binário suspeito de conter a rotina de detecção: `roms/kmaregold/KMG.COM`
- Arquivos relacionados:
  - `roms/kmaregold/KMARE.ROM`
  - `roms/kmaregold/KMARESCC.OVL`
- Relato do usuário: o jogo deveria detectar `MSX2+` e habilitar a opção de `scroll fino`, mas isso não ocorre no runtime atual.

## Objetivo
Corrigir o contrato de detecção de `MSX2+` esperado por `Knightmare Gold`, restaurando a opção de `scroll fino` sem hack específico para o título e sem regressão em outras rotinas de identificação de máquina.

## Escopo técnico
- Inspecionar `KMG.COM` para localizar a rotina de detecção de máquina/BIOS/VDP.
- Verificar se o software checa:
  - assinatura/versionamento de `MSX2+` via BIOS
  - `EXTBIO`/slots/work area
  - comportamento do `V9958`
  - flags/bytes de identificação do sistema
- Comparar nossa implementação com referências em `third_party`, `openMSX` e `blueMSX`.
- Corrigir no core/runtime o contrato real esperado pelo software, sem patch ad hoc no jogo.

## Fora de escopo
- Ajustes de áudio do jogo
- Correções gráficas não ligadas à detecção de `MSX2+`
- Hacks exclusivos para `Knightmare Gold`

## DoR
- [x] Mídia de teste validada em `roms/kmaregold/`
- [x] Rotina de detecção isolada em `KMG.COM` ou caminho equivalente documentado
- [x] Hipótese inicial do contrato de `MSX2+` esperado pelo jogo registrada

## DoD
- [ ] `Knightmare Gold` passa a detectar `MSX2+`
- [ ] Opção de `scroll fino` aparece corretamente
- [ ] Correção documentada com referência à rotina/checagem encontrada
- [ ] Sem regressão óbvia na detecção de `MSX2+` em outros cenários já estabilizados

## Referências iniciais
- `roms/kmaregold/KMG.COM`
- `roms/kmaregold/KMARE.ROM`
- `roms/kmaregold/KMARESCC.OVL`
- `third_party/openMSX/`
- `third_party/bluemsx/`

## Estado atual
- Diagnóstico fechado: a falha não está em `MSXVER`; o loader entra num probe de `Panasonic switched I/O` em `40h/41h`, depois faz benchmark (`l220E`) e um teste de VDP (`l2219`).
- A primeira rodada, com apenas `40h/41h` e turbo virtual, ainda falhou em hardware.
- A rodada atual amplia a emulação do `S1985` para o comportamento de referência:
  - `41h` com semântica de status/turbo
  - `43h/44h/47h/48h/49h` no mapa do `openMSX/blueMSX`
  - wait-state extra de I/O do VDP quando o turbo Panasonic está ativo
- O turbo Panasonic segue integrado ao cálculo de turbo efetivo do runtime sem sobrescrever o turbo de menu; vale o maior entre eles.
- Evidência nova em hardware:
  - o loader já mostra `HighSpeed VDP detected`, `MSX2 detected`, `128KB of videoRAM` e `SCC+ detected`
  - mesmo assim, o menu ainda abre no bloco com `MODE MSX2` e `SCROLL ORIGINAL`
- Leitura final do disassembly:
  - `l2212` começa em `01h`
  - se `l220E < 5`, a inicialização zera `l2212`
  - o bloco de menu em `2E60h` só usa a variante desejada quando `l2212 != 0` e `l2219 == 1`
- Hipótese ativa desta rodada: o VDP probe (`l2219`) já está passando, mas o benchmark do turbo Panasonic (`l220E`) segue abaixo do limiar e força o fallback para `MODE MSX2`.
- Ajuste aplicado: calibrar o turbo Panasonic virtual de `150%` para `224%` para cruzar o benchmark que o jogo usa no loader.

## Evidência técnica
- `sub_3664h` em `KMG.COM` só separa `MSX1` de `MSX2 ou maior`.
- `sub_944Fh` faz o probe Panasonic e cai para assinaturas de BIOS que não batem com a BIOS local atual.
- `sub_3693h` faz benchmark temporizado do VDP e participa do gate do menu de `scroll fino`.
- BIOS locais confirmadas:
  - `MSX2.ROM[002Dh] = 01h`
  - `MSX2P.ROM[002Dh] = 02h`

## Implementação aplicada
- `src/fmsx_local/MSX.c`
- `src/fmsx_runtime.c`
- `src/fmsx_runtime.h`

## Validação local
- `scripts/check-third-party-pristine.sh`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603231020-224-kmg`: OK
- `make -j4 DEBUG=1 BUILD_BID=202603231140-224-kmg`: OK
- Artefato:
  - `artifacts/kernel8-issue224.img`
- Build pronta para hardware:
  - rodada `S1985` + VDP wait: `BUILD_HASH:58a6eb0-664f8de1ffbe8c76c210499f0ef98a7a6ac47034`
  - rodada turbo Panasonic calibrado: `BUILD_HASH:58a6eb0-4ae747256cc57ccd0a364347b796c3f152dec8bc`

## Próxima validação
1. Executar em hardware a build com `KMG EVT` real na UART.
2. Confirmar se a opção de `scroll fino` aparece no jogo.
3. Se não aparecer, usar `KMG EVT` para medir explicitamente `l220E`, `l220F`, `l2212` e `l2219`.

## Rodada atual
- O log UART recebido com o print do menu (`BUILD F799`) nao trazia nenhuma linha `KMG DET`.
- Diagnostico fechado: a imagem testada ainda era a build antiga `F799`, e o trace anterior usava `log_cb`, que nao estava chegando ao serial standalone.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`: writes em `220E`, `220F`, `2212` e `2219` agora entram num ring buffer `KMG EVT`.
  - `src/fmsx_runtime.c` / `src/fmsx_runtime.h`: view publica do trace.
  - `src/kernel.cpp` / `src/kernel.h`: dreno UART `KMG EVT`/`KMG DROP`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231250-224-kmg`: OK
- Nova build pronta:
  - `BUILD_HASH:58a6eb0-e057a672b97ef5f35bb2ca0f5af5999974b9d4ca`
  - `BUILD_ID (TXTDBG): D44D`

## Rodada atual
- O forcing de `NTSC` ja tinha sido removido do caminho do VDP, mas ainda havia um override de boot por titulo para `KMAREGLD.DSK`.
- Esse override foi removido para preservar o contrato correto do projeto:
  - boot default continua `NTSC/60Hz`
  - chaveamento para `PAL` so pode acontecer por software via `R#9` do VDP
- Motivo:
  - isso evita regressao em software que depende de `R#9`, como `Space Manbow 2`
  - nao vamos mascarar a falha do `Knightmare Gold` com um workaround de boot por titulo
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231530-224-kmg`: OK
- Build de referencia desta rodada:
  - `BUILD_HASH:58a6eb0-a48d17401a786fd39df2b0c1f663d45025afb112`
  - `BUILD_ID (TXTDBG): 784A`

## Build atual de referencia
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231620-224-kmg`: OK
- Artefato:
  - `artifacts/kernel8-issue224.img`
- Build para o proximo teste em hardware:
  - `BUILD_HASH:58a6eb0-ca1d130949fba28f9227b02af5e111815f32451c`
  - `BUILD_ID (TXTDBG): 7348`
  - `Compile time: Mar 23 2026 12:23:33`

## Rodada atual
- `Settings` voltou a expor `Refresh [NTSC/PAL]` apenas em builds `DEBUG=1`.
- A opcao fica logo abaixo de `Disk ROM`.
- O kernel passou a:
  - aceitar `refresh=<50|60>` em `MSXBARE.CFG`
  - salvar `refresh=<50|60>` em `SaveSettingsToStorage()`
  - aplicar `m_RefreshRateHz` ao runtime em vez de forcar `60Hz` ao recarregar settings
- O objetivo e testar manualmente se o gate do `Knightmare Gold` depende do estado `PAL/NTSC` sem criar override de boot por titulo.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603231705-224-kmg`: OK
- Build pronta:
  - `BUILD_HASH:58a6eb0-37833abed0351a9686b591334c1f69d603ea1764`
  - `BUILD_ID (TXTDBG): 8C34`

## Rodada atual
- O A/B de `Real Clock` (`3.579545` vs `3.58`) nao alterou o glitch de `scroll fino`; essa trilha saiu do foco como correcao.
- O problema remanescente ficou isolado no raster do VDP em `screen mode 4` (`GRAPHIC3`), exatamente no cruzamento do proximo bloco de `8x8`.
- Comparacao com o `fMSX` original fechou um desvio concreto no runtime local:
  - upstream usa `(((ScanLine + VScroll) & 0xFF) - R#19) == 2`;
  - o runtime local estava armando `IE1` em `R#19 - VScroll`, duas linhas cedo.
- Correcao aplicada:
  - `src/fmsx_local/MSX.c`: alvo logico de `IE1` ajustado para `R#19 - VScroll + 2`;
  - limpeza do latch/IRQ de `IE1` ao sair da janela ativa, alinhada ao comportamento do `fMSX`;
  - trace VDP ampliado com `VDP EVT` para `R#19`, `R#23`, `0x98` e `0x99`.
- Validacao local:
  - `scripts/check-third-party-pristine.sh`: OK
  - `make -j4 DEBUG=1 BUILD_BID=202603232355-vdp-ie1-trace`: OK
- Build pronta:
  - `BUILD_HASH:e61e86e-06c695cd162a9f4f99f739afbced997cfef4cce4`
  - `BUILD_ID (TXTDBG): 9072`

- `VDP EVT` foi destravado para `Knightmare Gold`: o trace agora entra com `W=KG` quando um `DSK` contendo `kmaregold/kmare` esta carregado e a gameplay esta em `screen mode 4`.
- Build desta rodada: `BUILD_BID=202603240055-vdpkg-trace`, `BUILD_ID=D21E`.

## Rodada atual
- A trilha de diagnostico saiu do eixo `MSX2+`/`Real Clock` e entrou em engenharia reversa direta do loader `roms/kmaregold/KMG.COM`.
- Diagnostico fechado:
  - o `SCROLL SMOOTH` nao e so `R#23`;
  - o loader copia payload para RAM alta, patcha a ROM carregada e troca rotinas originais do jogo por hooks que escrevem direto no VDP.
- Pontos concretos:
  - `sub_3152h`: aplicador de patch-table (`[count][dst][bytes...]`)
  - `sub_3192h`: copia blob para `0xF700`
  - `2CFBh`: seletor de patches conforme `l2212`/`l2219`
- Tabela critica do `scroll smooth` (`2C0Bh`):
  - `046Ch <- ED A3 ED A3 ED A3 ED A3`
  - `8DF1h <- JP D995h`
  - `6A12h <- JP D995h`
  - `8CF0h <- JP D995h`
  - `8D20h <- CALL D995h`
- Interpretacao:
  - `D995h` e a rotina nova de transferencia retangular para VRAM
  - ela copia `B` linhas de `C` bytes cada, avancando `+0x20` por linha na name table
  - isso casa exatamente com o sintoma do glitch no cruzamento de `8x8`
- Conclusao tecnica desta rodada:
  - o problema atual nao e “detectar MSX2+”
  - o problema esta no contrato fino do VDP enquanto o jogo faz atualizacao raster da name table em `screen mode 4`
