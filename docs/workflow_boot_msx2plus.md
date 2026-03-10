# Workflow de Boot do MSX 2+

Claro. Vamos desmontar o boot do **MSX 2+** como quem abre um relógio japonês dos anos 80: com carinho, precisão e sem romantizar demais a fumaça mágica.

Vou descrever o **workflow de boot “padrão” de um MSX 2+**, separando o que é **comportamento do padrão/BIOS** do que é **variação por fabricante/modelo**. Isso importa porque o “miolo” do boot é bastante padronizado, mas a tela inicial, presença de drive interno, ROMs extras, clock turbo e detalhes de layout variam entre Panasonic, Sony, Sanyo etc. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

## 1. O que está “acordando” quando você liga um MSX 2+

Num MSX 2+, os blocos principais envolvidos no boot são estes:

- **CPU Z80 ou clone / MSX-Engine** rodando, em geral, na base clássica de **~3,58 MHz**. Em alguns MSX 2+ há modo turbo ou clock alternável, mas isso **não é o comportamento universal do padrão**. ([en.wikipedia.org](https://en.wikipedia.org/wiki/FS-A1WSX?utm_source=chatgpt.com))
- **VDP Yamaha V9958**, que é o chip de vídeo da geração MSX 2+ / turboR. Ele é compatível com TMS9918A/V9938 em software, mas acrescenta scroll por hardware e os modos YJK. ([map.grauw.nl](https://map.grauw.nl/resources/video/yamaha_v9958_ocr.pdf?utm_source=chatgpt.com))
- **MSX-Engine** como **S1985** ou **S3527**, ou integração equivalente do fabricante. No caso do **S1985**, ele reúne PSG, PPI compatível com i8255, controle de ROM/DRAM, mapper e RTC. ([msx.org](https://www.msx.org/wiki/Yamaha_S1985))
- **PSG** (som base AY-3-8910/YM2149 compatível), usado também para parte da interface de joystick e sinais auxiliares. ([msx.org](https://www.msx.org/wiki/Yamaha_S1985))
- **MSX-MUSIC / OPLL YM2413**: em MSX 2+ é muito comum e, em várias referências da cena, tratado como parte típica da geração, embora a presença embutida possa variar por máquina concreta. Ele **não é protagonista do boot inicial**, mas pode ser inicializado depois pelo firmware/software. ([faq.msxnet.org](https://www.faq.msxnet.org/msx2p.html?utm_source=chatgpt.com))
- **ROM principal, Sub-ROM, DiskROM, Kanji ROM e expansões opcionais**, dependendo da máquina. A própria estrutura de ROMs no MSX2+/turboR é explicitada pelas variáveis e documentação do sistema. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

Em outras palavras: quando você dá power-on, o que realmente entra no palco primeiro é **CPU + lógica de slots/memória + ROM principal + VDP em estado inicial + circuitos básicos de I/O**. O resto vai sendo “trazido para a civilização” pelo BIOS. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

## 2. Momento zero: reset elétrico e estado inicial

Ao energizar a máquina:

1. a linha de **RESET** segura a CPU e outros blocos em estado conhecido;
2. o **V9958** recebe reset e reinicializa seus circuitos internos;
3. a CPU sai de reset e começa a executar em **0000h**, como um Z80 faz da forma mais clássica possível. ([map.grauw.nl](https://map.grauw.nl/resources/video/yamaha_v9958.pdf))

O V9958 tem pino de reset próprio, saída de interrupção para a CPU e também gera um sinal de clock relacionado ao cristal mestre: o datasheet informa que **CPUCLK/VDS** fornece **1/6 da frequência do XTAL**, enquanto os clocks de ponto aproximados são **10,74 MHz** em alta resolução e **5,37 MHz** em baixa resolução. ([map.grauw.nl](https://map.grauw.nl/resources/video/yamaha_v9958.pdf))

Isso já nos dá uma peça importante do quebra-cabeça:

- se o XTAL de vídeo está no valor típico do ecossistema MSX/V99x8, a base de **~21,477 MHz** é dividida internamente;
- daí sai o clock “clássico” de CPU/VPD timing na família em torno de **3,58 MHz**;
- e daí também derivam os clocks de pixel usados pelos modos de vídeo. ([retrobrewcomputers.org](https://retrobrewcomputers.org/n8vem-pbwiki-archive/0/35845334/35845347/48971828/V9958%20datasheet.pdf?utm_source=chatgpt.com))

## 3. Primeira instrução: BIOS principal entra em ação

No MSX, o endereço **0000h** está associado à rotina **CHKRAM**, descrita na BIOS como a rotina que **testa RAM e define o slot de RAM do sistema**. Isto é o começo oficial do boot lógico. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

Então a sequência inicial, em alto nível, é algo assim:

### 3.1. Descoberta de memória e slots
A BIOS:

- identifica onde está a RAM utilizável;
- define o slot/páginas de RAM do sistema;
- prepara a base para chamadas inter-slot e acesso ao mapa de memória MSX. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

Isso é crucial no MSX porque a máquina não é um PC linearzinho e obediente. Ela vive de **slots**. O espaço de 64 KB visível pela CPU é paginado logicamente entre ROM, RAM e expansões. O BIOS já nasce sabendo que precisa domar essa zoologia. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Chapter5b.html?utm_source=chatgpt.com))

### 3.2. Inicialização básica de I/O
Logo no início, a BIOS chama rotinas de inicialização como:

- **INITIO (003Bh)**: inicializa dispositivos;
- **INIFNK (003Eh)**: inicializa o conteúdo das function keys;
- depois seguem outras rotinas de preparação do ambiente. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

No hardware real, isso significa colocar em estado consistente:

- PPI / portas de teclado;
- seleção de slots;
- sinais de cassete/impressora quando presentes;
- PSG básico;
- variáveis de sistema em RAM. ([msx.org](https://www.msx.org/wiki/Yamaha_S1985))

## 4. O papel do MSX-Engine no boot

Se a máquina usa um **S1985**, ele concentra boa parte da cola do sistema:

- **PSG YM2149 compatível AY-3-8910**;
- **PPI compatível i8255**;
- controle de **ROM/DRAM**;
- **Memory Mapper** interno;
- **RTC** compatível RP5C01A;
- espelhamentos de certas portas de I/O. ([msx.org](https://www.msx.org/wiki/Yamaha_S1985))

Na prática, durante o boot, isso quer dizer:

- o BIOS conversa com um bloco central que já fornece **teclado**, **joysticks**, **click de tecla**, **controle de slots**, **timing auxiliar** e **mapeamento de memória**;
- a inicialização fica mais integrada do que em máquinas com lógica mais distribuída em vários CIs. ([msx.org](https://www.msx.org/wiki/Yamaha_S1985))

O **S3527** cumpre papel semelhante como “MSX-SYSTEM”, ainda que com composição um pouco diferente. ([map.grauw.nl](https://map.grauw.nl/resources/engine/yamaha_s3527.pdf?utm_source=chatgpt.com))

## 5. RAM, variáveis de sistema e espelhos de registradores

Depois que a RAM básica foi encontrada e habilitada, o BIOS monta a sua **área de trabalho em RAM**. Ali entram:

- rotinas de acesso a slots;
- buffer de teclado;
- ponteiros de filas;
- cores atuais;
- largura de linha;
- espelhos dos registradores do VDP;
- flags de status do sistema. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

Alguns pontos importantes dessa área:

- **VDP.DR = #0006** e **VDP.DW = #0007** guardam as portas-base do VDP;
- **#002D** informa a versão do sistema: `2 = MSX 2+`;
- **#002B** contém, entre outras coisas, a frequência de interrupção padrão: `0 = 60 Hz`, `1 = 50 Hz`;
- a RAM do BIOS guarda os espelhos dos registradores do VDP em **RG0SAV..RG7SAV** e também o status em **STATFL**. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

Isso é muito importante para emulação e para bare metal: o BIOS **não sai escrevendo diretamente no VDP o tempo inteiro como um selvagem barroco**; ele mantém um modelo em RAM do estado da máquina e sincroniza o hardware com esse modelo. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

## 6. Inicialização de vídeo: onde o boot realmente “aparece”

Agora entra o teatro.

### 6.1. O VDP usado é o V9958
O **V9958** do MSX2+ oferece:

- paleta de até **512 cores**;
- modos com até **512×424** em 16 cores;
- modos YJK com até **19.268 cores**;
- até **128 KB** de VRAM usável;
- scroll vertical/horizontal;
- engine de comandos gráficos. ([map.grauw.nl](https://map.grauw.nl/resources/video/yamaha_v9958.pdf))

Mas no boot normal da máquina, o firmware **não começa em SCREEN 10/11/12 com YJK e fogos de artifício digitais**. O fluxo padrão do BIOS é muito mais conservador.

### 6.2. O BIOS primeiro estabiliza a tela
As rotinas padrão incluem:

- **DISSCR (0041h)**: desliga a exibição;
- configuração dos registradores do VDP;
- inicialização do modo desejado;
- depois **ENASCR (0044h)** para religar a tela. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

Esse é o padrão sensato: apaga a tela, arruma a casa, liga a tela de novo. Bem mais elegante do que mostrar lixo de VRAM para o usuário.

### 6.3. Modo padrão de boot: texto
A rotina **INITXT** inicializa a tela em **TEXT1 (40×24)**; a própria BIOS diz isso explicitamente. A mudança genérica de modo é feita por **CHGMOD**, que aceita modos **0 a 8** na BIOS clássica. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

Ou seja:

- o boot “de firmware” do MSX tipicamente vai para um **modo texto**;
- o BIOS usa **TEXT1 / SCREEN 0 (40 colunas)** como base clássica para exibir prompt, mensagens e tela inicial;
- a paleta não é necessariamente inicializada por `INITXT`; para isso existe a observação de usar **INIPLT** via Sub-ROM. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

## 7. E a famosa “startup screen” do MSX2+?

Aqui mora uma sutileza deliciosa.

Na **Sub-ROM**, o endereço **#0002** é documentado como **“execution address for the startup screen”** para **MSX2, MSX2+ e turboR**, embora isso seja citado como **não oficial / não documentado**. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

Tradução prática:

- o **boot padronizado** prepara sistema, vídeo e ambiente;
- a **tela de abertura** bonitinha, quando existe, costuma ser responsabilidade de uma rotina adicional da **Sub-ROM**;
- essa tela **varia por fabricante/modelo**. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

Então o fluxo correto é este:

1. BIOS principal sobe o sistema;
2. VDP entra num modo de texto/ambiente conhecido;
3. Sub-ROM pode executar a tela inicial específica da máquina;
4. depois o controle segue para BASIC ou para o caminho de boot de disco. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

## 8. Qual modo de vídeo está ativo durante o boot?

Aqui convém separar **modo disponível** de **modo usado no boot**.

### Disponíveis no MSX2+
O V9958 e o MSX2+ suportam, além dos modos herdados:

- modos texto e gráficos do MSX2;
- e, no ecossistema MSX2+, os modos adicionais conhecidos no BASIC como **SCREEN 10, 11 e 12**, associados ao uso de **YJK / YAE** sobre o G7. ([en.wikipedia.org](https://en.wikipedia.org/wiki/Yamaha_V9958?utm_source=chatgpt.com))

### Usados no boot
No boot “normal”:

- a firmware **não costuma** iniciar em SCREEN 10/11/12;
- o ambiente inicial é **texto**, tipicamente **SCREEN 0 / TEXT1**, porque é o mais seguro para mensagens e prompt;
- a tela de splash, quando existe, pode usar recursos adicionais, mas ainda assim o fluxo de inicialização passa por modos básicos e pela preparação conservadora do VDP. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

## 9. Timings e frequências relevantes no boot

Vamos ao miolo de osciloscópio.

### 9.1. Clock base
O V9958 expõe que:

- **CPUCLK/VDS = XTAL / 6**
- **DHCLK ≈ 10,74 MHz**
- **DLCLK ≈ 5,37 MHz** ([map.grauw.nl](https://map.grauw.nl/resources/video/yamaha_v9958.pdf))

Isso é consistente com a família MSX/V99x8, onde o cristal mestre típico gira em torno de **21,47727 MHz**. ([retrobrewcomputers.org](https://retrobrewcomputers.org/n8vem-pbwiki-archive/0/35845334/35845347/48971828/V9958%20datasheet.pdf?utm_source=chatgpt.com))

### 9.2. CPU
O clock efetivo clássico da CPU na plataforma MSX é o conhecido **~3,579545 MHz**. Em alguns MSX2+ há aceleração por hardware/modelo, mas isso é variação de máquina, não regra do boot padrão. ([en.wikipedia.org](https://en.wikipedia.org/wiki/FS-A1WSX?utm_source=chatgpt.com))

### 9.3. Frequência de interrupção
A ROM informa a frequência padrão de interrupção como:

- **60 Hz** ou
- **50 Hz**, dependendo da configuração regional/máquina. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

Essa frequência é vital no boot porque o sistema de BIOS usa a interrupção periódica para:

- varredura de teclado;
- atualização de buffers;
- temporização de repetição de tecla;
- manutenção de alguns serviços de fundo. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

### 9.4. Vídeo e número de linhas
A documentação aqui fica menos direta no material aberto que consultei, então vou ser rigoroso: o comportamento geral segue a família de temporização de TV 50/60 Hz do MSX, mas **os detalhes exatos de número de linhas e janelas ativas dependem do padrão de vídeo e do modo selecionado**. O ponto seguro é que o boot herda essa cadência e a BIOS já sabe, via ROM/configuração, se o sistema opera com default **50 Hz** ou **60 Hz**. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

## 10. Interrupções: o sistema começa a “respirar”

No Z80 do MSX, o vetor de interrupção padrão passa pela rotina **KEYINT (0038h)**, descrita como a rotina de processamento de interrupção de timer. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

No uso prático, essa rotina sustenta vários mecanismos de base, inclusive:

- leitura do status do VDP;
- varredura de teclado via PPI;
- atualização de tabelas/buffers;
- processamento de filas como PLAY/sons em background. ([msx.org](https://www.msx.org/forum/msx-talk/development/msx-bios-interrupthandler?utm_source=chatgpt.com))

Ou seja: depois do boot inicial bruto, o sistema começa a viver em “batidas” de interrupção. É aí que ele deixa de ser um monte de silício recém-acordado e passa a ser um computador com hábitos.

## 11. Depois do splash: para onde o boot vai?

Depois da inicialização básica, a máquina segue por um destes caminhos:

### 11.1. Cai em MSX BASIC
Esse é o caminho padrão quando não há boot de disco acionado. No MSX2+, isso significa entrar no ambiente de **MSX BASIC 3.0** com a tela pronta e variáveis do sistema preparadas. ([it.wikipedia.org](https://it.wikipedia.org/wiki/MSX?utm_source=chatgpt.com))

### 11.2. Tenta boot por DiskROM
Se houver interface/drive com **DiskROM**, variáveis e estruturas de disco são inicializadas, e o sistema pode seguir para o bootstrap do ambiente de disco. A documentação de variáveis deixa explícito que certas áreas só são montadas quando um **DiskROM** está presente. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

Então, simplificando sem mutilar a verdade:

**power on → reset → CHKRAM → slots/RAM → INITIO → área de trabalho em RAM → VDP/texto → startup screen (Sub-ROM, se houver) → BASIC ou boot de disco**. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

## 12. Resumo do workflow de boot do MSX 2+ em sequência técnica

Aqui vai a sequência condensada, mas ainda “cirúrgica”:

1. **Power-on/reset**
   - RESET segura CPU e VDP.
   - V9958 reinicia seus blocos internos. ([map.grauw.nl](https://map.grauw.nl/resources/video/yamaha_v9958.pdf))

2. **CPU começa em 0000h**
   - entra em **CHKRAM**;
   - BIOS procura RAM e define slot do sistema. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

3. **Configuração de memória/slots**
   - BIOS prepara seleção de slots e base de chamadas inter-slot;
   - quando presente, o MSX-Engine participa com lógica de mapper/ROM/DRAM. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Chapter5b.html?utm_source=chatgpt.com))

4. **Inicialização de I/O**
   - `INITIO`, `INIFNK` e demais rotinas básicas;
   - teclado, PPI, PSG, buffers e flags começam a ganhar estado válido. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

5. **Montagem da área do sistema em RAM**
   - variáveis de BIOS;
   - espelhos do VDP;
   - largura de linha, cursor, cores, buffers de teclado etc. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

6. **Vídeo**
   - tela pode ser desabilitada com `DISSCR`;
   - registradores do VDP são programados;
   - BIOS entra em `INITXT` / `CHGMOD` para o modo inicial;
   - `ENASCR` reabilita a exibição. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

7. **Startup screen**
   - se a máquina tiver rotina de splash na Sub-ROM, ela é chamada;
   - isso é típico de MSX2/2+/turboR e varia por fabricante. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

8. **Serviços periódicos**
   - interrupções em 50/60 Hz começam a sustentar teclado e tarefas de fundo. ([map.grauw.nl](https://map.grauw.nl/resources/msxsystemvars.php))

9. **Destino final**
   - entra em BASIC;
   - ou aciona o caminho de boot por disco, se presente. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Chapter3.html?utm_source=chatgpt.com))

## 13. O que muda especificamente do MSX2 para o MSX2+ no boot?

No núcleo do boot, menos coisa do que muita gente imagina.

O **workflow de inicialização** continua fortemente baseado em:

- BIOS principal,
- Sub-ROM,
- slot system,
- boot em texto,
- ambiente inicial conservador. ([konamiman.github.io](https://konamiman.github.io/MSX2-Technical-Handbook/md/Appendix1.html))

O que o MSX2+ traz de novo é principalmente:

- **V9958** no lugar do V9938;
- **scroll horizontal/vertical por hardware**;
- **modos YJK/YAE**;
- ecossistema mais frequentemente associado a **MSX-MUSIC interno**;
- refinamentos de integração por engines como S1985/T9769x dependendo do fabricante. ([en.wikipedia.org](https://en.wikipedia.org/wiki/Yamaha_V9958?utm_source=chatgpt.com))

Mas o boot, em espírito, continua sendo: **subir hardware, testar RAM, organizar slots, preparar VDP em modo seguro, mostrar tela de abertura, entregar o controle ao ambiente principal**. Elegante, modular e sem a obesidade de firmware que viria nas décadas seguintes.
