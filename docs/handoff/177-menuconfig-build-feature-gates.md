# Handoff - Branch 177-menuconfig-build-feature-gates

Data: 2026-03-12

## Contexto da iteracao
- Milestone dedicada criada para menuconfig/feature gates: **#21 - Release: Build Menuconfig e Feature Gates**.
- Baseline definida conforme solicitado: branch/issue **#176**.
- Nova branch de trabalho inicial aberta para o primeiro assunto: **`177-menuconfig-build-feature-gates`**.

## Acoes executadas
1. Criada milestone remota `#21` com escopo de integracao incremental na baseline #176.
2. Criadas issues remotas da milestone:
   - #177 `MAKE MENUCONFIG` (infra)
   - #178 feature gates de expansao (SCC/FM-PAC/DISK ROM/MegaRAM)
   - #179 feature gates de perfil/midia/boot/debug
   - #180 profile One ROM Mode
   - #181 Patreon/Owner tag no fluxo de config
   - #182 matriz central de features estaticas
   - #183 organizacao de imports/tools em `src/tools`
3. Todas as issues foram adicionadas ao projeto `MSX BarePI`.
4. Status no projeto atualizado:
   - #177 -> `In progress`
   - #178..#183 -> `Ready`
5. Espelho local sincronizado em `docs/milestones/m21/`.

## Estado atual
- Branch atual: `177-menuconfig-build-feature-gates`
- Milestone ativa para o tema: `#21`
- Issue #177 com infraestrutura de `menuconfig` implementada e build validado.
- Artefatos de configuracao gerados por iteracao:
  - `.config`
  - `.config.mk`
  - `build/config.mk`
  - `build/config_build.h`

## Riscos/observacoes
- Existem alteracoes locais anteriores da branch #176 em arquivos de diagnostico/documentacao do boot MSX2+ ainda nao commitadas nesta branch.
- Durante a implementacao da issue #177, isolar commits para nao misturar alteracoes de analise da issue #176 com o novo escopo.

## Iteracao tecnica (menuconfig)

### Mudancas implementadas
- `Makefile`
  - novos targets: `menuconfig`, `syncconfig`, `config-header`;
  - include automatico de `.config.mk` e `build/config.mk`;
  - geracao de `build/config_build.h` antes do build;
  - propagacao de novas flags de feature para `src/Makefile`;
  - fallback de owner para `MSXBARE_PATREON_TAG` quando `OWNER` estiver vazio.
- `src/Makefile`
  - macros de feature estaticas adicionadas em `CPPFLAGS`;
  - include forcado de `../build/config_build.h`.
- `scripts/menuconfig.sh`
  - integra com frontend real do Kconfig (`mconf`) do Linux;
  - executa `build/tools/kconfig-linux/mconf` com `config/Kconfig.msxbarepi`;
  - converte `.config` (formato Kconfig) para `.config.mk` e `build/config.mk`;
  - modo `--sync-only`/`NON_INTERACTIVE=1` mantido.
- `scripts/build-kconfig-mconf.sh` (novo)
  - compila `mconf` localmente a partir de `tools/kconfig-linux/` (upstream Linux `scripts/kconfig`);
  - gera parser/lexer com `bison` + `flex`.
- `tools/kconfig-linux/` (novo)
  - snapshot local do Kconfig frontend do Linux + licenca GPL-2.0.
- `scripts/gen-build-header.sh` (novo)
  - gera `build/config_build.h` a partir das variaveis efetivas.
- Documentacao atualizada:
  - `README.md`
  - `scripts/README.md`
  - `docs/milestones/m21/177-...md`

### Validacao executada
- `make menuconfig NON_INTERACTIVE=1`
- `make clean && make`

Resultado: build concluido com sucesso e artefato de issue gerado.

## Iteracao adicional - ESC como Exit no menuconfig

