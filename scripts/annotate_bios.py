#!/usr/bin/env python3
# -----------------------------------------------------------------------------
# annotate_bios.py — Adiciona organizacao e comentarios ao disassembly da BIOS
#                    do MSX 1 Gradiente Expert (EXPERT11.ROM) gerado por z80dasm.
#
# Uso:  python3 annotate_bios.py
# Saida: BIOS_annotated.asm  (mesmo diretorio)
# -----------------------------------------------------------------------------
#
# Notas sobre o disassembly:
#   - Ferramenta: z80dasm 1.1.6 (sem flags extras)
#   - A diretiva "org 00100h" indica que z80dasm adotou 0x0100 como endereco
#     base.  Na memoria real do MSX a ROM reside em 0x0000-0x7FFF (slot 0),
#     portanto todos os enderecos aparecem deslocados +0x0100 em relacao aos
#     enderecos fisicos reais.
#   - O arquivo EXPERT11.ROM e a BIOS v1.1 do Gradiente Expert, um clone MSX-1
#     brasileiro fabricado pela Gradiente Eletronica.
#   - O disassembler processa o binario linearmente, sem saber quais regioes
#     sao codigo e quais sao dados (tabelas de fontes, strings, tabelas de
#     vetores).  Isso gera instrucoes sintaticamente validas mas semanticamente
#     sem sentido em regioes de dados – identificadas ao longo do codigo.
#
# Estrutura geral da BIOS MSX-1:
#   0x0000 (→0x0100)  Vetor de reset / cold-boot (RST 00H)
#   0x0008 (→0x0108)  RST 08H — SYNCHR (checar char de sintaxe)
#   0x0010 (→0x0110)  RST 10H — RDSLT  (ler byte de slot)
#   0x0018 (→0x0118)  RST 18H — OUTDO  (enviar char ao dispositivo de saida)
#   0x0020 (→0x0120)  RST 20H — CALSLT (chamar rotina em outro slot)
#   0x0028 (→0x0128)  RST 28H — DCOMPR (comparar HL com DE)
#   0x0030 (→0x0130)  RST 30H — ENASLT (habilitar slot)
#   0x0038 (→0x0138)  RST 38H — handler de interrupcao modo 1
#   0x0066 (→0x0166)  NMI     — handler de NMI (tecla PAUSE)
#
#   Tabela de entrada BIOS extendida:
#   A partir de ~0x013C os JP's formam a hook-table padrao MSX.
#   Implementacoes reais das rotinas comecam a partir de ~0x01B0.
#
# Referencias:
#   MSX Technical Databook (ASCII Corp, 1984)
#   MSX System Technical Manual (ASCII Corp, 1985)
#   fMSX source code (Marat Fayzullin)
#   openMSX source code (openMSX team)
# -----------------------------------------------------------------------------

import argparse
import os
import re

INPUT = os.path.join(os.path.dirname(__file__), "BIOS.asm")
OUTPUT = os.path.join(os.path.dirname(__file__), "BIOS_annotated.asm")

