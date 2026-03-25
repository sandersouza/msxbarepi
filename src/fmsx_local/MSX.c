/** fMSX: portable MSX emulator ******************************/
/**                                                         **/
/**                          MSX.c                          **/
/**                                                         **/
/** This file contains implementation for the MSX-specific  **/
/** hardware: slots, memory mapper, PPIs, VDP, PSG, clock,  **/
/** etc. Initialization code and definitions needed for the **/
/** machine-dependent drivers are also here.                **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1994-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/*************************************************************/

#include "MSX.h"
#include "../fmsx_runtime.h"
#include "../fmsx_audio_layout.h"
#include "../fmsx_local_scc_render.h"
#include "Sound.h"
#include "Floppy.h"
#include "SHA1.h"
#include "MCF.h"
#include "../fmsx_carts_sha_fallback.h"
#include "../fmsx_mapper_ext.h"

#define FMSX_LOCAL_MAXMAPPERS (MAP_MANBOW2_2 + 1)

#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#ifdef _WIN32
#include <direct.h>
#else
#include <unistd.h>
#endif
#include <time.h>
#include <stdio.h>

#include <compat/strl.h>
#include <streams/file_stream_transforms.h>

extern retro_log_printf_t log_cb;
extern void fmsx_runtime_notify_media_probe(void);
extern int g_fmsx_fmpac_enabled;
extern unsigned g_fmsx_megaram_kb;
/* 0=line192 (legacy), 1=post-VBlank, 2=full-frame boundary */
int g_fmsx_quit_after_vblank = 1;

#ifndef MSXBARE_ENABLE_DEBUG_OVERLAY
#define MSXBARE_ENABLE_DEBUG_OVERLAY 0
#endif

#if MSXBARE_ENABLE_DEBUG_OVERLAY
#define FMSX_VDP_TRACE_ENABLED 1
#else
#define FMSX_VDP_TRACE_ENABLED 0
#endif

#define RGB2INT(R,G,B)    ((B)|((int)(G)<<8)|((int)(R)<<16))

static unsigned fmsx_megaram_pages_from_kb(void)
{
  switch(g_fmsx_megaram_kb)
  {
    case 512u:  return 64u;
    case 1024u: return 128u;
    case 256u:
    default:    return 32u;
  }
}

static unsigned fmsx_megaram_bytes(void)
{
  return fmsx_megaram_pages_from_kb() * 0x2000u;
}

static unsigned fmsx_megaram_mask(void)
{
  return fmsx_megaram_pages_from_kb() - 1u;
}

#if MSXBARE_ENABLE_DEBUG_OVERLAY
static uint8_t fmsx_debug_peek_ram_byte(uint16_t addr)
{
  return RAM[addr >> 13][addr & 0x1FFF];
}

static void fmsx_log_kmg_detection_write(uint16_t addr, uint8_t value);
#endif

static int fmsx_slot_has_virtual_sccplus(uint8_t slot)
{
  return (slot<MAXSLOTS)
      && ((slot==g_fmsx_scc_internal_slot)||(slot==g_fmsx_scc_dual_slot));
}

/* MSDOS chdir() is broken and has to be replaced :( */
#ifdef MSDOS
#include "LibMSDOS.h"
#define chdir(path) ChangeDir(path)
#endif

#ifdef _MSC_VER
#undef chdir
#undef getcwd
#define chdir _chdir
#define getcwd _getcwd
#endif

#ifdef __PS3__
#define	getcwd(a,b)	"/dev_hdd0/game/RETROARCH/USRDIR/"
#define chdir(a) 0
#endif

/** User-defined parameters for fMSX *************************/
int  Mode        = MSX_MSX2|MSX_NTSC|MSX_MSXDOS2|MSX_GUESSA|MSX_GUESSB|MSX_NUKEYKT;
uint8_t UPeriod  = 75;             /* % of frames to draw    */
int  VPeriod     = CPU_VPERIOD;    /* CPU cycles per VBlank  */
int  HPeriod     = CPU_HPERIOD;    /* CPU cycles per HBlank  */
int  RAMPages    = 4;              /* Number of RAM pages    */
int  VRAMPages   = 2;              /* Number of VRAM pages   */
int  VRAMPageMask = 0x01;          /* VRAM page mask */
uint8_t ExitNow     = 0;           /* 1 = Exit the emulator  */

unsigned FmsxTurboPercent = 100u;  /* Effective Z80 clock scale (%) */
static uint64_t g_fmsx_audio_cycle_base = 0u;
static int g_fmsx_audio_phase_cycles = 0;
static uint8_t g_fmsx_audio_cycle_valid = 0u;
static unsigned g_fmsx_hrefresh_frac_acc_240 = 0u;
static unsigned g_fmsx_hrefresh_frac_acc_256 = 0u;
static int g_fmsx_active_cpu_cycles_current_line = CPU_H240;

static int fmsx_scale_cycles(int cycles)
{
  long long scaled;

  if(cycles <= 0) return 1;
  if(FmsxTurboPercent < 100u) FmsxTurboPercent = 100u;
  if(FmsxTurboPercent > 300u) FmsxTurboPercent = 300u;

  scaled = ((long long)cycles * (long long)FmsxTurboPercent) / 100ll;
  if(scaled < 1ll) scaled = 1ll;
  if(scaled > 0x7FFFFFFFll) scaled = 0x7FFFFFFFll;
  return (int)scaled;
}

static int fmsx_hrefresh_cpu_cycles_exact(int active_vdp_ticks)
{
  const unsigned denom = 600u; /* 6 VDP clocks per CPU clock, scaled by percent */
  const unsigned percent = FmsxTurboPercent < 100u ? 100u : (FmsxTurboPercent > 300u ? 300u : FmsxTurboPercent);
  const unsigned numer = (unsigned)active_vdp_ticks * percent;
  unsigned *acc;
  unsigned whole;
  unsigned rem;

  acc = (active_vdp_ticks == HREFRESH_240) ? &g_fmsx_hrefresh_frac_acc_240 : &g_fmsx_hrefresh_frac_acc_256;
  whole = numer / denom;
  rem = numer % denom;
  *acc += rem;
  if(*acc >= denom)
  {
    whole += 1u;
    *acc -= denom;
  }

  if(whole < 1u) whole = 1u;
  if(whole > 0x7FFFFFFFu) whole = 0x7FFFFFFFu;
  return (int)whole;
}

void fmsx_cpu_set_turbo_percent(unsigned percent)
{
  int base_vperiod;

  if(percent < 100u) percent = 100u;
  if(percent > 300u) percent = 300u;
  FmsxTurboPercent = percent;
  g_fmsx_hrefresh_frac_acc_240 = 0u;
  g_fmsx_hrefresh_frac_acc_256 = 0u;

  base_vperiod = (VIDEO(MSX_PAL)? VPERIOD_PAL:VPERIOD_NTSC)/6;
  VPeriod = fmsx_scale_cycles(base_vperiod);
  HPeriod = fmsx_scale_cycles(HPERIOD/6);
  CPU.IPeriod = fmsx_scale_cycles(CPU_H240);
}

uint64_t fmsx_audio_cpu_cycles_now(void)
{
  int elapsed;

  if(!g_fmsx_audio_cycle_valid) return 0u;

  elapsed = g_fmsx_audio_phase_cycles - CPU.ICount;
  if(elapsed < 0) elapsed = 0;
  if(elapsed > g_fmsx_audio_phase_cycles) elapsed = g_fmsx_audio_phase_cycles;

  return g_fmsx_audio_cycle_base + (uint64_t)(unsigned)elapsed;
}

unsigned fmsx_audio_effective_cpu_clock_hz(void)
{
  uint64_t hz;
  const uint64_t base_hz = (uint64_t)fmsx_runtime_get_base_cpu_clock_hz();

  hz = (base_hz * (uint64_t)FmsxTurboPercent + 50u) / 100u;
  if(hz < 1u) hz = 1u;
  if(hz > 0xFFFFFFFFu) hz = 0xFFFFFFFFu;
  return (unsigned)hz;
}

static void fmsx_audio_cycle_commit_phase(void)
{
  if(g_fmsx_audio_cycle_valid) g_fmsx_audio_cycle_base += (uint64_t)(unsigned)g_fmsx_audio_phase_cycles;
  else g_fmsx_audio_cycle_valid = 1u;
}

static void fmsx_audio_cycle_open_phase(int phase_cycles)
{
  g_fmsx_audio_phase_cycles = phase_cycles > 0 ? phase_cycles : 0;
}

static void fmsx_audio_cycle_reset(void)
{
  g_fmsx_audio_cycle_base = 0u;
  g_fmsx_audio_phase_cycles = 0;
  g_fmsx_audio_cycle_valid = 0u;
  g_fmsx_hrefresh_frac_acc_240 = 0u;
  g_fmsx_hrefresh_frac_acc_256 = 0u;
  g_fmsx_active_cpu_cycles_current_line = CPU_H240;
}

/** Main hardware: CPU, RAM, VRAM, mappers *******************/
Z80 CPU;                           /* Z80 CPU state and regs */

uint8_t *VRAM,*VPAGE;                 /* Video RAM              */

uint8_t *RAM[8];                      /* Main RAM (8x8kB pages) */
uint8_t *EmptyRAM;                    /* Empty RAM page (8kB)   */
uint8_t SaveCMOS;                     /* Save CMOS.ROM on exit  */
uint8_t *MemMap[4][4][8]; /* Memory maps [PPage][SPage][Addr>>13] */

uint8_t *RAMData;                     /* RAM Mapper contents    */
uint8_t RAMMapper[4];                 /* RAM Mapper state       */
uint8_t RAMMask;                      /* RAM Mapper mask        */

uint8_t *ROMData[MAXSLOTS];           /* ROM Mapper contents    */
uint8_t ROMMapper[MAXSLOTS][4];       /* ROM Mappers state      */
uint8_t ROMMask[MAXSLOTS];            /* ROM Mapper masks       */
uint8_t ROMType[MAXSLOTS];            /* ROM Mapper types       */

uint8_t EnWrite[4];                   /* 1 if write enabled     */
uint8_t PSL[4],SSL[4];                /* Lists of current slots */
uint8_t PSLReg,SSLReg[4];   /* Storage for A8h port and (FFFFh) */

/** Memory blocks to free in TrashMSX() **********************/
void *Chunks[MAXCHUNKS];           /* Memory blocks to free  */
int NChunks;                       /* Number of memory blcks */

/** Working directory names **********************************/
const char *ProgDir = 0;           /* Program directory      */
char *WorkDir = 0;                 /* Working directory      */

/** Cartridge files used by fMSX *****************************/
const char *ROMName[MAXCARTS] = { "CARTA.ROM","CARTB.ROM" };

/** On-cartridge SRAM data ***********************************/
char *SRAMName[MAXSLOTS] = {0,0,0,0,0,0};/* Filenames (gen-d)*/
uint8_t SaveSRAM[MAXSLOTS] = {0,0,0,0,0,0}; /* Save SRAM on exit*/
uint8_t *SRAMData[MAXSLOTS];          /* SRAM (battery backed)  */
static char *Manbow2FlashName[MAXSLOTS] = {0,0,0,0,0,0};
static uint8_t SaveManbow2Flash[MAXSLOTS] = {0,0,0,0,0,0};

/** Disk images used by fMSX *********************************/
const char *DSKName[MAXDRIVES] = { "DRIVEA.DSK","DRIVEB.DSK" };
uint8_t DiskROMLoaded = 0;            /* 1 when DISK.ROM loaded */
uint8_t FmsxMSX2PKanjiBasicLoaded = 0;/* 1 when slot 3-1:4000h maps Kanji BASIC */
uint8_t *FmsxMSX2PKanjiBasicBase = 0; /* Base pointer of mapped KANJIBASIC blob */
uint8_t FmsxMSX2PMSXJELoaded = 0;     /* 1 when slot 0-3 maps MSX-JE ROM */
uint8_t *FmsxMSX2PMSXJEBase = 0;      /* Base pointer of mapped MSX-JE blob */
uint32_t FmsxRTCReadCount = 0;        /* Count RTC reads from port B5h */
uint32_t FmsxRTCWriteCount = 0;       /* Count RTC writes to port B5h */
uint8_t FmsxRTCLastReg = 0;           /* Last RTC register selected via B4h */
uint8_t FmsxRTCLastMode = 0;          /* Last RTC mode/bank value */
uint32_t FmsxP1Select31Count = 0;     /* How many times page 1 selected slot 3-1 */
uint32_t FmsxP1Select03Count = 0;     /* How many times page 1 selected slot 0-3 */
uint8_t FmsxP1LastPS = 0xFF;          /* Last observed primary slot on page 1 */
uint8_t FmsxP1LastSS = 0xFF;          /* Last observed secondary slot on page 1 */
uint32_t FmsxVDPFrameCounter = 0;     /* Number of VDP frame starts observed */
uint8_t FmsxVDPLinePhase = 0;         /* 0=active scan, 1=HBlank */
uint8_t FmsxVDPScreenOnLatched = 0;   /* Display enable latched per scanline */
int FmsxVDPRenderVScrollOverride = -1;/* Optional per-line VScroll override for renderer */
static uint8_t FmsxVDPLineVScrollLatched = 0; /* VScroll captured at scanline start */
static int FmsxVDPUCountLatched = 0;  /* Frame visibility accumulator for current scanline */
static uint8_t FmsxVDPDrawingLatched = 0; /* Drawing state for current scanline */
static uint8_t FmsxVDPLineRendered = 0;   /* Current scanline already composed before HBlank */
static uint8_t FmsxVDPLineChunkEnd = 0;   /* Screen 4 partial render end column (0..32) */
uint32_t FmsxIE1EventCount = 0;       /* Number of VDP line-coincidence events */
uint32_t FmsxIE1AckCount = 0;         /* Number of S#1 reads that clear IE1 flag */
uint32_t FmsxIE1ArmedCount = 0;       /* Number of times IE1 was armed on active line */
uint32_t FmsxIE1FiredHBlankCount = 0; /* Number of armed IE1 events fired on HBlank */
static uint8_t FmsxIE1PendingHBlank = 0;
static uint8_t FmsxVDPDisplayStateDirty = 0;
static TFmsxVDPTraceEvent g_fmsx_vdp_trace[FMSX_VDP_TRACE_CAPACITY];
static unsigned g_fmsx_vdp_trace_head = 0;
static unsigned g_fmsx_vdp_trace_count = 0;
static unsigned g_fmsx_vdp_trace_dropped = 0;
static uint32_t g_fmsx_vdp_trace_seq = 0;
static TFmsxKmgTraceEvent g_fmsx_kmg_trace[FMSX_KMG_TRACE_CAPACITY];
static unsigned g_fmsx_kmg_trace_head = 0;
static unsigned g_fmsx_kmg_trace_count = 0;
static unsigned g_fmsx_kmg_trace_dropped = 0;
static uint32_t g_fmsx_kmg_trace_seq = 0;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
static void fmsx_log_kmg_detection_write(uint16_t addr, uint8_t value)
{
  TFmsxKmgTraceEvent *event;
  uint8_t l220e;
  uint8_t l220f;
  uint8_t l2212;
  uint8_t l2219;

  if((addr!=0x220Eu)&&(addr!=0x220Fu)&&(addr!=0x2212u)&&(addr!=0x2219u)) return;

  l220e = fmsx_debug_peek_ram_byte(0x220Eu);
  l220f = fmsx_debug_peek_ram_byte(0x220Fu);
  l2212 = fmsx_debug_peek_ram_byte(0x2212u);
  l2219 = fmsx_debug_peek_ram_byte(0x2219u);

  switch(addr)
  {
    case 0x220Eu: l220e = value; break;
    case 0x220Fu: l220f = value; break;
    case 0x2212u: l2212 = value; break;
    case 0x2219u: l2219 = value; break;
  }

  event = &g_fmsx_kmg_trace[g_fmsx_kmg_trace_head];
  memset(event,0,sizeof(*event));
  event->seq = ++g_fmsx_kmg_trace_seq;
  event->frame = FmsxVDPFrameCounter;
  event->pc = CPU.PC.W;
  event->addr = addr;
  event->value = value;
  event->l220e = l220e;
  event->l220f = l220f;
  event->l2212 = l2212;
  event->l2219 = l2219;

  g_fmsx_kmg_trace_head = (g_fmsx_kmg_trace_head+1u)%FMSX_KMG_TRACE_CAPACITY;
  if(g_fmsx_kmg_trace_count<FMSX_KMG_TRACE_CAPACITY) ++g_fmsx_kmg_trace_count;
  else ++g_fmsx_kmg_trace_dropped;
}
#endif
#if FMSX_SMANBOW_AUDIO_TRACE_ENABLED
static TFmsxSCCTraceEvent g_fmsx_scc_trace[FMSX_SCC_TRACE_CAPACITY];
static TFmsxSCCTraceEvent g_fmsx_scc_trace_active;
static unsigned g_fmsx_scc_trace_head = 0;
static unsigned g_fmsx_scc_trace_count = 0;
static unsigned g_fmsx_scc_trace_dropped = 0;
static uint32_t g_fmsx_scc_trace_seq = 0;
static uint8_t g_fmsx_scc_trace_active_valid = 0;
static uint8_t g_fmsx_scc_trace_started = 0;
static uint8_t g_fmsx_scc_trace_capture_done = 0;
static uint8_t g_fmsx_scc_trace_seen_slot_flow = 0;
static uint8_t g_fmsx_scc_trace_session = 0;
static uint8_t g_fmsx_scc_trace_session_open = 0;
static uint16_t g_fmsx_scc_trace_events_in_session = 0;
static TFmsxAudioPortTraceEvent g_fmsx_audio_port_trace[FMSX_AUDIO_PORT_TRACE_CAPACITY];
static TFmsxAudioPortTraceEvent g_fmsx_audio_port_trace_active;
static unsigned g_fmsx_audio_port_trace_head = 0;
static unsigned g_fmsx_audio_port_trace_count = 0;
static unsigned g_fmsx_audio_port_trace_dropped = 0;
static uint32_t g_fmsx_audio_port_trace_seq = 0;
static uint8_t g_fmsx_audio_port_trace_active_valid = 0;
#endif
uint32_t FmsxVDPPort99ReadCount = 0;  /* Reads from VDP status port 99h */
uint32_t FmsxVDPPort99WriteCount = 0; /* Writes to VDP address/control port 99h */
uint32_t FmsxVDPPort9BWriteCount = 0; /* Writes to indirect VDP register port 9Bh */
uint32_t FmsxVDPRegWriteCount[64];    /* Per-register VDP write counters */
uint32_t FmsxVDPStatusReadCount[16];  /* Per-status-register read counters via R#15 */
uint32_t FmsxKanjiReadCount = 0;      /* Reads from Kanji data port D9h */
uint32_t FmsxKanjiAddrWriteCount = 0; /* Writes to Kanji address ports D8h/D9h */
uint32_t FmsxKanjiNullReadCount = 0;  /* D9h reads while Kanji ROM pointer is null */
uint8_t FmsxResetStatus = 0xFF;       /* Port F4h: reset status register stub */
uint8_t FmsxSwitchedIODeviceId = 0xFF;
uint8_t FmsxS1985TurboLatched = 0u;
uint16_t FmsxS1985Addr = 0;
uint8_t FmsxS1985Color1 = 0;
uint8_t FmsxS1985Color2 = 0;
uint8_t FmsxS1985Pattern = 0;
uint8_t FmsxS1985RAM[0x800];
uint8_t FmsxS1985InitDone = 0;

/** Fixed font used by fMSX **********************************/
const char *FNTName = "DEFAULT.FNT"; /* Font file for text   */
uint8_t *FontBuf;                     /* Font for text modes    */

/** Cassette tape ********************************************/
const char *CasName = "DEFAULT.CAS";  /* Tape image file     */
RFILE *CasStream;
uint8_t tape_type = NO_TAPE;
#define TAPE_HEADER_LEN 10
// header values copied from openMSX CasImage.cc
const char ASCII_HEADER[TAPE_HEADER_LEN]  = { 0xEA,0xEA,0xEA,0xEA,0xEA,0xEA,0xEA,0xEA,0xEA,0xEA };
const char BINARY_HEADER[TAPE_HEADER_LEN] = { 0xD0,0xD0,0xD0,0xD0,0xD0,0xD0,0xD0,0xD0,0xD0,0xD0 };
const char BASIC_HEADER[TAPE_HEADER_LEN]  = { 0xD3,0xD3,0xD3,0xD3,0xD3,0xD3,0xD3,0xD3,0xD3,0xD3 };

/** Kanji font ROM *******************************************/
uint8_t *Kanji;                       /* Kanji ROM 4096x32      */
int  KanLetter;                    /* Current letter index   */
uint8_t KanCount;                     /* Byte count 0..31       */

/** Keyboard, joystick, and mouse ****************************/
volatile uint8_t KeyState[16];        /* Keyboard map state     */
uint16_t JoyState;                     /* Joystick states        */
int  MouState[2];                  /* Mouse states           */
uint8_t MouseDX[2],MouseDY[2];        /* Mouse offsets          */
uint8_t OldMouseX[2],OldMouseY[2];    /* Old mouse coordinates  */
uint8_t MCount[2];                    /* Mouse nibble counter   */

/** General I/O registers: i8255 *****************************/
I8255 PPI;                         /* i8255 PPI at A8h-ABh   */
uint8_t IOReg;                        /* Storage for AAh port   */

/** Disk controller: WD1793 **********************************/
WD1793 FDC;                        /* WD1793 at 7FF8h-7FFFh  */
FDIDisk FDD[NUM_FDI_DRIVES];       /* Floppy disk images     */

/** Sound hardware: PSG, SCC, OPLL ***************************/
AY8910 PSG;                        /* PSG registers & state  */
YM2413 OPLL;                /* OPLL registers & state (fMSX) */
YM2413_NukeYKT OPLL_NukeYKT;/*OPLL registers & state(NukeYKT)*/
SCC  SCChip[FMSX_SCC_CHIP_COUNT];  /* SCC registers & state  */
uint8_t SCCOn[MAXSLOTS];           /* !=0: SCC page active   */
uint8_t SCCIMode[MAXSLOTS];        /* SCC-I mode register    */
uint8_t *SCCIRAM;                /* SCC-I RAM (Nx8kB pages) */
static uint8_t Manbow2FlashState[MAXSLOTS];
static uint8_t Manbow2FlashMode[MAXSLOTS];
uint8_t FmsxCartMapperLockedType[MAXSLOTS];
uint8_t FmsxCartMapperTypeSource[MAXSLOTS];
uint8_t FmsxCartLastClassifiedSlot = 0xFFu;
uint8_t FmsxCartLastClassifiedType = 0xFFu;
uint8_t FmsxCartLastClassifiedSource = 0u;
uint8_t FmsxManbow2FlashLastOp = 0;
uint8_t FmsxManbow2FlashLastSlot = 0xFFu;
uint8_t FmsxManbow2FlashLastValue = 0;
uint8_t FmsxManbow2FlashLastReadValue = 0;
uint8_t FmsxManbow2FlashLastState = 0;
uint8_t FmsxManbow2FlashLastMode = 0;
uint16_t FmsxManbow2FlashLastAddr = 0;
uint32_t FmsxManbow2FlashLastOffset = 0xFFFFFFFFu;
uint32_t FmsxManbow2FlashProgramCount = 0;
uint32_t FmsxManbow2FlashEraseCount = 0;
uint32_t FmsxManbow2FlashReadCount = 0;

#define FMSX_MANBOW2_FLASH_SAVE_SIZE 0x10000u
#define FMSX_MANBOW2_FLASH_CMD_MASK  0x07FFu
#define FMSX_MANBOW2_FLASH_CMD1      0x0555u
#define FMSX_MANBOW2_FLASH_CMD2      0x02AAu

enum
{
  FMSX_CART_SOURCE_NONE = 0,
  FMSX_CART_SOURCE_MODE,
  FMSX_CART_SOURCE_EXPLICIT,
  FMSX_CART_SOURCE_CARTS_CRC,
  FMSX_CART_SOURCE_CARTS_SHA,
  FMSX_CART_SOURCE_LOCAL_SHA,
  FMSX_CART_SOURCE_HEURISTIC,
  FMSX_CART_SOURCE_STATE
};

enum
{
  FMSX_MANBOW2_FLASH_MODE_READ = 0,
  FMSX_MANBOW2_FLASH_MODE_AUTOSELECT,
};

enum
{
  FMSX_MANBOW2_FLASH_IDLE = 0,
  FMSX_MANBOW2_FLASH_UNLOCK1,
  FMSX_MANBOW2_FLASH_UNLOCK2,
  FMSX_MANBOW2_FLASH_PROGRAM,
  FMSX_MANBOW2_FLASH_ERASE1,
  FMSX_MANBOW2_FLASH_ERASE2,
  FMSX_MANBOW2_FLASH_ERASE3
};

enum
{
  FMSX_MANBOW2_FLASH_OP_NONE = 0,
  FMSX_MANBOW2_FLASH_OP_READ,
  FMSX_MANBOW2_FLASH_OP_RESET,
  FMSX_MANBOW2_FLASH_OP_AUTOSELECT,
  FMSX_MANBOW2_FLASH_OP_PROGRAM,
  FMSX_MANBOW2_FLASH_OP_ERASE,
  FMSX_MANBOW2_FLASH_OP_CMD
};
uint16_t FMPACKey;                 /* MAGIC = SRAM active    */

/** Real-time clock ******************************************/
uint8_t RTCReg,RTCMode;               /* RTC register numbers   */
uint8_t RTC[4][13];                   /* RTC registers          */

/** Video processor ******************************************/
uint8_t *ChrGen,*ChrTab,*ColTab;      /* VDP tables (screen)    */
uint8_t *SprGen,*SprTab;              /* VDP tables (sprites)   */
int  ChrGenM,ChrTabM,ColTabM;      /* VDP masks (screen)     */
int  SprTabM;                      /* VDP masks (sprites)    */
uint16_t VAddr;                        /* VRAM address in VDP    */
uint8_t VKey,PKey;                    /* Status keys for VDP    */
uint8_t FGColor,BGColor;              /* Colors                 */
uint8_t XFGColor,XBGColor;            /* Second set of colors   */
uint8_t ScrMode;                      /* Current screen mode    */
uint8_t VDP[64],VDPStatus[16];        /* VDP registers          */
uint8_t IRQPending;                   /* Pending interrupts     */
int  ScanLine;                     /* Current scanline       */
uint8_t VDPData;                      /* VDP data buffer        */
uint8_t PLatch;                       /* Palette buffer         */
uint8_t ALatch;                       /* Address buffer         */
int  Palette[16];                  /* Current palette        */
/*
 * VDP I/O wait-state tuning (in Z80 cycles per access).
 *
 * Keep regular VDP accesses fast to avoid delaying raster IRQ handlers
 * (e.g. split-scroll HUD updates in MSX2/2+ games), while preserving an
 * explicit extra delay only for tight S#0 polling loops used by diagnostics
 * such as MSXDIAG refresh-rate detection.
 */
static const int kVDPIOWaitCyclesData = 0;
static const int kVDPIOWaitCyclesStatusBase = 0;
static const int kVDPIOWaitCyclesStatusPollingExtra = 10;
/* Apply extra delay only for tight polling loops (e.g. MSXDIAG). */
static const uint8_t kVDPStatusPollingStreakThreshold = 4;

/*
 * Track S#0 polling loops to avoid penalizing normal gameplay/status reads.
 * Games that do occasional status reads with DI should not pay diagnostic-only
 * delays, while tight "IN A,(99h)" loops still get calibrated.
 */
static uint16_t g_vdp_status_poll_last_pc = 0xFFFFu;
static uint8_t g_vdp_status_poll_streak = 0;

static void fmsx_apply_vdp_io_wait(int cycles)
{
  if(cycles < 0) cycles = 0;
  if(CPU.ICount > cycles) CPU.ICount -= cycles;
  else CPU.ICount = 0;
}

static int fmsx_panasonic_vdp_io_wait_cycles(void)
{
  /*
   * blueMSX models Matsushita turbo by changing CPU frequency only, without
   * injecting extra fixed delay into VDP port accesses. Knightmare Gold's
   * smooth-scroll patch streams VRAM rectangles in tight bursts and this
   * fixed 46-cycle penalty was the strongest remaining delta versus the
   * working blueMSX behavior.
   *
   * Keep the explicit S#0 polling delay below for diagnostics such as
   * MSXDIAG, but do not slow down normal 0x98/0x99 traffic here.
   */
  return 0;
}

static int fmsx_vdp_write_wait_cycles(void)
{
  return kVDPIOWaitCyclesData + fmsx_panasonic_vdp_io_wait_cycles();
}

static int fmsx_vdp_read_wait_cycles(void)
{
  return kVDPIOWaitCyclesData + fmsx_panasonic_vdp_io_wait_cycles();
}

static int fmsx_vdp_status_wait_cycles(void)
{
  int cycles = kVDPIOWaitCyclesStatusBase;
  const uint8_t status_reg = (uint8_t)(VDP[15] & 0x0Fu);

  /*
   * Apply extra delay for tight polling loops with interrupts disabled.
   * MSXDIAG refresh detection (50/60Hz) uses this exact pattern on all models.
   */
  if(!(CPU.IFF&IFF_1) && (status_reg==0u))
  {
    const uint16_t pc = CPU.PC.W;
    if(pc==g_vdp_status_poll_last_pc)
    {
      if(g_vdp_status_poll_streak<0xFFu) ++g_vdp_status_poll_streak;
    }
    else
    {
      g_vdp_status_poll_streak = 0;
      g_vdp_status_poll_last_pc = pc;
    }

    if(g_vdp_status_poll_streak>=kVDPStatusPollingStreakThreshold)
      cycles += kVDPIOWaitCyclesStatusPollingExtra;
  }
  else
  {
    g_vdp_status_poll_streak = 0;
    g_vdp_status_poll_last_pc = 0xFFFFu;
  }

  return cycles;
}

/* Forward declaration: used by BIOS shadow sync helpers before prototype block. */
static uint8_t RAMMapperSubSlot(void);
static void FreeMemory(const void *Ptr);
static uint8_t fmsx_vdp_status2_live(void);
static uint8_t fmsx_vdp_status1_live(void);
static uint8_t fmsx_vdp_ie1_target_line(void);
static int fmsx_vdp_ie1_target_delta(void);
static uint8_t fmsx_vdp_effective_odd_page(void);
static int fmsx_vdp_hscroll_active256_local(void);
void RefreshLine4PlainRange(uint8_t Y,unsigned X0,unsigned X1);
static uint8_t fmsx_vdp_render_page(void);
static void fmsx_vdp_render_scanline(uint8_t scanline,uint8_t drawing,int ucount);
static void fmsx_vdp_render_screen4_partial(uint8_t scanline,unsigned end_column);
static void fmsx_vdp_trace_log(uint8_t event_type);
static void fmsx_vdp_trace_log_io(uint8_t event_type,uint32_t aux_addr,uint8_t aux_value,uint8_t aux_reg,uint8_t aux_ctrl);
static void fmsx_vdp_sync_before_cpu_write(void);

static int fmsx_string_contains(const char *text,const char *needle)
{
  return text&&needle&&strstr(text,needle);
}

static int fmsx_vdp_trace_enabled_now(void)
{
#if FMSX_VDP_TRACE_ENABLED
  /*
   * The Space Manbow flow keeps bouncing through RAM/fixed-bank dispatcher
   * code, so filtering by ROM name/current bank was dropping the exact
   * transition events we need around the black-screen freeze.
   */
  return 1;
#else
  return 0;
#endif
}

static int fmsx_cart_slot_from_pages(uint8_t ps,uint8_t ss)
{
  switch(ps)
  {
    case 1: return 0;
    case 2: return 1;
    case 3: return ss==0? 2:(ss==1? 3:(ss==2? 4:(ss==3? 5:-1)));
    case 0: return -1;
    default:return -1;
  }
}

static void fmsx_cart_window_banks(unsigned page,uint8_t *slot,uint8_t *bank_lo,uint8_t *bank_hi)
{
  int mapper_slot;
  unsigned mapper_base;

  if(slot) *slot = 0xFFu;
  if(bank_lo) *bank_lo = 0xFFu;
  if(bank_hi) *bank_hi = 0xFFu;
  if((page<1u)||(page>2u)) return;

  mapper_slot = fmsx_cart_slot_from_pages(PSL[page],SSL[page]);
  if((mapper_slot<0)||(mapper_slot>=MAXSLOTS)||!ROMData[mapper_slot]||!ROMMask[mapper_slot]) return;

  mapper_base = page==1u? 0u:2u;
  if(slot) *slot = (uint8_t)mapper_slot;
  if(bank_lo) *bank_lo = ROMMapper[mapper_slot][mapper_base+0u];
  if(bank_hi) *bank_hi = ROMMapper[mapper_slot][mapper_base+1u];
}

static int fmsx_rom_type_is_manbow2(int type)
{
  return (type==MAP_MANBOW2)||(type==MAP_MANBOW2_2);
}

static int fmsx_slot_has_rom_scc_device(uint8_t slot)
{
  if((slot>=MAXCARTS) || !ROMData[slot]) return 0;

  switch(ROMType[slot])
  {
    case MAP_KONAMI5:
    case MAP_MANBOW2:
    case MAP_MANBOW2_2:
      return 1;
    default:
      return 0;
  }
}