### Mudanca implementada
- `tools/kconfig-linux/lxdialog/util.c`
  - ajuste no `on_key_esc()` para aceitar `ESC` unico como `KEY_ESC` imediato;
  - comportamento antigo `ESC ESC` preservado;
  - com isso, no menu principal do `mconf`, `ESC` passa a cair no fluxo padrao de `handle_exit()`, exibindo o prompt para salvar `.config`.

### Validacao executada
- `make menuconfig NON_INTERACTIVE=1`
- `make clean && make`

### Build de referencia desta iteracao
- `BUILD_HASH:b9eae66-67bfd4ab535f06202b98120a18a31525268776be`
- `INT_BUILD:D868`

## Iteracao adicional - Menus refletem `menuconfig`

### Mudancas implementadas
- `src/combo_menu_items.cpp`
  - menu raiz agora oculta dinamicamente itens `Load ROM`/`Load Disk` conforme:
    - `MSXBARE_FEAT_LOAD_ROM`
    - `MSXBARE_FEAT_LOAD_DISK`
  - menu `Settings` passa a mostrar/ocultar opcoes por feature:
    - `FM-PAC` (`MSXBARE_FEAT_FMPAC`)
    - `SCC` (`MSXBARE_FEAT_SCC`)
    - `MegaRAM` (`MSXBARE_FEAT_MEGARAM`)
    - `Disk ROM` (`MSXBARE_FEAT_DISK_ROM`)
    - `Boot Mode` ocultado em `MSXBARE_ONE_ROM_MODE=1`
    - `Machine` ocultado quando so existe 1 perfil suportado pelo build
- `src/kernel.cpp` / `src/kernel.h`
  - adicionada rotina `NormalizeSettingsForBuild()` para travar defaults e valores persistidos ao que o build permite;
  - bloqueio de acoes em runtime quando a feature foi desativada no build (ex.: toggle SCC/FM, load ROM/DSK, MegaRAM, Disk ROM);
  - ciclo de `Machine` agora ignora perfis nao suportados pelo build;
  - em `One ROM Mode`, `Boot Mode` fica fixo em `GAME`.

### Validacao executada
- `make clean && make`

### Build de referencia desta iteracao
- `BUILD_HASH:388c112-908276f10cfe7171ccaa4d3dd68530db7fbdb865`
- `INT_BUILD:56DE`

## Iteracao adicional - ESC no menu principal sem auto-save

### Mudancas implementadas
- `tools/kconfig-linux/mconf.c`
  - `ESC` no menu principal agora abre confirmacao para sair sem salvar;
  - se confirmar saida, o `menuconfig` encerra sem gravar `.config`;
  - `<Save>` continua sendo o unico fluxo que grava configuracao em disco.
- `scripts/menuconfig.sh`
  - no modo interativo, `.config.mk` e `build/config.mk` so sao regenerados quando houve `<Save>` na sessao;
  - sem `<Save>`, o script nao atualiza os arquivos de config e informa que manteve inalterado;
  - recompila `mconf` automaticamente quando os fontes locais do frontend foram alterados.

### Validacao executada
- `./scripts/build-kconfig-mconf.sh`
- `make menuconfig NON_INTERACTIVE=1`
- `make clean && make`

### Build de referencia desta iteracao
- `BUILD_HASH:2759965-6d1851130d1091c8e6ee47d0c1ebc3895a72be45`
- `INT_BUILD:CF1B`

## Iteracao adicional - Circle incremental no `make`

### Mudancas implementadas
- `Makefile`
  - `default` deixou de forcar rebuild/clean das libs do Circle a cada execucao;
  - novo alvo `circle-libs` verifica se os artefatos essenciais do Circle existem e so compila quando faltar alguma lib;
  - `circle-configure` agora so roda `./configure` quando `third_party/circle/Config.mk` ainda nao existe;
  - novo alvo `circle` realiza rebuild forcado completo do Circle (configure + clean + build), ficando como caminho explicito para recompilar tudo.