# ---------------------------------------------------------------------------
# Banco de conhecimento:  mapa de enderecos → (label, comentario)
# Todos os enderecos estao no espaco de nomes do disassembly (base +0x0100).
# ---------------------------------------------------------------------------
ADDR_LABELS = {
    # ---- Vetores RST (8-byte slots) ----------------------------------------
    "00100h": ("RESET",         "RST 00H: Cold-boot / CHKRAM — DI + JP para init"),
    "00108h": ("RST_08H",       "RST 08H: SYNCHR — checa caractere de sintaxe BASIC"),
    "00110h": ("RST_10H",       "RST 10H: RDSLT  — le byte de um slot especifico"),
    "00118h": ("RST_18H",       "RST 18H: OUTDO  — envia char para dispositivo de saida atual"),
    "00120h": ("RST_20H",       "RST 20H: CALSLT — chamada inter-slot"),
    "00128h": ("RST_28H",       "RST 28H: DCOMPR — compara HL e DE, seta flags"),
    "00130h": ("RST_30H",       "RST 30H: ENASLT — habilita slot de memoria"),
    "00138h": ("RST_38H",       "RST 38H: Handler de interrupcao primaria (IM 1)"),
    "00166h": ("NMI_HANDLER",   "NMI     — Tecla PAUSE: salva estado, pausa emulacao"),

    # ---- Tabela de entrada BIOS extendida (JP table) -----------------------
    # Standard MSX Main ROM entry points (com offset +0x100)
    "0014bh": ("LDIRMV",        "Block move: VRAM → RAM (BC bytes de HL(VRAM) para DE(RAM))"),
    "0014eh": ("LDIRVM",        "Block move: RAM → VRAM (BC bytes de HL(RAM) para DE(VRAM))"),
    "00151h": ("CHGMOD",        "Muda modo de tela (A=modo: 0=TEXT, 1=GRP1, 2=GRP2, 3=MLTI)"),
    "00154h": ("CHGCLR",        "Muda atributos de cor da tela"),
    "0015ah": ("CLRSPR",        "Limpa todos os sprites (zera tabela de atributos)"),
    "0015dh": ("INITXT",        "Inicializa TEXT 1 (Screen 0, 40 colunas)"),
    "00160h": ("INIT32",        "Inicializa GRAPHIC 1 (Screen 1, 32x24 blocos)"),
    "00163h": ("INIGRP",        "Inicializa GRAPHIC 2 (Screen 2, 256x192 bitmapped)"),
    "00166h": ("INIMLT",        "Inicializa MULTICOLOR (Screen 3)"),
    "0017ah": ("SETATR",        "Seta atributo de cor de um caracter na tela"),
    "0017dh": ("FILVRM",        "Preenche regiao da VRAM com valor constante"),
    "00180h": ("CLSSCR",        "Limpa a tela (preenche com espacos/cor de fundo)"),
    "00183h": ("CLSSUB_JP",     "JP para implementacao de CLSSUB"),
    "001b6h": ("RDSLT_IMPL",    "Implementacao RDSLT: le byte de slot (A=slot, HL=endereco)"),
    "001d1h": ("ENASLT_IMPL",   "Implementacao ENASLT: habilita slot (A=slot, HL=endereco)"),
    "00205h": ("CALLF_IMPL",    "Implementacao CALLF: chamada far (RST 30H hook)"),
    "00217h": ("CALSLT_IMPL",   "Implementacao CALSLT: chamada inter-slot"),
    "0025eh": ("DCOMPR_IMPL",   "Implementacao DCOMPR: compara HL e DE — Z=HL==DE, C=HL<DE"),
    "002d7h": ("CHKRAM_IMPL",   "CHKRAM: detecta e inicializa RAM, testa slots de memoria"),

    # ---- VDP (Video Display Processor TMS9918/9928) -------------------------
    "0049dh": ("LDIRVM_IMPL",   "LDIRVM impl: BC bytes de (HL) para VRAM em DE"),
    "0050eh": ("INITVDP",       "Inicializacao do VDP — seta registradores, limpa VRAM"),
    "00538h": ("INIT_SCREEN0",  "Inicializa Screen 0 (TEXT 1, 40x24)"),
    "00570h": ("INIT_SCREEN1",  "Inicializa Screen 1 (GRAPHIC 1, 32x24 tiles)"),
    "0057fh": ("SETATR_IMPL",   "SETATR impl: escreve registrador VDP (A=reg, B=val)"),
    "00577h": ("WRTVDP_IMPL",   "WRTVDP impl: escreve valor no registrador VDP"),
    "00594h": ("FILVRM_IMPL",   "FILVRM impl: preenche VRAM com byte A (HL=inicio, BC=tam)"),
    "005b4h": ("CLSSCR_IMPL",   "CLSSCR impl: limpa tela no modo atual"),
    "005d2h": ("INIT_SCREEN2",  "Inicializa Screen 2 (GRAPHIC 2, bitmapped 256x192)"),
    "00602h": ("INIT_SCREEN3",  "Inicializa Screen 3 (MULTICOLOR)"),
    "00619h": ("INIT_SPRITES",  "Inicializa tabela de sprites (OAM)"),
    "0061fh": ("CLRSPR_IMPL",   "CLRSPR impl: limpa atributos de todos os sprites"),
    "00659h": ("COLOR_IMPL",    "COLOR impl: seta cor de frente/fundo/borda"),
    "006a8h": ("PUTSPR",        "Coloca sprite na tela (indice, X, Y, cor, pattern)"),
    "006e4h": ("CALPAT",        "Calcula endereco de padrao de sprite na VRAM"),
    "006f9h": ("CALATR",        "Calcula endereco de atributo de sprite na VRAM"),
    "00704h": ("SCAMOD",        "Retorna modo de tela atual"),
    "0070fh": ("GRPVDP",        "Escreve byte na VRAM em modo grafico"),
    "00744h": ("GRPVDP2",       "Rotina auxiliar de escrita VRAM em modo grafico"),
    "007cdh": ("WRTVRM_IMPL",   "WRTVRM impl: escreve byte em endereco VRAM"),
    "007d7h": ("RDVDP_IMPL",    "RDVDP impl: le registrador de status do VDP (porta 99h)"),
    "007dfh": ("SETWRT_IMPL",   "SETWRT impl: seta endereco VRAM para escrita"),
    "007ech": ("SETRD_IMPL",    "SETRD impl: seta endereco VRAM para leitura"),
    "007f7h": ("CHGCLR_IMPL",   "CHGCLR impl: carrega registradores de cor no VDP"),
    "00815h": ("LDIRVM_JP",     "JP helper para LDIRVM (transferencia RAM→VRAM)"),
    "0083bh": ("DISSCR",        "DISSCR: desativa display do VDP (blank)"),
    "0084fh": ("ENASCR",        "ENASCR: ativa display do VDP (unblank)"),
    "0085dh": ("WRTSPR",        "WRTSPR: escreve padrao de sprite na VRAM"),
    "00884h": ("RDSPR",         "RDSPR: le padrao de sprite da VRAM"),
    "0089dh": ("GTTRIG",        "GTTRIG: le estado do gatilho (trigger) do joystick"),
    "008bch": ("GTPAD",         "GTPAD: le posicao do paddle/mouse"),

    # ---- Teclado e Input ---------------------------------------------------
    "00b15h": ("SNSMAT_IMPL",   "SNSMAT impl: le linha da matriz de teclado"),
    "00b26h": ("CHSNS_IMPL",    "CHSNS impl: verifica se ha tecla pressionada"),
    "00b2bh": ("CHGET_IMPL",    "CHGET impl: espera e retorna tecla pressionada"),
    "008bch": ("GTPAD_IMPL",    "GTPAD impl: le valor do paddle"),

    # ---- Interrupcao e Timer -----------------------------------------------
    "00c3ch": ("LDIRMV_IMPL",   "LDIRMV impl: BC bytes de VRAM(HL) para RAM(DE)"),
    "00d6ah": ("INTOBJ",        "Rotina de objeto de interrupcao (periodica)"),
    "010cbh": ("GICINI",        "GICINI: inicializa chip PSG/AY-3-8910"),

    # ---- Cassete -----------------------------------------------------------
    "0085dh": ("TAPION_IMPL",   "TAPION impl: abre fita cassete para leitura"),
    "0088eh": ("TAPIOF_IMPL",   "TAPIOF impl: fecha fita cassete (stop motor)"),

    # ---- PSG / Som ---------------------------------------------------------
    "01102h": ("WRTPSG_IMPL",   "WRTPSG impl: escreve registrador PSG (A=reg, E=val)"),
    "0110eh": ("RDPSG_IMPL",    "RDPSG impl: le registrador PSG (A=reg)"),
    "0110ch": ("RDPSG2",        "RDPSG variante: le PSG sem mudar registrador atual"),
    "011c4h": ("STRTMS_IMPL",   "STRTMS impl: inicia reproducao de musica em background"),
    "011eeh": ("GTSTCK_IMPL",   "GTSTCK impl: le direcao do joystick"),
    "01253h": ("GTRIG_IMPL2",   "GTRIG impl: le botao de fogo do joystick (A=joystick num)"),

    # ---- BASIC / Hooks -----------------------------------------------------
    "01384h": ("BASIC_START",   "Ponto de entrada principal do BASIC"),
    "0139dh": ("CHKDAT",        "CHKDAT: verifica instrucao DATA"),
    "01398h": ("CHKNUM",        "CHKNUM: verifica que proximo token e numero"),
    "0145fh": ("NMLHD",         "NMLHD: NMI handler BASIC (pausa BASIC)"),
    "0146ah": ("TAPOUT_IMPL",   "RST20H hook — relacionado a saida cassete"),
    "01449h": ("TAPION2",       "TAPION2: variante abertura cassete"),
    "0144ch": ("READYR",        "READYR: sinal de pronto da cassete"),
    "0144fh": ("READVL",        "READVL: le volume da cassete"),
    "01452h": ("STOPTAP",       "STOPTAP: para motor cassete"),
    "0148ah": ("TAPOOF",        "TAPOOF: fecha saida cassete"),
    "0148eh": ("TAPOFF",        "TAPOFF: desliga cassete"),
    "01463h": ("TAPOON",        "TAPOON: liga saida cassete (motor on)"),
    "01467h": ("WRTTAP",        "WRTTAP: escreve byte na fita cassete"),
    "0146ah": ("RDTAPE",        "RDTAPE: le byte da fita cassete"),
    "01470h": ("TAPION3",       "TAPION3: abre cassete para leitura (com RS232 check)"),
    "01474h": ("TAPOOF2",       "TAPOOF2: fecha cassete para saida"),
    "014ebh": ("INIARP",        "INIARP: inicializa ARP (Auto-Repeat do teclado)"),
    "01492h": ("CHGCAP",        "CHGCAP: muda estado do LED CAPS LOCK"),

    # ---- Sistema / Inicializacao ------------------------------------------
    "016c5h": ("CLCHIP",        "CLCHIP: inicializa chips de hardware (VDP, PSG, PPI)"),
    "016eeh": ("INIROM",        "INIROM: inicializa ROM (testa e mapeia BASIC ROM)"),
    "0170ah": ("BASIC_WARM",    "BASIC WARM START: reinicia BASIC sem apagar variaveis"),
    "0172ah": ("CLSALL",        "CLSALL: limpa estado do BASIC (lista, variaveis)"),
    "0173ch": ("INIPAT",        "INIPAT: inicializa padrao de caracteres VDP (font)"),
    "0175dh": ("INISLT",        "INISLT: inicializa e testa todos os slots"),
    "01510h": ("INLIN",         "INLIN: leitura de linha do usuario (input)"),
    "014bdh": ("OUTDO_IMPL",    "OUTDO impl: saida de char para dispositivo selecionado"),
    "01563h": ("CHPUT_IMPL",    "CHPUT impl: imprime char na tela (A=char, atualiza cursor)"),

    # ---- Aritmetica de ponto flutuante (para o MSX BASIC) -----------------
    "019ddh": ("DECSNG",        "DECSNG: converte decimal ASCII em single precision"),
    "019e9h": ("DECHEX",        "DECHEX: converte decimal ASCII em hexa"),
    "019f1h": ("HEXDEC",        "HEXDEC: converte hexa em decimal"),
    "01a19h": ("PINMUL",        "PINMUL: pin multiplex / math init"),
    "01a63h": ("FRCINT",        "FRCINT: converte float para inteiro"),
    "01abch": ("FRCSNG",        "FRCSNG: converte valor para single precision"),
    "01b45h": ("DCOMPR_JMP",    "RST 28H jump: DCOMPR (compara HL e DE)"),
    "01b63h": ("OUTDO_CHAR",    "OUTDO char dispatch: envia A para saida atual"),

    # ---- Impressora / RS-232 -----------------------------------------------
    "023bfh": ("INIT_RS232",    "Inicializacao RS-232 (porta serial)"),
    "023cch": ("RS232_OUT",     "Saida de byte pela porta RS-232"),
    "023d5h": ("RS232_IN",      "Leitura de byte pela porta RS-232"),

    # ---- VRAM helper avancado ----------------------------------------------
    "01809h": ("GRPPRT",        "GRPPRT: imprime char em modo grafico (screen 2)"),
    "018c7h": ("SCALXY",        "SCALXY: escala coordenadas para modo grafico"),
    "018cfh": ("MAPXY",         "MAPXY: mapeia coordenada para endereco VRAM"),
    "018e4h": ("FETCHP",        "FETCHP: le pixel em coordenada (X,Y) grafica"),
    "0197ah": ("STOREP",        "STOREP: escreve pixel em coordenada (X,Y) grafica"),
}