static int fmsx_scc_chip_index_for_slot(uint8_t slot)
{
  if(slot>=MAXSLOTS) return -1;

  /*
   * Keep deterministic ownership of the two available SCC buses:
   * - chip0: user cart A if it has SCC, otherwise the internal SCC+ cart
   * - chip1: user cart B if it has SCC, otherwise the dual SCC+ cart
   *
   * This mirrors the current topology work: two independent SCC(+)
   * devices can coexist without sharing waveform/frequency state.
   */
  if((slot==0u) && fmsx_slot_has_rom_scc_device(slot)) return FMSX_SCC_CHIP_PRIMARY;
  if((slot==1u) && fmsx_slot_has_rom_scc_device(slot)) return FMSX_SCC_CHIP_SECONDARY;

  if((slot==g_fmsx_scc_internal_slot) && !fmsx_slot_has_rom_scc_device(0u))
    return FMSX_SCC_CHIP_PRIMARY;

  if((slot==g_fmsx_scc_dual_slot) && !fmsx_slot_has_rom_scc_device(1u))
    return FMSX_SCC_CHIP_SECONDARY;

  return -1;
}

static SCC *fmsx_scc_chip_for_slot(uint8_t slot)
{
  const int chip = fmsx_scc_chip_index_for_slot(slot);
  return (chip>=0) && (chip<FMSX_SCC_CHIP_COUNT)? &SCChip[chip]:0;
}

static void fmsx_reset_scc_chips(void)
{
  unsigned chip;

  for(chip=0; chip<FMSX_SCC_CHIP_COUNT; ++chip)
    ResetSCC(&SCChip[chip],FMSX_SCC_CHIP_FIRST_CHANNEL(chip));
}

static void fmsx_sync_scc_chips(uint8_t mode)
{
  unsigned chip;

  for(chip=0; chip<FMSX_SCC_CHIP_COUNT; ++chip)
    SyncSCC(&SCChip[chip],mode);
}

static void fmsx_mark_scc_chips_dirty(void)
{
  unsigned chip;

  for(chip=0; chip<FMSX_SCC_CHIP_COUNT; ++chip)
  {
    SCChip[chip].Changed  = (1u<<SCC_CHANNELS)-1u;
    SCChip[chip].WChanged = (1u<<SCC_CHANNELS)-1u;
  }
}

static void fmsx_cart_note_classification(int slot,int type,uint8_t source)
{
  if((slot<0)||(slot>=MAXSLOTS)) return;

  FmsxCartMapperLockedType[slot] = (uint8_t)(type & 0x0Fu);
  FmsxCartMapperTypeSource[slot] = source;
  FmsxCartLastClassifiedSlot = (uint8_t)slot;
  FmsxCartLastClassifiedType = (uint8_t)(type & 0x0Fu);
  FmsxCartLastClassifiedSource = source;
}

static void fmsx_cart_set_effective_type(int slot,int type,uint8_t source)
{
  if((slot<0)||(slot>=MAXSLOTS)) return;

  type &= 0x0F;
  ROMType[slot] = (uint8_t)type;
  if(slot<MAXCARTS) SETROMTYPE(slot,type);
  fmsx_cart_note_classification(slot,type,source);
}

static void fmsx_cart_clear_effective_type(int slot)
{
  if((slot<0)||(slot>=MAXSLOTS)) return;

  ROMType[slot] = MAP_GEN8;
  FmsxCartMapperLockedType[slot] = 0xFFu;
  FmsxCartMapperTypeSource[slot] = FMSX_CART_SOURCE_NONE;
  if(slot<MAXCARTS) SETROMTYPE(slot,MAP_GEN8);
}

static uint8_t fmsx_cart_effective_type_for_slot(int slot)
{
  if((slot<0)||(slot>=MAXSLOTS)) return MAP_GEN8;
  if(FmsxCartMapperLockedType[slot]!=0xFFu) return FmsxCartMapperLockedType[slot];
  return slot<MAXCARTS? (uint8_t)ROMTYPE(slot):ROMType[slot];
}

static void fmsx_manbow2_flash_note(uint8_t op,int slot,uint16_t addr,uint32_t offset,uint8_t value)
{
  FmsxManbow2FlashLastOp = op;
  FmsxManbow2FlashLastSlot = (slot>=0 && slot<MAXSLOTS)? (uint8_t)slot:0xFFu;
  FmsxManbow2FlashLastAddr = addr;
  FmsxManbow2FlashLastOffset = offset;
  FmsxManbow2FlashLastValue = value;
  if((slot>=0)&&(slot<MAXSLOTS))
  {
    FmsxManbow2FlashLastState = Manbow2FlashState[slot];
    FmsxManbow2FlashLastMode = Manbow2FlashMode[slot];
  }
}

static uint32_t fmsx_cart_rom_bytes(int slot)
{
  return ((uint32_t)ROMMask[slot]+1u) << 13;
}

static uint32_t fmsx_manbow2_flash_save_offset(int slot)
{
  const uint32_t bytes = fmsx_cart_rom_bytes(slot);
  return bytes>FMSX_MANBOW2_FLASH_SAVE_SIZE? bytes-FMSX_MANBOW2_FLASH_SAVE_SIZE:0u;
}

static int fmsx_manbow2_flash_ready(int slot)
{
  return (slot>=0)
      && (slot<MAXSLOTS)
      && ROMData[slot]
      && ROMMask[slot]
      && fmsx_rom_type_is_manbow2(ROMType[slot])
      && (fmsx_cart_rom_bytes(slot)>=FMSX_MANBOW2_FLASH_SAVE_SIZE);
}

static uint8_t *fmsx_manbow2_flash_save_ptr(int slot)
{
  return fmsx_manbow2_flash_ready(slot)?
    ROMData[slot]+fmsx_manbow2_flash_save_offset(slot):0;
}

static uint32_t fmsx_manbow2_flash_offset(int slot,uint16_t addr)
{
  unsigned page;

  if(!fmsx_manbow2_flash_ready(slot)||addr<0x4000u||addr>=0xC000u) return 0xFFFFFFFFu;

  page = (unsigned)(addr-0x4000u) >> 13;
  if(page>=4u) return 0xFFFFFFFFu;

  return ((uint32_t)ROMMapper[slot][page] << 13) | (uint32_t)(addr & 0x1FFFu);
}

static int fmsx_manbow2_flash_offset_writable(int slot,uint32_t offset)
{
  const uint32_t save_offset = fmsx_manbow2_flash_save_offset(slot);
  return fmsx_manbow2_flash_ready(slot)
      && (offset>=save_offset)
      && (offset<fmsx_cart_rom_bytes(slot));
}

static int fmsx_manbow2_flash_sector_writable(int slot,uint32_t offset)
{
  return fmsx_manbow2_flash_offset_writable(slot,offset & ~(FMSX_MANBOW2_FLASH_SAVE_SIZE-1u));
}

static int fmsx_manbow2_flash_cmd_match(int slot,uint16_t addr,uint16_t expected)
{
  const uint32_t offset = fmsx_manbow2_flash_offset(slot,addr);
  return (offset!=0xFFFFFFFFu) && ((offset & FMSX_MANBOW2_FLASH_CMD_MASK)==expected);
}

static void fmsx_manbow2_flash_soft_reset(int slot)
{
  Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_IDLE;
  Manbow2FlashMode[slot] = FMSX_MANBOW2_FLASH_MODE_READ;
  FmsxManbow2FlashLastState = Manbow2FlashState[slot];
  FmsxManbow2FlashLastMode = Manbow2FlashMode[slot];
}

static uint8_t fmsx_manbow2_flash_read(int slot,uint16_t addr,int *handled)
{
  const uint32_t offset = fmsx_manbow2_flash_offset(slot,addr);
  uint8_t value;

  if(handled) *handled = 0;
  if(offset==0xFFFFFFFFu) return 0xFFu;
  if(handled) *handled = 1;
  ++FmsxManbow2FlashReadCount;

  switch(Manbow2FlashMode[slot])
  {
    case FMSX_MANBOW2_FLASH_MODE_AUTOSELECT:
      switch(offset & 0x03u)
      {
        case 0u: value = 0x01u; break;
        case 1u: value = 0xA4u; break;
        case 2u: value = fmsx_manbow2_flash_sector_writable(slot,offset)? 0x00u:0x01u; break;
        case 3u: value = 0x01u; break;
        default: value = 0xFFu; break;
      }
      break;

    default:
      value = ROMData[slot][offset];
      break;
  }

  FmsxManbow2FlashLastReadValue = value;
  fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_READ,slot,addr,offset,value);
  return value;
}

static void fmsx_manbow2_flash_program(int slot,uint32_t offset,uint8_t value)
{
  if(!fmsx_manbow2_flash_offset_writable(slot,offset)) return;

  ROMData[slot][offset] &= value;
  SaveManbow2Flash[slot] = 1;
  ++FmsxManbow2FlashProgramCount;
}

static void fmsx_manbow2_flash_erase_sector(int slot,uint32_t offset)
{
  const uint32_t sector_base = offset & ~(FMSX_MANBOW2_FLASH_SAVE_SIZE-1u);
  const uint32_t save_offset = fmsx_manbow2_flash_save_offset(slot);

  if(!fmsx_manbow2_flash_ready(slot) || (sector_base!=save_offset)) return;

  memset(ROMData[slot]+sector_base,0xFF,FMSX_MANBOW2_FLASH_SAVE_SIZE);
  SaveManbow2Flash[slot] = 1;
  ++FmsxManbow2FlashEraseCount;
}

static int fmsx_manbow2_flash_write(int slot,uint16_t addr,uint8_t value)
{
  uint32_t offset;

restart:
  switch(Manbow2FlashState[slot])
  {
    case FMSX_MANBOW2_FLASH_IDLE:
      if(value==0xF0u)
      {
        fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_RESET,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
        fmsx_manbow2_flash_soft_reset(slot);
        return 1;
      }
      if(fmsx_manbow2_flash_cmd_match(slot,addr,FMSX_MANBOW2_FLASH_CMD1)&&(value==0xAAu))
      {
        Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_UNLOCK1;
        fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_CMD,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
        return 1;
      }
      return 0;

    case FMSX_MANBOW2_FLASH_UNLOCK1:
      if(fmsx_manbow2_flash_cmd_match(slot,addr,FMSX_MANBOW2_FLASH_CMD2)&&(value==0x55u))
      {
        Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_UNLOCK2;
        fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_CMD,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
        return 1;
      }
      fmsx_manbow2_flash_soft_reset(slot);
      goto restart;

    case FMSX_MANBOW2_FLASH_UNLOCK2:
      if(fmsx_manbow2_flash_cmd_match(slot,addr,FMSX_MANBOW2_FLASH_CMD1))
      {
        if(value==0xA0u)
        {
          Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_PROGRAM;
          fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_CMD,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
          return 1;
        }
        if(value==0x80u)
        {
          Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_ERASE1;
          fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_CMD,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
          return 1;
        }
        if(value==0x90u)
        {
          Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_IDLE;
          Manbow2FlashMode[slot] = FMSX_MANBOW2_FLASH_MODE_AUTOSELECT;
          fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_AUTOSELECT,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
          return 1;
        }
        if(value==0xF0u)
        {
          fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_RESET,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
          fmsx_manbow2_flash_soft_reset(slot);
          return 1;
        }
      }
      fmsx_manbow2_flash_soft_reset(slot);
      goto restart;

    case FMSX_MANBOW2_FLASH_PROGRAM:
      offset = fmsx_manbow2_flash_offset(slot,addr);
      if(offset!=0xFFFFFFFFu) fmsx_manbow2_flash_program(slot,offset,value);
      fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_PROGRAM,slot,addr,offset,value);
      fmsx_manbow2_flash_soft_reset(slot);
      return 1;

    case FMSX_MANBOW2_FLASH_ERASE1:
      if(fmsx_manbow2_flash_cmd_match(slot,addr,FMSX_MANBOW2_FLASH_CMD1)&&(value==0xAAu))
      {
        Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_ERASE2;
        fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_CMD,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
        return 1;
      }
      fmsx_manbow2_flash_soft_reset(slot);
      goto restart;

    case FMSX_MANBOW2_FLASH_ERASE2:
      if(fmsx_manbow2_flash_cmd_match(slot,addr,FMSX_MANBOW2_FLASH_CMD2)&&(value==0x55u))
      {
        Manbow2FlashState[slot] = FMSX_MANBOW2_FLASH_ERASE3;
        fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_CMD,slot,addr,fmsx_manbow2_flash_offset(slot,addr),value);
        return 1;
      }
      fmsx_manbow2_flash_soft_reset(slot);
      goto restart;

    case FMSX_MANBOW2_FLASH_ERASE3:
      offset = fmsx_manbow2_flash_offset(slot,addr);
      if((offset!=0xFFFFFFFFu)&&(value==0x30u))
      {
        fmsx_manbow2_flash_erase_sector(slot,offset);
        fmsx_manbow2_flash_note(FMSX_MANBOW2_FLASH_OP_ERASE,slot,addr,offset,value);
        fmsx_manbow2_flash_soft_reset(slot);
        return 1;
      }
      fmsx_manbow2_flash_soft_reset(slot);
      goto restart;
  }

  fmsx_manbow2_flash_soft_reset(slot);
  return 0;
}

static int fmsx_scc_window_match(int type,uint16_t addr)
{
  /* MegaFlashROM SCC / Manbow2 exposes SCC registers only at 9800h-9FFFh. */
  if(fmsx_rom_type_is_manbow2(type)) return (addr&0xF800u)==0x9800u;
  return (addr&0xD800u)==0x9800u;
}

static void fmsx_konami5_bank_write(uint8_t slot,uint8_t ps,uint8_t ss,uint16_t addr,uint8_t value,uint8_t scc_plus_enable)
{
  uint8_t bank = (uint8_t)((addr-0x5000u)>>13);

  if(bank==2u && slot<2u && (addr&0x1800u)==0x1000u) SCCOn[slot]=(value&0x3Fu)==0x3Fu;
  else if(scc_plus_enable && bank==3u && slot<2u && (addr&0x1800u)==0x1000u) SCCOn[slot]=(value&0x80u);

  value &= ROMMask[slot];
  if(value!=ROMMapper[slot][bank])
  {
    RAM[bank+2u]=MemMap[ps][ss][bank+2u]=ROMData[slot]+((int)value<<13);
    ROMMapper[slot][bank]=value;
  }
}

static void fmsx_manbow2_free_slot_resources(int slot)
{
  if((slot<0)||(slot>=MAXSLOTS)) return;

  FreeMemory((uint8_t*)Manbow2FlashName[slot]);
  Manbow2FlashName[slot] = 0;
  SaveManbow2Flash[slot] = 0;
  fmsx_manbow2_flash_soft_reset(slot);
  if(FmsxManbow2FlashLastSlot==(uint8_t)slot)
  {
    FmsxManbow2FlashLastOp = FMSX_MANBOW2_FLASH_OP_NONE;
    FmsxManbow2FlashLastSlot = 0xFFu;
    FmsxManbow2FlashLastValue = 0;
    FmsxManbow2FlashLastReadValue = 0;
    FmsxManbow2FlashLastAddr = 0;
    FmsxManbow2FlashLastOffset = 0xFFFFFFFFu;
    FmsxManbow2FlashLastState = 0;
    FmsxManbow2FlashLastMode = 0;
    FmsxManbow2FlashProgramCount = 0;
    FmsxManbow2FlashEraseCount = 0;
    FmsxManbow2FlashReadCount = 0;
  }
}

static int fmsx_pc_bank16(uint8_t *bank16)
{
  uint8_t slot,bank_lo,bank_hi;
  unsigned page;

  if(bank16) *bank16 = 0xFFu;
  if((CPU.PC.W<0x4000u)||(CPU.PC.W>=0xC000u)) return 0;

  page = (unsigned)(CPU.PC.W>>14);
  if((page<1u)||(page>2u)) return 0;

  fmsx_cart_window_banks(page,&slot,&bank_lo,&bank_hi);
  if((slot==0xFFu)||(bank_lo==0xFFu)||(bank_hi==0xFFu)) return 0;
  if((bank_hi==(uint8_t)(bank_lo+1u))&&!(bank_lo&1u))
  {
    if(bank16) *bank16 = (uint8_t)(bank_lo>>1);
    return 1;
  }
  return 0;
}

static int fmsx_kmg_disk_active(void)
{
  unsigned drive;

  for(drive=0u; drive<MAXDRIVES; ++drive)
  {
    const char *name = DSKName[drive];
    if(!name || !*name) continue;
    if(fmsx_string_contains(name,"kmaregold")) return 1;
    if(fmsx_string_contains(name,"KMAREGOLD")) return 1;
    if(fmsx_string_contains(name,"kmare")) return 1;
    if(fmsx_string_contains(name,"KMARE")) return 1;
  }

  return 0;
}

static uint8_t fmsx_peek_linear_byte(uint16_t addr)
{
  return RAM[addr >> 13][addr & 0x1FFF];
}

static int fmsx_kmg_smooth_scroll_allowed(void)
{
  const unsigned refresh_hz = fmsx_runtime_get_refresh_hz();
  const unsigned turbo_percent = fmsx_runtime_get_z80_turbo_percent();

  /*
   * Knightmare Gold documents only two legal smooth-scroll combinations:
   *  - 3.579545MHz at 50Hz
   *  - 7MHz-class at 60Hz
   * Any other effective runtime speed must fall back to ORIGINAL scroll.
   */
  if((refresh_hz == 50u) && (turbo_percent == 100u)) return 1;
  if((refresh_hz == 60u) && (turbo_percent >= 200u)) return 1;
  return 0;
}

static int fmsx_kmg_block_panasonic_runtime_turbo(void)
{
  return fmsx_kmg_disk_active()
      && (fmsx_runtime_get_refresh_hz() == 50u)
      && (fmsx_runtime_get_z80_turbo_mode() == 0u);
}

static void fmsx_kmg_apply_panasonic_turbo_gate(void)
{
  const boolean runtime_enabled =
      (FmsxS1985TurboLatched && !fmsx_kmg_block_panasonic_runtime_turbo()) ? TRUE : FALSE;
  fmsx_runtime_set_panasonic_turbo_enabled(runtime_enabled);
}

static void fmsx_kmg_apply_scroll_gate(void)
{
  uint8_t *page;

  if(!fmsx_kmg_disk_active()) return;

  page = RAM[0x2212u >> 13];
  if(!page || (page == EmptyRAM)) return;

  if(fmsx_kmg_smooth_scroll_allowed())
  {
    if(page[0x2212u & 0x1FFF] == 0x00u)
      page[0x2212u & 0x1FFF] = 0x01u;
    if(page[0x220Eu & 0x1FFF] < 0x05u)
      page[0x220Eu & 0x1FFF] = 0x05u;
  }
  else
  {
    page[0x2212u & 0x1FFF] = 0x00u;
    if(page[0x220Eu & 0x1FFF] >= 0x05u)
      page[0x220Eu & 0x1FFF] = 0x04u;
  }

  fmsx_kmg_apply_panasonic_turbo_gate();
}

static uint8_t fmsx_vdp_trace_window(void)
{
  uint8_t bank16;
  const uint16_t pc = CPU.PC.W;

  if(!fmsx_vdp_trace_enabled_now()) return FMSX_VDP_TRACE_NONE;
  if(fmsx_kmg_disk_active() && (ScrMode==4))
    return FMSX_VDP_TRACE_KMG;
  if(!fmsx_pc_bank16(&bank16) || (bank16!=27u)) return FMSX_VDP_TRACE_NONE;

  if(((pc>=0x51D4u)&&(pc<=0x5403u))||((pc>=0x523Fu)&&(pc<=0x5297u)))
    return FMSX_VDP_TRACE_TITLE;
  if(((pc>=0x586Eu)&&(pc<=0x5897u))||((pc>=0x5E6Fu)&&(pc<=0x5F40u)))
    return FMSX_VDP_TRACE_STARDATE;
  if(((pc>=0x582Eu)&&(pc<=0x5E16u))||((pc>=0x5E87u)&&(pc<=0x5EC5u)))
    return FMSX_VDP_TRACE_SAVE_SELECT;

  return FMSX_VDP_TRACE_NONE;
}

static int fmsx_vdp_kmg_sync_window_active(void)
{
  return fmsx_kmg_disk_active() && (ScrMode==4);
}

uint16_t SetIRQ(uint8_t IRQ);            /* Set/Reset IRQ                   */
uint8_t SetScreen(void);                 /* Change screen mode              */

static int fmsx_vdp_vblank_start(void)
{
  return PALVideo ? (ScanLines212? (212+42):(192+52))
                  : (ScanLines212? (212+18):(192+28));
}

static int fmsx_vdp_active_cpu_cycles(void)
{
  return g_fmsx_active_cpu_cycles_current_line;
}

static int fmsx_vdp_active_vdp_ticks(void)
{
  return !ScrMode||(ScrMode==MAXSCREEN+1)? HREFRESH_240:HREFRESH_256;
}

static int fmsx_vdp_phase_elapsed_cycles(void)
{
  int elapsed;

  elapsed = g_fmsx_audio_phase_cycles - CPU.ICount;
  if(elapsed < 0) elapsed = 0;
  if(elapsed > g_fmsx_audio_phase_cycles) elapsed = g_fmsx_audio_phase_cycles;
  return elapsed;
}

static unsigned fmsx_vdp_line_ticks_now(void)
{
  const int active_cpu = fmsx_vdp_active_cpu_cycles();
  const int active_vdp = fmsx_vdp_active_vdp_ticks();
  const int hblank_cpu = HPeriod - active_cpu;
  const int hblank_vdp = HPERIOD - active_vdp;
  const int elapsed_cpu = fmsx_vdp_phase_elapsed_cycles();
  unsigned ticks;

  if(!FmsxVDPLinePhase)
  {
    ticks = active_cpu > 0
      ? (unsigned)(((long long)elapsed_cpu * (long long)active_vdp + (active_cpu / 2)) / active_cpu)
      : 0u;
  }
  else
  {
    ticks = (unsigned)active_vdp;
    if(hblank_cpu > 0)
    {
      ticks += (unsigned)(((long long)elapsed_cpu * (long long)hblank_vdp + (hblank_cpu / 2)) / hblank_cpu);
    }
  }

  if(ticks >= (unsigned)HPERIOD) ticks = (unsigned)HPERIOD - 1u;
  return ticks;
}

static uint8_t fmsx_vdp_status2_hr(void)
{
  /*
   * Knightmare Gold polls S#2 bit5 in tight loops around its VRAM blitter
   * hooks. openMSX/blueMSX keep HR low through the visible region and raise
   * it only inside the final horizontal blank/border window near the end of
   * the scanline. A simple "active vs HBlank phase" split is too early.
   *
   * The local scheduler counts line ticks from the start of the visible area,
   * not from the start of the full scanline like openMSX/blueMSX. Translated
   * to this local coordinate system, the HR=1 window starts exactly at the end
   * of the visible span and lasts for 312 ticks in graphics modes (404 in
   * text modes). The remaining tail of the coarse HBlank phase stays HR=0.
   *
   * This preserves the stable IE1 baseline while tightening the S#2 bit5 edge
   * used by Knightmare Gold's low->high polling loop.
   */
  const unsigned line_ticks = fmsx_vdp_line_ticks_now();
  const unsigned display_ticks = (unsigned)fmsx_vdp_active_vdp_ticks();
  const unsigned hblank_ticks = (!ScrMode || (ScrMode == MAXSCREEN + 1)) ? 404u : 312u;
  return (line_ticks >= display_ticks) && (line_ticks < (display_ticks + hblank_ticks));
}

static uint8_t fmsx_vdp_status2_vr(void)
{
  /*
   * Keep VR tied to the effective vertical display window. The draw area
   * remains active up to the first VBlank line; outside that window S#2 bit6
   * must stay high.
   */
  return (ScanLine>=fmsx_vdp_vblank_start())? 1u:0u;
}

static uint8_t fmsx_vdp_status2_live(void)
{
  uint8_t status = VDPStatus[2];

  if(fmsx_vdp_status2_hr()) status |= 0x20u;
  else                      status &= (uint8_t)~0x20u;

  if(fmsx_vdp_status2_vr()) status |= 0x40u;
  else                      status &= (uint8_t)~0x40u;

  return status;
}

static void fmsx_vdp_clear_ie1_status(void)
{
  VDPStatus[1]&=0xFEu;
  SetIRQ(~INT_IE1);
}

static void fmsx_vdp_cancel_ie1_edge_only(void)
{
  FmsxIE1PendingHBlank=0;
  if(!(VDPStatus[1]&0x01u)) SetIRQ(~INT_IE1);
}

static void fmsx_vdp_cancel_ie1(void)
{
  FmsxIE1PendingHBlank=0;
  fmsx_vdp_clear_ie1_status();
}

static void fmsx_vdp_raise_ie1_latch(void)
{
  FmsxIE1PendingHBlank=0;
  VDPStatus[1]|=0x01u;
  if(VDP[0]&0x10u) SetIRQ(INT_IE1);
}

static void fmsx_vdp_commit_line_display_state(void)
{
  if(FmsxVDPDisplayStateDirty)
  {
    SetScreen();
    FmsxVDPDisplayStateDirty=0;
  }

  FmsxVDPScreenOnLatched=(VDP[1]&0x40u)? 1u:0u;
}

static void fmsx_vdp_sync_before_cpu_write(void)
{
  /*
   * blueMSX/openMSX synchronize the VDP before CPU-side VRAM/register writes.
   * Our renderer is line-based rather than sub-line, so in the narrow KMG
   * smooth-scroll window we preserve the current line by composing it once
   * before the first CPU-side VDP mutation of that scanline, regardless of
   * whether the write lands in the active span or in HBlank. HBlank matters
   * here because KMG's VRAM blitter can cross the tile-row boundary exactly at
   * the end of the line; if the line is still composed later in HBlank, those
   * writes bleed backwards into the line that just finished scanning out.
   */
  if(!fmsx_vdp_kmg_sync_window_active()) return;
  if(!FmsxVDPDrawingLatched) return;
  if(FmsxVDPUCountLatched<100) return;
  if((ScanLine<0)||(ScanLine>=256)) return;
  if(FmsxVDPLineRendered) return;

  /*
   * Knightmare Gold's smooth-scroll hook rewrites VRAM rectangles while the
   * current scanline is already in flight. Rendering only the columns already
   * scanned reintroduces an 8px transient exactly when the tile row rolls
   * over. For this title, freeze the whole line on the first VDP-side CPU
   * mutation and expose the new VRAM contents only from the next line.
   */
  if((ScrMode==4) && !fmsx_vdp_hscroll_active256_local())
  {
    fmsx_vdp_render_scanline((uint8_t)ScanLine,FmsxVDPDrawingLatched,FmsxVDPUCountLatched);
    FmsxVDPLineRendered=1;
    FmsxVDPLineChunkEnd=32u;
    return;
  }

  fmsx_vdp_render_scanline((uint8_t)ScanLine,FmsxVDPDrawingLatched,FmsxVDPUCountLatched);
  FmsxVDPLineRendered=1;
}

static void fmsx_vdp_render_screen4_partial(uint8_t scanline,unsigned end_column)
{
  if(end_column>32u) end_column=32u;
  if(end_column<=FmsxVDPLineChunkEnd) return;
  FmsxVDPRenderVScrollOverride = (int)FmsxVDPLineVScrollLatched;
  RefreshLine4PlainRange(scanline,(unsigned)FmsxVDPLineChunkEnd,end_column);
  FmsxVDPRenderVScrollOverride = -1;
  FmsxVDPLineChunkEnd=(uint8_t)end_column;
  if(FmsxVDPLineChunkEnd>=32u) FmsxVDPLineRendered=1;
}

static void fmsx_vdp_render_scanline(uint8_t scanline,uint8_t drawing,int ucount)
{
  if((ucount<100)||!drawing||(scanline>=256u)) return;

  if(log_cb)
  {
    static uint8_t LoggedLineRefresh=0;
    static uint8_t LoggedLineMeta=0;
    if(!LoggedLineRefresh && log_cb) { log_cb(1,"LoopZ80: RefreshLine begin\n"); LoggedLineRefresh=1; }
    if(!LoggedLineMeta)
    {
      if(log_cb) log_cb(1,"LoopZ80: RefreshLine meta begin\n");
      if(log_cb)
      {
        switch(ScrMode)
        {
          case 0:  log_cb(1,"LoopZ80: ScrMode=0\n"); break;
          case 1:  log_cb(1,"LoopZ80: ScrMode=1\n"); break;
          case 2:  log_cb(1,"LoopZ80: ScrMode=2\n"); break;
          case 3:  log_cb(1,"LoopZ80: ScrMode=3\n"); break;
          case 4:  log_cb(1,"LoopZ80: ScrMode=4\n"); break;
          case 5:  log_cb(1,"LoopZ80: ScrMode=5\n"); break;
          case 6:  log_cb(1,"LoopZ80: ScrMode=6\n"); break;
          case 7:  log_cb(1,"LoopZ80: ScrMode=7\n"); break;
          case 8:  log_cb(1,"LoopZ80: ScrMode=8\n"); break;
          default: log_cb(1,"LoopZ80: ScrMode=other\n"); break;
        }
      }
      if(log_cb && !scanline) log_cb(1,"LoopZ80: ScanLine=0\n");
      LoggedLineMeta=1;
    }
  }
#if defined(FMSX_BAREMETAL_SKIP_LINE_RENDER)
  if(log_cb)
  {
    static uint8_t LoggedLineSkip=0;
    if(!LoggedLineSkip && log_cb) { log_cb(1,"LoopZ80: RefreshLine skipped (baremetal)\n"); LoggedLineSkip=1; }
  }
#elif defined(FMSX_BAREMETAL_RENDER_TEXT0_ONLY)
  if(log_cb)
  {
    static uint8_t LoggedText0Only=0;
    if(!LoggedText0Only && log_cb) { log_cb(1,"LoopZ80: RefreshLine text0-only mode\n"); LoggedText0Only=1; }
  }
  if(ScrMode==0 || ScrMode==(MAXSCREEN+1))
    (RefreshLine[0])(scanline);
  else
    (RefreshLine[MAXSCREEN+1])(scanline);
#else
  if(!ModeYJK||(ScrMode<7)||(ScrMode>8))
  {
    if(fmsx_vdp_kmg_sync_window_active() && (ScrMode==4) && !fmsx_vdp_hscroll_active256_local())
      FmsxVDPRenderVScrollOverride = (int)FmsxVDPLineVScrollLatched;
    (RefreshLine[ScrMode])(scanline);
    FmsxVDPRenderVScrollOverride = -1;
  }
  else
    if(ModeYAE) RefreshLine10(scanline);
    else RefreshLine12(scanline);
#endif
}

static uint8_t fmsx_vdp_status1_live(void)
{
  /*
   * Space Manbow relies on the horizontal interrupt flag in S#1 even when
   * IE1 is disabled. The hardware keeps this as a sticky latch and clears it
   * on S#1 reads, R#19 writes, R#0 writes, or VBlank start.
   */
  return VDPStatus[1];
}

static uint8_t fmsx_vdp_ie1_target_line(void)
{
  /*
   * The stable split-raster baseline for the project uses the direct
   * coincidence target derived from R#19 and current vertical scroll.
   * Moving this globally by +2 reintroduced the old Gradius2E regression:
   * the top two HUD lines start scrolling with the gameplay area.
   *
   * Knightmare Gold's remaining glitch must be chased via the VDP polling/
   * status path, not by shifting IE1 for every title.
   */
  return (uint8_t)((VDP[19]-VScroll)&0xFFu);
}

static void fmsx_vdp_reschedule_ie1_compare(void)
{
  const int limit = PALVideo ? 256 : (ScanLines212 ? 245 : 235);

  if((ScanLine<0)||(ScanLine>=limit)) return;
  if(FmsxVDPLinePhase) return;
  if(VDPStatus[1]&0x01u) return;

  if((uint8_t)ScanLine==fmsx_vdp_ie1_target_line())
  {
    if(!FmsxIE1PendingHBlank)
    {
      FmsxIE1PendingHBlank=1;
      FmsxIE1ArmedCount++;
      fmsx_vdp_trace_log(FMSX_VDP_EVENT_IE1_ARM);
    }
  }
}

static int fmsx_vdp_ie1_target_delta(void)
{
  int delta = (int)fmsx_vdp_ie1_target_line() - (ScanLine&0xFF);

  if(delta<-128) delta += 256;
  if(delta>127)  delta -= 256;
  return delta;
}

static uint8_t fmsx_vdp_effective_odd_page(void)
{
  if(!FlipEvenOdd) return 0u;
  /*
   * BlueMSX/openMSX derive the displayed odd/even page from S#2 bit1.
   * Bit1=0 selects the alternate ("odd") page when EO is enabled.
   */
  return (VDPStatus[2]&0x02u)? 0u:1u;
}

static int fmsx_vdp_hscroll_active256_local(void)
{
  return MODEL(MSX_MSX2P)
      && ((VDP[25] & 0x03u) || (VDP[26] != 0u) || ((VDP[27] & 0x07u) != 0u));
}

static uint8_t fmsx_vdp_render_page(void)
{
  return (uint8_t)(((VDP[2]>>5)&0x03u) ^ (fmsx_vdp_effective_odd_page()&0x01u));
}

static uint8_t fmsx_vdp_cpu_port_uses_interleaved_layout(void)
{
  /*
   * BlueMSX/openMSX remap direct VRAM port accesses for SCREEN 7/8 and YJK/YAE
   * derivatives. Our internal mode numbering keeps these as ScrMode 7/8.
   */
  return (ScrMode>=7u)&&(ScrMode<=8u);
}

static unsigned fmsx_vdp_cpu_port_vram_index(void)
{
  unsigned addr;
  unsigned size;

  addr = (((unsigned)VDP[14])<<14) | (unsigned)(VAddr&0x3FFFu);
  if(fmsx_vdp_cpu_port_uses_interleaved_layout())
    addr = (addr>>1) | ((addr&1u)<<16);

  size = (unsigned)(VRAMPages<<14);
  if(size) addr %= size;

  return addr;
}