### Validacao executada
- `make -n circle-libs`
- `make -n default`
- `make -n circle`
- `make help`

### Resultado
- Fluxo confirmado: `make` usa Circle incremental (sem rebuild forcado quando libs estao presentes) e `make circle` faz rebuild completo sob demanda.

## Iteracao adicional - `make sdcard` com escolha UPDATE/FORMAT

### Mudancas implementadas
- `scripts/prepare-sd.sh`
  - apos selecionar o disco, agora inspeciona o conteudo atual do SD (particao montada) para detectar payload minimo de boot do RPi;
  - criterio de payload minimo: `bootcode.bin`, `start.elf`, `fixup.dat`, `bcm2710-rpi-3-b.dtb`, `config.txt`, `kernel8.img`;
  - quando payload minimo e detectado, exibe escolha:
    - `UPDATE` (delegando para `scripts/update-sd-incremental.sh` e encerrando);
    - `FORMATAR` (segue fluxo atual completo com formatacao, CAPTCHA e perguntas existentes);
  - adicionadas funcoes auxiliares para descobrir volume montado a partir do disco selecionado.
- `scripts/update-sd-incremental.sh`
  - novo suporte a `SD_DEVICE` (ex.: `/dev/disk4`) para resolver automaticamente `TARGET_VOLUME` a partir do disco selecionado no fluxo pai;
  - quando necessario, tenta `diskutil mountDisk` antes de resolver o volume.
- `scripts/README.md`
  - documentado o novo fluxo de decisao `UPDATE/FORMATAR` no `prepare-sd.sh`;
  - documentado `SD_DEVICE` em `update-sd-incremental.sh`.

### Validacao executada
- `bash -n scripts/prepare-sd.sh scripts/update-sd-incremental.sh`
- `DRY_RUN=1 OFFLINE_DRY_PACKAGE=1 NON_INTERACTIVE=1 AUTO_CONFIRM=1 ./scripts/prepare-sd.sh`
- `TARGET_VOLUME="$(pwd)/artifacts/.dryrun-sdroot" ./scripts/update-sd-incremental.sh`

### Resultado
- Fluxo `make sdcard` pronto para:
  - detectar SD ja bootavel e oferecer `UPDATE` vs `FORMATAR`;
  - executar update incremental sem formatar quando selecionado;
  - manter ciclo completo de formatacao inalterado quando selecionado.

## Iteracao adicional - Patreon tag no menu de pausa (F12)

### Mudancas implementadas
- Integracao `menuconfig`/`make`/runtime para `MSXBARE_PATREON_TAG`:
  - `src/combo_menu_items.cpp`
    - adicionada leitura de `MSXBARE_PATREON_TAG` no menu raiz (F12);
    - apos `Reset`, o menu agora adiciona uma linha em branco e uma linha nao selecionavel no formato `-- Patreon --: <tag>`;
    - limite de exibicao da tag aplicado em 20 caracteres.
  - `src/combo_locale.h`
    - novo campo de locale `root_patreon_prefix`.
  - `src/combo_locale_pt.cpp`, `src/combo_locale_en.cpp`, `src/combo_locale_es.cpp`
    - adicionado prefixo localizado para a nova linha (`-- Patreon --:`).