# ---------------------------------------------------------------------------
# Mapa de secoes: (endereco_inicio_dec, nome_secao, descricao_longa)
# Os enderecos sao no espaco do disassembly (base 0x0100 = dec 256).
# ---------------------------------------------------------------------------
SECTIONS = [
    (0x0100, "=== VETORES RST / RESET E TABELA DE ENTRADA BIOS ===",
     "; Primeiros 64 bytes (0x0100-0x013F = fisico 0x0000-0x003F):\n"
     "; 8 vetores RST de 8 bytes cada.  Cada vetor pode conter ate 8 bytes\n"
     "; de codigo inline ou um JP + NOPs de preenchimento.\n"
     "; Em seguida, a tabela de entrada extendida da BIOS ocupa os bytes ate\n"
     "; o handler de NMI em 0x0166."),

    (0x0166, "=== HANDLER NMI (TECLA PAUSE) ===",
     "; Chamado pelo hardware ao pressionar PAUSE/STOP.\n"
     "; Salva estado completo da CPU e suspende execucao ate nova tecla."),

    (0x01B0, "=== IMPLEMENTACOES RST: RDSLT / ENASLT / CALLF / CALSLT ===",
     "; Rotinas de gerenciamento de slots de memoria (page switching).\n"
     "; O MSX usa um sistema de 4 slots primarios x 4 sub-slots.\n"
     "; Registrador primario: porta 0xA8  Sub-slot: endereco 0xFFFF do slot."),

    (0x02D7, "=== CHKRAM: DETECCAO E INICIALIZACAO DA RAM ===",
     "; Executada no power-on/reset.  Testa cada slot para encontrar RAM.\n"
     "; Determina tamanho da RAM disponivel, inicializa stack pointer,\n"
     "; copia hook-table para RAM e salta para BASIC/MSX-SYSTEM."),

    (0x0468, "=== ROTINAS DE SLOT E PAGINACAO DE MEMORIA ===",
     "; Suporte de baixo nivel ao mapeamento de paginas de 16KB.\n"
     "; Gerencia a porta 0xA8 (slot primario) e endereco 0xFFFF (sub-slot)."),

    (0x04BD, "=== INICIALIZACAO DO SISTEMA (pos-RAM) ===",
     "; Sequencia de boot apos RAM detectada:\n"
     ";   1. Inicializa VDP\n"
     ";   2. Inicializa PSG (AY-3-8910)\n"
     ";   3. Carrega fonte de caracteres na VRAM\n"
     ";   4. Inicializa BASIC ROM\n"
     ";   5. Salta para BASIC."),

    (0x04F0, "=== VDP: CONTROLE DO TMS9918A/9928A ===",
     "; Rotinas de acesso ao Video Display Processor:\n"
     ";   - Leitura/escrita de registradores (portas 0x98/0x99)\n"
     ";   - Leitura/escrita de VRAM\n"
     ";   - Inicializacao de modos de tela\n"
     ";   - Gerenciamento de sprites\n"
     ";   - Fontes e caracteres"),

    (0x0B00, "=== TECLADO: LEITURA DA MATRIZ 8x11 ===",
     "; O teclado MSX usa matriz de 8 linhas x 11 colunas via PPI 8255.\n"
     ";   Porta 0xAA (saida): seleciona linha (0-10)\n"
     ";   Porta 0xA9 (entrada): le 8 colunas da linha selecionada\n"
     "; Rotinas: SNSMAT (le linha raw), CHSNS (tecla pressionada?),\n"
     ";          CHGET (aguarda + retorna tecla), auto-repeat."),

    (0x0D00, "=== HANDLER DE INTERRUPCAO PERIODICA (50/60 Hz) ===",
     "; Executado a cada interrupcao de VSync do VDP.\n"
     "; Responsabilidades:\n"
     ";   - Atualiza contador de ticks (JIFFY)\n"
     ";   - Aciona musica de background (PLAY)\n"
     ";   - Processa auto-repeat do teclado\n"
     ";   - Chama hooks de usuario (H.TIMI)\n"
     ";   - Atualiza cursor piscante"),

    (0x0F00, "=== CASSETE: LEITURA E ESCRITA DE FITA ===",
     "; Interface de cassete via porta 0x90-0x91 (motor) e 0x91 (audio).\n"
     "; Protocolo: piloto, header (nome, tipo), dados com checksum.\n"
     "; Velocidades: 1200 baud (normal) e 2400 baud (high speed)."),

    (0x1100, "=== PSG: AY-3-8910 / YM2149 (AUDIO) ===",
     "; Chip de som de 3 canais + ruido + envelope.\n"
     "; Portas: 0xA0 (latch/endereco), 0xA1 (escrita), 0xA2 (leitura).\n"
     "; WRTPSG: escreve registrador  RDPSG: le registrador.\n"
     "; Os registradores controlam: frequencia dos canais, mixagem,\n"
     ";   volume, envelope e porta de joystick."),

    (0x1200, "=== JOYSTICK: LEITURA E PROCESSAMENTO ===",
     "; Le 2 joysticks/gamepads via PSG registradores 14-15.\n"
     "; GTSTCK: retorna direcao (0=centro, 1-8=direcoes)\n"
     "; GTTRIG: retorna estado dos botoes de fogo"),

    (0x1380, "=== BASIC ROM: ENTRADA E INICIALIZACAO ===",
     "; Ponte entre a BIOS e o interpretador MSX BASIC.\n"
     "; Inclui warm start, cold start, e inicializacao das variaveis\n"
     "; do sistema BASIC na RAM de trabalho (0xF380-0xFFFF)."),

    (0x1500, "=== I/O DE TEXTO: CHPUT / INLIN / CURSOR ===",
     "; CHPUT: imprime caracter na posicao atual do cursor.\n"
     "; Gerencia scroll, TAB, controle de cursor (ESC sequences),\n"
     "; INLIN: leitura de linha com eco e edicao basica.\n"
     "; Suporte a todos os codigos de controle MSX (0x01-0x1F)."),

    (0x1800, "=== GRAFICOS: PIXEL, LINHA, CIRCULO (SCREEN 2) ===",
     "; Rasterizacao de primitivas graficas em modo GRAPHIC 2.\n"
     "; GRPPRT: imprime char em modo grafico (usando fonte de 8x8).\n"
     "; MAPXY/FETCHP/STOREP: operacoes em pixels individuais.\n"
     "; Suporte a operacoes logicas (AND, OR, XOR, NOT) no pixel."),

    (0x19D0, "=== ARITMETICA DE PONTO FLUTUANTE ===",
     "; Biblioteca de float de 5 bytes para o MSX BASIC:\n"
     ";   Formato: 1 byte expoente (bias 64) + 4 bytes mantissa (32 bits)\n"
     ";   Operacoes: +, -, *, /, INT, SQR, LOG, EXP, SIN, COS, ATN\n"
     "; Convertores: FRCINT, FRCSNG, FRCSNC, DECSNG, VALTYP."),

    (0x1B40, "=== RS-232 / PORTA SERIAL ===",
     "; Driver opcional de RS-232 para MSX.\n"
     "; Pode nao estar presente em todos os modelos de Expert.\n"
     "; INIT_RS232: configura baudrate, paridade, stopbits.\n"
     "; RS232_IN/OUT: transferencia de bytes."),

    (0x2300, "=== UTILITARIOS GERAIS DO SISTEMA ===",
     "; Rotinas diversas: comparacao de strings, conversao de tipos,\n"
     "; gerenciamento de memoria BASIC, parser de expressoes."),

    (0x2600, "=== INTERPRETADOR BASIC: MATEMATICA AVANCADA ===",
     "; Ponto flutuante double precision e operacoes matematicas avancadas\n"
     "; para o MSX BASIC.  Inclui algoritmos de Newton-Raphson e CORDIC\n"
     "; para funcoes trigonometricas e logaritmicas."),

    (0x3300, "=== INTERPRETADOR BASIC: SCANNER / TOKENIZER ===",
     "; Converte texto ASCII em tokens internos do BASIC.\n"
     "; Identifica palavras-chave, numeros, strings, operadores.\n"
     "; Constroi estrutura de linha tokenizada na memoria."),

    (0x3900, "=== INTERPRETADOR BASIC: EXECUTOR DE COMANDOS ===",
     "; Dispatcham execucao de cada token/comando BASIC.\n"
     "; RUN, LIST, NEW, LOAD, SAVE, PRINT, INPUT, IF, FOR, GOTO, GOSUB..."),

    (0x4060, "=== BASIC: ERRO E TRATAMENTO DE EXCECOES ===",
     "; Handler de erros do BASIC: imprime numero/mensagem de erro,\n"
     "; restaura stack, retorna ao prompt OK>."),

    (0x4600, "=== BASIC: PARSER DE EXPRESSOES ===",
     "; Analise e avaliacao de expressoes aritmeticas/logicas/string.\n"
     "; Precedencia de operadores, funcoes internas (LEFT$, MID$, etc.)."),

    (0x5000, "=== BASIC: FUNCOES MATEMATICAS ===",
     "; Implementacoes de: SQR, INT, ABS, SGN, LOG, EXP, SIN, COS, TAN,\n"
     "; ATN, RND, SPC, TAB, e conversoes de tipo."),

    (0x5600, "=== BASIC: I/O — PRINT, INPUT, READ, DATA ===",
     "; PRINT: formatacao e saida de valores.\n"
     "; INPUT: leitura com prompt e parsing.\n"
     "; READ/DATA: acesso a constantes embutidas no programa."),

    (0x6000, "=== BASIC: GERENCIAMENTO DE VARIAVEIS E ARRAYS ===",
     "; Alocacao, busca e acesso a variaveis simples e arrays.\n"
     "; Tipos suportados: Integer (%), Single (!), Double (#), String ($)."),

    (0x6400, "=== BASIC: COMANDOS DE ARQUIVO (CSAVE/CLOAD) ===",
     "; CSAVE: salva programa BASIC na fita cassete.\n"
     "; CLOAD: carrega programa BASIC da fita cassete.\n"
     "; Formato: header MSX padrao + dados tokenizados + EOF marker."),

    (0x6C00, "=== BASIC: COMANDOS GRAFICOS (LINE, CIRCLE, PAINT) ===",
     "; LINE: desenha linha (algoritmo de Bresenham).\n"
     "; CIRCLE: desenha circunferencia/elipse (algoritmo de Bresenham otimizado).\n"
     "; PAINT: preenchimento de area (flood fill).\n"
     "; GET/PUT: captura e restaura regioes da tela."),

    (0x7500, "=== BASIC: COMANDOS DE SPRITE ===",
     "; SPRITE: controla sprites via OAM (Object Attribute Memory) da VRAM.\n"
     "; PUT SPRITE: posiciona sprite (num, cor, pattern, x, y).\n"
     "; SPRITE SIZE, SPRITE COLOR: configuracao de sprites."),

    (0x7C00, "=== BASIC: COMANDOS DE SOUND (PLAY, SOUND, BEEP) ===",
     "; PLAY: executa string de musica em background (MML - Music Macro Language).\n"
     "; SOUND: acesso direto aos registradores PSG.\n"
     "; BEEP: emite sinal sonoro padrao."),

    (0x7D00, "=== ROTINAS DE SISTEMA FINAL / BOOT SEQUENCER ===",
     "; Sequenciamento final do boot, inicializacao do BASIC,\n"
     "; e transicao para o prompt do usuario."),
]