static uint8_t fmsx_vdp_cpu_port_read_next(void)
{
  return VRAM[fmsx_vdp_cpu_port_vram_index()];
}

static void fmsx_vdp_cpu_port_write_next(uint8_t value)
{
  VRAM[fmsx_vdp_cpu_port_vram_index()] = value;
}

static void fmsx_vdp_trace_log(uint8_t event_type)
{
  fmsx_vdp_trace_log_io(event_type,0u,0u,0u,0u);
}

static void fmsx_vdp_trace_log_io(uint8_t event_type,uint32_t aux_addr,uint8_t aux_value,uint8_t aux_reg,uint8_t aux_ctrl)
{
#if FMSX_VDP_TRACE_ENABLED
  TFmsxVDPTraceEvent *event;
  uint8_t slot_p1,slot_p2,bank_p1_lo,bank_p1_hi,bank_p2_lo,bank_p2_hi;

  if(!fmsx_vdp_trace_enabled_now()) return;
  if(((event_type==FMSX_VDP_EVENT_PORT98_WRITE)||
      (event_type==FMSX_VDP_EVENT_PORT99_ADDR)||
      (event_type==FMSX_VDP_EVENT_PORT99_REG)) &&
     (fmsx_vdp_trace_window()==FMSX_VDP_TRACE_NONE))
    return;

  event = &g_fmsx_vdp_trace[g_fmsx_vdp_trace_head];
  memset(event,0,sizeof(*event));

  fmsx_cart_window_banks(1u,&slot_p1,&bank_p1_lo,&bank_p1_hi);
  fmsx_cart_window_banks(2u,&slot_p2,&bank_p2_lo,&bank_p2_hi);

  event->seq = ++g_fmsx_vdp_trace_seq;
  event->frame = FmsxVDPFrameCounter;
  event->scanline = (uint16_t)((ScanLine>=0)? ScanLine:0);
  event->pc = CPU.PC.W;
  event->line_phase = FmsxVDPLinePhase;
  event->event_type = event_type;
  event->capture_window = fmsx_vdp_trace_window();
  event->scr_mode = ScrMode;
  event->reg1 = VDP[1];
  event->reg2 = VDP[2];
  event->reg8 = VDP[8];
  event->reg9 = VDP[9];
  event->reg15 = VDP[15];
  event->reg19 = VDP[19];
  event->reg23 = VDP[23];
  event->reg25 = VDP[25];
  event->reg26 = VDP[26];
  event->reg27 = VDP[27];
  event->status0 = VDPStatus[0];
  event->status1 = VDPStatus[1];
  event->status2 = fmsx_vdp_status2_live();
  event->irq_pending = IRQPending;
  event->screen_on = ScreenON? 1u:0u;
  event->ie0_enabled = (VDP[1]&0x20u)? 1u:0u;
  event->ie1_enabled = (VDP[0]&0x10u)? 1u:0u;
  event->hr = fmsx_vdp_status2_hr();
  event->vr = fmsx_vdp_status2_vr();
  event->ie1_target_line = fmsx_vdp_ie1_target_line();
  event->ie1_target_delta = (int8_t)fmsx_vdp_ie1_target_delta();
  event->effective_odd_page = fmsx_vdp_effective_odd_page();
  event->render_page = fmsx_vdp_render_page();
  event->cart_slot_p1 = slot_p1;
  event->cart_slot_p2 = slot_p2;
  event->cart_bank_p1_lo = bank_p1_lo;
  event->cart_bank_p1_hi = bank_p1_hi;
  event->cart_bank_p2_lo = bank_p2_lo;
  event->cart_bank_p2_hi = bank_p2_hi;
  event->vdp_cmd = (VDP[46]>>4)&0x0Fu;
  event->vdp_ce = (VDPStatus[2]&0x01u)? 1u:0u;
  event->aux_reg = aux_reg;
  event->aux_value = aux_value;
  event->aux_ctrl = aux_ctrl;
  event->aux_addr = aux_addr;

  g_fmsx_vdp_trace_head = (g_fmsx_vdp_trace_head+1u)%FMSX_VDP_TRACE_CAPACITY;
  if(g_fmsx_vdp_trace_count<FMSX_VDP_TRACE_CAPACITY) ++g_fmsx_vdp_trace_count;
  else ++g_fmsx_vdp_trace_dropped;
#else
  (void)event_type;
  (void)aux_addr;
  (void)aux_value;
  (void)aux_reg;
  (void)aux_ctrl;
#endif
}

void fmsx_vdp_trace_get_view(const TFmsxVDPTraceEvent **events,unsigned *capacity,unsigned *count,unsigned *head,unsigned *dropped)
{
  if(events)   *events = g_fmsx_vdp_trace;
  if(capacity) *capacity = FMSX_VDP_TRACE_CAPACITY;
  if(count)    *count = g_fmsx_vdp_trace_count;
  if(head)     *head = g_fmsx_vdp_trace_head;
  if(dropped)  *dropped = g_fmsx_vdp_trace_dropped;
}

void fmsx_kmg_trace_get_view(const TFmsxKmgTraceEvent **events,unsigned *capacity,unsigned *count,unsigned *head,unsigned *dropped)
{
  if(events)   *events = g_fmsx_kmg_trace;
  if(capacity) *capacity = FMSX_KMG_TRACE_CAPACITY;
  if(count)    *count = g_fmsx_kmg_trace_count;
  if(head)     *head = g_fmsx_kmg_trace_head;
  if(dropped)  *dropped = g_fmsx_kmg_trace_dropped;
}

#if FMSX_SMANBOW_AUDIO_TRACE_ENABLED
static uint8_t fmsx_scc_trace_kind(uint16_t addr,uint8_t plus_mode)
{
  uint8_t reg;

  reg = (uint8_t)(addr & 0x00FFu);
  if(plus_mode)
  {
    if(reg<0xA0u) return FMSX_SCC_TRACE_WAVE;
    if(reg<0xC0u)
    {
      switch(reg&0x0Fu)
      {
        case 0u: case 1u: case 2u: case 3u: case 4u:
        case 5u: case 6u: case 7u: case 8u: case 9u:
          return FMSX_SCC_TRACE_FREQ;
        case 10u: case 11u: case 12u: case 13u: case 14u:
          return FMSX_SCC_TRACE_VOLUME;
        case 15u:
          return FMSX_SCC_TRACE_ENABLE;
      }
    }
    if(reg<0xE0u) return FMSX_SCC_TRACE_DEFORM;
    return FMSX_SCC_TRACE_NONE;
  }

  if(reg<0x80u) return FMSX_SCC_TRACE_WAVE;
  if(reg<0xA0u)
  {
    reg = (uint8_t)(((reg+0x20u)&0xEFu)&0x0Fu);
    switch(reg)
    {
      case 0u: case 1u: case 2u: case 3u: case 4u:
      case 5u: case 6u: case 7u: case 8u: case 9u:
        return FMSX_SCC_TRACE_FREQ;
      case 10u: case 11u: case 12u: case 13u: case 14u:
        return FMSX_SCC_TRACE_VOLUME;
      case 15u:
        return FMSX_SCC_TRACE_ENABLE;
    }
  }
  if(reg<0xE0u) return FMSX_SCC_TRACE_DEFORM;
  return FMSX_SCC_TRACE_NONE;
}

static void fmsx_scc_trace_commit_active(void)
{
  TFmsxSCCTraceEvent *event;

  if(!g_fmsx_scc_trace_active_valid || !g_fmsx_scc_trace_active.count) return;

  event = &g_fmsx_scc_trace[g_fmsx_scc_trace_head];
  *event = g_fmsx_scc_trace_active;
  event->seq = ++g_fmsx_scc_trace_seq;

  g_fmsx_scc_trace_head = (g_fmsx_scc_trace_head+1u)%FMSX_SCC_TRACE_CAPACITY;
  if(g_fmsx_scc_trace_count<FMSX_SCC_TRACE_CAPACITY) ++g_fmsx_scc_trace_count;
  else ++g_fmsx_scc_trace_dropped;

  memset(&g_fmsx_scc_trace_active,0,sizeof(g_fmsx_scc_trace_active));
  g_fmsx_scc_trace_active_valid = 0;
}

static void fmsx_scc_trace_flush_frame_boundary(void)
{
  if(!g_fmsx_scc_trace_active_valid) return;
  if(g_fmsx_scc_trace_active.frame==FmsxVDPFrameCounter) return;
  fmsx_scc_trace_commit_active();
}

static void fmsx_scc_trace_begin_active(uint32_t frame,uint16_t pc,uint16_t addr,uint8_t value,uint8_t slot,uint8_t chip,uint8_t ps,uint8_t ss,uint8_t bank16,uint8_t kind,uint8_t plus_mode,uint8_t mapper,uint8_t capture_window,uint8_t session)
{
  memset(&g_fmsx_scc_trace_active,0,sizeof(g_fmsx_scc_trace_active));
  g_fmsx_scc_trace_active.frame = frame;
  g_fmsx_scc_trace_active.pc = pc;
  g_fmsx_scc_trace_active.addr_first = addr;
  g_fmsx_scc_trace_active.addr_last = addr;
  g_fmsx_scc_trace_active.count = 1u;
  g_fmsx_scc_trace_active.rendered_samples_before = (uint16_t)fmsx_audio_last_sync_rendered_samples();
  g_fmsx_scc_trace_active.value_first = value;
  g_fmsx_scc_trace_active.value_last = value;
  g_fmsx_scc_trace_active.slot = slot;
  g_fmsx_scc_trace_active.chip = chip;
  g_fmsx_scc_trace_active.ps = ps;
  g_fmsx_scc_trace_active.ss = ss;
  g_fmsx_scc_trace_active.bank16 = bank16;
  g_fmsx_scc_trace_active.kind = kind;
  g_fmsx_scc_trace_active.mode = plus_mode;
  g_fmsx_scc_trace_active.mapper = mapper;
  g_fmsx_scc_trace_active.capture_window = capture_window;
  g_fmsx_scc_trace_active.session = session;
  g_fmsx_scc_trace_active_valid = 1u;
}

static void fmsx_audio_port_trace_commit_active(void)
{
  TFmsxAudioPortTraceEvent *event;

  if(!g_fmsx_audio_port_trace_active_valid || !g_fmsx_audio_port_trace_active.count) return;

  event = &g_fmsx_audio_port_trace[g_fmsx_audio_port_trace_head];
  *event = g_fmsx_audio_port_trace_active;
  event->seq = ++g_fmsx_audio_port_trace_seq;

  g_fmsx_audio_port_trace_head = (g_fmsx_audio_port_trace_head+1u)%FMSX_AUDIO_PORT_TRACE_CAPACITY;
  if(g_fmsx_audio_port_trace_count<FMSX_AUDIO_PORT_TRACE_CAPACITY) ++g_fmsx_audio_port_trace_count;
  else ++g_fmsx_audio_port_trace_dropped;

  memset(&g_fmsx_audio_port_trace_active,0,sizeof(g_fmsx_audio_port_trace_active));
  g_fmsx_audio_port_trace_active_valid = 0u;
}

static void fmsx_audio_port_trace_flush_frame_boundary(void)
{
  if(!g_fmsx_audio_port_trace_active_valid) return;
  if(g_fmsx_audio_port_trace_active.frame==FmsxVDPFrameCounter) return;
  fmsx_audio_port_trace_commit_active();
}

static void fmsx_audio_port_trace_begin_active(uint32_t frame,uint16_t pc,uint8_t chip,uint8_t op,uint8_t reg,uint8_t value,uint8_t capture_window,uint8_t session)
{
  memset(&g_fmsx_audio_port_trace_active,0,sizeof(g_fmsx_audio_port_trace_active));
  g_fmsx_audio_port_trace_active.frame = frame;
  g_fmsx_audio_port_trace_active.pc = pc;
  g_fmsx_audio_port_trace_active.count = 1u;
  g_fmsx_audio_port_trace_active.reg = reg;
  g_fmsx_audio_port_trace_active.value_first = value;
  g_fmsx_audio_port_trace_active.value_last = value;
  g_fmsx_audio_port_trace_active.chip = chip;
  g_fmsx_audio_port_trace_active.op = op;
  g_fmsx_audio_port_trace_active.capture_window = capture_window;
  g_fmsx_audio_port_trace_active.session = session;
  g_fmsx_audio_port_trace_active_valid = 1u;
}

static void fmsx_audio_port_trace_push_direct(uint8_t chip,uint8_t op,uint8_t reg,uint8_t value,uint8_t capture_window,uint8_t session)
{
  TFmsxAudioPortTraceEvent *event;

  event = &g_fmsx_audio_port_trace[g_fmsx_audio_port_trace_head];
  memset(event,0,sizeof(*event));
  event->seq = ++g_fmsx_audio_port_trace_seq;
  event->frame = FmsxVDPFrameCounter;
  event->pc = CPU.PC.W;
  event->count = 1u;
  event->reg = reg;
  event->value_first = value;
  event->value_last = value;
  event->chip = chip;
  event->op = op;
  event->capture_window = capture_window;
  event->session = session;

  g_fmsx_audio_port_trace_head = (g_fmsx_audio_port_trace_head+1u)%FMSX_AUDIO_PORT_TRACE_CAPACITY;
  if(g_fmsx_audio_port_trace_count<FMSX_AUDIO_PORT_TRACE_CAPACITY) ++g_fmsx_audio_port_trace_count;
  else ++g_fmsx_audio_port_trace_dropped;
}

static void fmsx_audio_port_trace_log(uint8_t chip,uint8_t op,uint8_t reg,uint8_t value)
{
  const uint8_t capture_window = fmsx_vdp_trace_window();

  if(!(fmsx_rom_type_is_manbow2(ROMType[0]) || fmsx_rom_type_is_manbow2(ROMType[1]))) return;
  if(!g_fmsx_scc_trace_started || g_fmsx_scc_trace_capture_done) return;
  if(g_fmsx_scc_trace_seen_slot_flow
  && (capture_window==FMSX_VDP_TRACE_NONE)
  && (g_fmsx_scc_trace_session>0u)) return;

  fmsx_audio_port_trace_flush_frame_boundary();

  if(op==FMSX_AUDIO_PORT_TRACE_CTRL)
  {
    fmsx_audio_port_trace_commit_active();
    fmsx_audio_port_trace_push_direct(chip,op,reg,value,capture_window,g_fmsx_scc_trace_session);
    return;
  }

  if(g_fmsx_audio_port_trace_active_valid
  && g_fmsx_audio_port_trace_active.frame==FmsxVDPFrameCounter
  && g_fmsx_audio_port_trace_active.pc==CPU.PC.W
  && g_fmsx_audio_port_trace_active.chip==chip
  && g_fmsx_audio_port_trace_active.op==op
  && g_fmsx_audio_port_trace_active.reg==reg
  && g_fmsx_audio_port_trace_active.capture_window==capture_window
  && g_fmsx_audio_port_trace_active.session==g_fmsx_scc_trace_session
  && g_fmsx_audio_port_trace_active.count<0xFFFFu)
  {
    g_fmsx_audio_port_trace_active.value_last = value;
    ++g_fmsx_audio_port_trace_active.count;
    return;
  }

  fmsx_audio_port_trace_commit_active();
  fmsx_audio_port_trace_begin_active(FmsxVDPFrameCounter,CPU.PC.W,chip,op,reg,value,capture_window,g_fmsx_scc_trace_session);
}

static void fmsx_scc_trace_log(uint8_t slot,uint8_t ps,uint8_t ss,uint8_t mapper,uint16_t addr,uint8_t value)
{
  uint8_t bank16;
  uint8_t kind;
  uint8_t plus_mode;
  uint8_t chip;
  uint8_t capture_window;
  int have_bank16;
  uint16_t pc;
  TFmsxSCCTraceEvent *event;

  if(!fmsx_rom_type_is_manbow2(mapper)) return;

  plus_mode = (addr&0x2000u)? 1u:0u;
  kind = fmsx_scc_trace_kind(addr,plus_mode);
  if(kind==FMSX_SCC_TRACE_NONE) return;

  pc = CPU.PC.W;
  bank16 = 0xFFu;
  have_bank16 = fmsx_pc_bank16(&bank16);
  capture_window = fmsx_vdp_trace_window();
  chip = (uint8_t)(fmsx_scc_chip_index_for_slot(slot)<0? 0xFFu:fmsx_scc_chip_index_for_slot(slot));

  if((capture_window==FMSX_VDP_TRACE_SAVE_SELECT)||(capture_window==FMSX_VDP_TRACE_STARDATE))
    g_fmsx_scc_trace_seen_slot_flow = 1u;

  if(!g_fmsx_scc_trace_started)
  {
    if((kind!=FMSX_SCC_TRACE_ENABLE) || (value==0u)) return;
    g_fmsx_scc_trace_started = 1u;
  }

  if(g_fmsx_scc_trace_capture_done) return;

  /*
   * Keep the trace live from the first SCC activation until the code leaves
   * the save-select/stardate flow and starts issuing SCC writes from gameplay.
   * This matches the debugging need for START!/CONTINUE! without cutting early.
   */
  if(g_fmsx_scc_trace_seen_slot_flow
  && (capture_window==FMSX_VDP_TRACE_NONE)
  && (g_fmsx_scc_trace_session>0u))
  {
    fmsx_scc_trace_commit_active();
    g_fmsx_scc_trace_capture_done = 1u;
    g_fmsx_scc_trace_session_open = 0u;
    return;
  }

  if((kind==FMSX_SCC_TRACE_ENABLE) && (value!=0u) && !g_fmsx_scc_trace_session_open)
  {
    ++g_fmsx_scc_trace_session;
    g_fmsx_scc_trace_session_open = 1u;
    g_fmsx_scc_trace_events_in_session = 0u;
  }
  else if(!g_fmsx_scc_trace_session_open)
  {
    return;
  }

  fmsx_scc_trace_flush_frame_boundary();

  if(kind==FMSX_SCC_TRACE_VOLUME)
  {
    if(g_fmsx_scc_trace_active_valid
    && g_fmsx_scc_trace_active.kind==kind
    && g_fmsx_scc_trace_active.frame==FmsxVDPFrameCounter
    && g_fmsx_scc_trace_active.pc==pc
    && g_fmsx_scc_trace_active.slot==slot
    && g_fmsx_scc_trace_active.chip==chip
    && g_fmsx_scc_trace_active.ps==ps
    && g_fmsx_scc_trace_active.ss==ss
    && g_fmsx_scc_trace_active.bank16==bank16
    && g_fmsx_scc_trace_active.mode==plus_mode
    && g_fmsx_scc_trace_active.mapper==mapper
    && g_fmsx_scc_trace_active.capture_window==capture_window
    && g_fmsx_scc_trace_active.session==g_fmsx_scc_trace_session
    && (uint16_t)(g_fmsx_scc_trace_active.addr_last+1u)==addr
    && g_fmsx_scc_trace_active.count<0xFFFFu)
    {
      g_fmsx_scc_trace_active.addr_last = addr;
      g_fmsx_scc_trace_active.value_last = value;
      ++g_fmsx_scc_trace_active.count;
      ++g_fmsx_scc_trace_events_in_session;
      return;
    }

    fmsx_scc_trace_commit_active();
    fmsx_scc_trace_begin_active(FmsxVDPFrameCounter,pc,addr,value,slot,chip,ps,ss,bank16,kind,plus_mode,mapper,capture_window,g_fmsx_scc_trace_session);
    ++g_fmsx_scc_trace_events_in_session;
    return;
  }

  fmsx_scc_trace_commit_active();

  event = &g_fmsx_scc_trace[g_fmsx_scc_trace_head];
  memset(event,0,sizeof(*event));
  event->seq = ++g_fmsx_scc_trace_seq;
  event->frame = FmsxVDPFrameCounter;
  event->pc = pc;
  event->addr_first = addr;
  event->addr_last = addr;
  event->count = 1u;
  event->rendered_samples_before = (uint16_t)fmsx_audio_last_sync_rendered_samples();
  event->value_first = value;
  event->value_last = value;
  event->slot = slot;
  event->chip = chip;
  event->ps = ps;
  event->ss = ss;
  event->bank16 = bank16;
  event->kind = kind;
  event->mode = plus_mode;
  event->mapper = mapper;
  event->capture_window = capture_window;
  event->session = g_fmsx_scc_trace_session;

  g_fmsx_scc_trace_head = (g_fmsx_scc_trace_head+1u)%FMSX_SCC_TRACE_CAPACITY;
  if(g_fmsx_scc_trace_count<FMSX_SCC_TRACE_CAPACITY) ++g_fmsx_scc_trace_count;
  else ++g_fmsx_scc_trace_dropped;
  ++g_fmsx_scc_trace_events_in_session;

  if((kind==FMSX_SCC_TRACE_ENABLE) && (value==0u))
  {
    fmsx_scc_trace_commit_active();
    g_fmsx_scc_trace_session_open = 0u;
  }
}

void fmsx_scc_trace_get_view(const TFmsxSCCTraceEvent **events,unsigned *capacity,unsigned *count,unsigned *head,unsigned *dropped)
{
  fmsx_scc_trace_flush_frame_boundary();
  if(events)   *events = g_fmsx_scc_trace;
  if(capacity) *capacity = FMSX_SCC_TRACE_CAPACITY;
  if(count)    *count = g_fmsx_scc_trace_count;
  if(head)     *head = g_fmsx_scc_trace_head;
  if(dropped)  *dropped = g_fmsx_scc_trace_dropped;
}

void fmsx_audio_port_trace_get_view(const TFmsxAudioPortTraceEvent **events,unsigned *capacity,unsigned *count,unsigned *head,unsigned *dropped)
{
  fmsx_audio_port_trace_flush_frame_boundary();
  if(events)   *events = g_fmsx_audio_port_trace;
  if(capacity) *capacity = FMSX_AUDIO_PORT_TRACE_CAPACITY;
  if(count)    *count = g_fmsx_audio_port_trace_count;
  if(head)     *head = g_fmsx_audio_port_trace_head;
  if(dropped)  *dropped = g_fmsx_audio_port_trace_dropped;
}
#else
void fmsx_scc_trace_get_view(const TFmsxSCCTraceEvent **events,unsigned *capacity,unsigned *count,unsigned *head,unsigned *dropped)
{
  if(events)   *events = 0;
  if(capacity) *capacity = 0u;
  if(count)    *count = 0u;
  if(head)     *head = 0u;
  if(dropped)  *dropped = 0u;
}

void fmsx_audio_port_trace_get_view(const TFmsxAudioPortTraceEvent **events,unsigned *capacity,unsigned *count,unsigned *head,unsigned *dropped)
{
  if(events)   *events = 0;
  if(capacity) *capacity = 0u;
  if(count)    *count = 0u;
  if(head)     *head = 0u;
  if(dropped)  *dropped = 0u;
}
#define fmsx_audio_port_trace_log(chip,op,reg,value) ((void)0)
#define fmsx_scc_trace_log(slot,ps,ss,mapper,addr,value) ((void)0)
#endif

void fmsx_vdp_trace_command_transition(uint8_t active)
{
  fmsx_vdp_trace_log(active? FMSX_VDP_EVENT_CMD_START:FMSX_VDP_EVENT_CMD_END);
}

uint8_t fmsx_vdp_get_status2_live(void)
{
  return fmsx_vdp_status2_live();
}

uint8_t fmsx_vdp_get_status1_live(void)
{
  return fmsx_vdp_status1_live();
}

uint8_t fmsx_vdp_get_ie1_target_line(void)
{
  return fmsx_vdp_ie1_target_line();
}

int fmsx_vdp_get_ie1_target_delta(void)
{
  return fmsx_vdp_ie1_target_delta();
}

uint8_t fmsx_vdp_get_effective_odd_page(void)
{
  return fmsx_vdp_effective_odd_page();
}

uint8_t fmsx_vdp_get_render_page(void)
{
  return fmsx_vdp_render_page();
}

static void fmsx_sync_bios_vdp_r9_shadow(void)
{
  /* BIOS VDP mirror starts at F3DF; R#9 shadow is F3E8. */
  const uint16_t Addr = 0xF3E8u;
  const uint8_t ram_ss = RAMMapperSubSlot();
  uint8_t *const page_canonical = MemMap[3][ram_ss][Addr>>13];

  /*
   * Keep BIOS mirror coherent regardless of current slot mapping:
   * diagnostics often read F3E8 directly and may run while page-3 is not
   * temporarily mapped to canonical work RAM.
   */
  if(page_canonical && (page_canonical != EmptyRAM))
    page_canonical[Addr&0x1FFF] = VDP[9];

  /* Also mirror into the currently mapped page when writable. */
  if(EnWrite[3] && RAM[Addr>>13] && (RAM[Addr>>13] != EmptyRAM))
    RAM[Addr>>13][Addr&0x1FFF] = VDP[9];
}

static void fmsx_sync_bios_region_flag(int pal)
{
  /*
   * KMG.COM reads BIOS byte 002Bh via RDSLT and uses bit7 as part of the
   * gate that unlocks the smooth-scroll option. Keep this ROM byte coherent
   * with the active PAL/NTSC state of the emulated machine.
   */
  const uint16_t Addr = 0x002Bu;
  uint8_t *const bios_page0 = MemMap[0][0][0];

  if(!bios_page0 || (bios_page0 == EmptyRAM)) return;

  if(pal) bios_page0[Addr] |= 0x80u;
  else    bios_page0[Addr] &= (uint8_t)~0x80u;
}

static void fmsx_s1985_init_once(void)
{
  if(!FmsxS1985InitDone)
  {
    memset(FmsxS1985RAM,0xFF,sizeof(FmsxS1985RAM));
    FmsxSwitchedIODeviceId = 0xFF;
    FmsxS1985TurboLatched = 0u;
    FmsxS1985Addr = 0;
    FmsxS1985Color1 = 0;
    FmsxS1985Color2 = 0;
    FmsxS1985Pattern = 0;
    FmsxS1985InitDone = 1;
  }
}

static int fmsx_s1985_device_active(void)
{
  return FmsxSwitchedIODeviceId == 0x08u;
}

static uint8_t fmsx_s1985_read(uint8_t reg, int advance_pattern)
{
  if(!fmsx_s1985_device_active() && ((reg&0x0Fu)!=0x00u))
    return 0xFFu;

  switch(reg&0x0F)
  {
    case 0x00:
      return (FmsxSwitchedIODeviceId==0x08u)? (uint8_t)~0x08u:0xFFu;
    case 0x01:
    {
      uint8_t value = 0xFFu;
      if(FmsxS1985TurboLatched) value &= (uint8_t)~0x01u;
      value &= (uint8_t)~0x04u;
      return value;
    }
    case 0x03:
    {
      const uint8_t value = (uint8_t)((((FmsxS1985Pattern&0x80u)? FmsxS1985Color2:FmsxS1985Color1) << 4)
                                    | (((FmsxS1985Pattern&0x40u)? FmsxS1985Color2:FmsxS1985Color1) << 0));
      if(advance_pattern)
        FmsxS1985Pattern = (uint8_t)((FmsxS1985Pattern<<2)|(FmsxS1985Pattern>>6));
      return value;
    }
    case 0x09:
    {
      const uint8_t value = (FmsxS1985Addr < 0x800u)? FmsxS1985RAM[FmsxS1985Addr]:0xFFu;
      if(advance_pattern)
        FmsxS1985Addr = (uint16_t)((FmsxS1985Addr+1u)&0x1FFFu);
      return value;
    }
    default:
      return 0xFF;
  }
}

static void fmsx_s1985_write(uint8_t reg, uint8_t value)
{
  switch(reg&0x0F)
  {
    case 0x00:
      FmsxSwitchedIODeviceId = value;
      break;
    case 0x01:
      if(!fmsx_s1985_device_active()) break;
      FmsxS1985TurboLatched = (value&0x01u) ? 0u : 1u;
      fmsx_kmg_apply_panasonic_turbo_gate();
      break;
    case 0x03:
      if(!fmsx_s1985_device_active()) break;
      FmsxS1985Color2 = (uint8_t)((value>>4)&0x0Fu);
      FmsxS1985Color1 = (uint8_t)(value&0x0Fu);
      break;
    case 0x04:
      if(!fmsx_s1985_device_active()) break;
      FmsxS1985Pattern = value;
      break;
    case 0x07:
      if(!fmsx_s1985_device_active()) break;
      FmsxS1985Addr = (uint16_t)((FmsxS1985Addr&0x1F00u)|value);
      break;
    case 0x08:
      if(!fmsx_s1985_device_active()) break;
      FmsxS1985Addr = (uint16_t)((FmsxS1985Addr&0x00FFu)|((value&0x1Fu)<<8));
      break;
    case 0x09:
      if(!fmsx_s1985_device_active()) break;
      if(FmsxS1985Addr < 0x800u) FmsxS1985RAM[FmsxS1985Addr] = value;
      FmsxS1985Addr = (uint16_t)((FmsxS1985Addr+1u)&0x1FFFu);
      break;
  }
}

/** Cheat entries ********************************************/
int MCFCount     = 0;              /* Size of MCFEntries[]   */
MCFEntry MCFEntries[MAXCHEATS];    /* Entries from .MCF file */

/** Cheat codes **********************************************/
uint8_t CheatsON    = 0;              /* 1: Cheats are on       */
int  CheatCount  = 0;              /* # cheats, <=MAXCHEATS  */
CheatCode CheatCodes[MAXCHEATS];

/** Places in DiskROM to be patched with ED FE C9 ************/
static const uint16_t DiskPatches[] =
{ 0x4010,0x4013,0x4016,0x401C,0x401F,0 };

/** Places in BIOS to be patched with ED FE C9 ***************/
static const uint16_t BIOSPatches[] =
{ 0x00E1,0x00E4,0x00E7,0x00EA,0x00ED,0x00F0,0x00F3,0 };

/** Cartridge map, by primary and secondary slots ************/
static const uint8_t CartMap[4][4] =
{ { 255,3,4,5 },{ 0,0,0,0 },{ 1,1,1,1 },{ 2,255,255,255 } };

/** Screen Mode Handlers [number of screens + 1] *************/
void (*RefreshLine[MAXSCREEN+2])(uint8_t Y) =
{
  RefreshLine0,   /* SCR 0:  TEXT 40x24  */
  RefreshLine1,   /* SCR 1:  TEXT 32x24  */
  RefreshLine2,   /* SCR 2:  BLK 256x192 */
  RefreshLine3,   /* SCR 3:  64x48x16    */
  RefreshLine4,   /* SCR 4:  BLK 256x192 */
  RefreshLine5,   /* SCR 5:  256x192x16  */
  RefreshLine6,   /* SCR 6:  512x192x4   */
  RefreshLine7,   /* SCR 7:  512x192x16  */
  RefreshLine8,   /* SCR 8:  256x192x256 */
  0,              /* SCR 9:  NONE        */
  RefreshLine10,  /* SCR 10: YAE 256x192 */
  RefreshLine10,  /* SCR 11: YAE 256x192 */
  RefreshLine12,  /* SCR 12: YJK 256x192 */
  RefreshLineTx80 /* SCR 0:  TEXT 80x24  */
};

/** VDP Address Register Masks *******************************/
static const struct { uint8_t R2,R3,R4,R5,M2,M3,M4,M5; } MSK[MAXSCREEN+2] =
{
  { 0x7F,0x00,0x3F,0x00,0x00,0x00,0x00,0x00 }, /* SCR 0:  TEXT 40x24  */
  { 0x7F,0xFF,0x3F,0xFF,0x00,0x00,0x00,0x00 }, /* SCR 1:  TEXT 32x24  */
  { 0x7F,0x80,0x3C,0xFF,0x00,0x7F,0x03,0x00 }, /* SCR 2:  BLK 256x192 */
  { 0x7F,0x00,0x3F,0xFF,0x00,0x00,0x00,0x00 }, /* SCR 3:  64x48x16    */
  { 0x7F,0x80,0x3C,0xFC,0x00,0x7F,0x03,0x03 }, /* SCR 4:  BLK 256x192 */
  { 0x60,0x00,0x00,0xFC,0x1F,0x00,0x00,0x03 }, /* SCR 5:  256x192x16  */
  { 0x60,0x00,0x00,0xFC,0x1F,0x00,0x00,0x03 }, /* SCR 6:  512x192x4   */
  { 0x20,0x00,0x00,0xFC,0x1F,0x00,0x00,0x03 }, /* SCR 7:  512x192x16  */
  { 0x20,0x00,0x00,0xFC,0x1F,0x00,0x00,0x03 }, /* SCR 8:  256x192x256 */
  { 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 }, /* SCR 9:  NONE        */
  { 0x20,0x00,0x00,0xFC,0x1F,0x00,0x00,0x03 }, /* SCR 10: YAE 256x192 */
  { 0x20,0x00,0x00,0xFC,0x1F,0x00,0x00,0x03 }, /* SCR 11: YAE 256x192 */
  { 0x20,0x00,0x00,0xFC,0x1F,0x00,0x00,0x03 }, /* SCR 12: YJK 256x192 */
  { 0x7C,0xF8,0x3F,0x00,0x03,0x07,0x00,0x00 }  /* SCR 0:  TEXT 80x24  */
};

/** MegaROM Mapper Names *************************************/
static const char *ROMNames[FMSX_LOCAL_MAXMAPPERS+1] =
{
  "GENERIC/8kB","GENERIC/16kB","KONAMI5/8kB",
  "KONAMI4/8kB","ASCII/8kB","ASCII/16kB",
  "GMASTER2/SRAM","FMPAC/SRAM","UNKNOWN",
  "MANBOW2/FLASH","MANBOW2_2/FLASH"
};