### Validacao executada
- `make -j4`

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-382ea66e5af54acae449f92c9c50e557225d0e0d`
- `INT_BUILD:2A21`

## Iteracao adicional - Boot Mode com NONE/NORM/FAST/GAME e trava por build

### Mudancas implementadas
- `config/Kconfig.msxbarepi`
  - Boot Mode default agora possui `NONE`, `NORM`, `FAST`, `GAME`.
  - default do `choice` alterado para `NONE`.
- `scripts/menuconfig.sh`
  - baseline passou a gerar `CONFIG_MSXBARE_BOOT_MODE_NONE=y` por padrao;
  - migracao legacy/emit agora reconhece e exporta `MSXBARE_BOOT_MODE_DEFAULT=NONE`;
  - mantido comportamento de `One ROM Mode` forcando `GAME`.
- `Makefile`
  - adicionado `MSXBARE_BOOT_MODE_LOCKED`:
    - `NONE` => `LOCKED=0` (menu runtime pode alterar);
    - `NORM/FAST/GAME` => `LOCKED=1` + valor fixo compilado.
  - validacao de valor atualizada para aceitar `NONE`.
- `scripts/gen-build-header.sh` e `src/Makefile`
  - propagacao de `MSXBARE_BOOT_MODE_LOCKED` para macros de compilacao.
- `src/combo_menu_items.cpp`
  - opcao de `Boot Mode` no menu `Settings` (F12) agora so aparece quando:
    - `MSXBARE_ONE_ROM_MODE==0` e `MSXBARE_BOOT_MODE_LOCKED==0`.
- `src/kernel.cpp`
  - `NormalizeSettingsForBuild()` agora aplica trava de boot mode por build:
    - `LOCKED=1` => ignora valor persistido no SD e fixa no valor compilado;
    - `LOCKED=0` => comportamento normal (valor do SD/menu, com clamp);
  - handlers de ciclo de boot mode tambem respeitam trava de build.

### Validacao executada
- `make -j4`

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-4e40960350b6500f456549bbb02f5ad66dd3efa6`
- `INT_BUILD:8821`

## Iteracao adicional - One ROM path amigavel + CARTA.ROM condicional no initramfs

### Mudancas implementadas
- `scripts/menuconfig.sh`
  - adicionado fluxo de selecao amigavel de ROM para `MSXBARE_ONE_ROM_PATH` em sessao interativa com `One ROM Mode` ativo (via `fzf`);
  - o seletor abre apos salvar no `menuconfig` e permite:
    - manter caminho atual;
    - limpar selecao (`<sem CARTA.ROM>`);
    - escolher ROM (`*.rom`/`*.ROM`) de `roms/`.
  - adicionada funcao de update direto em `.config` para a chave `CONFIG_MSXBARE_ONE_ROM_PATH`.
- `scripts/make-initramfs.sh`
  - passou a ler `One ROM Mode` e path da `.config` (ou variaveis de ambiente `MSXBARE_ONE_ROM_MODE` / `MSXBARE_ONE_ROM_PATH`);
  - quando `One ROM Mode` estiver ativo:
    - com ROM selecionada valida: injeta como `CARTA.ROM` no `msx.cpio`;
    - sem ROM selecionada: garante ausencia de `CARTA.ROM` no `msx.cpio`.
- `scripts/README.md`
  - documentado seletor amigavel de ROM no `menuconfig`;
  - documentada regra de inclusao/ausencia de `CARTA.ROM` no initramfs em `One ROM Mode`.

### Validacao executada
- `bash -n scripts/menuconfig.sh scripts/make-initramfs.sh`
- Teste `msx.cpio` com One ROM + path selecionado => `CARTA.ROM` presente
- Teste `msx.cpio` com One ROM + path vazio => `CARTA.ROM` ausente
- `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`
- `make -j4`

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-fd0220da23f3d98ecb30af64d58edd541517765b`
- `INT_BUILD:9ABE`

## Iteracao adicional - Patreon em 2 linhas + MEM Mapper fixo visivel em MSX1

### Mudancas implementadas
- `src/combo_menu_items.cpp`
  - bloco Patreon no menu raiz alterado para duas linhas nao selecionaveis:
    - `-- Patreon --`
    - `<tag>` (linha abaixo, truncada em 20 chars)
  - mantido espaco em branco antes do bloco, apos `Reset`.
  - `MEM Mapper` em `Settings` agora permanece sempre visivel.
  - em MSX1, `MEM Mapper` mostra `N/A` e fica nao selecionavel.
- `src/combo_locale_pt.cpp`, `src/combo_locale_en.cpp`, `src/combo_locale_es.cpp`
  - prefixo atualizado para `-- Patreon --` (sem `:`).
- `scripts/menuconfig.sh` + `Makefile`
  - adicionado `MSXBARE_PATREON_TAG_CONFIG` no `.config.mk`.
  - `Makefile` passa a priorizar explicitamente `MSXBARE_PATREON_TAG_CONFIG` quando definido,
    garantindo que tag configurada em `.config` seja a default no build.

### Validacao executada
- `make -j4`

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-1d5cafde11f971dd2158df1ef0a322e0bd1c20b5`
- `INT_BUILD:D80D`