# ---------------------------------------------------------------------------
# Comentarios inline: (endereco_hex_str, lista_de_linhas_de_instrucao_para_casar,
#                       comentario)
# Usado para adicionar '; comentario' apos instrucoes especificas em contexto.
# ---------------------------------------------------------------------------
INLINE_COMMENTS = {
    "00100h_di":     "; >>> RESET VECTOR: desabilita interrupcoes — inicio do cold boot",
    "00100h_jp":     "; Pula para CHKRAM_IMPL (rotina de deteccao de RAM)",
    "00108h_jp":     "; RST 08H: SYNCHR — implementacao em 02683h",
    "00110h_jp":     "; RST 10H: RDSLT — le byte de slot (A=slot, HL=endereco)",
    "00118h_jp":     "; RST 18H: OUTDO — imprime A para saida atual",
    "00120h_jp":     "; RST 20H: CALSLT — chamada para rotina em outro slot",
    "00128h_jp":     "; RST 28H: DCOMPR — compara HL vs DE",
    "00130h_jp":     "; RST 30H: ENASLT — habilita paginacao de slot",
    "00138h_jp":     "; RST 38H: handler de interrupcao de hardware (IM1, 50/60Hz)",
    "00599h_di":     "; Protege acesso ao VDP: desativa interrupcoes temporariamente",
    "00599h_ei":     "; Reabilita interrupcoes apos acesso critico ao VDP",
}