/** Game Master SHA1s *************************************/
/* For Contra and Hai no Majutsushi, which need to be     */
/* inserted into slot 1 when combined with Game Master 2. */
/* Values taken from openMSX softwaredb.                  */
static const char *GameMaster2SlotSpecialSHA1s[16] =
{
  // Contra
  "1302d258c952e93666ecec12429d6d2c2f841f43",
  "90003c78975d00b1e5612fd00dffabb70d616ecd",
  "7964ba4c3c27b6a32d397157fd38dd1dc2f1e543",
  "424320762bcbbb6081b1e186e21accf758aeb935",
  "cc46a737acd729b2839ecd237d38b4a63cfb16cb",
  "bc06bd3d6f138da8f5d38b47e459b4d1942e49e4",

  // Hai no Majutsushi
  "14403ca71d287084569e6c2f4124d2712c665219",
  "25022c4f5cfc805e93026fd5fda781e9a1807474",
  "3ff54468a5acf1ad44e85bdc993044aaa3165a63",
  "d08d4e2a8d92c01551ff012a71a1f3e57fe2d09c",
  "90722d413913ab18462aa741f85b820e751bb50f",
  "c34a1c225d1a5fc41a998e23d1209b59b3b759bb",
  "f5e199a5b39bad10256d8e963f0da272ad359517",
  "4376342bf42334d98dbd3e35ef35460974269c58",
  "751571d21457d89e5c52c45657bfe9a617ae8e14",

  0
};

/** Keyboard Mapping *****************************************/
/** This keyboard mapping is used by KBD_SET()/KBD_RES()    **/
/** macros to modify KeyState[] bits.                       **/
/*************************************************************/
const uint8_t Keys[][2] =
{
  { 0,0x00 },{ 8,0x10 },{ 8,0x20 },{ 8,0x80 }, /* None,LEFT,UP,RIGHT */
  { 8,0x40 },{ 6,0x01 },{ 6,0x02 },{ 6,0x04 }, /* DOWN,SHIFT,CONTROL,GRAPH */
  { 7,0x20 },{ 7,0x08 },{ 6,0x08 },{ 7,0x40 }, /* BS,TAB,CAPSLOCK,SELECT */
  { 8,0x02 },{ 7,0x80 },{ 8,0x08 },{ 8,0x04 }, /* HOME,ENTER,DELETE,INSERT */
  { 6,0x10 },{ 7,0x10 },{ 6,0x20 },{ 6,0x40 }, /* COUNTRY,STOP,F1,F2 */
  { 6,0x80 },{ 7,0x01 },{ 7,0x02 },{ 9,0x08 }, /* F3,F4,F5,PAD0 */
  { 9,0x10 },{ 9,0x20 },{ 9,0x40 },{ 7,0x04 }, /* PAD1,PAD2,PAD3,ESCAPE */
  { 9,0x80 },{10,0x01 },{10,0x02 },{10,0x04 }, /* PAD4,PAD5,PAD6,PAD7 */
  { 8,0x01 },{ 0,0x02 },{ 2,0x01 },{ 0,0x08 }, /* SPACE,[!],["],[#] */
  { 0,0x10 },{ 0,0x20 },{ 0,0x80 },{ 2,0x01 }, /* [$],[%],[&],['] */
  { 1,0x02 },{ 0,0x01 },{ 1,0x01 },{ 1,0x08 }, /* [(],[)],[*],[=] */
  { 2,0x04 },{ 1,0x04 },{ 2,0x08 },{ 2,0x10 }, /* [,],[-],[.],[/] */
  { 0,0x01 },{ 0,0x02 },{ 0,0x04 },{ 0,0x08 }, /* 0,1,2,3 */
  { 0,0x10 },{ 0,0x20 },{ 0,0x40 },{ 0,0x80 }, /* 4,5,6,7 */
  { 1,0x01 },{ 1,0x02 },{ 1,0x80 },{ 1,0x80 }, /* 8,9,[:],[;] */
  { 2,0x04 },{ 1,0x08 },{ 2,0x08 },{ 2,0x10 }, /* [<],[=],[>],[?] */
  { 0,0x04 },{ 2,0x40 },{ 2,0x80 },{ 3,0x01 }, /* [@],A,B,C */
  { 3,0x02 },{ 3,0x04 },{ 3,0x08 },{ 3,0x10 }, /* D,E,F,G */
  { 3,0x20 },{ 3,0x40 },{ 3,0x80 },{ 4,0x01 }, /* H,I,J,K */
  { 4,0x02 },{ 4,0x04 },{ 4,0x08 },{ 4,0x10 }, /* L,M,N,O */
  { 4,0x20 },{ 4,0x40 },{ 4,0x80 },{ 5,0x01 }, /* P,Q,R,S */
  { 5,0x02 },{ 5,0x04 },{ 5,0x08 },{ 5,0x10 }, /* T,U,V,W */
  { 5,0x20 },{ 5,0x40 },{ 5,0x80 },{ 1,0x20 }, /* X,Y,Z,[[] */
  { 1,0x10 },{ 1,0x40 },{ 0,0x40 },{ 1,0x04 }, /* [\],[]],[^],[_] */
  { 2,0x02 },{ 2,0x40 },{ 2,0x80 },{ 3,0x01 }, /* [`],a,b,c */
  { 3,0x02 },{ 3,0x04 },{ 3,0x08 },{ 3,0x10 }, /* d,e,f,g */
  { 3,0x20 },{ 3,0x40 },{ 3,0x80 },{ 4,0x01 }, /* h,i,j,k */
  { 4,0x02 },{ 4,0x04 },{ 4,0x08 },{ 4,0x10 }, /* l,m,n,o */
  { 4,0x20 },{ 4,0x40 },{ 4,0x80 },{ 5,0x01 }, /* p,q,r,s */
  { 5,0x02 },{ 5,0x04 },{ 5,0x08 },{ 5,0x10 }, /* t,u,v,w */
  { 5,0x20 },{ 5,0x40 },{ 5,0x80 },{ 1,0x20 }, /* x,y,z,[{] */
  { 1,0x10 },{ 1,0x40 },{ 2,0x02 },{ 8,0x08 }, /* [|],[}],[~],DEL */
  {10,0x08 },{10,0x10 },                       /* PAD8,PAD9 */
  /* these 7 mappings are missing in fMSX */
  { 2,0x20 }, /* Int'l: DEAD / JP: _ and ろ */
  { 9,0x01 }, /* NUM* */
  { 9,0x02 }, /* NUM+ */
  { 9,0x04 }, /* NUM/ */
  {10,0x20 }, /* NUM- */
  {10,0x40 }, /* NUM, (not present on modern numeric pads!) */
  {10,0x80 }  /* NUM. */
};

/** Internal Functions ***************************************/
/** These functions are defined and internally used by the  **/
/** code in MSX.c.                                          **/
/*************************************************************/
uint8_t *LoadROM(const char *Name,int Size,uint8_t *Buf);
int  GuessROM(const uint8_t *Buf,int Size);

static int local_sha1_equals_ignore_case(const char *a,const char *b)
{
  int i;
  if(!a||!b) return(0);
  for(i=0;i<40;++i)
  {
    char ca=a[i],cb=b[i];
    if(!ca||!cb) return(0);
    if(ca>='A'&&ca<='F') ca=(char)(ca-'A'+'a');
    if(cb>='A'&&cb<='F') cb=(char)(cb-'A'+'a');
    if(ca!=cb) return(0);
  }
  return(!a[40]&&!b[40]);
}
void SetMegaROM(int Slot,uint8_t P0,uint8_t P1,uint8_t P2,uint8_t P3);
void MapROM(uint16_t A,uint8_t V);       /* Switch MegaROM banks            */
void PSlot(uint8_t V);               /* Switch primary slots            */
void SSlot(uint8_t V);               /* Switch secondary slots          */
void VDPOut(uint8_t R,uint8_t V);       /* Write value into a VDP register */
void Printer(uint8_t V);             /* Send a character to a printer   */
void PPIOut(uint8_t New,uint8_t Old);   /* Set PPI bits (key click, etc.)  */
int  CheckSprites(void);          /* Check for sprite collisions     */
uint8_t RTCIn(uint8_t R);               /* Read RTC registers              */
static int IsExpandedPrimarySlot(uint8_t PS); /* Whether PS has secondary slots */
static void TrackP1SlotSelection(void);       /* Latch page-1 slot history      */
static uint8_t RAMMapperSubSlot(void);        /* Model-dependent RAM subslot    */
static uint8_t DiskROMSubSlot(void);          /* Model-dependent DISK subslot   */
uint8_t SetScreen(void);             /* Change screen mode              */
uint16_t SetIRQ(uint8_t IRQ);            /* Set/Reset IRQ                   */
uint16_t StateID(void);               /* Compute emulation state ID      */
int  ApplyCheats(void);           /* Apply RAM-based cheats          */

static int hasext(const char *FileName,const char *Ext);
static uint8_t *GetMemory(int Size); /* Get memory chunk                */
static void FreeMemory(const void *Ptr); /* Free memory chunk        */
static void FreeAllMemory(void);  /* Free all memory chunks          */

/** hasext() *************************************************/
/** Check if file name has given extension.                 **/
/*************************************************************/
static int hasext(const char *FileName,const char *Ext)
{
  const char *P;
  int J;

  /* Start searching from the end, terminate at directory name */
  for(P=FileName+strlen(FileName);(P>=FileName)&&(*P!='/')&&(*P!='\\');--P)
  {
    /* Locate start of the next extension */
    for(--P;(P>=FileName)&&(*P!='/')&&(*P!='\\')&&(*P!=*Ext);--P);
    /* If next extension not found, return FALSE */
    if((P<FileName)||(*P=='/')||(*P=='\\')) return(0);
    /* Compare with the given extension */
    for(J=0;P[J]&&Ext[J]&&(toupper(P[J])==toupper(Ext[J]));++J);
    /* If extension matches, return TRUE */
    if(!Ext[J]&&(!P[J]||(P[J]==*Ext))) return(1);
  }

  /* Extensions do not match */
  return(0);
}

/** GetMemory() **********************************************/
/** Allocate a memory chunk of given size using malloc().   **/
/** Store allocated address in Chunks[] for later disposal. **/
/*************************************************************/
static uint8_t *GetMemory(int Size)
{
  uint8_t *P;

  if((Size<=0)||(NChunks>=MAXCHUNKS)) return(0);
  P=(uint8_t *)malloc(Size);
  if(P) Chunks[NChunks++]=P;

  return(P);
}

/** FreeMemory() *********************************************/
/** Free memory allocated by a previous GetMemory() call.   **/
/*************************************************************/
static void FreeMemory(const void *Ptr)
{
  int J;

  /* Special case: we do not free EmptyRAM! */
  if(!Ptr||(Ptr==(void *)EmptyRAM)) return;

  for(J=0;(J<NChunks)&&(Ptr!=Chunks[J]);++J);
  if(J<NChunks)
  {
    free(Chunks[J]);
    for(--NChunks;J<NChunks;++J) Chunks[J]=Chunks[J+1];
  }
}

/** FreeAllMemory() ******************************************/
/** Free all memory allocated by GetMemory() calls.         **/
/*************************************************************/
static void FreeAllMemory(void)
{
  int J;

  for(J=0;J<NChunks;++J) free(Chunks[J]);
  NChunks=0;
}