## Iteracao adicional - Boot de Machine forcado para MSX1 quando nao definido no build

### Mudanca implementada
- `src/kernel.cpp`
  - `NormalizeSettingsForBuild()` ajustado para politica de boot de `Machine`:
    - se **nao** existir definicao de perfil de machine no build (`MSXBARE_MACHINE_BOOT_PROFILE`), o boot passa a forcar `MSX1`;
    - se houver definicao no build, ela e aplicada com clamp para os perfis suportados pela build.
  - isso faz o boot ignorar `machine=` persistido no `MSXBARE.CFG` quando o build nao fixa machine, conforme solicitado.
  - continua valendo clamp por suporte: se MSX2/MSX2+ estiverem desativados no build, qualquer valor salvo para esses perfis cai em MSX1.

### Validacao executada
- `make -j4`

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-5f5706864cd63fd501c60289f8d5a4686d9c80f7`
- `INT_BUILD:B6D7`

## Iteracao adicional - Precedencia absoluta do menuconfig sobre variaveis externas

### Mudancas implementadas
- `scripts/menuconfig.sh`
  - `emit_make_config()` agora gera tambem variaveis `*_CONFIG` para todos os knobs do menuconfig (incluindo `DEBUG_CONFIG`).
- `Makefile`
  - apos incluir `.config.mk`/`build/config.mk`, aplica `override` para todos os knobs vindos de `*_CONFIG`.
  - com isso, selecao do `make menuconfig` passa a ter precedencia sobre variaveis de ambiente e sobre variaveis passadas na linha de comando (`make DEBUG=...`, etc.).

### Validacao executada
- `./scripts/menuconfig.sh --sync-only`
- `make -n default DEBUG=1` (confirmado no dry-run: `DEBUG=0` vindo do `.config`)
- `make -j4` (build concluido com `DEBUG=0`)

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-f77a90e7370899868be03742fc04fd3247c94473`
- `INT_BUILD:2463`

## Iteracao adicional - Ocultar `MSX Basic` quando Boot Mode = GAME

### Mudancas implementadas
- `src/combo_menu_items.h`
  - `combo_menu_root_items_get()` agora recebe `boot_mode`.
- `src/combo_menu.cpp`
  - chamada do menu raiz atualizada para passar `m_BootMode`.
- `src/combo_menu_items.cpp`
  - item `MSX Basic` no menu raiz passa a ser exibido apenas quando `boot_mode != GAME`.