# ---------------------------------------------------------------------------
# Padroes de instrucoes que indicam regioes de DADOS desassemblados como codigo
# ---------------------------------------------------------------------------
DATA_PATTERN_INDICATORS = [
    "ld (hl),b",
    "adc a,b",
    "jr nz,$+2",
    "jr nz,$+34",
    "jr nz,$+66",
    "add a,b",
]


def addr_from_line(line: str):
    """Extrai o endereco (se houver label de endereco prefixado) de uma linha."""
    # z80dasm nao emite label de endereco por padrao — usamos contexto
    return None


def normalize_addr(addr_str: str) -> str:
    """Normaliza string de endereco para letras minusculas com h-suffix."""
    return addr_str.lower().replace("0x", "").rstrip("h") + "h" if addr_str else ""


def parse_args():
    parser = argparse.ArgumentParser(
        description="Adiciona organizacao e comentarios a um disassembly Z80."
    )
    parser.add_argument(
        "input",
        nargs="?",
        default=INPUT,
        help="Arquivo de entrada gerado pelo z80dasm.",
    )
    parser.add_argument(
        "-o",
        "--output",
        default=None,
        help="Arquivo de saida. Se omitido, gera '<input>.annotated'.",
    )
    return parser.parse_args()


def format_section_header(name: str, description: str) -> str:
    """Formata um bloco de comentario de secao."""
    sep = ";" + "=" * 77
    lines = [
        "",
        sep,
        f"; {name}",
        sep,
        description,
        sep,
        "",
    ]
    return "\n".join(lines)