/** StartMSX() ***********************************************/
/** Allocate memory, load ROM images, initialize hardware,  **/
/** CPU and start the emulation. This function returns 0 in **/
/** the case of failure.                                    **/
/*************************************************************/
int StartMSX(int NewMode,int NewRAMPages,int NewVRAMPages)
{
  /*** Joystick types: ***/
  static const char *JoyTypes[] =
  {
    "nothing","normal joystick",
    "mouse in joystick mode","mouse in real mode"
  };

  /*** CMOS ROM default values: ***/
  static const uint8_t RTCInit[4][13]  = // 4*13 _nibbles_ - only b3-0 are used
  { // see https://www.msx.org/wiki/Ricoh_RP-5C01
    {  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, // Current Time and Day - bypassed in RTCIn()
    {  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, // Alarm, Hour Mode, Year Type
//  {0xa, 0, 0, 1,0xd,1,15, 4, 7, 3, 0, 0, 0 }, // explicitly & correctly set Adjust, Screen, Beep, Logo color, Language & others, or ..
    {  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },  // .. will be initialized to default when zeroed - store with SET SCREEN
    {  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }  // Title, Passuint16_t, Prompt
  };

  int *T,I,J,K;
  uint8_t *P;
  uint16_t A;
  char *sha1;
  int FirstCart=0;

  /*** STARTUP CODE starts here: ***/
  if(log_cb) log_cb(1,"StartMSX: begin\n");

  T=(int *)"\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
  /* Endian mismatch? */
#ifdef MSB_FIRST
  if(*T==1)
    return(0);
#else
  if(*T!=1)
    return(0);
#endif

  /* Zero (almost) everything */
  CasStream   = 0;
  FontBuf     = 0;
  RAMData     = 0;
  VRAM        = 0;
  Kanji       = 0;
  WorkDir     = 0;
  SaveCMOS    = 0;
  FMPACKey    = 0x0000;
  ExitNow     = 1; // libretro-fmsx: exit LoopZ80() always at scanline 192 to process a.o. controller inputs
  NChunks     = 0;
  CheatsON    = 0;
  CheatCount  = 0;
  MCFCount    = 0;
  DiskROMLoaded = 0;
  FmsxMSX2PKanjiBasicLoaded = 0;
  FmsxMSX2PKanjiBasicBase = 0;
  FmsxMSX2PMSXJELoaded = 0;
  FmsxMSX2PMSXJEBase = 0;

  /* Zero cartridge related data */
  for(J=0;J<MAXSLOTS;++J)
  {
    ROMMask[J]  = 0;
    ROMData[J]  = 0;
    ROMType[J]  = 0;
    FmsxCartMapperLockedType[J] = 0xFFu;
    FmsxCartMapperTypeSource[J] = FMSX_CART_SOURCE_NONE;
    SRAMData[J] = 0;
    SRAMName[J] = 0;
    SaveSRAM[J] = 0;
  }

  /* UPeriod has to be in 1%..100% range */
  UPeriod=UPeriod<1? 1:UPeriod>100? 100:UPeriod;

  /* Allocate 16kB for the empty space (scratch RAM) */
  if(!(EmptyRAM=GetMemory(0x4000))) { return(0); }
  memset(EmptyRAM,NORAM,0x4000);
  if(log_cb) log_cb(1,"StartMSX: EmptyRAM ok\n");

  /* Allocate 128kB (16x8kB pages) for SCC-I expanded RAM */
  if(!(Mode&MSX_NO_MEGARAM))
  {
    const unsigned megaram_bytes = fmsx_megaram_bytes();
    if(!(SCCIRAM=GetMemory(megaram_bytes))) { return(0); }
    memset(SCCIRAM,0,megaram_bytes);
  }
  if(log_cb) log_cb(1,"StartMSX: SCCIRAM ok\n");

  /* Reset memory map to the empty space */
  for(I=0;I<4;++I)
    for(J=0;J<4;++J)
      for(K=0;K<8;++K)
        MemMap[I][J][K]=EmptyRAM;

  /* Save current directory */
  WorkDir = (char*)GetMemory(1024);
  if(ProgDir && !getcwd(WorkDir, 1024) && log_cb)
     if(log_cb) log_cb(RETRO_LOG_ERROR,"StartMSX(): getcwd() failed\n");

  /* Set invalid modes and RAM/VRAM sizes before calling ResetMSX() */
  Mode      = ~NewMode;
  RAMPages  = 0;
  VRAMPages = 0;

  /* Try resetting MSX, allocating memory, loading ROMs */
  if((ResetMSX(NewMode,NewRAMPages,NewVRAMPages)^NewMode)&MSX_MODEL) return(0);
  if(!RAMPages||!VRAMPages) return(0);
  if(log_cb) log_cb(1,"StartMSX: ResetMSX ok\n");

  /* Change to the program directory */
  if(ProgDir && chdir(ProgDir)) { }

#ifndef FMSX_BAREMETAL_BOOT_MINIMAL_STARTUP
  /* Try loading font */
  if(FNTName)
    J=LoadFNT(FNTName);
  if(log_cb) log_cb(1,"StartMSX: LoadFNT done\n");

  /* Try loading CMOS memory contents */
    if(!LoadROM("CMOS.ROM",sizeof(RTC),(uint8_t *)RTC))
  {
     memcpy(RTC,RTCInit,sizeof(RTC));
     if(MODEL(MSX_MSX2P))
     {
       /* MSX2+ machines may skip startup logo when CMOS bank-2 defaults stay zeroed. */
       static const uint8_t RTCInitMSX2P[13] =
       {
         /*
          * Keep JP defaults but prefer 60Hz startup profile.
          * This avoids defaulting diagnostics to 50Hz on first boot.
          */
         0x0A,0x00,0x00,0x00,0x0D,0x01,0x0F,0x04,0x07,0x03,0x00,0x00,0x00
       };
       memcpy(RTC[2],RTCInitMSX2P,sizeof(RTCInitMSX2P));
     }
  }
  if(log_cb) log_cb(1,"StartMSX: CMOS done\n");

  /* Try loading Kanji alphabet ROM */
  if((Kanji = LoadROM("KANJI.ROM",0x20000,0))) { }
  if(log_cb) log_cb(1,"StartMSX: KANJI done\n");

  /* Try loading RS232 support ROM to slot */
  if((P=LoadROM("RS232.ROM",0x4000,0)))
  {
    MemMap[3][3][2]=P;
    MemMap[3][3][3]=P+0x2000;
  }

  /* Start loading system cartridges */
  J=MAXCARTS;

  /* If MSX2 or better and DiskROM present...  */
  /* ...try loading MSXDOS2 cartridge into 3:0 */
  if(!MODEL(MSX_MSX1)&&OPTION(MSX_MSXDOS2)&&(MemMap[3][DiskROMSubSlot()][2]!=EmptyRAM)&&!ROMData[2])
    if(LoadCart("MSXDOS2.ROM",2,MAP_GEN16))
      SetMegaROM(2,0,1,ROMMask[J]-1,ROMMask[J]);

  /* If MSX2 or better, load PAINTER cartridge */
  if(!MODEL(MSX_MSX1))
  {
    for(;(J<MAXSLOTS)&&ROMData[J];++J);
    if((J<MAXSLOTS)&&LoadCart("PAINTER.ROM",J,0)) ++J;
  }

  /* Load FMPAC cartridge when runtime FM-PAC is enabled. */
  if(g_fmsx_fmpac_enabled)
  {
    for(;(J<MAXSLOTS)&&ROMData[J];++J);
    if((J<MAXSLOTS)&&LoadCart("FMPAC.ROM",J,MAP_FMPAC)) ++J;
  }

  /* Load Konami GameMaster2/GameMaster cartridges */
  J=0; // by default load GM2&GM in slot A
  if(OPTION(MSX_GMASTER))
  {
    if(ROMName[0])
    {
      sha1 = SHA1Sum(ROMName[0]);
      for(I=0;sha1 && GameMaster2SlotSpecialSHA1s[I];I++)
      {
        if(!strcmp(sha1, GameMaster2SlotSpecialSHA1s[I]))
        {
          J=1; // for 2 games, load GM2 in slot B
          break;
        }
      }
      if (sha1) free(sha1);
    }
    if(LoadCart("GMASTER2.ROM",J,MAP_GMASTER2))
    {
      if(J==0) FirstCart=1; // if GM2 in slot A then load game in slot B
    }
    else if(LoadCart("GMASTER.ROM",0,0))
      FirstCart=1; // load game in slot B
  }
#else
  if(log_cb) log_cb(1,"StartMSX: minimal startup (skip optional ROM probes)\n");
  /* Keep FM-PAC available in minimal startup only when enabled. */
  if(g_fmsx_fmpac_enabled)
  {
    J=MAXCARTS;
    for(;(J<MAXSLOTS)&&ROMData[J];++J);
    if((J<MAXSLOTS)&&LoadCart("FMPAC.ROM",J,MAP_FMPAC)) ++J;
  }
#endif

  /* We are now back to working directory */
  if(WorkDir && chdir(WorkDir)) { }

  /* For each user cartridge slot, try loading cartridge */
#ifdef FMSX_BAREMETAL_CARTA_ONLY
  if(FirstCart<MAXCARTS) LoadCart(ROMName[0],FirstCart,ROMGUESS(0)|ROMTYPE(0));
#else
  for(J=0;J+FirstCart<MAXCARTS;++J) LoadCart(ROMName[J],J+FirstCart,ROMGUESS(J)|ROMTYPE(J));
#endif
  if(log_cb) log_cb(1,"StartMSX: carts done\n");

  /* Open cassette image */
  if(CasName&&ChangeTape(CasName)) { }
  if(log_cb) log_cb(1,"StartMSX: tape done\n");

  /* Initialize floppy disk controller */
#ifndef FMSX_BAREMETAL_SKIP_FDC_RESET
  if(log_cb) log_cb(1,"StartMSX: FDC init begin\n");
  Reset1793(&FDC,FDD,WD1793_INIT);
  if(log_cb) log_cb(1,"StartMSX: FDC init done\n");
#else
  if(log_cb) log_cb(1,"StartMSX: FDC init skipped (baremetal)\n");
#endif

  /* Open disk images */
#ifndef FMSX_BAREMETAL_SKIP_DISK_OPEN
  for(J=0;J<MAXDRIVES;++J)
  {
    if(ChangeDisk(J,DSKName[J])) { }
  }
  if(log_cb) log_cb(1,"StartMSX: disks done\n");
#else
  if(log_cb) log_cb(1,"StartMSX: disks skipped (baremetal)\n");
#endif

  /* Done with initialization */
  /* In baremetal mode, runtime loop is handled externally. */
#ifndef FMSX_BAREMETAL_NO_START_RUN
  A=RunZ80(&CPU);
#else
  A = 0;
#endif
  if(log_cb) log_cb(1,"StartMSX: return success\n");

  /* Exiting emulation... */
  return(1);
}

/** TrashMSX() ***********************************************/
/** Free resources allocated by StartMSX().                 **/
/*************************************************************/
void TrashMSX(void)
{
  RFILE *F;
  int J;

  /* CMOS.ROM is saved in the program directory */
  if(ProgDir && chdir(ProgDir)) { }

  /* Save CMOS RAM, if present */
  if(SaveCMOS)
  {
    if(!(F=rfopen("CMOS.ROM","wb"))) SaveCMOS=0;
    else
    {
      if(rfwrite(RTC,1,sizeof(RTC),F)!=sizeof(RTC)) SaveCMOS=0;
      rfclose(F);
    }
  }

  /* Change back to working directory */
  if(WorkDir && chdir(WorkDir)) { }

  /* Eject disks, free disk buffers */
  Reset1793(&FDC,FDD,WD1793_EJECT);

  /* Close tape */
  ChangeTape(0);

  /* Eject all cartridges (will save SRAM) */
  for(J=0;J<MAXSLOTS;++J) LoadCart(0,J,ROMType[J]);

  /* Eject all disks */
  for(J=0;J<MAXDRIVES;++J) ChangeDisk(J,0);

  /* Free all remaining allocated memory */
  FreeAllMemory();
}

/** ResetMSX() ***********************************************/
/** Reset MSX hardware to new operating modes. Returns new  **/
/** modes, possibly not the same as NewMode.                **/
/*************************************************************/
int ResetMSX(int NewMode,int NewRAMPages,int NewVRAMPages)
{
  /*** VDP status register states: ***/
  static const uint8_t VDPSInit[16] = { 0x9F,0,0x6C,0,0,0,0,0,0,0,0,0,0,0,0,0 };

  /*** VDP control register states: ***/
  static const uint8_t VDPInit[64]  =
  {
    0x00,0x10,0xFF,0xFF,0xFF,0xFF,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
  };

  /*** Initial palette: ***/
  static const unsigned int PalInit[16] =
  {
    0x00000000,0x00000000,0x0020C020,0x0060E060,
    0x002020E0,0x004060E0,0x00A02020,0x0040C0E0,
    0x00E02020,0x00E06060,0x00C0C020,0x00C0C080,
    0x00208020,0x00C040A0,0x00A0A0A0,0x00E0E0E0
  };

  uint8_t *P1,*P2,*P3,*P4;
  int J,I;

  if(log_cb) log_cb(1,"ResetMSX: begin\n");

  fmsx_s1985_init_once();

  /* If changing hardware model, load new system ROMs */
  if((Mode^NewMode)&MSX_MODEL)
  {
    if(log_cb) log_cb(1,"ResetMSX: model change\n");
    /* Change to the program directory */
    if(ProgDir && chdir(ProgDir)) { }

    switch(NewMode&MSX_MODEL)
    {
      case MSX_MSX1:
        FmsxMSX2PKanjiBasicLoaded = 0;
        FmsxMSX2PKanjiBasicBase = 0;
        FmsxMSX2PMSXJELoaded = 0;
        FmsxMSX2PMSXJEBase = 0;
        if(log_cb) log_cb(1,"ResetMSX: loading MSX.ROM\n");
        P1=LoadROM("MSX.ROM",0x8000,0);
        if(log_cb) log_cb(1,P1?"ResetMSX: MSX.ROM ok\n":"ResetMSX: MSX.ROM fail\n");
        if(!P1) NewMode=(NewMode&~MSX_MODEL)|(Mode&MSX_MODEL);
        else
        {
          FreeMemory(MemMap[0][0][0]);
          FreeMemory(MemMap[3][1][0]);
          MemMap[0][0][0]=P1;
          MemMap[0][0][1]=P1+0x2000;
          MemMap[0][0][2]=P1+0x4000;
          MemMap[0][0][3]=P1+0x6000;
          MemMap[3][1][0]=EmptyRAM;
          MemMap[3][1][1]=EmptyRAM;
        }
        break;

      case MSX_MSX2:
        FmsxMSX2PKanjiBasicLoaded = 0;
        FmsxMSX2PKanjiBasicBase = 0;
        FmsxMSX2PMSXJELoaded = 0;
        FmsxMSX2PMSXJEBase = 0;
        P1=LoadROM("MSX2.ROM",0x8000,0);
        P2=LoadROM("MSX2EXT.ROM",0x4000,0);
        if(!P2) P2=LoadROM("MSX2SUB.ROM",0x4000,0);
        if(!P2) P2=LoadROM("SUBROM.ROM",0x4000,0);
        if(!P1||!P2)
        {
          NewMode=(NewMode&~MSX_MODEL)|(Mode&MSX_MODEL);
          FreeMemory(P1);
          FreeMemory(P2);
        }
        else
        {
          FreeMemory(MemMap[0][0][0]);
          FreeMemory(MemMap[3][1][0]);
          MemMap[0][0][0]=P1;
          MemMap[0][0][1]=P1+0x2000;
          MemMap[0][0][2]=P1+0x4000;
          MemMap[0][0][3]=P1+0x6000;
          MemMap[3][1][0]=P2;
          MemMap[3][1][1]=P2+0x2000;
        }
        break;

      case MSX_MSX2P:
        P1=LoadROM("MSX2P.ROM",0x8000,0);
        P2=LoadROM("MSX2PEXT.ROM",0x4000,0);
        if(!P2) P2=LoadROM("MSX2SUB.ROM",0x4000,0);
        if(!P2) P2=LoadROM("SUBROM.ROM",0x4000,0);
        /* openMSX Sony_HB-F1XDJ maps Kanji BASIC at slot 3-1, 4000h- BFFFh. */
        P3=LoadROM("KANJIBASIC.ROM",0x8000,0);
        if(!P3) P3=LoadROM("HB-F1XDJ_KANJIBASIC.ROM",0x8000,0);
        if(!P3) P3=LoadROM("FS-A1FX_KANJIBASIC.ROM",0x8000,0);
        /* openMSX Sony_HB-F1XDJ also maps MSX-JE in slot 0-3. */
        P4=LoadROM("MSXJE.ROM",0x10000,0);
        if(!P4) P4=LoadROM("HB-F1XDJ.ROM",0x10000,0);
        if(!P4) P4=LoadROM("HB-F1XDJ_MSXJE.ROM",0x10000,0);
        if(!P1||!P2)
        {
          NewMode=(NewMode&~MSX_MODEL)|(Mode&MSX_MODEL);
          FreeMemory(P1);
          FreeMemory(P2);
          FreeMemory(P3);
          FreeMemory(P4);
          FmsxMSX2PKanjiBasicLoaded = 0;
          FmsxMSX2PKanjiBasicBase = 0;
          FmsxMSX2PMSXJELoaded = 0;
          FmsxMSX2PMSXJEBase = 0;
        }
        else
        {
          FreeMemory(MemMap[0][0][0]);
          FreeMemory(MemMap[3][1][0]);
          FreeMemory(MemMap[3][1][2]);
          MemMap[0][0][0]=P1;
          MemMap[0][0][1]=P1+0x2000;
          MemMap[0][0][2]=P1+0x4000;
          MemMap[0][0][3]=P1+0x6000;
          MemMap[3][1][0]=P2;
          MemMap[3][1][1]=P2+0x2000;

          FreeMemory(MemMap[0][3][0]);
          if(P4)
          {
            MemMap[0][3][0]=P4;
            MemMap[0][3][1]=P4+0x2000;
            MemMap[0][3][2]=P4+0x4000;
            MemMap[0][3][3]=P4+0x6000;
            MemMap[0][3][4]=P4+0x8000;
            MemMap[0][3][5]=P4+0xA000;
            MemMap[0][3][6]=P4+0xC000;
            MemMap[0][3][7]=P4+0xE000;
            FmsxMSX2PMSXJELoaded = 1;
            FmsxMSX2PMSXJEBase = P4;
          }
          else
          {
            MemMap[0][3][0]=EmptyRAM;
            MemMap[0][3][1]=EmptyRAM;
            MemMap[0][3][2]=EmptyRAM;
            MemMap[0][3][3]=EmptyRAM;
            MemMap[0][3][4]=EmptyRAM;
            MemMap[0][3][5]=EmptyRAM;
            MemMap[0][3][6]=EmptyRAM;
            MemMap[0][3][7]=EmptyRAM;
            FmsxMSX2PMSXJELoaded = 0;
            FmsxMSX2PMSXJEBase = 0;
          }

          if(P3)
          {
            MemMap[3][1][2]=P3;
            MemMap[3][1][3]=P3+0x2000;
            MemMap[3][1][4]=P3+0x4000;
            MemMap[3][1][5]=P3+0x6000;
            FmsxMSX2PKanjiBasicLoaded = 1;
            FmsxMSX2PKanjiBasicBase = P3;
          }
          else
          {
            MemMap[3][1][2]=EmptyRAM;
            MemMap[3][1][3]=EmptyRAM;
            MemMap[3][1][4]=EmptyRAM;
            MemMap[3][1][5]=EmptyRAM;
            FmsxMSX2PKanjiBasicLoaded = 0;
            FmsxMSX2PKanjiBasicBase = 0;
          }
        }
        break;

      default:
        /* Unknown MSX model, keep old model */
        FmsxMSX2PKanjiBasicLoaded = 0;
        FmsxMSX2PKanjiBasicBase = 0;
        FmsxMSX2PMSXJELoaded = 0;
        FmsxMSX2PMSXJEBase = 0;
        NewMode=(NewMode&~MSX_MODEL)|(Mode&MSX_MODEL);
        break;
    }

    /* Change to the working directory */
    if(WorkDir && chdir(WorkDir)) { }
  }

  if(log_cb) log_cb(1,"ResetMSX: after model ROMs\n");

  /* If hardware model changed ok, patch freshly loaded BIOS */
  if((Mode^NewMode)&MSX_MODEL)
  {
    if(log_cb) log_cb(1,"ResetMSX: patch BIOS begin\n");
#if defined(PATCH_Z80) && !defined(FMSX_BAREMETAL_SKIP_BIOS_PATCHES)
    /* Apply BIOS trampoline patches only when PatchZ80() trap handler is available. */
    for(J=0;BIOSPatches[J];++J)
    {
      P1=MemMap[0][0][0]+BIOSPatches[J];
      P1[0]=0xED;P1[1]=0xFE;P1[2]=0xC9;
    }
#else
    if(log_cb) log_cb(1,"ResetMSX: patch BIOS skipped (no PATCH_Z80 trap)\n");
#endif
    if(log_cb) log_cb(1,"ResetMSX: patch BIOS end\n");
  }

  /* If toggling BDOS patches... */
  if((Mode^NewMode)&MSX_PATCHBDOS)
  {
    const uint8_t disk_subslot = ((NewMode&MSX_MODEL)==MSX_MSX2P)? 2:1;
    if(log_cb) log_cb(1,"ResetMSX: PATCHBDOS begin\n");
    if(log_cb) log_cb(1,"ResetMSX: patchbdos branch\n");
    /* Change to the program directory */
    if(ProgDir && chdir(ProgDir)) { }

    /* Try loading DiskROM */
    P1=LoadROM("DISK.ROM",0x4000,0);
    DiskROMLoaded=!!P1;

    /* Change to the working directory */
    if(WorkDir && chdir(WorkDir)) { }

    /* If failed loading DiskROM, ignore the new PATCHBDOS bit */
    if(!P1) NewMode=(NewMode&~MSX_PATCHBDOS)|(Mode&MSX_PATCHBDOS);
    else
    {
      if(((NewMode&MSX_MODEL)==MSX_MSX2P) && FmsxMSX2PKanjiBasicLoaded && (disk_subslot==1))
      {
        /*
         * Keep MSX2+ Kanji BASIC visible at slot 3-1:4000h-7FFFh.
         * This preserves the boot-logo startup routine used by real ROM sets.
         */
        FreeMemory(P1);
        DiskROMLoaded=0;
      }
      else
      {
        /* Assign new DiskROM */
        FreeMemory(MemMap[3][disk_subslot][2]);
        MemMap[3][disk_subslot][2]=P1;
        MemMap[3][disk_subslot][3]=P1+0x2000;

        /* If BDOS patching requested and PatchZ80 trap exists... */
#ifdef PATCH_Z80
        if(NewMode&MSX_PATCHBDOS)
        {
          /* Apply patches to BDOS */
          for(J=0;DiskPatches[J];++J)
          {
            P2=P1+DiskPatches[J]-0x4000;
            P2[0]=0xED;P2[1]=0xFE;P2[2]=0xC9;
          }
        }
#else
        if(NewMode&MSX_PATCHBDOS)
          if(log_cb) log_cb(1,"ResetMSX: PATCHBDOS hooks skipped (no PATCH_Z80 trap)\n");
#endif
      }
    }
    if(log_cb) log_cb(1,"ResetMSX: PATCHBDOS end\n");
  }

  /* Assign new modes */
  Mode           = NewMode;
  FmsxResetStatus = MODEL(MSX_MSX2P)? 0x00:0xFF;
  FmsxSwitchedIODeviceId = 0xFFu;
  FmsxS1985TurboLatched = 0u;
  fmsx_runtime_set_panasonic_turbo_enabled(FALSE);
  if(log_cb) log_cb(1,"ResetMSX: mode assigned\n");

  /* Set ROM types for cartridges A/B */
  ROMType[0]     = fmsx_cart_effective_type_for_slot(0);
  ROMType[1]     = fmsx_cart_effective_type_for_slot(1);
  if(ROMData[0]) SETROMTYPE(0,ROMType[0]);
  if(ROMData[1]) SETROMTYPE(1,ROMType[1]);

  /* Set CPU timings */
  VPeriod        = fmsx_scale_cycles((VIDEO(MSX_PAL)? VPERIOD_PAL:VPERIOD_NTSC)/6);
  HPeriod        = fmsx_scale_cycles(HPERIOD/6);
  CPU.IPeriod    = fmsx_scale_cycles(CPU_H240);
  CPU.IAutoReset = 0;
  fmsx_audio_cycle_reset();

  /* Numbers of RAM pages should be power of 2 */
  for(J=1;J<NewRAMPages;J<<=1);
  NewRAMPages=J;

  /* Correct RAM and VRAM sizes */
  if((NewRAMPages<(MODEL(MSX_MSX1)? 4:8))||(NewRAMPages>256))
    NewRAMPages=MODEL(MSX_MSX1)? 4:8; // MSX1 min&default: 64KiB, MSX2(+) min&default: 128KiB. Max 4MiB
  if((NewVRAMPages<(MODEL(MSX_MSX1)? 2:8))||(NewVRAMPages>12))
    NewVRAMPages=MODEL(MSX_MSX1)? 2:8; // MSX1 min&default: 32KiB, MSX2(+) min&default: 128KiB. Max 192KiB (nonstandard)

  /* If changing amount of RAM... */
  if(NewRAMPages!=RAMPages)
  {
    if(log_cb) log_cb(1,"ResetMSX: allocating RAM\n");
    if(log_cb) log_cb(1,"ResetMSX: RAM GetMemory begin\n");
    if((P1=GetMemory(NewRAMPages*0x4000)))
    {
      if(log_cb) log_cb(1,"ResetMSX: RAM GetMemory ok\n");
      if(log_cb) log_cb(1,"ResetMSX: RAM memset begin\n");
      memset(P1,NORAM,NewRAMPages*0x4000);
      if(log_cb) log_cb(1,"ResetMSX: RAM memset ok\n");
      FreeMemory(RAMData);
      RAMPages = NewRAMPages;
      RAMMask  = NewRAMPages-1;
      RAMData  = P1;
    }
    else if(log_cb) log_cb(1,"ResetMSX: RAM GetMemory FAIL\n");
  }

  /* If changing amount of VRAM... */
  if(NewVRAMPages!=VRAMPages)
  {
    if(log_cb) log_cb(1,"ResetMSX: allocating VRAM\n");
    if(log_cb) log_cb(1,"ResetMSX: VRAM GetMemory begin\n");
    if((P1=GetMemory(NewVRAMPages*0x4000)))
    {
      if(log_cb) log_cb(1,"ResetMSX: VRAM GetMemory ok\n");
      if(log_cb) log_cb(1,"ResetMSX: VRAM memset begin\n");
      memset(P1,0x00,NewVRAMPages*0x4000);
      if(log_cb) log_cb(1,"ResetMSX: VRAM memset ok\n");
      FreeMemory(VRAM);
      VRAMPages = NewVRAMPages;
      VRAM      = P1;
      for(J=1;J<VRAMPages;J<<=1);
      VRAMPageMask = J-1;
    }
    else if(log_cb) log_cb(1,"ResetMSX: VRAM GetMemory FAIL\n");
  }

  if(!RAMData || !VRAM)
  {
    if(log_cb) log_cb(1,"ResetMSX: FAIL null RAMData/VRAM\n");
    return(Mode);
  }
  if(log_cb) log_cb(1,"ResetMSX: RAM/VRAM pointers OK\n");

  /* For all slots... */
  for(J=0;J<4;++J)
  {
    /* Slot is currently read-only */
    EnWrite[J]          = 0;
    /* PSL=0:0:0:0, SSL=0:0:0:0 */
    PSL[J]              = 0;
    SSL[J]              = 0;
    /* RAMMap=3:<model-dependent subslot>:1:0 */
    MemMap[3][RAMMapperSubSlot()][J*2]   = RAMData+(3-J)*0x4000;
    MemMap[3][RAMMapperSubSlot()][J*2+1] = MemMap[3][RAMMapperSubSlot()][J*2]+0x2000;
    RAMMapper[J]        = 3-J;
    /* Setting address space */
    RAM[J*2]            = MemMap[0][0][J*2];
    RAM[J*2+1]          = MemMap[0][0][J*2+1];
  }
  if(log_cb) log_cb(1,"ResetMSX: slot maps initialized\n");

  /* For all MegaROMs... */
  for(J=0;J<MAXSLOTS;++J)
  {
    fmsx_manbow2_flash_soft_reset(J);
    if((I=ROMMask[J]+1)>4)
    {
      /* For normal MegaROMs, set first four pages */
      if((ROMData[J][0]=='A')&&(ROMData[J][1]=='B'))
        SetMegaROM(J,0,1,2,3);
      /* Some MegaROMs default to last pages on reset */
      else if((ROMData[J][(I-2)<<13]=='A')&&(ROMData[J][((I-2)<<13)+1]=='B'))
        SetMegaROM(J,I-2,I-1,I-2,I-1);
      /* If 'AB' signature is not found at the beginning or the end */
      /* then it is not a MegaROM but rather a plain 64kB ROM       */
    }
  }

  /* Reset sound chips */
#if defined(FMSX_BAREMETAL_PSG_AUDIO_ONLY) && !defined(FMSX_BAREMETAL_SKIP_AUDIO_RESET)
  if(log_cb) log_cb(1,"ResetMSX: PSG-only audio reset begin\n");
  Reset8910(&PSG,PSG_CLOCK,FIRST_AY8910_CHANNEL);
  Sync8910(&PSG,AY8910_SYNC);
  if(log_cb) log_cb(1,"ResetMSX: PSG-only audio reset ok\n");
#elif defined(FMSX_BAREMETAL_PSG_AUDIO_ONLY)
  if(log_cb) log_cb(1,"ResetMSX: PSG-only audio reset skipped (baremetal)\n");
#elif !defined(FMSX_BAREMETAL_SKIP_AUDIO_RESET)
  if(log_cb) log_cb(1,"ResetMSX: sound reset begin\n");
  Reset8910(&PSG,PSG_CLOCK,FIRST_AY8910_CHANNEL);
  if(log_cb) log_cb(1,"ResetMSX: Reset8910 ok\n");
  fmsx_reset_scc_chips();
  if(log_cb) log_cb(1,"ResetMSX: ResetSCC ok\n");
  Reset2413(&OPLL,FIRST_YM2413_CHANNEL);
  if(log_cb) log_cb(1,"ResetMSX: Reset2413 ok\n");
  NukeYKT_Reset2413(&OPLL_NukeYKT);
  if(log_cb) log_cb(1,"ResetMSX: NukeYKT reset ok\n");
  Sync8910(&PSG,AY8910_SYNC);
  fmsx_sync_scc_chips(SCC_SYNC);
  Sync2413(&OPLL,YM2413_SYNC);
  if(log_cb) log_cb(1,"ResetMSX: sound chips reset\n");
#else
  if(log_cb) log_cb(1,"ResetMSX: sound reset skipped (baremetal)\n");
#endif

  /* Reset PPI chips and slot selectors */
  Reset8255(&PPI);
  if(log_cb) log_cb(1,"ResetMSX: PPI reset\n");
  if(log_cb) log_cb(1,"ResetMSX: PPI regs begin\n");
  PPI.Rout[0]=PSLReg=0x00;
  PPI.Rout[2]=IOReg=0x00;
  SSLReg[0]=0x00;
  SSLReg[1]=0x00;
  SSLReg[2]=0x00;
  SSLReg[3]=0x00;
  if(log_cb) log_cb(1,"ResetMSX: PPI regs ok\n");

  /* Reset floppy disk controller */
#ifndef FMSX_BAREMETAL_SKIP_FDC_RESET
  if(log_cb) log_cb(1,"ResetMSX: FDC reset begin\n");
  Reset1793(&FDC,FDD,WD1793_KEEP);
  if(log_cb) log_cb(1,"ResetMSX: FDC reset\n");
#else
  if(log_cb) log_cb(1,"ResetMSX: FDC reset skipped (baremetal)\n");
#endif

  /* Reset VDP */
  if(log_cb) log_cb(1,"ResetMSX: VDP memcpy begin\n");
  memcpy(VDP,VDPInit,sizeof(VDP));
  memcpy(VDPStatus,VDPSInit,sizeof(VDPStatus));
  if(VIDEO(MSX_PAL)) VDP[9]|=0x02;
  else               VDP[9]&=~0x02;
  fmsx_sync_bios_region_flag(VIDEO(MSX_PAL)? 1:0);
  fmsx_sync_bios_vdp_r9_shadow();
  if(log_cb) log_cb(1,"ResetMSX: VDP reset\n");

  /* Reset keyboard */
  if(log_cb) log_cb(1,"ResetMSX: keyboard reset begin\n");
  memset((void *)KeyState,0xFF,16);
  if(log_cb) log_cb(1,"ResetMSX: keyboard reset ok\n");

  /* Set initial palette */
  if(log_cb) log_cb(1,"ResetMSX: palette init begin\n");
  for(J=0;J<16;++J)
  {
    Palette[J]=PalInit[J];
    if(log_cb && J==0) log_cb(1,"ResetMSX: palette SetColor first\n");
    SetColor(J,(Palette[J]>>16)&0xFF,(Palette[J]>>8)&0xFF,Palette[J]&0xFF);
  }
  if(log_cb) log_cb(1,"ResetMSX: palette init ok\n");

  /* Reset mouse coordinates/counters */
  if(log_cb) log_cb(1,"ResetMSX: mouse reset begin\n");
  for(J=0;J<2;++J)
    MouState[J]=MouseDX[J]=MouseDY[J]=OldMouseX[J]=OldMouseY[J]=MCount[J]=0;
  if(log_cb) log_cb(1,"ResetMSX: mouse reset ok\n");

  IRQPending=0x00;                      /* No IRQs pending  */
  g_vdp_status_poll_last_pc = 0xFFFFu;
  g_vdp_status_poll_streak = 0;
  for(J=0;J<MAXSLOTS;++J)
  {
    SCCOn[J]=0;                         /* SCCs off for now */
    SCCIMode[J]=0;                      /* bankselect/SCC   */
  }
  RTCReg=RTCMode=0;                     /* Clock registers  */
  FmsxRTCReadCount = 0;
  FmsxRTCWriteCount = 0;
  FmsxRTCLastReg = 0;
  FmsxRTCLastMode = 0;
  FmsxP1Select31Count = 0;
  FmsxP1Select03Count = 0;
  FmsxP1LastPS = 0xFF;
  FmsxP1LastSS = 0xFF;
  FmsxVDPFrameCounter = 0;
  FmsxVDPLinePhase = 0;
  FmsxVDPScreenOnLatched = 0;
  FmsxIE1EventCount = 0;
  FmsxIE1AckCount = 0;
  FmsxIE1ArmedCount = 0;
  FmsxIE1FiredHBlankCount = 0;
  FmsxIE1PendingHBlank = 0;
  FmsxVDPDisplayStateDirty = 0;
  FmsxVDPPort99ReadCount = 0;
  FmsxVDPPort99WriteCount = 0;
  FmsxVDPPort9BWriteCount = 0;
  memset(FmsxVDPRegWriteCount,0,sizeof(FmsxVDPRegWriteCount));
  memset(FmsxVDPStatusReadCount,0,sizeof(FmsxVDPStatusReadCount));
  memset(g_fmsx_kmg_trace,0,sizeof(g_fmsx_kmg_trace));
  g_fmsx_kmg_trace_head = 0;
  g_fmsx_kmg_trace_count = 0;
  g_fmsx_kmg_trace_dropped = 0;
  g_fmsx_kmg_trace_seq = 0;
#if FMSX_SMANBOW_AUDIO_TRACE_ENABLED
  memset(g_fmsx_scc_trace,0,sizeof(g_fmsx_scc_trace));
  memset(&g_fmsx_scc_trace_active,0,sizeof(g_fmsx_scc_trace_active));
  g_fmsx_scc_trace_head = 0;
  g_fmsx_scc_trace_count = 0;
  g_fmsx_scc_trace_dropped = 0;
  g_fmsx_scc_trace_seq = 0;
  g_fmsx_scc_trace_active_valid = 0;
  g_fmsx_scc_trace_started = 0;
  g_fmsx_scc_trace_capture_done = 0;
  g_fmsx_scc_trace_seen_slot_flow = 0;
  g_fmsx_scc_trace_session = 0;
  g_fmsx_scc_trace_session_open = 0;
  g_fmsx_scc_trace_events_in_session = 0u;
  memset(g_fmsx_audio_port_trace,0,sizeof(g_fmsx_audio_port_trace));
  memset(&g_fmsx_audio_port_trace_active,0,sizeof(g_fmsx_audio_port_trace_active));
  g_fmsx_audio_port_trace_head = 0;
  g_fmsx_audio_port_trace_count = 0;
  g_fmsx_audio_port_trace_dropped = 0;
  g_fmsx_audio_port_trace_seq = 0;
  g_fmsx_audio_port_trace_active_valid = 0u;
#endif
  FmsxKanjiReadCount = 0;
  FmsxKanjiAddrWriteCount = 0;
  FmsxKanjiNullReadCount = 0;
  g_fmsx_vdp_trace_head = 0;
  g_fmsx_vdp_trace_count = 0;
  g_fmsx_vdp_trace_dropped = 0;
  g_fmsx_vdp_trace_seq = 0;
  memset(g_fmsx_vdp_trace,0,sizeof(g_fmsx_vdp_trace));
  KanCount=0;KanLetter=0;               /* Kanji extension  */
  ChrTab=ColTab=ChrGen=VRAM;            /* VDP tables       */
  SprTab=SprGen=VRAM;
  ChrTabM=ColTabM=ChrGenM=SprTabM=~0;   /* VDP addr. masks  */
  VPAGE=VRAM;                           /* VRAM page        */
  FGColor=BGColor=XFGColor=XBGColor=0;  /* VDP colors       */
  ScrMode=0;                            /* Screen mode      */
  VKey=PKey=1;                          /* VDP keys         */
  VAddr=0x0000;                         /* VRAM access addr */
  ScanLine=0;                           /* Current scanline */
  VDPData=NORAM;                        /* VDP data buffer  */
  JoyState=0;                           /* Joystick state   */

  /* Set "V9958" VDP version for MSX2+ */
  if(MODEL(MSX_MSX2P)) VDPStatus[1]|=0x04;

  /* Reset CPU */
  if(log_cb) log_cb(1,"ResetMSX: ResetZ80 begin\n");
  ResetZ80(&CPU);
  if(log_cb) log_cb(1,"ResetMSX: ResetZ80 ok\n");
  if(log_cb) log_cb(1,"ResetMSX: end\n");

  /* Done */
  return(Mode);
}

/** RdZ80() **************************************************/
/** Z80 emulation calls this function to read a uint8_t from   **/
/** address A in the Z80 address space. Also see OpZ80() in **/
/** Z80.c which is a simplified code-only RdZ80() version.  **/
/*************************************************************/
uint8_t RdZ80(uint16_t A)
{
  uint8_t J,PS,SS,I;
  int flash_handled;

  /* Secondary slot selector */
  if(A==0xFFFF)
  {
    /* Non-expanded primaries read back as all 1s on this register. */
    PS=PSL[3];
    return IsExpandedPrimarySlot(PS)? (uint8_t)~SSLReg[PS]:0xFF;
  }

  J  = A>>14;           /* 16kB page number 0-3  */
  PS = PSL[J];          /* Primary slot number   */
  SS = SSL[J];          /* Secondary slot number */

  /* Floppy disk controller */
  /* 7FF8h..7FFFh Standard DiskROM  */
  /* BFF8h..BFFFh MSX-DOS BDOS      */
  /* 7F80h..7F87h Arabic DiskROM    */
  /* 7FB8h..7FBFh SV738/TechnoAhead */
  if(PS==3&&SS==DiskROMSubSlot())
    switch(A)
    {
      /* Standard      MSX-DOS       Arabic        SV738            */
      case 0x7FF8: case 0xBFF8: case 0x7F80: case 0x7FB8: /* STATUS */
      case 0x7FF9: case 0xBFF9: case 0x7F81: case 0x7FB9: /* TRACK  */
      case 0x7FFA: case 0xBFFA: case 0x7F82: case 0x7FBA: /* SECTOR */
      case 0x7FFB: case 0xBFFB: case 0x7F83: case 0x7FBB: /* DATA   */
        fmsx_runtime_notify_media_probe();
        return(Read1793(&FDC,A&0x0003));
      case 0x7FFF: case 0xBFFF: case 0x7F84: case 0x7FBC: /* SYSTEM */
        fmsx_runtime_notify_media_probe();
        return(Read1793(&FDC,WD1793_READY));
    }

  I = CartMap[PS][SS]; /* Cartridge number      */
  if (I < 2 && A >= 0x4000 && A < 0xC000)
  {
    fmsx_runtime_notify_media_probe();
  }
  if((I<MAXSLOTS) && SCCOn[I]
  && (ROMData[I]
    ? ((I<2) ? fmsx_scc_window_match(ROMType[I],A) : 0)
    : (fmsx_slot_has_virtual_sccplus(I) && ((A&0xD800)==0x9800))))
  {
    SCC *chip = fmsx_scc_chip_for_slot(I);
    J=A&0x00FF;
    return chip? ((A&0x2000) ? ReadSCCP(chip,J) : ReadSCC(chip,J)):NORAM;
  }

  if((I<MAXSLOTS)&&fmsx_rom_type_is_manbow2(ROMType[I])&&(A>=0x4000u)&&(A<0xC000u))
  {
    const uint8_t value = fmsx_manbow2_flash_read(I,A,&flash_handled);
    if(flash_handled) return value;
  }

  /* Default to reading memory */
  return(RAM[A>>13][A&0x1FFF]);
}

/** WrZ80() **************************************************/
/** Z80 emulation calls this function to write uint8_t V to    **/
/** address A of Z80 address space.                         **/
/*************************************************************/
void WrZ80(uint16_t A,uint8_t V)
{
  uint8_t J,PS,SS,I;

  /* Secondary slot selector */
  if(A==0xFFFF) { SSlot(V);return; }

  /* Floppy disk controller */
  /* 7FF8h..7FFFh Standard DiskROM  */
  /* BFF8h..BFFFh MSX-DOS BDOS      */
  /* 7F80h..7F87h Arabic DiskROM    */
  /* 7FB8h..7FBFh SV738/TechnoAhead */
  if(((A&0x3F88)==0x3F88)&&(PSL[A>>14]==3)&&(SSL[A>>14]==DiskROMSubSlot()))
    switch(A)
    {
      /* Standard      MSX-DOS       Arabic        SV738             */
      case 0x7FF8: case 0xBFF8: case 0x7F80: case 0x7FB8: /* COMMAND */
      case 0x7FF9: case 0xBFF9: case 0x7F81: case 0x7FB9: /* TRACK   */
      case 0x7FFA: case 0xBFFA: case 0x7F82: case 0x7FBA: /* SECTOR  */
      case 0x7FFB: case 0xBFFB: case 0x7F83: case 0x7FBB: /* DATA    */
        fmsx_runtime_notify_media_probe();
        Write1793(&FDC,A&0x0003,V);
        return;
      case 0xBFFC: /* Standard/MSX-DOS */
      case 0x7FFC: /* Side: [xxxxxxxS] */
        fmsx_runtime_notify_media_probe();
        Write1793(&FDC,WD1793_SYSTEM,FDC.Drive|S_DENSITY|(V&0x01? 0:S_SIDE));
        return;
      case 0xBFFD: /* Standard/MSX-DOS  */
      case 0x7FFD: /* Drive: [xxxxxxxD] */
        fmsx_runtime_notify_media_probe();
        Write1793(&FDC,WD1793_SYSTEM,(V&0x01)|S_DENSITY|(FDC.Side? 0:S_SIDE));
        return;
      case 0x7FBC: /* Arabic/SV738 */
      case 0x7F84: /* Side/Drive/Motor: [xxxxMSDD] */
        fmsx_runtime_notify_media_probe();
        Write1793(&FDC,WD1793_SYSTEM,(V&0x03)|S_DENSITY|(V&0x04? 0:S_SIDE));
        return;
    }

  /* Write to RAM, if enabled */
  if(EnWrite[A>>14])
  {
    RAM[A>>13][A&0x1FFF]=V;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
    fmsx_log_kmg_detection_write(A, V);
#endif
    return;
  }

  J  = A>>14;
  PS = PSL[J];
  SS = SSL[J];
  I  = CartMap[PS][SS];
  if (I < 2 && A >= 0x4000 && A < 0xC000)
  {
    fmsx_runtime_notify_media_probe();
  }

  /* Switch MegaROM pages */
  if((A>0x3FFF)&&(A<0xC000)) MapROM(A,V);
}

/** InZ80() **************************************************/
/** Z80 emulation calls this function to read a uint8_t from   **/
/** a given I/O port.                                       **/
/*************************************************************/
uint8_t InZ80(uint16_t Port)
{
  /* MSX only uses 256 IO ports */
  Port&=0xFF;

  /* Return an appropriate port value */
  switch(Port)
  {

case 0x90: return(0xFD);                   /* Printer READY signal */
case 0x40:
case 0x41:
case 0x42:
case 0x43:
case 0x44:
case 0x45:
case 0x46:
case 0x47:
case 0x48:
case 0x49:
case 0x4A:
case 0x4B:
case 0x4C:
case 0x4D:
case 0x4E:
case 0x4F:
  if(MODEL(MSX_MSX2P))
  {
    fmsx_s1985_init_once();
    return fmsx_s1985_read((uint8_t)Port,1);
  }
  return NORAM;
case 0xF4:
  /* Reset status register exists on S1985-based machines (MSX2+ profile here). */
  return MODEL(MSX_MSX2P)? FmsxResetStatus:NORAM;
case 0xB5:
  FmsxRTCReadCount++;
  FmsxRTCLastReg=RTCReg;
  FmsxRTCLastMode=RTCMode;
  return(RTCIn(RTCReg));                   /* RTC registers        */

case 0xA8: /* Primary slot state   */
case 0xA9: /* Keyboard port        */
case 0xAA: /* General IO register  */
case 0xAB: /* PPI control register */
  PPI.Rin[1]=KeyState[PPI.Rout[2]&0x0F];
  return(Read8255(&PPI,Port-0xA8));

case 0xFC: /* Mapper page at 0000h */
case 0xFD: /* Mapper page at 4000h */
case 0xFE: /* Mapper page at 8000h */
case 0xFF: /* Mapper page at C000h */
  return(RAMMapper[Port-0xFC]|~RAMMask);

case 0xD9: /* Kanji support */
  FmsxKanjiReadCount++;
  if(!Kanji) FmsxKanjiNullReadCount++;
  Port=Kanji? Kanji[KanLetter+KanCount]:NORAM;
  KanCount=(KanCount+1)&0x1F;
  return(Port);

case 0x80: /* SIO data */
case 0x81:
case 0x82:
case 0x83:
case 0x84:
case 0x85:
case 0x86:
case 0x87:
  return(NORAM);
  /*return(Rd8251(&SIO,Port&0x07));*/

case 0x98: /* VRAM read port */
  fmsx_apply_vdp_io_wait(fmsx_vdp_read_wait_cycles());
  /* Read from VRAM data buffer */
  Port=VDPData;
  /* Reset VAddr latch sequencer */
  VKey=1;
  /* Fill data buffer with the next VRAM byte using V9958 direct-port mapping. */
  VDPData=fmsx_vdp_cpu_port_read_next();
  /* Increment VRAM address */
  VAddr=(VAddr+1)&0x3FFF;
  /* If rolled over, modify VRAM page# */
  if(!VAddr&&(ScrMode>3))
  {
    VDP[14]=(VDP[14]+1)&VRAMPageMask;
    VPAGE=VRAM+((int)VDP[14]<<14);
  }
  return(Port);

case 0x99: /* VDP status registers */
{
  fmsx_apply_vdp_io_wait(fmsx_vdp_status_wait_cycles());
  const uint8_t status_reg = MODEL(MSX_MSX1)? 0u:(uint8_t)(VDP[15]&0x0Fu);
  const uint8_t live_status1 = fmsx_vdp_status1_live();
  const uint8_t live_status2 = fmsx_vdp_status2_live();
  FmsxVDPPort99ReadCount++;
  FmsxVDPStatusReadCount[status_reg]++;
  /* MSX1/TMS9918 exposes only status register #0. */
  if(MODEL(MSX_MSX1)) Port=VDPStatus[0];
  else Port=(status_reg==1u)? live_status1:((status_reg==2u)? live_status2:VDPStatus[status_reg]);
  /*
   * Keep upstream fMSX behavior here: do not force-reset VKey on status reads.
   * Some BIOS/software paths depend on the original latch sequencing.
   */
  if(status_reg==1u) fmsx_vdp_trace_log(FMSX_VDP_EVENT_S1_READ);
  if(status_reg==2u) fmsx_vdp_trace_log(FMSX_VDP_EVENT_S2_READ);
  /* Update status register's contents */
  switch(status_reg)
  {
    case 0: VDPStatus[0]&=0x5F;SetIRQ(~INT_IE0);break;
    case 1:
      if(Port&0x01u) FmsxIE1AckCount++;
      fmsx_vdp_clear_ie1_status();
      break;
    case 7: VDPStatus[7]=VDP[44]=VDPRead();break;
  }
  /* Return the status register value */
  return(Port);
}

case 0xA2: /* PSG input port */
  /* PSG[14] returns joystick/mouse data */
  if(PSG.Latch==14)
  {
    int DX,DY,L,J;

    /* Number of a joystick port */
    Port = (PSG.R[15]&0x40)>>6;
    L    = JOYTYPE(Port);

    /* If no joystick, return dummy value */
    if(L==JOY_NONE) return(0x7F);

    /* Compute mouse offsets, if needed */
    if(MCount[Port]==1)
    {
      /* Get new mouse coordinates */
      DX=MouState[Port]&0xFF;
      DY=(MouState[Port]>>8)&0xFF;
      /* Compute offsets and store coordinates  */
      J=OldMouseX[Port]-DX;OldMouseX[Port]=DX;DX=J;
      J=OldMouseY[Port]-DY;OldMouseY[Port]=DY;DY=J;
      /* For 512-wide mode, double horizontal offset */
      if((ScrMode==6)||((ScrMode==7)&&!ModeYJK)||(ScrMode==MAXSCREEN+1)) DX<<=1;
      /* Adjust offsets */
      MouseDX[Port]=(DX>127? 127:(DX<-127? -127:DX))&0xFF;
      MouseDY[Port]=(DY>127? 127:(DY<-127? -127:DY))&0xFF;
    }

    /* Get joystick state */
    J=~(Port? (JoyState>>8):JoyState)&0x3F;

    /* Determine return value */
    switch(MCount[Port])
    {
      case 0: Port=PSG.R[15]&(0x10<<Port)? 0x3F:J;break;
      case 1: Port=(MouseDX[Port]>>4)|(J&0x30);break;
      case 2: Port=(MouseDX[Port]&0x0F)|(J&0x30);break;
      case 3: Port=(MouseDY[Port]>>4)|(J&0x30);break;
      case 4: Port=(MouseDY[Port]&0x0F)|(J&0x30);break;
    }

    /* 6th bit is always 1 */
    return(Port|0x40);
  }

  /* PSG[15] resets mouse counters (???) */
  if(PSG.Latch==15)
  {
    /*MCount[0]=MCount[1]=0;*/
    return(PSG.R[15]&0xF0);
  }

  /* Return PSG[0-13] as they are */
#ifdef FMSX_BAREMETAL_HARD_DISABLE_AUDIO
  return(PSG.R[PSG.Latch&0x0F]);
#else
  return(RdData8910(&PSG));
#endif

case 0xD0: /* FDC status  */
case 0xD1: /* FDC track   */
case 0xD2: /* FDC sector  */
case 0xD3: /* FDC data    */
case 0xD4: /* FDC IRQ/DRQ */
  /* Brazilian DiskROM I/O ports */
  fmsx_runtime_notify_media_probe();
  return(Read1793(&FDC,Port-0xD0));

  }

  /* Return NORAM for non-existing ports */
  return(NORAM);
}

/** OutZ80() *************************************************/
/** Z80 emulation calls this function to write uint8_t V to a  **/
/** given I/O port.                                         **/
/*************************************************************/
void OutZ80(uint16_t Port,uint8_t Value)
{
  uint8_t I,J;

  Port&=0xFF;
  switch(Port)
  {
case 0x7C:
  /* OPLL Register# */
#ifdef FMSX_BAREMETAL_HARD_DISABLE_AUDIO
  fmsx_audio_port_trace_log(FMSX_AUDIO_PORT_TRACE_FM,FMSX_AUDIO_PORT_TRACE_CTRL,Value&0x3Fu,Value);
  return;
#else
  fmsx_audio_render_to_cpu_now();
  WrCtrl2413(&OPLL,Value);
  NukeYKT_WritePort2413(&OPLL_NukeYKT,NUKEYKT_REGISTER_PORT,Value);
  fmsx_audio_port_trace_log(FMSX_AUDIO_PORT_TRACE_FM,FMSX_AUDIO_PORT_TRACE_CTRL,OPLL.Latch,Value);
  return;
#endif
case 0x7D:
  /* OPLL Data      */
#ifdef FMSX_BAREMETAL_HARD_DISABLE_AUDIO
  fmsx_audio_port_trace_log(FMSX_AUDIO_PORT_TRACE_FM,FMSX_AUDIO_PORT_TRACE_DATA,OPLL.Latch,Value);
  return;
#else
  fmsx_audio_render_to_cpu_now();
  WrData2413(&OPLL,Value);
  NukeYKT_WritePort2413(&OPLL_NukeYKT,NUKEYKT_DATA_PORT,Value);
  fmsx_audio_port_trace_log(FMSX_AUDIO_PORT_TRACE_FM,FMSX_AUDIO_PORT_TRACE_DATA,OPLL.Latch,Value);
  return;
#endif
case 0x91: Printer(Value);return;                 /* Printer Data   */
case 0x40:
case 0x41:
case 0x42:
case 0x43:
case 0x44:
case 0x45:
case 0x46:
case 0x47:
case 0x48:
case 0x49:
case 0x4A:
case 0x4B:
case 0x4C:
case 0x4D:
case 0x4E:
case 0x4F:
  if(MODEL(MSX_MSX2P))
  {
    fmsx_s1985_init_once();
    fmsx_s1985_write((uint8_t)Port,Value);
  }
  return;
case 0xA0:
#ifdef FMSX_BAREMETAL_HARD_DISABLE_AUDIO
  PSG.Latch=Value&0x0F;
  fmsx_audio_port_trace_log(FMSX_AUDIO_PORT_TRACE_PSG,FMSX_AUDIO_PORT_TRACE_CTRL,PSG.Latch,Value);
  return;
#else
  fmsx_audio_render_to_cpu_now();
  WrCtrl8910(&PSG,Value);
  fmsx_audio_port_trace_log(FMSX_AUDIO_PORT_TRACE_PSG,FMSX_AUDIO_PORT_TRACE_CTRL,PSG.Latch,Value);
  return;
#endif
case 0xB4:
  RTCReg=Value&0x0F;
  FmsxRTCLastReg=RTCReg;
  FmsxRTCLastMode=RTCMode;
  return;                                          /* RTC Register#  */
case 0xF4:
  if(MODEL(MSX_MSX2P))
  {
    /* openMSX ResetStatusRegister (non-inverted): keep bit5, accept bits7/5 from writes. */
    FmsxResetStatus = (FmsxResetStatus&0x20)|(Value&0xA0);
  }
  return;

case 0xD8: /* Upper bits of Kanji ROM address */
  FmsxKanjiAddrWriteCount++;
  KanLetter=(KanLetter&0x1F800)|((int)(Value&0x3F)<<5);
  KanCount=0;
  return;

case 0xD9: /* Lower bits of Kanji ROM address */
  FmsxKanjiAddrWriteCount++;
  KanLetter=(KanLetter&0x007E0)|((int)(Value&0x3F)<<11);
  KanCount=0;
  return;

case 0x80: /* SIO data */
case 0x81:
case 0x82:
case 0x83:
case 0x84:
case 0x85:
case 0x86:
case 0x87:
  return;
  /*Wr8251(&SIO,Port&0x07,Value);
  return;*/

case 0x98: /* VDP Data */
  fmsx_apply_vdp_io_wait(fmsx_vdp_write_wait_cycles());
  fmsx_vdp_sync_before_cpu_write();
  VKey=1;
  VDPData=Value;
  fmsx_vdp_trace_log_io(
    FMSX_VDP_EVENT_PORT98_WRITE,
    (((uint32_t)VDP[14])<<14) | (uint32_t)(VAddr&0x3FFFu),
    Value,
    0u,
    0x98u
  );
  fmsx_vdp_cpu_port_write_next(Value);
  VAddr=(VAddr+1)&0x3FFF;
  /* If VAddr rolled over, modify VRAM page# */
  if(!VAddr&&(ScrMode>3))
  {
    VDP[14]=(VDP[14]+1)&VRAMPageMask;
    VPAGE=VRAM+((int)VDP[14]<<14);
  }
  return;

case 0x99: /* VDP Address Latch */
  FmsxVDPPort99WriteCount++;
  fmsx_apply_vdp_io_wait(fmsx_vdp_write_wait_cycles());
  if(VKey) { ALatch=Value;VKey=0; }
  else
  {
    fmsx_vdp_sync_before_cpu_write();
    VKey=1;
    switch(Value&0xC0)
    {
      case 0x80:
      {
        /* Writing into VDP registers */
        const uint8_t reg = Value&0x3F;
        /* MSX1/TMS9918 has only R#0..R#7. Ignore higher registers. */
        if(!MODEL(MSX_MSX1) || (reg<=7))
        {
          fmsx_vdp_trace_log_io(FMSX_VDP_EVENT_PORT99_REG,0u,ALatch,reg,Value);
          VDPOut(reg,ALatch);
        }
        break;
      }
      case 0x00:
      case 0x40:
        /* Set the VRAM access address */
        VAddr=(((uint16_t)Value<<8)+ALatch)&0x3FFF;
        fmsx_vdp_trace_log_io(
          FMSX_VDP_EVENT_PORT99_ADDR,
          (((uint32_t)VDP[14])<<14) | (uint32_t)(VAddr&0x3FFFu),
          ALatch,
          0u,
          Value
        );
        /* When set for reading, perform first read */
        if(!(Value&0x40))
        {
          VDPData=fmsx_vdp_cpu_port_read_next();
          VAddr=(VAddr+1)&0x3FFF;
          if(!VAddr&&(ScrMode>3))
          {
            VDP[14]=(VDP[14]+1)&VRAMPageMask;
            VPAGE=VRAM+((int)VDP[14]<<14);
          }
        }
        break;
    }
  }
  return;

case 0x9A: /* VDP Palette Latch */
  fmsx_apply_vdp_io_wait(fmsx_vdp_write_wait_cycles());
  if(MODEL(MSX_MSX1)) return;
  if(PKey) { PLatch=Value;PKey=0; }
  else
  {
    uint8_t R,G,B;
    /* New palette entry written */
    fmsx_vdp_sync_before_cpu_write();
    PKey=1;
    J=VDP[16];
    /* Compute new color components */
    R=(PLatch&0x70)*255/112;
    G=(Value&0x07)*255/7;
    B=(PLatch&0x07)*255/7;
    /* Set new color for palette entry J */
    Palette[J]=RGB2INT(R,G,B);
    SetColor(J,R,G,B);
    /* Next palette entry */
    VDP[16]=(J+1)&0x0F;
  }
  return;

case 0x9B: /* VDP Register Access */
  FmsxVDPPort9BWriteCount++;
  fmsx_apply_vdp_io_wait(fmsx_vdp_write_wait_cycles());
  if(MODEL(MSX_MSX1)) return;
  J=VDP[17]&0x3F;
  if(J!=17)
  {
    fmsx_vdp_sync_before_cpu_write();
    VDPOut(J,Value);
  }
  if(!(VDP[17]&0x80)) VDP[17]=(J+1)&0x3F;
  return;

case 0xA1: /* PSG Data */
  /* PSG[15] is responsible for joystick/mouse */
  if(PSG.Latch==15)
  {
    /* For mouse, update nibble counter      */
    /* For joystick, set nibble counter to 0 */
    if((Value&0x0C)==0x0C) MCount[1]=0;
    else if((JOYTYPE(1)==JOY_MOUSE)&&((Value^PSG.R[15])&0x20))
           MCount[1]+=MCount[1]==4? -3:1;

    /* For mouse, update nibble counter      */
    /* For joystick, set nibble counter to 0 */
    if((Value&0x03)==0x03) MCount[0]=0;
    else if((JOYTYPE(0)==JOY_MOUSE)&&((Value^PSG.R[15])&0x10))
           MCount[0]+=MCount[0]==4? -3:1;
  }

  /* Put value into a register */
#ifdef FMSX_BAREMETAL_HARD_DISABLE_AUDIO
  PSG.R[PSG.Latch&0x0F]=Value;
#else
  fmsx_audio_render_to_cpu_now();
  WrData8910(&PSG,Value);
  Sync8910(&PSG,AY8910_FLUSH);
#endif
  fmsx_audio_port_trace_log(FMSX_AUDIO_PORT_TRACE_PSG,FMSX_AUDIO_PORT_TRACE_DATA,PSG.Latch&0x0F,Value);
  return;

case 0xA8: /* Primary slot state   */
case 0xA9: /* Keyboard port        */
case 0xAA: /* General IO register  */
case 0xAB: /* PPI control register */
  /* Write to PPI */
  Write8255(&PPI,Port-0xA8,Value);
  /* If general I/O register has changed... */
  if(PPI.Rout[2]!=IOReg) { PPIOut(PPI.Rout[2],IOReg);IOReg=PPI.Rout[2]; }
  /* If primary slot state has changed... */
  if(PPI.Rout[0]!=PSLReg) PSlot(PPI.Rout[0]);
  /* Done */
  return;

case 0xB5: /* RTC Data */
  FmsxRTCWriteCount++;
  FmsxRTCLastReg=RTCReg;
  if(RTCReg<13)
  {
    /* J = register bank# now */
    J=RTCMode&0x03;
    /* Store the value (force RTC video setup nibble to 60Hz policy). */
    if((J==2)&&(RTCReg==3)) Value&=~0x01;
    RTC[J][RTCReg]=Value&0x0f;
    /* If CMOS modified, we need to save it */
    if(J>1) SaveCMOS=1;
    return;
  }
  /* RTC[13] is a register bank# */
  if(RTCReg==13) RTCMode=Value;
  FmsxRTCLastMode=RTCMode;
  return;

case 0xD0: /* FDC command */
case 0xD1: /* FDC track   */
case 0xD2: /* FDC sector  */
case 0xD3: /* FDC data    */
  /* Brazilian DiskROM I/O ports */
  fmsx_runtime_notify_media_probe();
  Write1793(&FDC,Port-0xD0,Value);
  return;

case 0xD4: /* FDC system  */
  /* Brazilian DiskROM drive/side: [xxxSxxDx] */
  fmsx_runtime_notify_media_probe();
  Value=((Value&0x02)>>1)|S_DENSITY|(Value&0x10? 0:S_SIDE);
  Write1793(&FDC,WD1793_SYSTEM,Value);
  return;

case 0xFC: /* Mapper page at 0000h */
case 0xFD: /* Mapper page at 4000h */
case 0xFE: /* Mapper page at 8000h */
case 0xFF: /* Mapper page at C000h */
  J=Port-0xFC;
  Value&=RAMMask;
  if(RAMMapper[J]!=Value)
  {
    I=J<<1;
    RAMMapper[J]      = Value;
    MemMap[3][RAMMapperSubSlot()][I]   = RAMData+((int)Value<<14);
    MemMap[3][RAMMapperSubSlot()][I+1] = MemMap[3][RAMMapperSubSlot()][I]+0x2000;
    if((PSL[J]==3)&&(SSL[J]==RAMMapperSubSlot()))
    {
      EnWrite[J] = 1;
      RAM[I]     = MemMap[3][RAMMapperSubSlot()][I];
      RAM[I+1]   = MemMap[3][RAMMapperSubSlot()][I+1];
    }
  }
  return;

  }

  /* Unknown port */
}

/** MapROM() *************************************************/
/** Switch ROM Mapper pages. This function is supposed to   **/
/** be called when ROM page registers are written to.       **/
/*************************************************************/
void MapROM(uint16_t A,uint8_t V)
{
  uint8_t *P;
  uint8_t J  = A>>14;           /* 16kB page number 0-3  */
  uint8_t PS = PSL[J];          /* Primary slot number   */
  uint8_t SS = SSL[J];          /* Secondary slot number */
  uint8_t I  = CartMap[PS][SS]; /* Cartridge number      */

  /* Drop out if no cartridge in that slot */
  if(I>=MAXSLOTS) return;

  /* SCC handling for no cart */
  /* Note: we don't do SCC-I handling if we _do_ have a ROM cart - SCC-I was only available in 2 flavours, both without ROM. */
  if(fmsx_slot_has_virtual_sccplus(I) && !ROMData[I] && 0x4000<=A && A<0xC000)
  {
    if ((A|1)==0xBFFF && !(Mode&MSX_NO_MEGARAM))
    {
      SCCIMode[I]=V;
      return;
    }
    /* all banks: SCC-I RAM; SCC regs not writeable nor SCC bank switchable */
    /* did not implement SCCIMode b0-2 for individual bank handling */
    if (SCCIMode[I] & 0x10)
    {
      RAM[A>>13][A&0x1FFF]=V;
      return;
    }
	if ((A & 0x1800) == 0x1000) {
      /* bankselect mode & writing to SCC-I mapper - switch 8kB RAM page */
      J=(A>>13)-2; /* 8kB bank number 0-3 */
      switch (J)
      {
        case 2:
          SCCOn[I]=(V&0x3F)==0x3F; // SCC enable - write xx111111 to 9000-97FF
          break;
        case 3:
          SCCOn[I]=(V&0x80); // SCC-I a.k.a. SCC+ enable - write 1xxxxxxx to B000-B7FF
          break;
      }
      V&=fmsx_megaram_mask(); // bitmask for configured MegaRAM pages
      if(V!=ROMMapper[I][J] && !(Mode&MSX_NO_MEGARAM) && SCCIRAM)
      {
        RAM[J+2]=MemMap[PS][SS][J+2]=SCCIRAM+((int)V<<13);
        ROMMapper[I][J]=V;
      }
      return;
    }
  }

  /* If writing to SCC... [whether we have a ROM in this slot or not] */
  if((I<MAXSLOTS) && SCCOn[I]
  && (ROMData[I]
    ? ((I<2) ? fmsx_scc_window_match(ROMType[I],A) : 0)
    : (fmsx_slot_has_virtual_sccplus(I) && ((A&0xD800)==0x9800))))
  {
    SCC *chip = fmsx_scc_chip_for_slot(I);
    /* Compute SCC register number */
    J=A&0x00FF;
    fmsx_scc_trace_log(I,PS,SS,ROMType[I],A,V);

    /* If using SCC+... */
    if(A&0x2000)
    {
      /* When no MegaROM present, we allow the program */
      /* to write into SCC wave buffer using EmptyRAM  */
      /* as a scratch pad.                             */
      if(!ROMData[I]&&(J<0xA0)) EmptyRAM[0x1800+J]=V;

      /* Output data to SCC chip */
      if(chip) WriteSCCP(chip,J,V);
  }
  else
  {
      /* When no MegaROM present, we allow the program */
      /* to write into SCC wave buffer using EmptyRAM  */
      /* as a scratch pad.                             */
      if(!ROMData[I]&&(J<0x80)) EmptyRAM[0x1800+J]=V;

      /* Output data to SCC chip */
      if(chip) WriteSCC(chip,J,V);
    }

    /* Manbow2 forwards SCC window writes to both SCC and flash/mapper. */
    if(!fmsx_rom_type_is_manbow2(ROMType[I])) return;
  }

  /* If no cartridge or no mapper, exit */
  if(!ROMData[I]||!ROMMask[I]) return;

  switch(ROMType[I])
  {
    case MAP_GEN8: /* Generic 8kB cartridges (Konami, etc.) */
      /* Only interested in writes to 4000h-BFFFh */
      if((A<0x4000)||(A>0xBFFF)) break;
      J=(A-0x4000)>>13;
      /* Turn SCC on/off on writes to 9000-97FF */
      if(J==2 && I<2 && (A&0x1800)==0x1000) SCCOn[I]=(V&0x3F)==0x3F;
      /* Turn SCC-I on/off on writes to B000-B7FF */
      else if(J==3 && I<2 && (A&0x1800)==0x1000) SCCOn[I]=(V&0x80);
      /* Switch ROM pages */
      V&=ROMMask[I];
      if(V!=ROMMapper[I][J])
      {
        RAM[J+2]=MemMap[PS][SS][J+2]=ROMData[I]+((int)V<<13);
        ROMMapper[I][J]=V;
      }
      return;

    case MAP_GEN16: /* Generic 16kB cartridges (MSXDOS2, HoleInOneSpecial) */
      /* Only interested in writes to 4000h-BFFFh */
      if((A<0x4000)||(A>0xBFFF)) break;
      J=(A&0x8000)>>14;
      /* Switch ROM pages */
      V=(V<<1)&ROMMask[I];
      if(V!=ROMMapper[I][J])
      {
        RAM[J+2]=MemMap[PS][SS][J+2]=ROMData[I]+((int)V<<13);
        RAM[J+3]=MemMap[PS][SS][J+3]=RAM[J+2]+0x2000;
        ROMMapper[I][J]=V;
        ROMMapper[I][J+1]=V|1;
      }
      return;

    case MAP_KONAMI5: /* KONAMI5 8kB cartridges */
      /* Only interested in writes to 5000h/7000h/9000h/B000h */
      if((A<0x5000)||(A>0xB000)||((A&0x1FFF)!=0x1000)) break;
      fmsx_konami5_bank_write(I,PS,SS,A,V,1);
      return;

    case MAP_MANBOW2:
    case MAP_MANBOW2_2:
      if((A<0x4000)||(A>0xBFFF)) break;
      (void)fmsx_manbow2_flash_write(I,A,V);
      if((A>=0x5000)&&(A<=0xB000)&&((A&0x1FFF)==0x1000))
      {
        fmsx_konami5_bank_write(I,PS,SS,A,V,0);
        return;
      }
      return;

    case MAP_KONAMI4: /* KONAMI4 8kB cartridges */
      /* Only interested in writes to 6000h/8000h/A000h */
      /* (page at 4000h is fixed) */
      if((A<0x6000)||(A>0xA000)||(A&0x1FFF)) break;
      J=(A-0x4000)>>13;
      /* Switch ROM pages */
      V&=ROMMask[I];
      if(V!=ROMMapper[I][J])
      {
        RAM[J+2]=MemMap[PS][SS][J+2]=ROMData[I]+((int)V<<13);
        ROMMapper[I][J]=V;
      }
      return;

    case MAP_ASCII8: /* ASCII 8kB cartridges */
      /* If switching pages... */
      if((A>=0x6000)&&(A<0x8000))
      {
        J=(A&0x1800)>>11;
        /* If selecting SRAM... */
        if(V&(ROMMask[I]+1))
        {
          /* Select SRAM page */
          V=0xFF;
          P=SRAMData[I];
        }
        else
        {
          /* Select ROM page */
          V&=ROMMask[I];
          P=ROMData[I]+((int)V<<13);
        }
        /* If page was actually changed... */
        if(V!=ROMMapper[I][J])
        {
          MemMap[PS][SS][J+2]=P;
          ROMMapper[I][J]=V;
          /* Only update memory when cartridge's slot selected */
          if((PSL[(J>>1)+1]==PS)&&(SSL[(J>>1)+1]==SS)) RAM[J+2]=P;
        }
        /* Done with page switch */
        return;
      }
      /* Write to SRAM */
      if((A>=0x8000)&&(A<0xC000)&&(ROMMapper[I][((A>>13)&1)+2]==0xFF))
      {
        RAM[A>>13][A&0x1FFF]=V;
        SaveSRAM[I]=1;
        /* Done with SRAM write */
        return;
      }
      break;

    case MAP_ASCII16: /*** ASCII 16kB cartridges ***/
      /* NOTE: Vauxall writes garbage to to 7xxxh */
      /* NOTE: Darwin writes valid data to 6x00h (ASCII8 mapper) */
      /* NOTE: Androgynus writes valid data to 77FFh */
      /* If switching pages... */
      if((A>=0x6000)&&(A<0x8000)&&((V<=ROMMask[I]+1)||!(A&0x0FFF)))
      {
        J=(A&0x1000)>>11;
        /* If selecting SRAM... */
        if(V&(ROMMask[I]+1))
        {
          /* Select SRAM page */
          V=0xFF;
          P=SRAMData[I];
        }
        else
        {
          /* Select ROM page */
          V=(V<<1)&ROMMask[I];
          P=ROMData[I]+((int)V<<13);
        }
        /* If page was actually changed... */
        if(V!=ROMMapper[I][J])
        {
          MemMap[PS][SS][J+2]=P;
          MemMap[PS][SS][J+3]=P+0x2000;
          ROMMapper[I][J]=V;
          ROMMapper[I][J+1]=V|1;
          /* Only update memory when cartridge's slot selected */
          if((PSL[(J>>1)+1]==PS)&&(SSL[(J>>1)+1]==SS))
          {
            RAM[J+2]=P;
            RAM[J+3]=P+0x2000;
          }
        }
        /* Done with page switch */
        return;
      }
      /* Write to SRAM */
      if((A>=0x8000)&&(A<0xC000)&&(ROMMapper[I][2]==0xFF))
      {
        P=RAM[A>>13];
        A&=0x07FF;
        P[A+0x0800]=P[A+0x1000]=P[A+0x1800]=
        P[A+0x2000]=P[A+0x2800]=P[A+0x3000]=
        P[A+0x3800]=P[A]=V;
        SaveSRAM[I]=1;
        /* Done with SRAM write */
        return;
      }
      break;

    case MAP_GMASTER2: /* Konami GameMaster2+SRAM cartridge */
      /* Switch ROM and SRAM pages, page at 4000h is fixed */
      if((A>=0x6000)&&(A<=0xA000)&&!(A&0x1FFF))
      {
        /* Figure out which ROM page gets switched */
        J=(A-0x4000)>>13;
        /* If changing SRAM page... */
        if(V&0x10)
        {
          /* Select SRAM page */
          RAM[J+2]=MemMap[PS][SS][J+2]=SRAMData[I]+(V&0x20? 0x2000:0);
          /* SRAM is now on */
          ROMMapper[I][J]=0xFF;
        }
        else
        {
          /* Compute new ROM page number */
          V&=ROMMask[I];
          /* If ROM page number has changed... */
          if(V!=ROMMapper[I][J])
          {
            RAM[J+2]=MemMap[PS][SS][J+2]=ROMData[I]+((int)V<<13);
            ROMMapper[I][J]=V;
          }
        }
        /* Done with page switch */
        return;
      }
      /* Write to SRAM */
      if((A>=0xB000)&&(A<0xC000)&&(ROMMapper[I][3]==0xFF))
      {
        RAM[5][(A&0x0FFF)|0x1000]=RAM[5][A&0x0FFF]=V;
        SaveSRAM[I]=1;
        /* Done with SRAM write */
        return;
      }
      break;

    case MAP_FMPAC: /* Panasonic FMPAC+SRAM cartridge */
      /* See if any switching occurs */
      switch(A)
      {
        case 0x7FF7: /* ROM page select */
          V=(V<<1)&ROMMask[I];
          ROMMapper[I][0]=V;
          ROMMapper[I][1]=V|1;
          /* 4000h-5FFFh contains SRAM when correct FMPACKey supplied */
          if(FMPACKey!=FMPAC_MAGIC)
          {
            P=ROMData[I]+((int)V<<13);
            RAM[2]=MemMap[PS][SS][2]=P;
            RAM[3]=MemMap[PS][SS][3]=P+0x2000;
          }
          return;
        case 0x7FF6: /* OPL1 enable/disable? */
          V&=0x11;
          return;
        case 0x5FFE: /* Write 4Dh, then (5FFFh)=69h to enable SRAM */
        case 0x5FFF: /* (5FFEh)=4Dh, then write 69h to enable SRAM */
          FMPACKey=A&1? ((FMPACKey&0x00FF)|((int)V<<8))
                      : ((FMPACKey&0xFF00)|V);
          P=FMPACKey==FMPAC_MAGIC?
            SRAMData[I]:(ROMData[I]+((int)ROMMapper[I][0]<<13));
          RAM[2]=MemMap[PS][SS][2]=P;
          RAM[3]=MemMap[PS][SS][3]=P+0x2000;
          return;
      }
      /* Write to SRAM */
      if((A>=0x4000)&&(A<0x5FFE)&&(FMPACKey==FMPAC_MAGIC))
      {
        RAM[A>>13][A&0x1FFF]=V;
        SaveSRAM[I]=1;
        return;
      }
      break;
  }

  /* No MegaROM mapper or there is an incorrect write */
}

static int IsExpandedPrimarySlot(uint8_t PS)
{
  switch(Mode&MSX_MODEL)
  {
    case MSX_MSX1:
      /*
       * Keep upstream fMSX behavior for MSX1 memory map:
       * slot 3 remains expanded so RAM mapper in 3-2 is reachable.
       */
      return(PS==3);
    case MSX_MSX2P:
      return((PS==0)||(PS==3));
    default:
      return(PS==3);
  }
}

static uint8_t RAMMapperSubSlot(void)
{
  /*
   * openMSX Sony_HB-F1XDJ: RAM mapper in 3-0.
   * Keep legacy fMSX derived layout (3-2) for MSX1/MSX2.
   */
  return ((Mode&MSX_MODEL)==MSX_MSX2P)? 0:2;
}

static uint8_t DiskROMSubSlot(void)
{
  /*
   * openMSX Sony_HB-F1XDJ: WD2793/Disk ROM in 3-2.
   * Keep legacy fMSX derived layout (3-1) for MSX1/MSX2.
   */
  return ((Mode&MSX_MODEL)==MSX_MSX2P)? 2:1;
}

static void TrackP1SlotSelection(void)
{
  if((FmsxP1LastPS!=PSL[1])||(FmsxP1LastSS!=SSL[1]))
  {
    FmsxP1LastPS=PSL[1];
    FmsxP1LastSS=SSL[1];
    if((PSL[1]==3)&&(SSL[1]==1)) ++FmsxP1Select31Count;
    if((PSL[1]==0)&&(SSL[1]==3)) ++FmsxP1Select03Count;
  }
}

/** PSlot() **************************************************/
/** Switch primary memory slots. This function is called    **/
/** when value in port A8h changes.                         **/
/*************************************************************/
void PSlot(uint8_t V)
{
  uint8_t J,I;

  if(PSLReg!=V)
    for(PSLReg=V,J=0;J<4;++J,V>>=2)
    {
      I          = J<<1;
      PSL[J]     = V&3;
      SSL[J]     = IsExpandedPrimarySlot(PSL[J])? (uint8_t)((SSLReg[PSL[J]]>>I)&3):0;
      RAM[I]     = MemMap[PSL[J]][SSL[J]][I];
      RAM[I+1]   = MemMap[PSL[J]][SSL[J]][I+1];
      EnWrite[J] = (PSL[J]==3)&&(SSL[J]==RAMMapperSubSlot())&&(MemMap[3][RAMMapperSubSlot()][I]!=EmptyRAM);
    }

  TrackP1SlotSelection();
}

/** SSlot() **************************************************/
/** Switch secondary memory slots. This function is called  **/
/** when value in (FFFFh) changes.                          **/
/*************************************************************/
void SSlot(uint8_t V)
{
  uint8_t J,I;

  /* If current primary slot is not expanded, writes are ignored. */
  if(!IsExpandedPrimarySlot(PSL[3]))
  {
    TrackP1SlotSelection();
    return;
  }

  if(SSLReg[PSL[3]]!=V)
    for(SSLReg[PSL[3]]=V,J=0;J<4;++J,V>>=2)
    {
      if(PSL[J]==PSL[3])
      {
        I          = J<<1;
        SSL[J]     = V&3;
        RAM[I]     = MemMap[PSL[J]][SSL[J]][I];
        RAM[I+1]   = MemMap[PSL[J]][SSL[J]][I+1];
        EnWrite[J] = (PSL[J]==3)&&(SSL[J]==RAMMapperSubSlot())&&(MemMap[3][RAMMapperSubSlot()][I]!=EmptyRAM);
      }
    }

  TrackP1SlotSelection();
}

/** SetIRQ() *************************************************/
/** Set or reset IRQ. Returns IRQ vector assigned to        **/
/** CPU.IRequest. When upper bit of IRQ is 1, IRQ is reset. **/
/*************************************************************/
uint16_t SetIRQ(uint8_t IRQ)
{
  if(IRQ&0x80) IRQPending&=IRQ; else IRQPending|=IRQ;
  CPU.IRequest=IRQPending? INT_IRQ:INT_NONE;
  return(CPU.IRequest);
}

static uint8_t fmsx_vdp_r2_shift(uint8_t ScreenMode)
{
  /*
   * BlueMSX/openMSX use R#2 << 10 for bitmap name-table base and let the
   * renderer/command engine handle planar/interleaved VRAM details.
   */
  if(((ScreenMode>=5)&&(ScreenMode<=8))||((ScreenMode>=10)&&(ScreenMode<=12)))
    return 10;

  return (ScreenMode>6)&&(ScreenMode!=MAXSCREEN+1)? 11:10;
}

static uint8_t fmsx_vdp_r2_base(uint8_t ScreenMode,uint8_t Reg2)
{
  uint8_t R2Base;

  R2Base=Reg2&MSK[ScreenMode].R2;

  /* In bitmap modes, R2 bit5 becomes the display-page selector when
   * multi-page horizontal scroll is enabled and must not skew the base.
   */
  if(MODEL(MSX_MSX2P) && (VDP[25]&0x01) && (Reg2&0x20)
  && (((ScreenMode>=5)&&(ScreenMode<=8))||((ScreenMode>=10)&&(ScreenMode<=12))))
    R2Base&=~0x20;

  return R2Base;
}

/** SetScreen() **********************************************/
/** Change screen mode. Returns new screen mode.            **/
/*************************************************************/
uint8_t SetScreen(void)
{
  uint8_t I,J,R2Base;

  switch(((VDP[0]&0x0E)>>1)|(VDP[1]&0x18))
  {
    case 0x10: J=0;break;
    case 0x00: J=1;break;
    case 0x01: J=2;break;
    case 0x08: J=3;break;
    case 0x02: J=4;break;
    case 0x03: J=5;break;
    case 0x04: J=6;break;
    case 0x05: J=7;break;
    case 0x07: J=8;break;
    case 0x12: J=MAXSCREEN+1;break;
    default:   J=ScrMode;break;
  }

  /* Recompute table addresses */
  I=fmsx_vdp_r2_shift(J);
  R2Base=fmsx_vdp_r2_base(J,VDP[2]);
  ChrTab  = VRAM+((int)R2Base<<I);
  ChrGen  = VRAM+((int)(VDP[4]&MSK[J].R4)<<11);
  ColTab  = VRAM+((int)(VDP[3]&MSK[J].R3)<<6)+((int)VDP[10]<<14);
  SprTab  = VRAM+((int)(VDP[5]&MSK[J].R5)<<7)+((int)VDP[11]<<15);
  SprGen  = VRAM+((int)VDP[6]<<11);
  ChrTabM = ((int)(VDP[2]|~MSK[J].M2)<<I)|((1<<I)-1);
  ChrGenM = ((int)(VDP[4]|~MSK[J].M4)<<11)|0x007FF;
  ColTabM = ((int)(VDP[3]|~MSK[J].M3)<<6)|0x1C03F;
  SprTabM = ((int)(VDP[5]|~MSK[J].M5)<<7)|0x1807F;

  /* Return new screen mode */
  ScrMode=J;
  return(J);
}

/** SetMegaROM() *********************************************/
/** Set MegaROM pages for a given slot. SetMegaROM() always **/
/** assumes 8kB pages.                                      **/
/*************************************************************/
void SetMegaROM(int Slot,uint8_t P0,uint8_t P1,uint8_t P2,uint8_t P3)
{
  uint8_t PS,SS;

  /* @@@ ATTENTION: MUST ADD SUPPORT FOR SRAM HERE!   */
  /* @@@ The FFh value must be treated as a SRAM page */

  /* Slot number must be valid */
  if((Slot<0)||(Slot>=MAXSLOTS)) return;
  /* Find primary/secondary slots */
  for(PS=0;PS<4;++PS)
  {
    for(SS=0;(SS<4)&&(CartMap[PS][SS]!=Slot);++SS);
    if(SS<4) break;
  }
  /* Drop out if slots not found */
  if(PS>=4) return;

  /* Apply masks to ROM pages */
  P0&=ROMMask[Slot];
  P1&=ROMMask[Slot];
  P2&=ROMMask[Slot];
  P3&=ROMMask[Slot];
  /* Set memory map */
  MemMap[PS][SS][2]=ROMData[Slot]+P0*0x2000;
  MemMap[PS][SS][3]=ROMData[Slot]+P1*0x2000;
  MemMap[PS][SS][4]=ROMData[Slot]+P2*0x2000;
  MemMap[PS][SS][5]=ROMData[Slot]+P3*0x2000;
  /* Set ROM mappers */
  ROMMapper[Slot][0]=P0;
  ROMMapper[Slot][1]=P1;
  ROMMapper[Slot][2]=P2;
  ROMMapper[Slot][3]=P3;
}

/** VDPOut() *************************************************/
/** Write value into a given VDP register.                  **/
/*************************************************************/
void VDPOut(uint8_t R,uint8_t V)
{
  uint8_t J,R2Base;

  if(R<64u) FmsxVDPRegWriteCount[R]++;

  if(MODEL(MSX_MSX1) && (R>7))
  {
    return;
  }

  switch(R)
  {
    case  0: /* Writing R#0 clears the HBlank interrupt latch */
             if((VDPStatus[1]&0x01u)||FmsxIE1PendingHBlank||(IRQPending&INT_IE1))
               fmsx_vdp_cancel_ie1();
             /* Latch display mode change at the next scanline boundary. */
             if(VDP[0]!=V) { VDP[0]=V;FmsxVDPDisplayStateDirty=1; }
             break;
    case  1: /* Set/Reset VBlank interrupt if enabled or disabled */
             if(VDPStatus[0]&0x80) SetIRQ(V&0x20? INT_IE0:~INT_IE0);
             /* Latch display on/off and mode bits at the next scanline. */
             if(VDP[1]!=V) { VDP[1]=V;FmsxVDPDisplayStateDirty=1; }
             break;
    case  2: J=fmsx_vdp_r2_shift(ScrMode);
             R2Base=fmsx_vdp_r2_base(ScrMode,V);
             ChrTab  = VRAM+((int)R2Base<<J);
             ChrTabM = ((int)(V|~MSK[ScrMode].M2)<<J)|((1<<J)-1);
             break;
    case  3: ColTab  = VRAM+((int)(V&MSK[ScrMode].R3)<<6)+((int)VDP[10]<<14);
             ColTabM = ((int)(V|~MSK[ScrMode].M3)<<6)|0x1C03F;
             break;
    case  4: ChrGen  = VRAM+((int)(V&MSK[ScrMode].R4)<<11);
             ChrGenM = ((int)(V|~MSK[ScrMode].M4)<<11)|0x007FF;
             break;
    case  5: SprTab  = VRAM+((int)(V&MSK[ScrMode].R5)<<7)+((int)VDP[11]<<15);
             SprTabM = ((int)(V|~MSK[ScrMode].M5)<<7)|0x1807F;
             break;
    case  6: V&=0x3F;SprGen=VRAM+((int)V<<11);break;
    case  7: FGColor=V>>4;BGColor=V&0x0F;break;
    case  9: break;
    case 10: V&=0x07;
             ColTab=VRAM+((int)(VDP[3]&MSK[ScrMode].R3)<<6)+((int)V<<14);
             break;
    case 11: V&=0x03;
             SprTab=VRAM+((int)(VDP[5]&MSK[ScrMode].R5)<<7)+((int)V<<15);
             break;
    case 14: V&=VRAMPageMask;VPAGE=VRAM+((int)V<<14);
             break;
    case 15: V&=0x0F;break;
    case 16: V&=0x0F;PKey=1;break;
    case 17: V&=0xBF;break;
    case 18: if(VDP[18]!=V) FmsxVDPDisplayStateDirty=1;
             break;
    case 19: if(VDP[19]!=V) fmsx_vdp_trace_log_io(FMSX_VDP_EVENT_R19_WRITE,0u,V,19u,0u);
             break;
    case 23: if(VDP[23]!=V)
             {
               fmsx_vdp_trace_log_io(FMSX_VDP_EVENT_R23_WRITE,0u,V,23u,0u);
             }
             break;
    case 25: if(VDP[25]!=V) { VDP[25]=V;FmsxVDPDisplayStateDirty=1; }
             break;
    case 44: VDPWrite(V);break;
    case 46: VDPDraw(V);break;
  }

  /* Write value into a register */
  VDP[R]=V;
  if((R==19)||(R==23))
  {
    if(FmsxIE1PendingHBlank||(!(VDPStatus[1]&0x01u)&&(IRQPending&INT_IE1)))
      fmsx_vdp_cancel_ie1_edge_only();
    fmsx_vdp_reschedule_ie1_compare();
  }
  if(R==9)
  {
    VPeriod=fmsx_scale_cycles((PALVideo? VPERIOD_PAL:VPERIOD_NTSC)/6);
    fmsx_sync_bios_region_flag(PALVideo? 1:0);
    fmsx_sync_bios_vdp_r9_shadow();
  }
}

/** Printer() ************************************************/
/** Send a character to the printer.                        **/
/*************************************************************/
void Printer(uint8_t V)
{
}

/** PPIOut() *************************************************/
/** This function is called on each write to PPI to make    **/
/** key click sound, motor relay clicks, and so on.         **/
/*************************************************************/
void PPIOut(uint8_t New,uint8_t Old)
{
}

/** RTCIn() **************************************************/
/** Read value from a given RTC register.                   **/
/*************************************************************/
uint8_t RTCIn(uint8_t R)
{
  static time_t PrevTime;
  static struct tm TM;
  uint8_t J;
  time_t CurTime;

  /* Only 16 registers/mode */
  R&=0x0F;

  /* Bank mode 0..3 */
  J=RTCMode&0x03;

  if(R>12) J=R==13? RTCMode:NORAM;
  else
    if(J)
    {
      J=RTC[J][R];
      if(((RTCMode&0x03)==2)&&(R==3)) J&=~0x01;
    }
    else
    {
      /* Retrieve system time if any time passed */
      CurTime=time(NULL);
      if(CurTime!=PrevTime)
      {
        TM=*localtime(&CurTime);
        PrevTime=CurTime;
      }

      /* Parse contents of last retrieved TM */
      switch(R)
      {
        case 0:  J=TM.tm_sec%10;break;
        case 1:  J=TM.tm_sec/10;break;
        case 2:  J=TM.tm_min%10;break;
        case 3:  J=TM.tm_min/10;break;
        case 4:  J=TM.tm_hour%10;break;
        case 5:  J=TM.tm_hour/10;break;
        case 6:  J=TM.tm_wday;break;
        case 7:  J=TM.tm_mday%10;break;
        case 8:  J=TM.tm_mday/10;break;
        case 9:  J=(TM.tm_mon+1)%10;break;
        case 10: J=(TM.tm_mon+1)/10;break;
        case 11: J=(TM.tm_year-80)%10;break;
        case 12: J=((TM.tm_year-80)/10)%10;break;
        default: J=0x0F;break;
      }
    }

  /* Four upper bits are always high */
  return(J|0xF0);
}

/** LoopZ80() ************************************************/
/** Refresh screen, check keyboard and sprites. Call this   **/
/** function on each interrupt.                             **/
/*************************************************************/
uint16_t LoopZ80(Z80 *R)
{
  static uint8_t LoggedLoop = 0;
  static uint8_t LoggedFrameStart1 = 0;
  static uint8_t LoggedFrameStart2 = 0;
  static uint8_t LoggedAfter192 = 0;
  static uint8_t LoggedBeforePut = 0;
  static uint8_t LoggedAfterPut = 0;
  static uint8_t LoggedLoopVDP = 0;
  static uint8_t LoggedLoopVDPAfter = 0;
  static uint8_t BFlag=0;
  static uint8_t BCount=0;
  static int  UCount=0;
  static uint8_t ACount=0;
  static uint8_t Drawing=0;
  /* VDP R#9 bit1 controls PAL/NTSC timing on V9938/V9958. */
  const int pal_timing = PALVideo ? 1 : 0;
  int J;

  fmsx_audio_cycle_commit_phase();

  if(!LoggedLoop)
  {
    if(log_cb) log_cb(1,"LoopZ80: first call\n");
    LoggedLoop = 1;
  }

  fmsx_kmg_apply_scroll_gate();

  /* Flip HRefresh bit */
  VDPStatus[2]^=0x20;
  FmsxVDPLinePhase = (VDPStatus[2]&0x20)? 1u:0u;

  /* If HRefresh is now in progress... */
  if(!FmsxVDPLinePhase)
  {
    /* HRefresh takes most of the scanline */
    g_fmsx_active_cpu_cycles_current_line =
      fmsx_hrefresh_cpu_cycles_exact(!ScrMode||(ScrMode==MAXSCREEN+1)? HREFRESH_240:HREFRESH_256);
    R->IPeriod=fmsx_vdp_active_cpu_cycles();
    fmsx_audio_cycle_open_phase(R->IPeriod);

    /* New scanline */
    ScanLine=ScanLine<(pal_timing? 312:261)? ScanLine+1:0;
    FmsxVDPLineRendered=0;
    FmsxVDPLineChunkEnd=0;

    /* If first scanline of the screen... */
    if(!ScanLine)
    {
      if(log_cb && !LoggedFrameStart1) { log_cb(1,"LoopZ80: frame start #1\n"); LoggedFrameStart1=1; }
      else if(log_cb && !LoggedFrameStart2) { log_cb(1,"LoopZ80: frame start #2\n"); LoggedFrameStart2=1; }

      FmsxVDPFrameCounter++;
      VDPStatus[2]^=0x02;

      /* Drawing now... */
      Drawing=1;

      /* Reset VRefresh bit */
      VDPStatus[2]&=0xBF;

      /* Refresh display */
      if(UCount>=100)
      {
        UCount-=100;
        if(log_cb && !LoggedBeforePut) { log_cb(1,"LoopZ80: PutImage begin\n"); LoggedBeforePut=1; }
        PutImage();
        if(log_cb && !LoggedAfterPut) { log_cb(1,"LoopZ80: PutImage end\n"); LoggedAfterPut=1; }
      }
      UCount+=UPeriod;

      /* Blinking for TEXT80 */
      if(BCount) BCount--;
      else
      {
        BFlag=!BFlag;
        if(!VDP[13]) { XFGColor=FGColor;XBGColor=BGColor; }
        else
        {
          BCount=(BFlag? VDP[13]&0x0F:VDP[13]>>4)*10;
          if(BCount)
          {
            if(BFlag) { XFGColor=FGColor;XBGColor=BGColor; }
            else      { XFGColor=VDP[12]>>4;XBGColor=VDP[12]&0x0F; }
          }
        }
      }
    }

    /* Border/visible state for the current scanline must be decided at the
     * start of the line, before mid-line VDP writes can prepare the next one. */
    if(ScanLine==(ScanLines212? 212:192)) Drawing=0;

    fmsx_vdp_commit_line_display_state();
    FmsxVDPLineVScrollLatched=VDP[23];
    FmsxVDPDrawingLatched=Drawing;
    FmsxVDPUCountLatched=UCount;

    /* Line coincidence is active at 0..255 */
    /* in PAL and 0..234/244 in NTSC        */
    J=pal_timing? 256:ScanLines212? 245:235;

    /* Upstream fMSX clears the line coincidence latch when the active line
     * window closes. Keep that behavior to avoid stale IE1 state carrying
     * into the next frame/tile update sequence. */
    if(ScanLine==J)
    {
      if((VDPStatus[1]&0x01u)||FmsxIE1PendingHBlank||(IRQPending&INT_IE1))
        fmsx_vdp_cancel_ie1();
    }

    /* Arm line interrupt when the logical target line is reached */
    if(ScanLine<J)
    {
      const uint8_t IE1TargetLine = fmsx_vdp_ie1_target_line();
      if(((uint8_t)ScanLine==IE1TargetLine)&&!FmsxIE1PendingHBlank&&!(VDPStatus[1]&0x01u))
      {
        FmsxIE1PendingHBlank=1;
        FmsxIE1ArmedCount++;
        fmsx_vdp_trace_log(FMSX_VDP_EVENT_IE1_ARM);
      }
    }

    /* Return whatever interrupt is pending */
    R->IRequest=IRQPending? INT_IRQ:INT_NONE;
    return(R->IRequest);
  }

  /*********************************/
  /* We come here for HBlanks only */
  /*********************************/

  /* Fire IE1 at end-of-line (HBlank entry) once armed in active phase */
  if(FmsxIE1PendingHBlank)
  {
    FmsxIE1EventCount++;
    FmsxIE1FiredHBlankCount++;
    fmsx_vdp_raise_ie1_latch();
    fmsx_vdp_trace_log(FMSX_VDP_EVENT_IE1_FIRE);
  }

  /* HBlank takes HPeriod-HRefresh */
  R->IPeriod=fmsx_vdp_active_cpu_cycles();
  R->IPeriod=HPeriod-R->IPeriod;
  fmsx_audio_cycle_open_phase(R->IPeriod);

  /* If last scanline of VBlank, see if we need to wait more */
  J=pal_timing? 313:262;
  if(ScanLine>=J-1)
  {
    J*=HPeriod;
    if(VPeriod>J) R->IPeriod+=VPeriod-J;
  }

  /* If first scanline of VBlank... */
  J=pal_timing? (ScanLines212? 212+42:192+52):(ScanLines212? 212+18:192+28);
  if(!Drawing&&(ScanLine==J))
  {
    /* Set VBlank bit, set VRefresh bit */
    VDPStatus[0]|=0x80;
    VDPStatus[2]|=0x40;
    fmsx_vdp_cancel_ie1();

    /* Generate VBlank interrupt */
    if(VDP[1]&0x20)
    {
      SetIRQ(INT_IE0);
      fmsx_vdp_trace_log(FMSX_VDP_EVENT_IE0_FIRE);
    }
  }

  /* Run V9938 engine */
  if(log_cb && !LoggedLoopVDP)
  {
    if(log_cb) log_cb(1,"LoopZ80: LoopVDP begin\n");
    LoggedLoopVDP = 1;
  }
  LoopVDP();
  if(log_cb && !LoggedLoopVDPAfter)
  {
    if(log_cb) log_cb(1,"LoopZ80: LoopVDP end\n");
    LoggedLoopVDPAfter = 1;
  }

  /* Refresh scanline, possibly with the overscan. If the CPU already forced
   * a sync during the active phase, do not redraw the same line in HBlank. */
  if(!FmsxVDPLineRendered)
  {
    if((ScrMode==4) && !fmsx_vdp_hscroll_active256_local() && FmsxVDPLineChunkEnd)
      fmsx_vdp_render_screen4_partial((uint8_t)ScanLine,32u);
    else
      fmsx_vdp_render_scanline((uint8_t)ScanLine,FmsxVDPDrawingLatched,FmsxVDPUCountLatched);
  }

  fmsx_runtime_keyboard_drain_step();

  /* Every few scanlines, update sound */
#ifndef FMSX_BAREMETAL_SKIP_AUDIO_RUNTIME
  if(!(ScanLine&0x07))
  {
    const unsigned base_clock_hz = fmsx_runtime_get_base_cpu_clock_hz();
    /* Compute number of microseconds */
    J = (int)(1000000L*(CPU_HPERIOD<<3)/base_clock_hz);

    /* Update AY8910 state */
    Loop8910(&PSG,J);

    /* Flush changes to sound channels */
    Sync8910(&PSG,AY8910_FLUSH);

#if !defined(FMSX_BAREMETAL_PSG_AUDIO_ONLY)
    /* Keep SCC/FM cadence aligned with PSG to avoid source handoff artifacts. */
    fmsx_sync_scc_chips(SCC_FLUSH);
    if(!OPTION(MSX_NUKEYKT))
      Sync2413(&OPLL,YM2413_FLUSH);
#endif
  }

#if !defined(FMSX_BAREMETAL_PSG_AUDIO_ONLY)
  if(OPTION(MSX_NUKEYKT))
    NukeYKT_Sync2413(&OPLL_NukeYKT, CPU_HPERIOD);
#endif
#endif

  /* Keyboard, sound, and other stuff always runs at line 192    */
  /* This way, it can't be shut off by overscan tricks (Maarten) */
  if(ScanLine==192)
  {
    /* Clear 5th Sprite fields (wrong place to do it?) */
    VDPStatus[0]=(VDPStatus[0]&~0x40)|0x1F;

    /* Check sprites and set Collision bit */
    if(!(VDPStatus[0]&0x20)&&CheckSprites()) VDPStatus[0]|=0x20;

#ifndef FMSX_BAREMETAL_SKIP_AUDIO_RUNTIME
#if !defined(FMSX_BAREMETAL_PSG_AUDIO_ONLY)
    /* Frame-end safety flush for SCC/FM. */
    fmsx_sync_scc_chips(SCC_FLUSH);
    if(!OPTION(MSX_NUKEYKT))
      Sync2413(&OPLL,YM2413_FLUSH);
#endif
#endif

    /* Apply RAM-based cheats */
    if(CheatsON&&CheatCount) ApplyCheats();

    /* Check joystick */
    JoyState=Joystick();

    /* Check mouse in joystick port #1 */
    if(JOYTYPE(0)>=JOY_MOUSTICK)
    {
      /* Get new mouse state */
      MouState[0]=Mouse(0);
      /* Merge mouse buttons into joystick buttons */
      JoyState|=(MouState[0]>>12)&0x0030;
      /* If mouse-as-joystick... */
      if(JOYTYPE(0)==JOY_MOUSTICK)
      {
        J=MouState[0]&0xFF;
        JoyState|=J>OldMouseX[0]? 0x0008:J<OldMouseX[0]? 0x0004:0;
        OldMouseX[0]=J;
        J=(MouState[0]>>8)&0xFF;
        JoyState|=J>OldMouseY[0]? 0x0002:J<OldMouseY[0]? 0x0001:0;
        OldMouseY[0]=J;
      }
    }

    /* Check mouse in joystick port #2 */
    if(JOYTYPE(1)>=JOY_MOUSTICK)
    {
      /* Get new mouse state */
      MouState[1]=Mouse(1);
      /* Merge mouse buttons into joystick buttons */
      JoyState|=(MouState[1]>>4)&0x3000;
      /* If mouse-as-joystick... */
      if(JOYTYPE(1)==JOY_MOUSTICK)
      {
        J=MouState[1]&0xFF;
        JoyState|=J>OldMouseX[1]? 0x0800:J<OldMouseX[1]? 0x0400:0;
        OldMouseX[1]=J;
        J=(MouState[1]>>8)&0xFF;
        JoyState|=J>OldMouseY[1]? 0x0200:J<OldMouseY[1]? 0x0100:0;
        OldMouseY[1]=J;
      }
    }

    /* If any autofire options selected, run autofire counter */
    if(OPTION(MSX_AUTOSPACE|MSX_AUTOFIREA|MSX_AUTOFIREB))
      if((ACount=(ACount+1)&0x07)>3)
      {
        /* Autofire spacebar if needed */
        if(OPTION(MSX_AUTOSPACE)) KBD_RES(' ');
        /* Autofire FIRE-A if needed */
        if(OPTION(MSX_AUTOFIREA)) JoyState&=~(JST_FIREA|(JST_FIREA<<8));
        /* Autofire FIRE-B if needed */
        if(OPTION(MSX_AUTOFIREB)) JoyState&=~(JST_FIREB|(JST_FIREB<<8));
      }

    /* Keep running past line 192 so VBlank IRQ can be generated/served */
    if(log_cb)
    {
      static uint8_t Logged192=0;
      if(!Logged192 && log_cb) { log_cb(1,"LoopZ80: reached scanline 192\n"); Logged192=1; }
    }
  }

  if(log_cb && !LoggedAfter192 && ScanLine>192)
  {
    if(log_cb)
    {
      log_cb(1,"LoopZ80: passed scanline 192\n");
      LoggedAfter192=1;
    }
  }

  /* Exit emulation frame-step only after VBlank window */
  if(ExitNow)
  {
    const int QuitLineVBlank = pal_timing ? (ScanLines212 ? (212+43) : (192+53))
                                     : (ScanLines212 ? (212+19) : (192+29));
    const int QuitLine = g_fmsx_quit_after_vblank ? QuitLineVBlank : 192;
    if(ScanLine==QuitLine)
    {
      if(log_cb)
      {
        static uint8_t LoggedQuitAtVBlank=0;
        if(!LoggedQuitAtVBlank)
        {
          log_cb(1,"LoopZ80: INT_QUIT after VBlank window\n");
          LoggedQuitAtVBlank=1;
        }
      }
      return(INT_QUIT);
    }
  }

  /* Return whatever interrupt is pending */
  R->IRequest=IRQPending? INT_IRQ:INT_NONE;
  return(R->IRequest);
}

/** CheckSprites() *******************************************/
/** Check for sprite collisions.                            **/
/*************************************************************/
int CheckSprites(void)
{
  unsigned int I,J,LS,LD;
  uint8_t DH,DV,*S,*D,*PS,*PD,*T;

  /* Must be showing sprites */
  if(SpritesOFF||!ScrMode||(ScrMode>=MAXSCREEN+1)) return(0);

  /* Find bottom/top scanlines */
  DH = ScrMode>3? 216:208;
  LD = 255-(Sprites16x16? 16:8);
  LS = ScanLines212? 211:191;

  /* Find valid, displayed sprites */
  for(I=J=0,S=SprTab;(I<32)&&(S[0]!=DH);++I,S+=4)
    if((S[0]<LS)||(S[0]>LD)) J|=1<<I;

  if(Sprites16x16)
  {
    for(S=SprTab;J;J>>=1,S+=4)
      if(J&1)
        for(I=J>>1,D=S+4;I;I>>=1,D+=4)
          if(I&1)
          {
            DV=S[0]-D[0];
            if((DV<16)||(DV>240))
	    {
              DH=S[1]-D[1];
              if((DH<16)||(DH>240))
	      {
                PS=SprGen+((int)(S[2]&0xFC)<<3);
                PD=SprGen+((int)(D[2]&0xFC)<<3);
                if(DV<16) PD+=DV; else { DV=256-DV;PS+=DV; }
                if(DH>240) { DH=256-DH;T=PS;PS=PD;PD=T; }
                while(DV<16)
                {
                  LS=((unsigned int)*PS<<8)+*(PS+16);
                  LD=((unsigned int)*PD<<8)+*(PD+16);
                  if(LD&(LS>>DH)) break;
                  else { ++DV;++PS;++PD; }
                }
                if(DV<16) return(1);
              }
            }
          }
  }
  else
  {
    for(S=SprTab;J;J>>=1,S+=4)
      if(J&1)
        for(I=J>>1,D=S+4;I;I>>=1,D+=4)
          if(I&1) 
          {
            DV=S[0]-D[0];
            if((DV<8)||(DV>248))
            {
              DH=S[1]-D[1];
              if((DH<8)||(DH>248))
              {
                PS=SprGen+((int)S[2]<<3);
                PD=SprGen+((int)D[2]<<3);
                if(DV<8) PD+=DV; else { DV=256-DV;PS+=DV; }
                if(DH>248) { DH=256-DH;T=PS;PS=PD;PD=T; }
                while((DV<8)&&!(*PD&(*PS>>DH))) { ++DV;++PS;++PD; }
                if(DV<8) return(1);
              }
            }
          }
  }

  /* No collisions */
  return(0);
}

/** StateID() ************************************************/
/** Compute 16bit emulation state ID used to identify .STA  **/
/** files.                                                  **/
/*************************************************************/
uint16_t StateID(void)
{
  uint16_t ID;
  int J,I;

  ID=0x0000;

  /* Add up cartridge ROMs, BIOS, BASIC, ExtBIOS, and DiskBIOS uint8_ts */
  for(I=0;I<MAXSLOTS;++I)
    if(ROMData[I]) for(J=0;J<(ROMMask[I]+1)*0x2000;++J) ID+=I^ROMData[I][J];
  if(MemMap[0][0][0]&&(MemMap[0][0][0]!=EmptyRAM))
    for(J=0;J<0x8000;++J) ID+=MemMap[0][0][0][J];
  if(MemMap[3][1][0]&&(MemMap[3][1][0]!=EmptyRAM))
    for(J=0;J<0x4000;++J) ID+=MemMap[3][1][0][J];
  if(MemMap[3][1][2]&&(MemMap[3][1][2]!=EmptyRAM))
    for(J=0;J<0x4000;++J) ID+=MemMap[3][1][2][J];

  return(ID);
}

/** MakeFileName() *******************************************/
/** Make a copy of the file name, replacing the extension.  **/
/** Returns allocated new name or 0 on failure.             **/
/*************************************************************/
char *MakeFileName(const char *Name,const char *Ext)
{
  char *Result,*P1,*P2,*P3;

  Result = malloc(strlen(Name)+strlen(Ext)+1);
  if(!Result) return(0);
  strcpy(Result,Name);

  /* Locate where extension and filename actually start */
  P1 = strrchr(Result,'.');
  P2 = strrchr(Result,'/');
  P3 = strrchr(Result,'\\');
  P2 = P3 && (P3>P2)? P3:P2;
  P3 = strrchr(Result,':');
  P2 = P3 && (P3>P2)? P3:P2;

  if(P1 && (!P2 || (P1>P2))) strcpy(P1,Ext);
  else strcat(Result,Ext);

  return(Result);
}

/** ChangeTape() *********************************************/
/** Change tape image. ChangeTape(0) closes current image.  **/
/** Returns 1 on success, 0 on failure.                     **/
/*************************************************************/
uint8_t ChangeTape(const char *FileName)
{
  tape_type = NO_TAPE;

  /* Close previous tape image, if open */
  if(CasStream) { rfclose(CasStream);CasStream=0; }

  /* If opening a new tape image... */
  if(FileName)
  {
    /* Try read+append first, then read-only */
    CasStream = rfopen(FileName,"r+b");
    CasStream = CasStream? CasStream:rfopen(FileName,"rb");

    if (CasStream)
    {
        int tape_len, pos = 0;
        char *tape_contents;

        rfseek(CasStream,0,SEEK_END);
        tape_len = rftell(CasStream);
        filestream_rewind(CasStream);

        tape_contents = (char*)malloc(tape_len);
        if (rfread(tape_contents, 1, tape_len, CasStream) != tape_len)
        {
           free(tape_contents);
           return 0;
        }
        while (pos + TAPE_HEADER_LEN <= tape_len)
        {
           if (!memcmp(&tape_contents[pos], ASCII_HEADER, TAPE_HEADER_LEN))
           {
              tape_type = ASCII_TAPE;
              break;
           }
           else if (!memcmp(&tape_contents[pos], BINARY_HEADER, TAPE_HEADER_LEN))
           {
              tape_type = BINARY_TAPE;
              break;
           }
           else if (!memcmp(&tape_contents[pos], BASIC_HEADER, TAPE_HEADER_LEN))
           {
              tape_type = BASIC_TAPE;
              break;
           }
           pos++;
        }
        free(tape_contents);
    }
    RewindTape();
  }

  /* Done */
  return(!FileName||CasStream);
}

/** RewindTape() *********************************************/
/** Rewind currently open tape.                              **/
/*************************************************************/
void RewindTape(void) { if(CasStream) filestream_rewind(CasStream); }

/** ChangePrinter() ******************************************/
/** Change printer output to a given file. The previous     **/
/** file is closed. ChangePrinter(0) redirects output to    **/
/** stdout.                                                 **/
/*************************************************************/
void ChangePrinter(const char *FileName)
{
}

/** ChangeDisk() *********************************************/
/** Change disk image in a given drive. Closes current disk **/
/** image if Name=0 was given. Creates a new disk image if  **/
/** Name="" was given. Returns 1 on success or 0 on failure.**/
/*************************************************************/
uint8_t ChangeDisk(uint8_t N,const char *FileName)
{
  uint8_t *P;

  /* We only have MAXDRIVES drives */
  if(N>=MAXDRIVES) return(0);

  /* Reset FDC, in case it was running a command */
  Reset1793(&FDC,FDD,WD1793_KEEP);

  /* Eject disk if requested */
  if(!FileName) { EjectFDI(&FDD[N]);return(1); }

  /* If FileName not empty, try loading disk image */
  if(*FileName&&LoadFDI(&FDD[N],FileName,FMT_AUTO))
  {
    /* Done */
    return(1);
  }

  /* If failed opening existing image, create a new 720kB disk image */
  P = FormatFDI(&FDD[N],FMT_MSXDSK);

  /* If FileName not empty, treat it as directory, otherwise new disk */
  if(P&&!(*FileName? DSKLoad(FileName,P,"MSX-DISK"):DSKCreate(P,"MSX-DISK")))
  { EjectFDI(&FDD[N]);return(0); }

  FDD[N].Dirty = 1;

  /* Done */
  return(!!P);
}

/** ApplyMCFCheat() ******************************************/
/** Apply given MCF cheat entry. Returns 0 on failure or 1  **/
/** on success.                                             **/
/*************************************************************/
int ApplyMCFCheat(int N)
{
  int Status;

  /* Must be a valid MSX-specific entry */
  if((N<0)||(N>=MCFCount)||(MCFEntries[N].Addr>0xFFFF)||(MCFEntries[N].Size>2))
    return(0);

  /* Switch cheats off for now and remove all present cheats */
  Status = Cheats(CHTS_QUERY);
  Cheats(CHTS_OFF);
  ResetCheats();

  /* Insert cheat codes from the MCF entry as RAM-based cheat */
  CheatCodes[0].Addr = MCFEntries[N].Addr | 0x01000000;
  CheatCodes[0].Data = MCFEntries[N].Data;
  CheatCodes[0].Size = MCFEntries[N].Size;
  CheatCodes[0].Orig = RdZ80(CheatCodes[0].Addr&0xFFFF);
  if(CheatCodes[0].Size>1)
    CheatCodes[0].Orig |= (int)(RdZ80((CheatCodes[0].Addr+1)&0xFFFF)<<8);

  sprintf(
    (char *)CheatCodes[0].Text,
    CheatCodes[0].Size>1? "%04X-%04X":"%04X-%02X",
    CheatCodes[0].Addr,
    CheatCodes[0].Data
  );

  /* Have one cheat code now */
  CheatCount = 1;

  /* Turn cheats back on, if they were on */
  Cheats(Status);

  /* Done */
  return(CheatCount);
}

char* GetMCFNoteAndValue(int N, int *Value)
{
  if (Value) *Value = MCFEntries[N].Data;
  return MCFEntries[N].Note;
}

/** AddCheat() ***********************************************/
/** Add a new cheat. Returns 0 on failure or the number of  **/
/** cheats on success.                                      **/
/*************************************************************/
int AddCheat(const char *Cheat)
{
  static const char *Hex = "0123456789ABCDEF";
  unsigned int A,D;
  char *P;
  int J,N;

  /* Table full: no more cheats */
  if(CheatCount>=MAXCHEATS) return(0);

  /* Check cheat length and decode */
  N=strlen(Cheat);

  if(((N==13)||(N==11))&&(Cheat[8]=='-'))
  {
    for(J=0,A=0;J<8;J++)
    {
      P=strchr(Hex,toupper(Cheat[J]));
      if(!P) return(0); else A=(A<<4)|(P-Hex);
    }
    for(J=9,D=0;J<N;J++)
    {
      P=strchr(Hex,toupper(Cheat[J]));
      if(!P) return(0); else D=(D<<4)|(P-Hex);
    }
  }
  else if(((N==9)||(N==7))&&(Cheat[4]=='-'))
  {
    for(J=0,A=0x0100;J<4;J++)
    {
      P=strchr(Hex,toupper(Cheat[J]));
      if(!P) return(0); else A=(A<<4)|(P-Hex);
    }
    for(J=5,D=0;J<N;J++)
    {
      P=strchr(Hex,toupper(Cheat[J]));
      if(!P) return(0); else D=(D<<4)|(P-Hex);
    }
  }
  else
  {
    /* Cannot parse this cheat */
    return(0);
  }

  /* Add cheat */
  strlcpy((char *)CheatCodes[CheatCount].Text, Cheat, sizeof(CheatCodes[CheatCount].Text));
  if(N==13)
  {
    CheatCodes[CheatCount].Addr = A;
    CheatCodes[CheatCount].Data = D&0xFFFF;
    CheatCodes[CheatCount].Size = 2;
  }
  else
  {
    CheatCodes[CheatCount].Addr = A;
    CheatCodes[CheatCount].Data = D&0xFF;
    CheatCodes[CheatCount].Size = 1;
  }

  /* Successfully added a cheat! */
  return(++CheatCount);
}

/** ResetCheats() ********************************************/
/** Remove all cheats.                                      **/
/*************************************************************/
void ResetCheats(void) { Cheats(CHTS_OFF);CheatCount=0; }

/** ApplyCheats() ********************************************/
/** Apply RAM-based cheats. Returns the number of applied   **/
/** cheats.                                                 **/
/*************************************************************/
int ApplyCheats(void)
{
  int J,I;

  /* For all current cheats that look like 01AAAAAA-DD/DDDD... */
  for(J=I=0;J<CheatCount;++J)
    if((CheatCodes[J].Addr>>24)==0x01)
    {
      WrZ80(CheatCodes[J].Addr&0xFFFF,CheatCodes[J].Data&0xFF);
      if(CheatCodes[J].Size>1)
        WrZ80((CheatCodes[J].Addr+1)&0xFFFF,CheatCodes[J].Data>>8);
      ++I;
    }

  /* Return number of applied cheats */
  return(I);
}

/** Cheats() *************************************************/
/** Toggle cheats on (1), off (0), inverse state (2) or     **/
/** query (3).                                              **/
/*************************************************************/
int Cheats(int Switch)
{
  uint8_t *P,*Base;
  int J,Size;

  switch(Switch)
  {
    case CHTS_ON:
    case CHTS_OFF:    if(Switch==CheatsON) return(CheatsON);
    case CHTS_TOGGLE: Switch=!CheatsON;break;
    default:          return(CheatsON);
  }

  /* Find valid cartridge */
  for(J=1;(J<=2)&&!ROMData[J];++J);

  /* Must have ROM */
  if(J>2) return(Switch=CHTS_OFF);

  /* Compute ROM address and size */
  Base = ROMData[J];
  Size = ((int)ROMMask[J]+1)<<14;

  /* If toggling cheats... */
  if(Switch!=CheatsON)
  {
    /* If enabling cheats... */
    if(Switch)
    {
      /* Patch ROM with the cheat values */
      for(J=0;J<CheatCount;++J)
        if(!(CheatCodes[J].Addr>>24)&&(CheatCodes[J].Addr+CheatCodes[J].Size<=Size))
        {
          P = Base + CheatCodes[J].Addr;
          CheatCodes[J].Orig = P[0];
          P[0] = CheatCodes[J].Data;
          if(CheatCodes[J].Size>1)
          {
            CheatCodes[J].Orig |= (int)P[1]<<8;
            P[1] = CheatCodes[J].Data>>8;
          }
        }
    }
    else
    {
      /* Restore original ROM values */
      for(J=0;J<CheatCount;++J)
        if(!(CheatCodes[J].Addr>>24)&&(CheatCodes[J].Addr+CheatCodes[J].Size<=Size))
        {
          P = Base + CheatCodes[J].Addr;
          P[0] = CheatCodes[J].Orig;
          if(CheatCodes[J].Size>1)
            P[1] = CheatCodes[J].Orig>>8;
        }
        else if((CheatCodes[J].Addr>>24)==0x01) // restore RAM-based values
        {
          WrZ80(CheatCodes[J].Addr&0xFFFF,CheatCodes[J].Orig&0xFF);
          if(CheatCodes[J].Size>1)
            WrZ80((CheatCodes[J].Addr+1)&0xFFFF,CheatCodes[J].Orig>>8);
        }
    }

    /* Done toggling cheats */
    CheatsON = Switch;
  }

  /* Done */
  return(CheatsON);
}

/** GuessROM() ***********************************************/
/** Guess MegaROM mapper of a ROM.                          **/
/*************************************************************/
int GuessROM(const uint8_t *Buf,int Size)
{
  int J,I,K,Result,ROMCount[FMSX_LOCAL_MAXMAPPERS];
  int BestScore,BestPrio,CandidatePrio;
  uint8_t guess_source;
  char S[256];
  RFILE *F;

  /* No result yet */
  Result = -1;
  guess_source = FMSX_CART_SOURCE_NONE;

  /* Change to the program directory */
  if(ProgDir && chdir(ProgDir)) { }

  /* Try opening file with CRCs */
  if((F = rfopen("CARTS.CRC","rb")))
  {
    /* Compute ROM's CRC */
    for(J=K=0;J<Size;++J) K+=Buf[J];

    /* Scan file comparing CRCs */
    while(rfgets(S,sizeof(S)-4,F))
      if(sscanf(S,"%08X %d",&J,&I)==2)
        if(K==J) { Result=I;guess_source=FMSX_CART_SOURCE_CARTS_CRC;break; }

    /* Done with the file */
    rfclose(F);
  }

  /* Try opening file with SHA1 sums */
  if((Result<0) && (F=rfopen("CARTS.SHA","rb")))
  {
    char S1[41],S2[41];
    SHA1 C;

    /* Compute ROM's SHA1 */
    ResetSHA1(&C);
    InputSHA1(&C,Buf,Size);
    if(ComputeSHA1(&C) && OutputSHA1(&C,S1,sizeof(S1)))
    {
      while(rfgets(S,sizeof(S)-4,F))
        if((sscanf(S,"%40s %d",S2,&J)==2) && local_sha1_equals_ignore_case(S1,S2))
        { Result=J;guess_source=FMSX_CART_SOURCE_CARTS_SHA;break; }
    }

    /* Done with the file */
    rfclose(F);
  }

  if(Result<0)
  {
    char S1[41];
    SHA1 C;
    ResetSHA1(&C);
    InputSHA1(&C,Buf,Size);
    if(ComputeSHA1(&C) && OutputSHA1(&C,S1,sizeof(S1)))
      if(fmsx_carts_sha_fallback_lookup(S1,&J))
      {
        Result=J;
        guess_source=FMSX_CART_SOURCE_LOCAL_SHA;
      }
  }

  /* We are now back to working directory */
  if(WorkDir && chdir(WorkDir)) { }

  /* If found ROM by CRC or SHA1, we are done */
  if(Result>=0)
  {
    FmsxCartLastClassifiedSource = guess_source;
    return(Result);
  }

  /* Clear all counters */
  for(J=0;J<FMSX_LOCAL_MAXMAPPERS;++J) ROMCount[J]=1;
  /* Generic 8kB mapper is default */
  ROMCount[MAP_GEN8]+=1;
  /* ASCII 16kB preferred over ASCII 8kB */
  ROMCount[MAP_ASCII8]-=1;

  /* Count occurences of characteristic addresses */
  for(J=0;J<Size-2;++J)
  {
    I=Buf[J]+((int)Buf[J+1]<<8)+((int)Buf[J+2]<<16);
    switch(I)
    {
      case 0x500032: ROMCount[MAP_KONAMI5]++;break;
      case 0x900032: ROMCount[MAP_KONAMI5]++;break;
      case 0xB00032: ROMCount[MAP_KONAMI5]++;break;
      case 0x400032: ROMCount[MAP_KONAMI4]++;break;
      case 0x800032: ROMCount[MAP_KONAMI4]++;break;
      case 0xA00032: ROMCount[MAP_KONAMI4]++;break;
      case 0x680032: ROMCount[MAP_ASCII8]++;break;
      case 0x780032: ROMCount[MAP_ASCII8]++;break;
      case 0x600032: ROMCount[MAP_KONAMI4]++;
                     ROMCount[MAP_ASCII8]++;
                     ROMCount[MAP_ASCII16]++;
                     break;
      case 0x700032: ROMCount[MAP_KONAMI5]++;
                     ROMCount[MAP_ASCII8]++;
                     ROMCount[MAP_ASCII16]++;
                     break;
      case 0x77FF32: ROMCount[MAP_ASCII16]++;break;
    }
  }

  /* Prefer practical MegaROM mappers over generic ones on ties. */
  static const int MapperTiePriority[FMSX_LOCAL_MAXMAPPERS] =
  {
    10, /* MAP_GEN8     */
    20, /* MAP_GEN16    */
    45, /* MAP_KONAMI5  */
    40, /* MAP_KONAMI4  */
    35, /* MAP_ASCII8   */
    50, /* MAP_ASCII16  */
    5,  /* MAP_GMASTER2 */
    5,  /* MAP_FMPAC    */
    0,  /* MAP_GUESS    */
    60, /* MAP_MANBOW2  */
    60  /* MAP_MANBOW2_2 */
  };

  /* Find mapper with best score; break ties by mapper priority. */
  I=0;
  BestScore=ROMCount[0];
  BestPrio=MapperTiePriority[0];
  for(J=1;J<FMSX_LOCAL_MAXMAPPERS;++J)
  {
    CandidatePrio=MapperTiePriority[J];
    if((ROMCount[J]>BestScore)
    || ((ROMCount[J]==BestScore) && (CandidatePrio>BestPrio)))
    {
      I=J;
      BestScore=ROMCount[J];
      BestPrio=CandidatePrio;
    }
  }

  /* Return the most likely mapper type */
  FmsxCartLastClassifiedSource = FMSX_CART_SOURCE_HEURISTIC;
  return(I);
}

static void fmsx_manbow2_save_flash_file(int slot)
{
  RFILE *f;
  uint8_t *save_ptr;

  if((slot<0)||(slot>=MAXSLOTS)) return;
  if(!SaveManbow2Flash[slot] || !Manbow2FlashName[slot]) return;

  save_ptr = fmsx_manbow2_flash_save_ptr(slot);
  if(!save_ptr)
  {
    SaveManbow2Flash[slot] = 0;
    return;
  }

  f = rfopen(Manbow2FlashName[slot],"wb");
  if(!f)
  {
    SaveManbow2Flash[slot] = 0;
    return;
  }

  if(rfwrite(save_ptr,1,FMSX_MANBOW2_FLASH_SAVE_SIZE,f)!=FMSX_MANBOW2_FLASH_SAVE_SIZE)
    SaveManbow2Flash[slot] = 0;
  else
    SaveManbow2Flash[slot] = 0;

  rfclose(f);
}

static void fmsx_manbow2_load_flash_file(int slot)
{
  RFILE *f;
  uint8_t *save_ptr;

  if((slot<0)||(slot>=MAXSLOTS) || !Manbow2FlashName[slot]) return;

  save_ptr = fmsx_manbow2_flash_save_ptr(slot);
  if(!save_ptr) return;

  f = rfopen(Manbow2FlashName[slot],"rb");
  if(!f) return;

  memset(save_ptr,0xFF,FMSX_MANBOW2_FLASH_SAVE_SIZE);
  (void)rfread(save_ptr,1,FMSX_MANBOW2_FLASH_SAVE_SIZE,f);
  rfclose(f);
}

static void fmsx_manbow2_prepare_flash_file(int slot,const char *file_name)
{
  char *ext;

  if((slot<0)||(slot>=MAXSLOTS) || !file_name) return;

  fmsx_manbow2_free_slot_resources(slot);

  Manbow2FlashName[slot]=(char *)GetMemory(strlen(file_name)+5u);
  if(!Manbow2FlashName[slot]) return;

  strcpy(Manbow2FlashName[slot],file_name);
  ext = (char*)strrchr(Manbow2FlashName[slot],'.');
  if(ext) strcpy(ext,".sav");
  else strcat(Manbow2FlashName[slot],".sav");

  fmsx_manbow2_flash_soft_reset(slot);
  fmsx_manbow2_load_flash_file(slot);
}

/** LoadFNT() ************************************************/
/** Load fixed 8x8 font used in text screen modes when      **/
/** MSX_FIXEDFONT option is enabled. LoadFNT(0) frees the   **/
/** font buffer. Returns 1 on success, 0 on failure.        **/
/*************************************************************/
uint8_t LoadFNT(const char *FileName)
{
  RFILE *F;

  /* Drop out if no new font requested */
  if(!FileName) { FreeMemory(FontBuf);FontBuf=0;return(1); }
  /* Try opening font file */
  if(!(F=rfopen(FileName,"rb"))) return(0);
  /* Allocate memory for 256 8x8 characters, if needed */
  if(!FontBuf) FontBuf=GetMemory(256*8);
  /* Drop out if failed memory allocation */
  if(!FontBuf) { rfclose(F);return(0); }
  /* Read font, ignore short reads */
  rfread(FontBuf,1,256*8,F);
  /* Done */
  rfclose(F);
  return(1);
}

/** LoadROM() ************************************************/
/** Load a file, allocating memory as needed. Returns addr. **/
/** of the allocated space or 0 if failed.                  **/
/*************************************************************/
uint8_t *LoadROM(const char *Name,int Size,uint8_t *Buf)
{
  char path[512];
  RFILE *F;
  uint8_t *P;
  int J;

  /* Can't give address without size! */
  if(Buf&&!Size) return(0);

#if defined( VITA ) || defined(__PS3__)
  if(!(F=rfopen(Name,"rb")))
  {
     fill_pathname_join(path, ProgDir, Name, sizeof(path));
     /* Open file */
     if(!(F=rfopen(path,"rb")))
        return(0);
  }
#else
  /* Open file */
  if(!(F=rfopen(Name,"rb")))
     return(0);
#endif

  /* Determine data size, if wasn't given */
  if(!Size)
  {
    /* Determine size via ftell() or by reading entire [GZIPped] stream */
    if(!rfseek(F,0,SEEK_END))
       Size = rftell(F);
    else
    {
      /* Read file in 16kB increments */
      while((J = rfread(EmptyRAM,1,0x4000,F))==0x4000)
         Size+=J;
      if(J>0)
         Size+=J;
      /* Clean up the EmptyRAM! */
      memset(EmptyRAM,NORAM,0x4000);
    }
    /* Rewind file to the beginning */
    filestream_rewind(F);
  }

  /* Allocate memory */
  P=Buf? Buf:GetMemory(Size);
  if(P)
  {
     /* Read data */
     if((J = rfread(P,1,Size,F))!=Size)
     {
        if(!Buf)
           FreeMemory(P);
     }
  }

  /* Done */
  rfclose(F);
  return(P);
}

/** LoadCart() ***********************************************/
/** Load cartridge into given slot. Returns cartridge size  **/
/** in 16kB pages on success, 0 on failure.                 **/
/*************************************************************/
int LoadCart(const char *FileName,int Slot,int Type)
{
  int64_t Len;
  int C1, C2, Pages, ROM64, BASIC;
  int GuessRequested;
  uint8_t cart_source;
  uint8_t *P,PS,SS;
  char *T;
  RFILE *F;

  /* Slot number must be valid */
  if((Slot<0)||(Slot>=MAXSLOTS))
     return 0;

  /* Find primary/secondary slots */
  for(PS=0;PS<4;++PS)
  {
    for(SS=0;(SS<4)&&(CartMap[PS][SS]!=Slot);++SS);
    if(SS<4) break;
  }
  /* Drop out if slots not found */
  if(PS>=4)
     return 0;

  /*
   * LoadCart() is called both with raw mapper ids (0..15) and with the
   * ROMGUESS() flags ORed into the low mapper nibble. Keep these concerns
   * separate: the guess request lives in the high bits, while the effective
   * mapper type is the low 4-bit value stored in Mode/ROMType.
   */
  GuessRequested = (Type==MAP_GUESS) || ((Type&(MSX_GUESSA|MSX_GUESSB))!=0);
  Type &= 0x0F;
  cart_source = GuessRequested? FMSX_CART_SOURCE_HEURISTIC:FMSX_CART_SOURCE_EXPLICIT;

  if(fmsx_rom_type_is_manbow2(ROMType[Slot]))
    fmsx_manbow2_save_flash_file(Slot);

  /* If there is a SRAM in this cartridge slot... */
  if(SRAMData[Slot]&&SaveSRAM[Slot]&&SRAMName[Slot])
  {
    /* Open .SAV file */
    if(!(F = rfopen(SRAMName[Slot],"wb")))
       SaveSRAM[Slot]=0;
    else
    {
      /* Write .SAV file */
      switch(ROMType[Slot])
      {
        case MAP_ASCII8:
        case MAP_FMPAC:
          if(rfwrite(SRAMData[Slot],1,0x2000,F)!=0x2000)
             SaveSRAM[Slot]=0;
          break;
        case MAP_ASCII16:
          if(rfwrite(SRAMData[Slot],1,0x0800,F)!=0x0800)
             SaveSRAM[Slot]=0;
          break;
        case MAP_GMASTER2:
          if(rfwrite(SRAMData[Slot],1,0x1000,F)!=0x1000)
             SaveSRAM[Slot]=0;
          if(rfwrite(SRAMData[Slot]+0x2000,1,0x1000,F)!=0x1000)
             SaveSRAM[Slot]=0;
          break;
      }

      /* Done with .SAV file */
      rfclose(F);
    }
    /* Done saving SRAM */
  }

  /* If ejecting cartridge... */
  if(!FileName)
  {
    if(ROMData[Slot])
    {
      /* Free memory if present */
      FreeMemory(ROMData[Slot]);
      ROMData[Slot] = 0;
      ROMMask[Slot] = 0;
      FreeMemory(SRAMData[Slot]);
      FreeMemory((uint8_t*)SRAMName[Slot]);
      SRAMData[Slot] = 0;
      SRAMName[Slot] = 0;
      SaveSRAM[Slot] = 0;
      fmsx_cart_clear_effective_type(Slot);
      fmsx_manbow2_free_slot_resources(Slot);
      /* Set memory map to dummy RAM */
      for(C1=0;C1<8;++C1) MemMap[PS][SS][C1]=EmptyRAM;
      /* Restart MSX */
      ResetMSX(Mode,RAMPages,VRAMPages);
      /* Cartridge ejected */
    }

    /* Nothing else to do */
    return 0;
  }

  /* Try opening file */
  if(!(F = rfopen(FileName,"rb")))
     return 0;

  /* Determine size via ftell() or by reading entire [GZIPped] stream */
  if(!rfseek(F,0,SEEK_END))
     Len = rftell(F);
  else
  {
    /* Read file in 16kB increments */
    for(Len=0;(C2 = rfread(EmptyRAM,1,0x4000,F))==0x4000;Len+=C2);
    if(C2>0) Len+=C2;
    /* Clean up the EmptyRAM! */
    memset(EmptyRAM,NORAM,0x4000);
  }

  /* Rewind file */
  filestream_rewind(F);

  /* Length in 8kB pages */
  Len = Len>>13;

  /* Calculate 2^n closest to number of 8kB pages */
  for(Pages=1;Pages<Len;Pages<<=1);

  /* Check "AB" signature in a file */
  ROM64=0;
  C1    = rfgetc(F);
  C2    = rfgetc(F);

  /* Maybe this is a flat 64kB ROM? */
  if((C1!='A')||(C2!='B'))
    if(rfseek(F,0x4000,SEEK_SET)>=0)
    {
      C1    = rfgetc(F);
      C2    = rfgetc(F);
      ROM64=(C1=='A')&&(C2=='B');
    }

  /* Maybe it is the last 16kB page that contains "AB" signature? */
  if((Len>=2)&&((C1!='A')||(C2!='B')))
    if(rfseek(F,0x2000*(Len-2),SEEK_SET)>=0)
    {
      C1=rfgetc(F);
      C2=rfgetc(F);
    }

  /* If we can't find "AB" signature, drop out */
  if((C1!='A')||(C2!='B'))
  {
    rfclose(F);
    return(0);
  }

  /* Done with the file */
  rfclose(F);

  /* Assign ROMMask for MegaROMs */
  ROMMask[Slot]=!ROM64&&(Len>4)? (Pages-1):0x00;
  /* Allocate space for the ROM */
  ROMData[Slot]=P=GetMemory(Pages<<13);
  if(!P)
    return(0);

  /* Try loading ROM */
  if(!LoadROM(FileName,Len<<13,P))
    return(0);

  /* Mirror ROM if it is smaller than 2^n pages */
  if(Len<Pages)
    memcpy(P+Len*0x2000,P+(Len-Pages/2)*0x2000,(Pages-Len)*0x2000); 

  /* Detect ROMs containing BASIC code */
  BASIC=(P[0]=='A')&&(P[1]=='B')&&!(P[2]||P[3])&&(P[8]||P[9]);

  /* Set memory map depending on the ROM size */
  switch(Len)
  {
    case 1:
      /* 8kB ROMs are mirrored 8 times: 0:0:0:0:0:0:0:0 */
      if(!BASIC)
      {
        MemMap[PS][SS][0]=P;
        MemMap[PS][SS][1]=P;
        MemMap[PS][SS][2]=P;
        MemMap[PS][SS][3]=P;
      }
      MemMap[PS][SS][4]=P;
      MemMap[PS][SS][5]=P;
      if(!BASIC)
      {
        MemMap[PS][SS][6]=P;
        MemMap[PS][SS][7]=P;
      }
      break;

    case 2:
      /* 16kB ROMs are mirrored 4 times: 0:1:0:1:0:1:0:1 */
      if(!BASIC)
      {
        MemMap[PS][SS][0]=P;
        MemMap[PS][SS][1]=P+0x2000;
        MemMap[PS][SS][2]=P;
        MemMap[PS][SS][3]=P+0x2000;
      }
      MemMap[PS][SS][4]=P;
      MemMap[PS][SS][5]=P+0x2000;
      if(!BASIC)
      {
        MemMap[PS][SS][6]=P;
        MemMap[PS][SS][7]=P+0x2000;
      }
      break;

    case 3:
    case 4:
      /* 24kB and 32kB ROMs are mirrored twice: 0:1:0:1:2:3:2:3 */
      MemMap[PS][SS][0]=P;
      MemMap[PS][SS][1]=P+0x2000;
      MemMap[PS][SS][2]=P;
      MemMap[PS][SS][3]=P+0x2000;
      MemMap[PS][SS][4]=P+0x4000;
      MemMap[PS][SS][5]=P+0x6000;
      MemMap[PS][SS][6]=P+0x4000;
      MemMap[PS][SS][7]=P+0x6000;
      break;

    default:
      if(ROM64)
      {
        /* 64kB ROMs are loaded to fill slot: 0:1:2:3:4:5:6:7 */
        MemMap[PS][SS][0]=P;
        MemMap[PS][SS][1]=P+0x2000;
        MemMap[PS][SS][2]=P+0x4000;
        MemMap[PS][SS][3]=P+0x6000;
        MemMap[PS][SS][4]=P+0x8000;
        MemMap[PS][SS][5]=P+0xA000;
        MemMap[PS][SS][6]=P+0xC000;
        MemMap[PS][SS][7]=P+0xE000;
      }
      break;
  }

  /* Guess MegaROM mapper type if not given */
  if(GuessRequested&&(ROMMask[Slot]+1>4))
  {
    Type=GuessROM(P,Len<<13);
    cart_source = FmsxCartLastClassifiedSource? FmsxCartLastClassifiedSource:FMSX_CART_SOURCE_HEURISTIC;
  }

  /* Save MegaROM type */
  fmsx_cart_set_effective_type(Slot,Type,cart_source);

  if(fmsx_rom_type_is_manbow2(Type))
    fmsx_manbow2_prepare_flash_file(Slot,FileName);
  else
    fmsx_manbow2_free_slot_resources(Slot);

  /* For Generic/16kB carts, set ROM pages as 0:1:N-2:N-1 */
  if((Type==MAP_GEN16)&&(ROMMask[Slot]+1>4))
    SetMegaROM(Slot,0,1,ROMMask[Slot]-1,ROMMask[Slot]);

  /* If cartridge may need a SRAM... */
  if(MAP_SRAM(Type))
  {
    /* Free previous SRAM resources */
    FreeMemory(SRAMData[Slot]);
    FreeMemory((uint8_t*)SRAMName[Slot]);

    /* Get SRAM memory */
    SRAMData[Slot]=GetMemory(0x4000);
    if(!SRAMData[Slot])
      SRAMData[Slot]=EmptyRAM;
    else
      memset(SRAMData[Slot],NORAM,0x4000);

    /* Generate SRAM file name and load SRAM contents */
    if((SRAMName[Slot]=(char *)GetMemory(strlen(FileName)+5)))
    {
      /* Compose SRAM file name */
      strcpy(SRAMName[Slot],FileName);
      T = (uint8_t*)(const char*)strrchr(SRAMName[Slot],'.');
      if(T)
         strcpy((char*)T,".sav");
      else
         strcat(SRAMName[Slot],".sav");

      /* Try opening file... */
      if((F=rfopen(SRAMName[Slot],"rb")))
      {
        /* Read SRAM file */
        Len=rfread(SRAMData[Slot],1,0x4000,F);
        rfclose(F);
        /* Print information if needed */
        /* Mirror data according to the mapper type */
        P=SRAMData[Slot];
        switch(Type)
        {
          case MAP_FMPAC:
            memset(P+0x2000,NORAM,0x2000);
            P[0x1FFE]=FMPAC_MAGIC&0xFF;
            P[0x1FFF]=FMPAC_MAGIC>>8;
            break;
          case MAP_GMASTER2:
            memcpy(P+0x2000,P+0x1000,0x1000);
            memcpy(P+0x3000,P+0x1000,0x1000);
            memcpy(P+0x1000,P,0x1000);
            break;
          case MAP_ASCII16:
            memcpy(P+0x0800,P,0x0800);
            memcpy(P+0x1000,P,0x0800);
            memcpy(P+0x1800,P,0x0800);
            memcpy(P+0x2000,P,0x0800);
            memcpy(P+0x2800,P,0x0800);
            memcpy(P+0x3000,P,0x0800);
            memcpy(P+0x3800,P,0x0800);
            break;
        }
      }
    }
  }
  else
  {
    FreeMemory(SRAMData[Slot]);
    FreeMemory((uint8_t*)SRAMName[Slot]);
    SRAMData[Slot]=0;
    SRAMName[Slot]=0;
    SaveSRAM[Slot]=0;
  }

  /* Done setting up cartridge */
  ResetMSX(Mode,RAMPages,VRAMPages);

  /* Done loading cartridge */
  return(Pages);
}

/** LoadCHT() ************************************************/
/** Load cheats from .CHT file. Cheat format is either      **/
/** 00XXXXXX-XX (one uint8_t) or 00XXXXXX-XXXX (two uint8_ts) for **/
/** ROM-based cheats and XXXX-XX or XXXX-XXXX for RAM-based **/
/** cheats. Returns the number of cheats on success, 0 on   **/
/** failure.                                                **/
/*************************************************************/
int LoadCHT(const char *Name)
{
  char Buf[256],S[16];
  int Status;
  RFILE *F;

  /* Open .CHT text file with cheats */
  F = rfopen(Name,"rb");
  if(!F) return(0);

  /* Switch cheats off for now and remove all present cheats */
  Status = Cheats(CHTS_QUERY);
  Cheats(CHTS_OFF);
  ResetCheats();

  /* Try adding cheats loaded from file */
  while(!rfeof(F))
    if(rfgets(Buf,sizeof(Buf),F) && (sscanf(Buf,"%13s",S)==1))
      AddCheat(S);

  /* Done with the file */
  rfclose(F);

  /* Turn cheats back on, if they were on */
  Cheats(Status);

  /* Done */
  return(CheatCount);
}

/** LoadPAL() ************************************************/
/** Load new palette from .PAL file. Returns number of      **/
/** loaded colors on success, 0 on failure.                 **/
/*************************************************************/
int LoadPAL(const char *Name)
{
  static const char *Hex = "0123456789ABCDEF";
  char S[256],*P,*T,*H;
  RFILE *F;
  int J,I;

  if(!(F=rfopen(Name,"rb"))) return(0);

  for(J=0;(J<16)&&rfgets(S,sizeof(S),F);++J)
  {
    /* Skip white space and optional '#' character */
    for(P=S;*P&&(*P<=' ');++P);
    if(*P=='#') ++P;
    /* Parse six hexadecimal digits */
    for(T=P,I=0;*T&&(H=strchr(Hex,toupper(*T)));++T) I=(I<<4)+(H-Hex);
    /* If we have got six digits, parse and set color */
    if(T-P==6) SetColor(J,I>>16,(I>>8)&0xFF,I&0xFF);
  }

  rfclose(F);
  return(J);
}

/** LoadMCF() ************************************************/
/** Load cheats from .MCF file. Returns number of loaded    **/
/** cheat entries or 0 on failure.                          **/
/*************************************************************/
int LoadMCF(const char *Name)
{
  MCFCount = LoadFileMCF(Name,MCFEntries,sizeof(MCFEntries)/sizeof(MCFEntries[0]));
  return(MCFCount);
}

#define SaveSTRUCT(Name) \
  if(Size+sizeof(Name)>MaxSize) return(0); \
  else { memcpy(Buf+Size,&(Name),sizeof(Name));Size+=sizeof(Name); }

#define SaveARRAY(Name) \
  if(Size+sizeof(Name)>MaxSize) return(0); \
  else { memcpy(Buf+Size,(Name),sizeof(Name));Size+=sizeof(Name); }

#define SaveDATA(Name,DataSize) \
  if(Size+(DataSize)>MaxSize) return(0); \
  else { memcpy(Buf+Size,(Name),(DataSize));Size+=(DataSize); }

#define LoadSTRUCT(Name) \
  if(Size+sizeof(Name)>MaxSize) return(0); \
  else { memcpy(&(Name),Buf+Size,sizeof(Name));Size+=sizeof(Name); }

#define SkipSTRUCT(Name) \
  if(Size+sizeof(Name)>MaxSize) return(0); \
  else Size+=sizeof(Name)

#define LoadARRAY(Name) \
  if(Size+sizeof(Name)>MaxSize) return(0); \
  else { memcpy((Name),Buf+Size,sizeof(Name));Size+=sizeof(Name); }

#define LoadDATA(Name,DataSize) \
  if(Size+(DataSize)>MaxSize) return(0); \
  else { memcpy((Name),Buf+Size,(DataSize));Size+=(DataSize); }

#define SkipDATA(DataSize) \
  if(Size+(DataSize)>MaxSize) return(0); \
  else Size+=(DataSize)

/** SaveState() **********************************************/
/** Save emulation state to a memory buffer. Returns size   **/
/** on success, 0 on failure.                               **/
/*************************************************************/
unsigned int SaveState(unsigned char *Buf,unsigned int MaxSize)
{
  unsigned int State[256],Size;
  int J,I,K;

  /* No data written yet */
  Size = 0;

  /* Fill out hardware state */
  J=0;
  memset(State,0,sizeof(State));
  State[J++] = VDPData;
  State[J++] = PLatch;
  State[J++] = ALatch;
  State[J++] = VAddr;
  State[J++] = VKey;
  State[J++] = PKey;
  State[J++] = 0;          /* was WKey (deprecated) */
  State[J++] = IRQPending;
  State[J++] = ScanLine;
  State[J++] = RTCReg;
  State[J++] = RTCMode;
  State[J++] = KanLetter;
  State[J++] = KanCount;
  State[J++] = IOReg;
  State[J++] = PSLReg;
  State[J++] = FMPACKey;

  /* Memory setup */
  for(I=0;I<4;++I)
  {
    State[J++] = SSLReg[I];
    State[J++] = PSL[I];
    State[J++] = SSL[I];
    State[J++] = EnWrite[I];
    State[J++] = RAMMapper[I];
  }

  /* Cartridge setup */
  for(I=0;I<MAXSLOTS;++I)
  {
    State[J++] = ROMType[I];
    for(K=0;K<4;++K) State[J++]=ROMMapper[I][K];
  }

  /* SCC setup */
  if (!(Mode&MSX_NO_MEGARAM))
  {
    for(I=0;I<MAXSLOTS;++I) State[J++] = SCCOn[I];
    for(I=0;I<MAXSLOTS;++I) State[J++] = SCCIMode[I];
  }

  /* Write out data structures */
  SaveSTRUCT(CPU);
  SaveSTRUCT(PPI);
  SaveSTRUCT(VDP);
  SaveARRAY(VDPStatus);
  SaveARRAY(Palette);
  SaveSTRUCT(PSG);
  SaveSTRUCT(OPLL);
  SaveSTRUCT(SCChip);
  SaveARRAY(State);
  SaveDATA(RAMData,RAMPages*0x4000);
  SaveDATA(VRAM,VRAMPages*0x4000);
  if (!(Mode&MSX_NO_MEGARAM) && SCCIRAM)
    SaveDATA(SCCIRAM,fmsx_megaram_bytes());
  SaveSTRUCT(OPLL_NukeYKT);

  /* Return amount of data written */
  return(Size);
}

/** LoadState() **********************************************/
/** Load emulation state from a memory buffer. Returns size **/
/** on success, 0 on failure.                               **/
/*************************************************************/
unsigned int LoadState(unsigned char *Buf,unsigned int MaxSize)
{
  int State[256],J,I,K;
  unsigned int Size;

  /* No data read yet */
  Size = 0;

  /* Load hardware state */
  LoadSTRUCT(CPU);
  LoadSTRUCT(PPI);
  LoadSTRUCT(VDP);
  LoadARRAY(VDPStatus);
  LoadARRAY(Palette);
  LoadSTRUCT(PSG);
  LoadSTRUCT(OPLL);
  LoadSTRUCT(SCChip);
  fmsx_scc_rebuild_render_state_all();
  LoadARRAY(State);
  LoadDATA(RAMData,RAMPages*0x4000);
  LoadDATA(VRAM,VRAMPages*0x4000);
  if (!(Mode&MSX_NO_MEGARAM) && SCCIRAM)
    LoadDATA(SCCIRAM,fmsx_megaram_bytes());
  LoadSTRUCT(OPLL_NukeYKT);

  /* Parse hardware state */
  J=0;
  VDPData    = State[J++];
  PLatch     = State[J++];
  ALatch     = State[J++];
  VAddr      = State[J++];
  VKey       = State[J++];
  PKey       = State[J++];
  J++;                      /* was WKey = State[J++]; */
  IRQPending = State[J++];
  ScanLine   = State[J++];
  RTCReg     = State[J++];
  RTCMode    = State[J++];
  KanLetter  = State[J++];
  KanCount   = State[J++];
  IOReg      = State[J++];
  PSLReg     = State[J++];
  FMPACKey   = State[J++];

  /* Memory setup */
  for(I=0;I<4;++I)
  {
    SSLReg[I]       = State[J++];
    PSL[I]          = State[J++];
    SSL[I]          = State[J++];
    EnWrite[I]      = State[J++];
    RAMMapper[I]    = State[J++];
  }

  /* Cartridge setup */
  for(I=0;I<MAXSLOTS;++I)
  {
    ROMType[I] = State[J++];
    for(K=0;K<4;++K) ROMMapper[I][K]=State[J++];

    /* Correction for older states */
    if(ROMType[I]==MAP_FMPAC)
      ROMMapper[I][1]=ROMMapper[I][0]|1;
    else if((ROMType[I]==MAP_ASCII16)||(ROMType[I]==MAP_GEN16))
    {
      ROMMapper[I][1]=ROMMapper[I][0]|1;
      ROMMapper[I][3]=ROMMapper[I][2]|1;
    }

    if(ROMData[I]&&FmsxCartMapperLockedType[I]!=0xFFu)
      ROMType[I] = FmsxCartMapperLockedType[I];
  }

  if(ROMData[0]&&FmsxCartMapperLockedType[0]!=0xFFu) SETROMTYPE(0,ROMType[0]);
  if(ROMData[1]&&FmsxCartMapperLockedType[1]!=0xFFu) SETROMTYPE(1,ROMType[1]);

  /* SCC setup */
  if (!(Mode&MSX_NO_MEGARAM))
  {
    for(I=0;I<MAXSLOTS;++I) SCCOn[I] = State[J++];
    for(I=0;I<MAXSLOTS;++I) SCCIMode[I] = State[J++];
  }

  /* Set RAM mapper pages */
  if(RAMMask)
    for(I=0;I<4;++I)
    {
      RAMMapper[I]       &= RAMMask;
      MemMap[3][RAMMapperSubSlot()][I*2]   = RAMData+RAMMapper[I]*0x4000;
      MemMap[3][RAMMapperSubSlot()][I*2+1] = MemMap[3][RAMMapperSubSlot()][I*2]+0x2000;
    }

  /* Set ROM mapper pages */
  for(I=0;I<MAXSLOTS;++I)
    if(ROMData[I]&&ROMMask[I])
      SetMegaROM(I,ROMMapper[I][0],ROMMapper[I][1],ROMMapper[I][2],ROMMapper[I][3]);

  /* Set main address space pages */
  for(I=0;I<4;++I)
  {
    RAM[2*I]   = MemMap[PSL[I]][SSL[I]][2*I];
    RAM[2*I+1] = MemMap[PSL[I]][SSL[I]][2*I+1];
  }

  /* Set palette */
  for(I=0;I<16;++I)
    SetColor(I,(Palette[I]>>16)&0xFF,(Palette[I]>>8)&0xFF,Palette[I]&0xFF);

  /* Set screen mode and VRAM table addresses */
  SetScreen();
  FmsxVDPScreenOnLatched = (VDP[1]&0x40u)? 1u:0u;
  FmsxVDPDisplayStateDirty = 0;

  /* Set some other variables */
  VPAGE    = VRAM+((int)VDP[14]<<14);
  FGColor  = VDP[7]>>4;
  BGColor  = VDP[7]&0x0F;
  XFGColor = FGColor;
  XBGColor = BGColor;
  fmsx_sync_bios_vdp_r9_shadow();

  /* All sound channels could have been changed */
  PSG.Changed     = (1<<AY8910_CHANNELS)-1;
  fmsx_mark_scc_chips_dirty();
  OPLL.Changed    = (1<<YM2413_CHANNELS)-1;
  memset(g_fmsx_kmg_trace,0,sizeof(g_fmsx_kmg_trace));
  g_fmsx_kmg_trace_head = 0;
  g_fmsx_kmg_trace_count = 0;
  g_fmsx_kmg_trace_dropped = 0;
  g_fmsx_kmg_trace_seq = 0;
#if FMSX_SMANBOW_AUDIO_TRACE_ENABLED
  memset(g_fmsx_scc_trace,0,sizeof(g_fmsx_scc_trace));
  memset(&g_fmsx_scc_trace_active,0,sizeof(g_fmsx_scc_trace_active));
  g_fmsx_scc_trace_head = 0;
  g_fmsx_scc_trace_count = 0;
  g_fmsx_scc_trace_dropped = 0;
  g_fmsx_scc_trace_seq = 0;
  g_fmsx_scc_trace_active_valid = 0;
  g_fmsx_scc_trace_started = 0;
  g_fmsx_scc_trace_capture_done = 0;
  g_fmsx_scc_trace_seen_slot_flow = 0;
  g_fmsx_scc_trace_session = 0;
  g_fmsx_scc_trace_session_open = 0;
  g_fmsx_scc_trace_events_in_session = 0u;
  memset(g_fmsx_audio_port_trace,0,sizeof(g_fmsx_audio_port_trace));
  memset(&g_fmsx_audio_port_trace_active,0,sizeof(g_fmsx_audio_port_trace_active));
  g_fmsx_audio_port_trace_head = 0;
  g_fmsx_audio_port_trace_count = 0;
  g_fmsx_audio_port_trace_dropped = 0;
  g_fmsx_audio_port_trace_seq = 0;
  g_fmsx_audio_port_trace_active_valid = 0u;
#endif

  /* Return amount of data read */
  return(Size);
}