### Validacao executada
- `make -j4`

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-70124748626da9edac1dcd91dbc03374da32b2de`
- `INT_BUILD:641E`

## Iteracao adicional - Ordem dos botoes no rodape do `make menuconfig`

### Mudancas implementadas
- `tools/kconfig-linux/lxdialog/menubox.c`
  - barra inferior reorganizada para:
    - `<Select>` `<Save>` `<Load>` `<Help>` `<Exit>`.
- `tools/kconfig-linux/mconf.c`
  - remapeado tratamento de retorno dos botoes para manter a semantica com a nova ordem:
    - `1 => Save`, `2 => Load`, `3 => Help`, `4 => Exit`;
  - condicao de saida do menu principal atualizada para `res == 4`;
  - texto de ajuda interno (`mconf_readme`) atualizado com a nova sequencia de navegacao por TAB/setas.

### Validacao executada
- `./scripts/build-kconfig-mconf.sh`
- `make menuconfig NON_INTERACTIVE=1`

## Iteracao adicional - One ROM sem navegador externo

### Mudancas implementadas
- `scripts/menuconfig.sh`
  - removido fluxo de seletor externo (`fzf`) para `One ROM Mode`;
  - `MSXBARE_ONE_ROM_PATH` volta a ser definido somente pela entrada digitada no proprio `menuconfig`.
- `scripts/README.md`
  - documentacao atualizada para refletir o fluxo por entrada manual do caminho.

### Validacao executada
- `bash -n scripts/menuconfig.sh`
- `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`

## Iteracao adicional - Garantia de MSX1-only quando MSX2/MSX2+ estao OFF

### Causa raiz
- O fluxo de `menuconfig.sh` ainda fazia coercoes de `One ROM Mode` que podiam manter MSX2+ ativo no build mesmo com suporte desmarcado, o que mantinha opcao `Machine` visivel e impedia comportamento MSX1-only esperado.

### Mudancas implementadas
- `config/Kconfig.msxbarepi`
  - `MSXBARE_ONE_ROM_MODE` agora depende de `MSXBARE_FEAT_MSX2P`.
- `scripts/menuconfig.sh`
  - removida a coercao que ligava `MSX2+` automaticamente quando `One ROM Mode` estava ativo;
  - adicionada normalizacao: se `One ROM Mode=1` e `MSX2+=0`, o script desliga `One ROM Mode` e limpa `ONE_ROM_PATH`;
  - mantida apenas a coercao de loaders/boot (`LOAD_ROM=0`, `LOAD_DISK=0`, `BOOT_MODE=GAME`) quando `One ROM Mode` realmente ativo.

### Validacao executada
- Teste de consistencia forcando `.config` invalido (`MSX2=0`, `MSX2+=0`, `One ROM=1`) + `--sync-only`:
  - resultado em `.config.mk`: `MSX2=0`, `MSX2P=0`, `ONE_ROM_MODE=0`.
- `make -n default` confirmou flags efetivas de compilacao com MSX1-only.
- `make -j4` concluido com sucesso.

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-3465b407eac1c01264aff5839b842cc5d0902b19`
- `INT_BUILD:A7CD`

## Iteracao adicional - One ROM desacoplado de suporte MSX2+

### Ajuste solicitado
- `One ROM Mode` deve aparecer independentemente de `Suporte a MSX2+`.
- Regra de suporte de machine permanece exclusiva para `Settings`/boot fallback (MSX2/MSX2+ off => fallback obrigatorio para MSX1).

### Mudancas implementadas
- `config/Kconfig.msxbarepi`
  - removido `depends on MSXBARE_FEAT_MSX2P` de `MSXBARE_ONE_ROM_MODE`.
- `scripts/menuconfig.sh`
  - removida normalizacao que desligava `ONE_ROM_MODE` quando `MSX2P=0`.
  - mantidas apenas coerçoes proprias do One ROM (desabilitar load dinamico e boot GAME quando One ROM ativo).

### Validacao executada
- `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`
- `make -j4`

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-c1f1cb35e9201c0cdfa5ae149387250c42628309`
- `INT_BUILD:3F17`

## Iteracao adicional - `Disk ROM` em Settings visivel apenas com DEBUG compilado

### Mudanca implementada
- `src/combo_menu_items.cpp`
  - adicionada condicao de visibilidade para item `Disk ROM` no menu `Settings`:
    - so aparece quando `MSXBARE_FEAT_DISK_ROM=1` **e** `MSXBARE_ENABLE_DEBUG_OVERLAY=1` (kernel compilado com DEBUG);
  - com `DEBUG=0`, item `Disk ROM` fica oculto, mesmo com suporte a Disk ROM ativo no build.

### Validacao executada
- `make -j4` com `DEBUG=0` efetivo no build (vindo do `.config`).

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-49852eeda6dfcc933340bc697db048f61ceb887f`
- `INT_BUILD:05E2`