def count_data_pattern(lines_slice) -> int:
    """Conta quantas instrucoes da fatia batem com padroes de dados."""
    count = 0
    for ln in lines_slice:
        stripped = ln.strip().lower()
        for pat in DATA_PATTERN_INDICATORS:
            if stripped.startswith(pat):
                count += 1
    return count


def annotate(input_path: str, output_path: str):
    with open(input_path, "r", encoding="utf-8", errors="replace") as f:
        original = f.readlines()
    if any("Gerado por: z80dasm 1.1.6 + anotacoes manuais/automaticas" in line for line in original[:80]):
        raise SystemExit(
            "[ERRO] O arquivo de entrada ja parece anotado. "
            "Regenere o disassembly bruto antes de rodar novamente."
        )

    # Construir mapa de secoes indexado por endereco decimal
    section_map = {}
    for (addr, name, desc) in SECTIONS:
        section_map[addr] = (name, desc)
    section_map[0x0139] = (
        "=== JP TABLE PRINCIPAL DA BIOS ===",
        "; Esta faixa contem trampolins `jp` da API publica da BIOS/MSX BASIC.\n"
        "; A maioria das entradas so redireciona para implementacoes internas\n"
        "; localizadas mais adiante no binario.",
    )
    section_map.pop(0x0166, None)

    # Construir mapa de labels indexado por endereco hex string
    label_map = {}
    for addr_hex, (label, comment) in ADDR_LABELS.items():
        label_map[addr_hex.lower()] = (label, comment)
    for ambiguous_addr in (
        "0014bh", "0014eh", "00151h", "00154h", "0015ah", "0015dh",
        "00160h", "00163h", "00166h", "0017ah", "0017dh", "00180h",
        "00183h", "001b6h", "001d1h", "00205h", "00217h", "0025eh", "0085dh",
        "008bch", "0146ah",
    ):
        label_map.pop(ambiguous_addr, None)

    # Rastrear endereco simulado (comeca em org 00100h = 0x0100 = 256 decimal)
    current_addr = 0x0100

    # Calcular tamanho em bytes de cada instrucao z80 de forma simplificada
    # (aproximacao: conta apenas pelo padrao textual)
    OPCODE_SIZES = {
        r"^\s*nop\s*$": 1,
        r"^\s*di\s*$": 1,
        r"^\s*ei\s*$": 1,
        r"^\s*ret\b": 1,
        r"^\s*rlca\s*$": 1,
        r"^\s*rrca\s*$": 1,
        r"^\s*rla\s*$": 1,
        r"^\s*rra\s*$": 1,
        r"^\s*daa\s*$": 1,
        r"^\s*cpl\s*$": 1,
        r"^\s*scf\s*$": 1,
        r"^\s*ccf\s*$": 1,
        r"^\s*halt\s*$": 1,
        r"^\s*exx\s*$": 1,
        r"^\s*ex af,af'\s*$": 1,
        r"^\s*retn\s*$": 2,
        r"^\s*reti\s*$": 2,
        r"^\s*im\s+[012]\s*$": 2,
        r"^\s*jp\s+\(": 1,
        r"^\s*jp\s+[a-z]{1,3},[0-9a-f]+h\s*$": 3,
        r"^\s*jp\s+[0-9a-f]+h\s*$": 3,
        r"^\s*jr\s*\$[+-]": 2,
        r"^\s*jr\s+[a-z]{1,3},\s*\$[+-]": 2,
        r"^\s*call\s+[0-9a-f]+h\s*$": 3,
        r"^\s*call\s+[a-z]{1,3},[0-9a-f]+h\s*$": 3,
        r"^\s*ld\s+[a-z]{2},\s*[0-9a-f]+h\s*$": 3,
        r"^\s*ld\s+\([0-9a-f]+h\),": 3,
        r"^\s*ld\s+[a-z]+,\([0-9a-f]+h\)\s*$": 3,
        r"^\s*ld\s+[a-z]{2},\s*[0-9]+\s*$": 3,
        r"^\s*rst\s+": 1,
        r"^\s*push\s+": 1,
        r"^\s*pop\s+": 1,
        r"^\s*inc\s+[a-z]{2}\s*$": 1,
        r"^\s*dec\s+[a-z]{2}\s*$": 1,
        r"^\s*inc\s+[a-z]\s*$": 1,
        r"^\s*dec\s+[a-z]\s*$": 1,
        r"^\s*add\s+hl,": 1,
        r"^\s*add\s+a,": 1,
        r"^\s*adc\s+a,": 1,
        r"^\s*sub\s+": 1,
        r"^\s*sbc\s+a,": 1,
        r"^\s*and\s+": 1,
        r"^\s*or\s+": 1,
        r"^\s*xor\s+": 1,
        r"^\s*cp\s+": 1,
        r"^\s*ld\s+[a-z],\s*[a-z]\s*$": 1,
        r"^\s*ld\s+[a-z],\s*[0-9a-f]+h\s*$": 2,
        r"^\s*ld\s+[a-z],\s*[0-9]+\s*$": 2,
        r"^\s*out\s+\([0-9a-f]+h\),a\s*$": 2,
        r"^\s*in\s+a,\([0-9a-f]+h\)\s*$": 2,
        r"^\s*defb\s+": 1,
        r"^\s*djnz\s+": 2,
        r"^\s*ldir\s*$": 2,
        r"^\s*lddr\s*$": 2,
        r"^\s*cpir\s*$": 2,
        r"^\s*cpdr\s*$": 2,
        r"^\s*rlc\s+": 2,
        r"^\s*rrc\s+": 2,
        r"^\s*rl\s+": 2,
        r"^\s*rr\s+": 2,
        r"^\s*sla\s+": 2,
        r"^\s*sra\s+": 2,
        r"^\s*srl\s+": 2,
        r"^\s*bit\s+": 2,
        r"^\s*set\s+": 2,
        r"^\s*res\s+": 2,
        r"^\s*ex\s+\(sp\)": 1,
        r"^\s*ex\s+de,hl": 1,
        r"^\s*neg\s*$": 2,
        r"^\s*rld\s*$": 2,
        r"^\s*rrd\s*$": 2,
        r"^\s*ld\s+(ix|iy)": 4,
        r"^\s*add\s+(ix|iy)": 2,
        r"^\s*inc\s+(ix|iy)": 2,
        r"^\s*dec\s+(ix|iy)": 2,
        r"^\s*push\s+(ix|iy)": 2,
        r"^\s*pop\s+(ix|iy)": 2,
        r"^\s*jp\s+\((ix|iy)\)": 2,
    }

    compiled_sizes = [(re.compile(pat, re.IGNORECASE), size)
                      for pat, size in OPCODE_SIZES.items()]

    def estimate_size(line: str) -> int:
        stripped = line.strip()
        for pattern, size in compiled_sizes:
            if pattern.match(stripped):
                return size
        # default: assume 1 byte para instrucoes de 1 operando nao mapeadas
        return 1

    # Detecta se e linha de instrucao real (nao comentario, nao diretiva vazia)
    def is_instruction(line: str) -> bool:
        s = line.strip()
        if not s or s.startswith(";") or s.startswith("org") or s == "":
            return False
        return True

    # -----------------------------------------------------------------------
    # Construcao da saida anotada
    # -----------------------------------------------------------------------
    out_lines = []

    # Cabecalho do arquivo
    out_lines.append("; " + "=" * 77)
    out_lines.append(f"; {os.path.basename(output_path)}")
    out_lines.append("; Disassembly da BIOS do MSX 1 — Gradiente Expert v1.1 (EXPERT11.ROM)")
    out_lines.append("; Gerado por: z80dasm 1.1.6 + anotacoes manuais/automaticas")
    out_lines.append(";")
    out_lines.append("; Plataforma: MSX-1 (Gradiente Expert — clone brasileiro)")
    out_lines.append("; CPU:        Zilog Z80A @ 3.58 MHz")
    out_lines.append("; VDP:        TMS9918A / TMS9928A (video)")
    out_lines.append("; PSG:        AY-3-8910 (audio, 3 canais)")
    out_lines.append("; PPI:        Intel 8255 (teclado, joystick, cassete, slot ctrl)")
    out_lines.append("; ROM:        32 KB (0x0000-0x7FFF no slot 0)")
    out_lines.append(";")
    out_lines.append("; NOTA SOBRE ENDERECOS:")
    out_lines.append(";   O z80dasm adotou 'org 00100h' como base (offset +0x100).")
    out_lines.append(";   Subtraia 0x0100 para obter enderecos fisicos reais do MSX.")
    out_lines.append(";   Exemplo: endereco 0x0100 neste arquivo = fisico 0x0000 no MSX.")
    out_lines.append(";")
    out_lines.append("; MAPA DE MEMORIA DO MSX-1:")
    out_lines.append(";   0x0000-0x7FFF  Main ROM (BIOS + BASIC) — slot 0")
    out_lines.append(";   0x8000-0xBFFF  RAM (16KB minimo, ate 64KB expandida)")
    out_lines.append(";   0xC000-0xFFFF  RAM sistema / cartuchos / expansoes")
    out_lines.append(";   0xF380-0xFFFF  Work RAM (variaveis BIOS/BASIC)")
    out_lines.append(";")
    out_lines.append("; PORTAS DE I/O PRINCIPAIS:")
    out_lines.append(";   0x98 — VDP data      0x99 — VDP control/status")
    out_lines.append(";   0xA0 — PSG address   0xA1 — PSG write   0xA2 — PSG read")
    out_lines.append(";   0xA8 — Slot select (PPI port A)")
    out_lines.append(";   0xA9 — Keyboard (PPI port B)")
    out_lines.append(";   0xAA — Keyboard row (PPI port C)")
    out_lines.append(";   0xAB — PPI control register")
    out_lines.append("; " + "=" * 77)
    out_lines.append("")

    # Rastrear secao atual para nao repetir cabecalho
    sections_added = set()
    # Rastrear labels ja emitidos para nao repetir por endereco
    labels_emitted = set()

    # Detectar blocos de dados disassemblados como instrucoes
    data_block_count = 0
    DATA_BLOCK_THRESHOLD = 15  # N instrucoes seguidas com padrao de dados

    # Flag: so insere secao/label quando chegamos a uma instrucao real
    waiting_for_first_instr = True

    i = 0
    line_count = len(original)

    while i < line_count:
        raw = original[i]
        stripped = raw.strip()

        # Pula linha de org (ja incluimos no header)
        if stripped.startswith("org "):
            out_lines.append(raw.rstrip())
            out_lines.append("")
            i += 1
            continue

        # Linhas de comentario e linhas em branco: emite direto sem anotacao
        if not is_instruction(raw):
            out_lines.append(raw.rstrip())
            i += 1
            continue

        # A partir daqui: e uma instrucao real
        # --- Verificar se chegamos a uma nova secao ---
        addr_decimal = current_addr
        if addr_decimal in section_map and addr_decimal not in sections_added:
            name, desc = section_map[addr_decimal]
            out_lines.append(format_section_header(name, desc))
            sections_added.add(addr_decimal)

        # --- Adicionar label se endereco conhecido (apenas uma vez) ---
        addr_hex = f"{current_addr:05x}h"
        if addr_hex in label_map and addr_hex not in labels_emitted:
            label, comment = label_map[addr_hex]
            out_lines.append(f"; {'─'*60}")
            out_lines.append(f"; [{addr_hex}]  {label}")
            out_lines.append(f"; {comment}")
            out_lines.append(f"; {'─'*60}")
            labels_emitted.add(addr_hex)

        # --- Detectar bloco de dados (instrucoes sintaticamente validas) ---
        if is_instruction(raw):
            # Lookahead: conta padroes de 'dados' nas proximas N linhas
            lookahead = original[i:i + DATA_BLOCK_THRESHOLD]
            data_hits = count_data_pattern(lookahead)
            if data_hits >= DATA_BLOCK_THRESHOLD // 2:
                if data_block_count == 0:
                    out_lines.append(
                        "\n; ~~~ INICIO DE REGIAO DE DADOS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
                    out_lines.append(
                        "; Esta regiao provavelmente contem DADOS (tabela de fonte,")
                    out_lines.append(
                        "; strings, tabela de conversao) sendo interpretados como")
                    out_lines.append(
                        "; instrucoes pelo disassembler (artefato do z80dasm).")
                    out_lines.append(
                        "; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
                data_block_count += 1
            else:
                if data_block_count > 0:
                    out_lines.append(
                        "\n; ~~~ FIM DA REGIAO DE DADOS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
                    data_block_count = 0

        # Emite a linha original, adicionando comentario inline quando mapeado.
        rendered = raw.rstrip()
        mnemonic = stripped.split()[0].lower()
        inline_comment = INLINE_COMMENTS.get(f"{addr_hex}_{mnemonic}")
        if inline_comment:
            rendered = f"{rendered}\t{inline_comment}"
        out_lines.append(rendered)

        # Atualiza endereco estimado
        if is_instruction(raw):
            current_addr += estimate_size(raw)

        i += 1

    # -----------------------------------------------------------------------
    # Escreve arquivo de saida
    # -----------------------------------------------------------------------
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("\n".join(out_lines))
        f.write("\n")

    print(f"[OK] Arquivo anotado gerado: {output_path}")
    print(f"     Linhas originais : {line_count}")
    print(f"     Linhas na saida  : {len(out_lines)}")
    print(f"     Enderecos mapeados (labels): {len([a for a in label_map if True])}")
    print(f"     Secoes identificadas: {len(sections_added)}")


if __name__ == "__main__":
    args = parse_args()
    output_path = args.output
    if output_path is None:
        base, ext = os.path.splitext(args.input)
        output_path = f"{base}.annotated{ext}" if ext else f"{args.input}.annotated"
    annotate(args.input, output_path)