## Iteracao adicional - Opcao `Boot Screen` no menuconfig e filtro de KANJI no initramfs

### Mudancas implementadas
- `config/Kconfig.msxbarepi`
  - nova opcao: `MSXBARE_BOOT_SCREEN` (`Boot Screen (sem KANJI/KANJIBASIC no initramfs)`), exibida quando `Suporte a MSX2` estiver ativo.
- `scripts/menuconfig.sh`
  - baseline/default atualizado com `CONFIG_MSXBARE_BOOT_SCREEN`;
  - migracao legacy e emissao para `.config.mk`/`build/config.mk` incluem `MSXBARE_BOOT_SCREEN` e `MSXBARE_BOOT_SCREEN_CONFIG`.
- `Makefile`
  - nova variavel de build `MSXBARE_BOOT_SCREEN` com suporte a override por `*_CONFIG`;
  - exportada para `gen-build-header.sh` e para compilacao.
- `scripts/gen-build-header.sh`
  - adicionada macro `#define MSXBARE_BOOT_SCREEN ...` em `build/config_build.h`.
- `scripts/make-initramfs.sh`
  - quando `MSXBARE_BOOT_SCREEN=1` (ou `CONFIG_MSXBARE_BOOT_SCREEN=y`), remove do pacote os ROMs de Kanji/Kanjibasic (`KANJI*.ROM`, `KANJIBASIC*.ROM` aliases listados) antes de gerar o `msx.cpio`.
- `scripts/README.md`
  - documentacao atualizada com a nova opcao e efeito no initramfs.

### Validacao executada
- `bash -n scripts/menuconfig.sh scripts/make-initramfs.sh scripts/gen-build-header.sh`
- `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`
- `make -j4`
- `./scripts/make-initramfs.sh roms/initramfs /tmp/msx-test-bootscreen.cpio`
- `cpio -it < /tmp/msx-test-bootscreen.cpio | rg "KANJI|KANJIBASIC"` (sem ocorrencias)

### Build de referencia desta iteracao
- `BUILD_HASH:c0fd815-022ff76fa8b5334aac44a3641f8e6b7ab9805f01`
- `INT_BUILD:311E`

## Iteracao adicional - DISK ROM obrigatoriamente ON sem DEBUG

### Requisito aplicado
- Em build sem DEBUG:
  - `DISK ROM` deve ficar ON por padrao/efetivo no `menuconfig` sync;
  - configuracao persistida no SD nao pode desligar `DISK ROM`;
  - desligamento de `DISK ROM` so e permitido quando DEBUG estiver compilado.

### Mudancas implementadas
- `scripts/menuconfig.sh`
  - em `emit_make_config()`, quando `DEBUG=0`, forca `MSXBARE_FEAT_DISK_ROM=1`.
- `src/kernel.cpp`
  - em `NormalizeSettingsForBuild()`, com `MSXBARE_ENABLE_DEBUG_OVERLAY=0` e `MSXBARE_FEAT_DISK_ROM=1`, forca `m_DiskRomEnabled=TRUE`, ignorando `disk_rom` carregado do `MSXBARE.CFG`.

### Validacao executada
- Forcado `CONFIG_MSXBARE_DEBUG` para OFF e rodado `NON_INTERACTIVE=1 ./scripts/menuconfig.sh --sync-only`.
- Confirmado em `.config.mk`/`build/config.mk`: `DEBUG=0` e `MSXBARE_FEAT_DISK_ROM=1`.
- `make -j4` concluido com sucesso.

### Build de referencia desta iteracao
- `BUILD_HASH:d29ded2-d46958e09af5e776d46db617da4bee4c576a24c5`
- `INT_BUILD:2BD8`
