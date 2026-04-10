/** fMSX: portable MSX emulator ******************************/
/**                                                         **/
/**                         V9938.c                         **/
/**                                                         **/
/** This file contains implementation for the V9938 special **/
/** graphical operations.                                   **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1994-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/**                                                         **/
/** Completely rewritten by Alex Wulms:                     **/
/**  - VDP Command execution 'in parallel' with CPU         **/
/**  - Corrected behaviour of VDP commands                  **/
/**  - Made it easier to implement correct S7/8 mapping     **/
/**    by concentrating VRAM access in one single place     **/
/**  - Made use of the 'in parallel' VDP command exec       **/
/**    and correct timing. You must call the function       **/
/**    LoopVDP() from LoopZ80 in MSX.c. You must call it    **/
/**    exactly 256 times per screen refresh.                **/
/** Started on       : 11-11-1999                           **/
/** Beta release 1 on:  9-12-1999                           **/
/** Beta release 2 on: 20-01-2000                           **/
/**  - Corrected behaviour of VRM <-> Z80 transfer          **/
/**  - Improved performance of the code                     **/
/** Public release 1.0: 20-04-2000                          **/
/*************************************************************/
#include "V9938.h"
#include <string.h>

extern retro_log_printf_t log_cb;
extern void fmsx_vdp_trace_command_transition(uint8_t active);
extern uint64_t fmsx_vdp_cpu_cycles_now(void);
extern int HPeriod;

/* Baremetal disables legacy libretro callback logging in local core files. */
#undef log_cb
#define log_cb ((retro_log_printf_t)0)

/*************************************************************/
/** Other useful defines                                    **/
/*************************************************************/
#define VDP_VRMP5(X, Y) (VRAM + ((Y&1023)<<7) + ((X&255)>>1))
#define VDP_VRMP6(X, Y) (VRAM + ((Y&1023)<<7) + ((X&511)>>2))
#define VDP_VRMP7(X, Y) (VRAM + ((Y&511)<<7) + (((X&511)>>2) + ((X&2)<<15)))
#define VDP_VRMP8(X, Y) (VRAM + ((Y&511)<<7) + (((X&255)>>1) + ((X&1)<<16)))

#define VDP_VRMP(M, X, Y) VDPVRMP(M, X, Y)
#define VDP_POINT(M, X, Y) VDPpoint(M, X, Y)
#define VDP_PSET(M, X, Y, C, O) VDPpset(M, X, Y, C, O)

#define CM_ABRT  0x0
#define CM_POINT 0x4
#define CM_PSET  0x5
#define CM_SRCH  0x6
#define CM_LINE  0x7
#define CM_LMMV  0x8
#define CM_LMMM  0x9
#define CM_LMCM  0xA
#define CM_LMMC  0xB
#define CM_HMMV  0xC
#define CM_HMMM  0xD
#define CM_YMMM  0xE
#define CM_HMMC  0xF

/*************************************************************/
/* Many VDP commands are executed in some kind of loop but   */
/* essentially, there are only a few basic loop structures   */
/* that are re-used. We define the loop structures that are  */
/* re-used here so that they have to be entered only once    */
/*************************************************************/
#define pre_loop \
    while ((cnt-=delta) > 0) {

/* Loop over DX, DY */
#define post__x_y(MX) \
    if (!--ANX || ((ADX+=TX)&MX)) { \
      if (!(--NY&1023) || (DY+=TY)==-1) \
        break; \
      else { \
        ADX=DX; \
        ANX=NX; \
      } \
    } \
  }

/* Loop over DX, SY, DY */
#define post__xyy(MX) \
    if ((ADX+=TX)&MX) { \
      if (!(--NY&1023) || (SY+=TY)==-1 || (DY+=TY)==-1) \
        break; \
      else \
        ADX=DX; \
    } \
  }

/* Loop over SX, DX, SY, DY */
#define post_xxyy(MX) \
    if (!--ANX || ((ASX+=TX)&MX) || ((ADX+=TX)&MX)) { \
      if (!(--NY&1023) || (SY+=TY)==-1 || (DY+=TY)==-1) \
        break; \
      else { \
        ASX=SX; \
        ADX=DX; \
        ANX=NX; \
      } \
    } \
  }

/*************************************************************/
/** Structures and stuff                                    **/
/*************************************************************/
static struct {
  int SX,SY;
  int DX,DY;
  int TX,TY;
  int NX,NY;
  int MX;
  int ASX,ADX,ANX;
  uint8_t CL;
  uint8_t LO;
  uint8_t CM;
} MMC;

/*************************************************************/
/** Function prototypes                                     **/
/*************************************************************/
static uint8_t *VDPVRMP(uint8_t M, int X, int Y);

static uint8_t VDPpoint5(int SX, int SY);
static uint8_t VDPpoint6(int SX, int SY);
static uint8_t VDPpoint7(int SX, int SY);
static uint8_t VDPpoint8(int SX, int SY);

static uint8_t VDPpoint(uint8_t SM, 
                     int SX, int SY);

static void VDPpsetlowlevel(uint8_t *P, uint8_t CL,
                            uint8_t M, uint8_t OP);

static void VDPpset5(int DX, int DY,
                     uint8_t CL, uint8_t OP);
static void VDPpset6(int DX, int DY,
                     uint8_t CL, uint8_t OP);
static void VDPpset7(int DX, int DY,
                     uint8_t CL, uint8_t OP);
static void VDPpset8(int DX, int DY,
                     uint8_t CL, uint8_t OP);

static void VDPpset(uint8_t SM,
                    int DX, int DY,
                    uint8_t CL, uint8_t OP);

static int GetVdpTimingValue(int *);

static void SrchEngine(void);
static void LineEngine(void);
static void LmmvEngine(void);
static void LmmmEngine(void);
static void LmcmEngine(void);
static void LmmcEngine(void);
static void HmmvEngine(void);
static void HmmmEngine(void);
static void YmmmEngine(void);
static void HmmcEngine(void);
static int fmsx_msx2p_bootlogo_bios_timing_window(void);

/*************************************************************/
/** Variables visible only in this module                   **/
/*************************************************************/
static uint8_t Mask[4] = { 0x0F,0x03,0x0F,0xFF };
static int  PPB[4]  = { 2,4,2,1 };
static int  PPL[4]  = { 256,512,512,256 };
static int  VdpOpsCnt=0;
static void (*VdpEngine)(void)=0;
static uint8_t VdpTraceCE = 0;
static uint8_t VdpBootLogoTimingBoost = 0u;
static uint64_t VdpLastCpuCycles = 0u;
static uint32_t VdpCycleRemainder = 0u;
static uint8_t VdpCycleValid = 0u;

INLINE void VdpTraceSyncCE(void)
{
  const uint8_t ce = (VDPStatus[2]&0x01u)? 1u:0u;
  if(!ce) VdpBootLogoTimingBoost = 0u;
  if(ce!=VdpTraceCE)
  {
    VdpTraceCE = ce;
    fmsx_vdp_trace_command_transition(ce);
  }
}

INLINE void VdpPrimeCommandClock(uint64_t now_cycles)
{
  VdpLastCpuCycles = now_cycles;
  VdpCycleRemainder = 0u;
  VdpCycleValid = 1u;
}

/* Command budget per full scanline.
 * Keep the current local throughput baseline, but stop delivering it in a
 * single coarse lump at LoopVDP(). The first timing cut for issue #238 keeps
 * the same average work per scanline and redistributes it over real CPU time,
 * approximating blueMSX's time-driven sync without rewriting all local timing
 * tables in the same patch.
 */
INLINE int VdpOpsQuantum(void)
{
  int quantum = MODEL(MSX_MSX2P) ? 250000 : 12500;

  /*
   * The conservative time-sync baseline from issue #238 restored boot safety,
   * but hardware still shows the MSX2+ logo in SCREEN 6 progressing too
   * slowly. BlueMSX advances the command engine continuously from time, while
   * our local core still uses heavier historic timing tables. Instead of
   * reintroducing the discarded absolute-timing cut, apply a bounded uplift
   * only while CE is active, with extra headroom for the high-resolution
   * bitmap modes that drive the logo.
   */
  if(MODEL(MSX_MSX2P) && (VDPStatus[2]&0x01u))
  {
    if((ScrMode>=6)&&(ScrMode<=8)) quantum = 500000;
    else quantum = 300000;
  }

  return quantum;
}

INLINE void VdpSyncCommandTime(void)
{
  const uint64_t now_cycles = fmsx_vdp_cpu_cycles_now();
  const uint64_t line_cycles = (uint64_t)(unsigned)(HPeriod>0 ? HPeriod : CPU_HPERIOD);

  if(!VdpCycleValid)
  {
    VdpPrimeCommandClock(now_cycles);
  }
  else if(now_cycles < VdpLastCpuCycles)
  {
    VdpPrimeCommandClock(now_cycles);
    VdpOpsCnt = 0;
  }
  else if(now_cycles > VdpLastCpuCycles)
  {
    const uint64_t delta_cycles = now_cycles - VdpLastCpuCycles;
    const uint64_t scaled_budget =
      delta_cycles * (uint64_t)(unsigned)VdpOpsQuantum() + (uint64_t)VdpCycleRemainder;

    VdpLastCpuCycles = now_cycles;
    VdpOpsCnt += (int)(scaled_budget / line_cycles);
    VdpCycleRemainder = (uint32_t)(scaled_budget % line_cycles);
  }

  if(VdpEngine)
  {
    if(VdpOpsCnt>0) VdpEngine();
  }
  else
  {
    VdpOpsCnt = 0;
    VdpCycleRemainder = 0u;
  }

  VdpTraceSyncCE();
}

INLINE int VdpCommandScreenMode(void)
{
  /*
   * V9958 command-enable (R#25 bit6) allows commands outside SCR5..8.
   * Mirror BlueMSX: SCR9..12 use the SCR8 command map, while modes outside
   * SCR5..12 only keep commands enabled when R#25 bit6 is set.
   */
  if((ScrMode>=5)&&(ScrMode<=8)) return ScrMode-5;
  if((ScrMode>8)&&(ScrMode<=12)) return 3;
  if(MODEL(MSX_MSX2P) && (VDP[25]&0x40u)) return 2;
  return -1;
}

                      /*  SprOn SprOn SprOf SprOf */
                      /*  ScrOf ScrOn ScrOf ScrOn */
static int srch_timing[8]={ 818, 1025,  818,  830,   /* ntsc */
                            696,  854,  696,  684 }; /* pal  */
static int line_timing[8]={ 1063, 1259, 1063, 1161,
                            904,  1026, 904,  953 };
static int hmmv_timing[8]={ 439,  549,  439,  531,
                            366,  439,  366,  427 };
static int lmmv_timing[8]={ 873,  1135, 873, 1056,
                            732,  909,  732,  854 };
static int ymmm_timing[8]={ 586,  952,  586,  610,
                            488,  720,  488,  500 };
static int hmmm_timing[8]={ 818,  1111, 818,  854,
                            684,  879,  684,  708 };
static int lmmm_timing[8]={ 1160, 1599, 1160, 1172, 
                            964,  1257, 964,  977 };

/*
 * BlueMSX command timing tables are the semantic reference for stock V9958.
 * The local tables above are scaled fMSX values with NTSC/PAL variants; the
 * logo-only "/8" workaround got close, but UART and disassembly already
 * narrowed the hot path to BIOS polling around CE. Use the exact blueMSX
 * deltas while the boot-logo command boost is armed, keeping the fallback
 * local tables everywhere else.
 */
static const int srch_timing_bluemsx[4] = { 92,  125, 92,  92  };
static const int line_timing_bluemsx[4] = { 120, 147, 120, 120 };
static const int hmmv_timing_bluemsx[4] = { 49,  65,  49,  62  };
static const int lmmv_timing_bluemsx[4] = { 98,  137, 98,  124 };
static const int ymmm_timing_bluemsx[4] = { 65,  125, 65,  68  };
static const int hmmm_timing_bluemsx[4] = { 92,  136, 92,  97  };
static const int lmmm_timing_bluemsx[4] = { 129, 197, 129, 132 };

static const int *fmsx_bootlogo_bluemsx_timing_table(const int *timing_values)
{
  if(timing_values == srch_timing) return srch_timing_bluemsx;
  if(timing_values == line_timing) return line_timing_bluemsx;
  if(timing_values == hmmv_timing) return hmmv_timing_bluemsx;
  if(timing_values == lmmv_timing) return lmmv_timing_bluemsx;
  if(timing_values == ymmm_timing) return ymmm_timing_bluemsx;
  if(timing_values == hmmm_timing) return hmmm_timing_bluemsx;
  if(timing_values == lmmm_timing) return lmmm_timing_bluemsx;
  return 0;
}

static int fmsx_msx2p_bootlogo_bios_timing_window(void)
{
  const uint16_t pc = CPU.PC.W;

  if(!MODEL(MSX_MSX2P)) return 0;

  /*
   * The MSX2+ boot logo BIOS does not start in the S#2 polling helpers
   * themselves. UART and disassembly show an earlier prelude around 0x2A0F
   * that prepares parameters, writes R#44/R#45/R#46, and later feeds R#26/R#27
   * from the 0x7A71/0x7BB2 banked aliases. The old window only covered the
   * polling wrappers rooted at 0x2BE4/0x2E3E/0x3040/0x3299, leaving the actual
   * command start of the first logo stages outside the issue-176 timing boost.
   *
   * Keep the scope BIOS-local, but widen it enough to include that prelude and
   * its +0x5000 banked alias, matching the actual PCs observed in field UART.
   */
  if(((pc>=0x2A0Fu)&&(pc<=0x2C59u)) ||
     ((pc>=0x2E3Eu)&&(pc<=0x2F97u)) ||
     ((pc>=0x3040u)&&(pc<=0x3147u)) ||
     ((pc>=0x3299u)&&(pc<=0x3325u)))
    return 1;

  if(((pc>=0x7A0Fu)&&(pc<=0x7C59u)) ||
     ((pc>=0x7E3Eu)&&(pc<=0x7F97u)) ||
     ((pc>=0x8040u)&&(pc<=0x8147u)) ||
     ((pc>=0x8299u)&&(pc<=0x8325u)))
    return 1;

  return 0;
}


/** VDPVRMP() **********************************************/
/** Calculate addr of a pixel in vram                       **/
/*************************************************************/
INLINE uint8_t *VDPVRMP(uint8_t M,int X,int Y)
{
  switch(M)
  {
    case 0: return VDP_VRMP5(X,Y);
    case 1: return VDP_VRMP6(X,Y);
    case 2: return VDP_VRMP7(X,Y);
    case 3: return VDP_VRMP8(X,Y);
  }

  return(VRAM);
}

/** VDPpoint5() ***********************************************/
/** Get a pixel on screen 5                                 **/
/*************************************************************/
INLINE uint8_t VDPpoint5(int SX, int SY)
{
  return (*VDP_VRMP5(SX, SY) >>
          (((~SX)&1)<<2)
         )&15;
}

/** VDPpoint6() ***********************************************/
/** Get a pixel on screen 6                                 **/
/*************************************************************/
INLINE uint8_t VDPpoint6(int SX, int SY)
{
  return (*VDP_VRMP6(SX, SY) >>
          (((~SX)&3)<<1)
         )&3;
}

/** VDPpoint7() ***********************************************/
/** Get a pixel on screen 7                                 **/
/*************************************************************/
INLINE uint8_t VDPpoint7(int SX, int SY)
{
  return (*VDP_VRMP7(SX, SY) >>
          (((~SX)&1)<<2)
         )&15;
}

/** VDPpoint8() ***********************************************/
/** Get a pixel on screen 8                                 **/
/*************************************************************/
INLINE uint8_t VDPpoint8(int SX, int SY)
{
  return *VDP_VRMP8(SX, SY);
}

/** VDPpoint() ************************************************/
/** Get a pixel on a screen                                 **/
/*************************************************************/
INLINE uint8_t VDPpoint(uint8_t SM, int SX, int SY)
{
  switch(SM)
  {
    case 0: return VDPpoint5(SX,SY);
    case 1: return VDPpoint6(SX,SY);
    case 2: return VDPpoint7(SX,SY);
    case 3: return VDPpoint8(SX,SY);
  }

  return(0);
}

/** VDPpsetlowlevel() ****************************************/
/** Low level function to set a pixel on a screen           **/
/** Make it inline to make it fast                          **/
/*************************************************************/
INLINE void VDPpsetlowlevel(uint8_t *P, uint8_t CL, uint8_t M, uint8_t OP)
{
  switch (OP)
  {
    case 0: *P = (*P & M) | CL; break;
    case 1: *P = *P & (CL | M); break;
    case 2: *P |= CL; break;
    case 3: *P ^= CL; break;
    case 4: *P = (*P & M) | ~(CL | M); break;
    case 8: if (CL) *P = (*P & M) | CL; break;
    case 9: if (CL) *P = *P & (CL | M); break;
    case 10: if (CL) *P |= CL; break;
    case 11:  if (CL) *P ^= CL; break;
    case 12:  if (CL) *P = (*P & M) | ~(CL|M); break;
  }
}

/** VDPpset5() ***********************************************/
/** Set a pixel on screen 5                                 **/
/*************************************************************/
INLINE void VDPpset5(int DX, int DY, uint8_t CL, uint8_t OP)
{
  uint8_t SH = ((~DX)&1)<<2;

  VDPpsetlowlevel(VDP_VRMP5(DX, DY),
                  CL << SH, ~(15<<SH), OP);
}

/** VDPpset6() ***********************************************/
/** Set a pixel on screen 6                                 **/
/*************************************************************/
INLINE void VDPpset6(int DX, int DY, uint8_t CL, uint8_t OP)
{
  uint8_t SH = ((~DX)&3)<<1;

  VDPpsetlowlevel(VDP_VRMP6(DX, DY),
                  CL << SH, ~(3<<SH), OP);
}

/** VDPpset7() ***********************************************/
/** Set a pixel on screen 7                                 **/
/*************************************************************/
INLINE void VDPpset7(int DX, int DY, uint8_t CL, uint8_t OP)
{
  uint8_t SH = ((~DX)&1)<<2;

  VDPpsetlowlevel(VDP_VRMP7(DX, DY),
                  CL << SH, ~(15<<SH), OP);
}

/** VDPpset8() ***********************************************/
/** Set a pixel on screen 8                                 **/
/*************************************************************/
INLINE void VDPpset8(int DX, int DY, uint8_t CL, uint8_t OP)
{
  VDPpsetlowlevel(VDP_VRMP8(DX, DY),
                  CL, 0, OP);
}

/** VDPpset() ************************************************/
/** Set a pixel on a screen                                 **/
/*************************************************************/
INLINE void VDPpset(uint8_t SM, int DX, int DY, uint8_t CL, uint8_t OP)
{
  switch (SM) {
    case 0: VDPpset5(DX, DY, CL, OP); break;
    case 1: VDPpset6(DX, DY, CL, OP); break;
    case 2: VDPpset7(DX, DY, CL, OP); break;
    case 3: VDPpset8(DX, DY, CL, OP); break;
  }
}

/** GetVdpTimingValue() **************************************/
/** Get timing value for a certain VDP command              **/
/*************************************************************/
static int GetVdpTimingValue(int *timing_values)
{
  /*
   * blueMSX derives timingMode from "screen on while drawArea is active",
   * not from R#1 bit6 alone. The local issue #238 work also showed that S#2
   * bit6 is not a perfect proxy for drawArea: blueMSX clears bit6 slightly
   * before the visible region starts, while command timing should stay on the
   * off-screen bucket until the actual draw area is entered.
   *
   * Keep the local timing gate tied to the visible scanline range only.
   * That preserves the intended fast bucket in bottom border/VBlank and in
   * the pseudo top-border window that the BIOS sees through S#2 bit6.
   */
  const int draw_area = (ScanLine >= 0) && (ScanLine < (ScanLines212 ? 212 : 192)) ? 1 : 0;
  const int timing_mode_4 = (((VDP[1]>>6)&1) & draw_area)|(VDP[8]&2);
  int value = timing_values[timing_mode_4|((VDP[9]<<1)&4)];

  if(VdpBootLogoTimingBoost)
  {
    const int *blue_values = fmsx_bootlogo_bluemsx_timing_table(timing_values);
    if(blue_values)
      value = blue_values[timing_mode_4];
    else
    {
      value = (value + 7) / 8;
      if(value < 1) value = 1;
    }
  }

  return value;
}

/** SrchEgine()** ********************************************/
/** Search a dot                                            **/
/*************************************************************/
void SrchEngine(void)
{
  int SX=MMC.SX;
  int SY=MMC.SY;
  int TX=MMC.TX;
  int ANX=MMC.ANX;
  uint8_t CL=MMC.CL;
  int delta = GetVdpTimingValue(srch_timing);
  int cnt = VdpOpsCnt;

#define pre_srch \
    pre_loop \
      if ((
#define post_srch(MX) \
           ==CL) ^ANX) { \
      VDPStatus[2]|=0x10; /* Border detected */ \
      break; \
    } \
    if ((SX+=TX) & MX) { \
      VDPStatus[2]&=0xEF; /* Border not detected */ \
      break; \
    } \
  } 

  switch (ScrMode) {
    case 5: pre_srch VDPpoint5(SX, SY) post_srch(256)
            break;
    case 6: pre_srch VDPpoint6(SX, SY) post_srch(512)
            break;
    case 7: pre_srch VDPpoint7(SX, SY) post_srch(512)
            break;
    case 8: pre_srch VDPpoint8(SX, SY) post_srch(256)
            break;
  }

  if ((VdpOpsCnt=cnt)>0) {
    /* Command execution done */
    VDPStatus[2]&=0xFE;
    VdpEngine=0;
    /* Update SX in VDP registers */
    VDPStatus[8]=SX&0xFF;
    VDPStatus[9]=(SX>>8)|0xFE;
  }
  else {
    MMC.SX=SX;
  }
}

/** LineEgine()** ********************************************/
/** Draw a line                                             **/
/*************************************************************/
void LineEngine(void)
{
  int DX=MMC.DX;
  int DY=MMC.DY;
  int TX=MMC.TX;
  int TY=MMC.TY;
  int NX=MMC.NX;
  int NY=MMC.NY;
  int ASX=MMC.ASX;
  int ADX=MMC.ADX;
  uint8_t CL=MMC.CL;
  uint8_t LO=MMC.LO;
  int delta = GetVdpTimingValue(line_timing);
  int cnt = VdpOpsCnt;

#define post_linexmaj(MX) \
      DX+=TX; \
      if ((ASX-=NY)<0) { \
        ASX+=NX; \
        DY+=TY; \
      } \
      ASX&=1023; /* Mask to 10 bits range */ \
      if (ADX++==NX || (DX&MX)) \
        break; \
    }
#define post_lineymaj(MX) \
      DY+=TY; \
      if ((ASX-=NY)<0) { \
        ASX+=NX; \
        DX+=TX; \
      } \
      ASX&=1023; /* Mask to 10 bits range */ \
      if (ADX++==NX || (DX&MX)) \
        break; \
    }

  if ((VDP[45]&0x01)==0)
    /* X-Axis is major direction */
    switch (ScrMode) {
      case 5: pre_loop VDPpset5(DX, DY, CL, LO); post_linexmaj(256)
              break;
      case 6: pre_loop VDPpset6(DX, DY, CL, LO); post_linexmaj(512)
              break;
      case 7: pre_loop VDPpset7(DX, DY, CL, LO); post_linexmaj(512)
              break;
      case 8: pre_loop VDPpset8(DX, DY, CL, LO); post_linexmaj(256)
              break;
    }
  else
    /* Y-Axis is major direction */
    switch (ScrMode) {
      case 5: pre_loop VDPpset5(DX, DY, CL, LO); post_lineymaj(256)
              break;
      case 6: pre_loop VDPpset6(DX, DY, CL, LO); post_lineymaj(512)
              break;
      case 7: pre_loop VDPpset7(DX, DY, CL, LO); post_lineymaj(512)
              break;
      case 8: pre_loop VDPpset8(DX, DY, CL, LO); post_lineymaj(256)
              break;
    }

  if ((VdpOpsCnt=cnt)>0) {
    /* Command execution done */
    VDPStatus[2]&=0xFE;
    VdpEngine=0;
    VDP[38]=DY & 0xFF;
    VDP[39]=(DY>>8) & 0x03;
  }
  else {
    MMC.DX=DX;
    MMC.DY=DY;
    MMC.ASX=ASX;
    MMC.ADX=ADX;
  }
}

/** LmmvEngine() *********************************************/
/** VDP -> Vram                                             **/
/*************************************************************/
void LmmvEngine(void)
{
  int DX=MMC.DX;
  int DY=MMC.DY;
  int TX=MMC.TX;
  int TY=MMC.TY;
  int NX=MMC.NX;
  int NY=MMC.NY;
  int ADX=MMC.ADX;
  int ANX=MMC.ANX;
  uint8_t CL=MMC.CL;
  uint8_t LO=MMC.LO;
  int delta = GetVdpTimingValue(lmmv_timing);
  int cnt = VdpOpsCnt;

  switch (ScrMode) {
    case 5: pre_loop VDPpset5(ADX, DY, CL, LO); post__x_y(256)
            break;
    case 6: pre_loop VDPpset6(ADX, DY, CL, LO); post__x_y(512)
            break;
    case 7: pre_loop VDPpset7(ADX, DY, CL, LO); post__x_y(512)
            break;
    case 8: pre_loop VDPpset8(ADX, DY, CL, LO); post__x_y(256)
            break;
  }

  if ((VdpOpsCnt=cnt)>0) {
    /* Command execution done */
    VDPStatus[2]&=0xFE;
    VdpEngine=0;
    if (!NY)
      DY+=TY;
    VDP[38]=DY & 0xFF;
    VDP[39]=(DY>>8) & 0x03;
    VDP[42]=NY & 0xFF;
    VDP[43]=(NY>>8) & 0x03;
  }
  else {
    MMC.DY=DY;
    MMC.NY=NY;
    MMC.ANX=ANX;
    MMC.ADX=ADX;
  }
}

/** LmmmEngine() *********************************************/
/** Vram -> Vram                                            **/
/*************************************************************/
void LmmmEngine(void)
{
  int SX=MMC.SX;
  int SY=MMC.SY;
  int DX=MMC.DX;
  int DY=MMC.DY;
  int TX=MMC.TX;
  int TY=MMC.TY;
  int NX=MMC.NX;
  int NY=MMC.NY;
  int ASX=MMC.ASX;
  int ADX=MMC.ADX;
  int ANX=MMC.ANX;
  uint8_t LO=MMC.LO;
  int delta = GetVdpTimingValue(lmmm_timing);
  int cnt = VdpOpsCnt;

  switch (ScrMode) {
    case 5: pre_loop VDPpset5(ADX, DY, VDPpoint5(ASX, SY), LO); post_xxyy(256)
            break;
    case 6: pre_loop VDPpset6(ADX, DY, VDPpoint6(ASX, SY), LO); post_xxyy(512)
            break;
    case 7: pre_loop VDPpset7(ADX, DY, VDPpoint7(ASX, SY), LO); post_xxyy(512)
            break;
    case 8: pre_loop VDPpset8(ADX, DY, VDPpoint8(ASX, SY), LO); post_xxyy(256)
            break;
  }

  if ((VdpOpsCnt=cnt)>0) {
    /* Command execution done */
    VDPStatus[2]&=0xFE;
    VdpEngine=0;
    if (!NY) {
      SY+=TY;
      DY+=TY;
    }
    else
      if (SY==-1)
        DY+=TY;
    VDP[42]=NY & 0xFF;
    VDP[43]=(NY>>8) & 0x03;
    VDP[34]=SY & 0xFF;
    VDP[35]=(SY>>8) & 0x03;
    VDP[38]=DY & 0xFF;
    VDP[39]=(DY>>8) & 0x03;
  }
  else {
    MMC.SY=SY;
    MMC.DY=DY;
    MMC.NY=NY;
    MMC.ANX=ANX;
    MMC.ASX=ASX;
    MMC.ADX=ADX;
  }
}

/** LmcmEngine() *********************************************/
/** Vram -> CPU                                             **/
/*************************************************************/
void LmcmEngine(void)
{
  if ((VDPStatus[2]&0x80)!=0x80)
  {
    VDPStatus[7]=VDP[44]=VDP_POINT(ScrMode-5, MMC.ASX, MMC.SY);
    VdpOpsCnt-=GetVdpTimingValue(lmmv_timing);
    VDPStatus[2]|=0x80;

    if (!--MMC.ANX || ((MMC.ASX+=MMC.TX)&MMC.MX)) {
      if (!(--MMC.NY & 1023) || (MMC.SY+=MMC.TY)==-1) {
        VDPStatus[2]&=0xFE;
        VdpEngine=0;
        if (!MMC.NY)
          MMC.DY+=MMC.TY;
        VDP[42]=MMC.NY & 0xFF;
        VDP[43]=(MMC.NY>>8) & 0x03;
        VDP[34]=MMC.SY & 0xFF;
        VDP[35]=(MMC.SY>>8) & 0x03;
      }
      else {
        MMC.ASX=MMC.SX;
        MMC.ANX=MMC.NX;
      }
    }
  }
}

/** LmmcEngine() *********************************************/
/** CPU -> Vram                                             **/
/*************************************************************/
void LmmcEngine(void)
{
  if ((VDPStatus[2]&0x80)!=0x80) {
    uint8_t SM=ScrMode-5;

    VDPStatus[7]=VDP[44]&=Mask[SM];
    VDP_PSET(SM, MMC.ADX, MMC.DY, VDP[44], MMC.LO);
    VdpOpsCnt-=GetVdpTimingValue(lmmv_timing);
    VDPStatus[2]|=0x80;

    if (!--MMC.ANX || ((MMC.ADX+=MMC.TX)&MMC.MX)) {
      if (!(--MMC.NY&1023) || (MMC.DY+=MMC.TY)==-1) {
        VDPStatus[2]&=0xFE;
        VdpEngine=0;
        if (!MMC.NY)
          MMC.DY+=MMC.TY;
        VDP[42]=MMC.NY & 0xFF;
        VDP[43]=(MMC.NY>>8) & 0x03;
        VDP[38]=MMC.DY & 0xFF;
        VDP[39]=(MMC.DY>>8) & 0x03;
      }
      else {
        MMC.ADX=MMC.DX;
        MMC.ANX=MMC.NX;
      }
    }
  }
}

/** HmmvEngine() *********************************************/
/** VDP --> Vram                                            **/
/*************************************************************/
void HmmvEngine(void)
{
  int DX=MMC.DX;
  int DY=MMC.DY;
  int TX=MMC.TX;
  int TY=MMC.TY;
  int NX=MMC.NX;
  int NY=MMC.NY;
  int ADX=MMC.ADX;
  int ANX=MMC.ANX;
  uint8_t CL=MMC.CL;
  int delta = GetVdpTimingValue(hmmv_timing);
  int cnt = VdpOpsCnt;

  switch (ScrMode) {
    case 5: pre_loop *VDP_VRMP5(ADX, DY) = CL; post__x_y(256)
            break;
    case 6: pre_loop *VDP_VRMP6(ADX, DY) = CL; post__x_y(512)
            break;
    case 7: pre_loop *VDP_VRMP7(ADX, DY) = CL; post__x_y(512)
            break;
    case 8: pre_loop *VDP_VRMP8(ADX, DY) = CL; post__x_y(256)
            break;
  }

  if ((VdpOpsCnt=cnt)>0) {
    /* Command execution done */
    VDPStatus[2]&=0xFE;
    VdpEngine=0;
    if (!NY)
      DY+=TY;
    VDP[42]=NY & 0xFF;
    VDP[43]=(NY>>8) & 0x03;
    VDP[38]=DY & 0xFF;
    VDP[39]=(DY>>8) & 0x03;
  }
  else {
    MMC.DY=DY;
    MMC.NY=NY;
    MMC.ANX=ANX;
    MMC.ADX=ADX;
  }
}

/** HmmmEngine() *********************************************/
/** Vram -> Vram                                            **/
/*************************************************************/
void HmmmEngine(void)
{
  int SX=MMC.SX;
  int SY=MMC.SY;
  int DX=MMC.DX;
  int DY=MMC.DY;
  int TX=MMC.TX;
  int TY=MMC.TY;
  int NX=MMC.NX;
  int NY=MMC.NY;
  int ASX=MMC.ASX;
  int ADX=MMC.ADX;
  int ANX=MMC.ANX;
  int delta = GetVdpTimingValue(hmmm_timing);
  int cnt = VdpOpsCnt;

  switch (ScrMode) {
    case 5: pre_loop *VDP_VRMP5(ADX, DY) = *VDP_VRMP5(ASX, SY); post_xxyy(256)
            break;
    case 6: pre_loop *VDP_VRMP6(ADX, DY) = *VDP_VRMP6(ASX, SY); post_xxyy(512)
            break;
    case 7: pre_loop *VDP_VRMP7(ADX, DY) = *VDP_VRMP7(ASX, SY); post_xxyy(512)
            break;
    case 8: pre_loop *VDP_VRMP8(ADX, DY) = *VDP_VRMP8(ASX, SY); post_xxyy(256)
            break;
  }

  if ((VdpOpsCnt=cnt)>0) {
    /* Command execution done */
    VDPStatus[2]&=0xFE;
    VdpEngine=0;
    if (!NY) {
      SY+=TY;
      DY+=TY;
    }
    else
      if (SY==-1)
        DY+=TY;
    VDP[42]=NY & 0xFF;
    VDP[43]=(NY>>8) & 0x03;
    VDP[34]=SY & 0xFF;
    VDP[35]=(SY>>8) & 0x03;
    VDP[38]=DY & 0xFF;
    VDP[39]=(DY>>8) & 0x03;
  }
  else {
    MMC.SY=SY;
    MMC.DY=DY;
    MMC.NY=NY;
    MMC.ANX=ANX;
    MMC.ASX=ASX;
    MMC.ADX=ADX;
  }
}

/** YmmmEngine() *********************************************/
/** Vram -> Vram                                            **/
/*************************************************************/
void YmmmEngine(void)
{
  int SY=MMC.SY;
  int DX=MMC.DX;
  int DY=MMC.DY;
  int TX=MMC.TX;
  int TY=MMC.TY;
  int NY=MMC.NY;
  int ADX=MMC.ADX;
  int delta = GetVdpTimingValue(ymmm_timing);
  int cnt = VdpOpsCnt;

  switch (ScrMode) {
    case 5: pre_loop *VDP_VRMP5(ADX, DY) = *VDP_VRMP5(ADX, SY); post__xyy(256)
            break;
    case 6: pre_loop *VDP_VRMP6(ADX, DY) = *VDP_VRMP6(ADX, SY); post__xyy(512)
            break;
    case 7: pre_loop *VDP_VRMP7(ADX, DY) = *VDP_VRMP7(ADX, SY); post__xyy(512)
            break;
    case 8: pre_loop *VDP_VRMP8(ADX, DY) = *VDP_VRMP8(ADX, SY); post__xyy(256)
            break;
  }

  if ((VdpOpsCnt=cnt)>0) {
    /* Command execution done */
    VDPStatus[2]&=0xFE;
    VdpEngine=0;
    if (!NY) {
      SY+=TY;
      DY+=TY;
    }
    else
      if (SY==-1)
        DY+=TY;
    VDP[42]=NY & 0xFF;
    VDP[43]=(NY>>8) & 0x03;
    VDP[34]=SY & 0xFF;
    VDP[35]=(SY>>8) & 0x03;
    VDP[38]=DY & 0xFF;
    VDP[39]=(DY>>8) & 0x03;
  }
  else {
    MMC.SY=SY;
    MMC.DY=DY;
    MMC.NY=NY;
    MMC.ADX=ADX;
  }
}

/** HmmcEngine() *********************************************/
/** CPU -> Vram                                             **/
/*************************************************************/
void HmmcEngine(void)
{
  if ((VDPStatus[2]&0x80)!=0x80) {

    *VDP_VRMP(ScrMode-5, MMC.ADX, MMC.DY)=VDP[44];
    VdpOpsCnt-=GetVdpTimingValue(hmmv_timing);
    VDPStatus[2]|=0x80;

    if (!--MMC.ANX || ((MMC.ADX+=MMC.TX)&MMC.MX)) {
      if (!(--MMC.NY&1023) || (MMC.DY+=MMC.TY)==-1) {
        VDPStatus[2]&=0xFE;
        VdpEngine=0;
        if (!MMC.NY)
          MMC.DY+=MMC.TY;
        VDP[42]=MMC.NY & 0xFF;
        VDP[43]=(MMC.NY>>8) & 0x03;
        VDP[38]=MMC.DY & 0xFF;
        VDP[39]=(MMC.DY>>8) & 0x03;
      }
      else {
        MMC.ADX=MMC.DX;
        MMC.ANX=MMC.NX;
      }
    }
  }
}

/** VDPWrite() ***********************************************/
/** Use this function to transfer pixel(s) from CPU to VDP. **/
/*************************************************************/
void VDPWrite(uint8_t V)
{
  VDPStatus[2]&=0x7F;
  VDPStatus[7]=VDP[44]=V;
  VdpSyncCommandTime();
}

/** VDPRead() ************************************************/
/** Use this function to transfer pixel(s) from VDP to CPU. **/
/*************************************************************/
uint8_t VDPRead(void)
{
  VDPStatus[2]&=0x7F;
  VdpSyncCommandTime();
  return(VDP[44]);
}

/** fmsx_vdp_sync_before_status_read() ***********************/
/** Minimal status-read sync for V9938/V9958 command state. **/
/*************************************************************/
void fmsx_vdp_sync_before_status_read(void)
{
  /*
   * blueMSX runs readStatus() through sync(vdp, now) before exposing S#n.
   * Our local architecture does not have a direct equivalent to that full
   * time-based sync hook, but the closest safe analogue is the same command
   * slice flush already used by VDPRead()/VDPWrite(). This keeps CE/S7/S8/S9
   * from lagging one CPU-side status read behind when the command engine has
   * pending work in the current slice.
   */
  VdpSyncCommandTime();
}

/** fmsx_vdp_sync_before_cpu_mutation() **********************/
/** Minimal write-side sync for V9938/V9958 command state. **/
/*************************************************************/
void fmsx_vdp_sync_before_cpu_mutation(void)
{
  /*
   * blueMSX syncs the VDP before CPU-driven VRAM/register writes as well.
   * Mirror that behavior with the same coarse command-slice flush used by
   * status reads so CE/TR can advance before the write is applied.
   */
  VdpSyncCommandTime();
}

/** VDPDraw() ************************************************/
/** Perform a given V9938 operation Op.                     **/
/*************************************************************/
uint8_t VDPDraw(uint8_t Op)
{
  int SM;

  SM = VdpCommandScreenMode();
  if(SM<0) return(0);

  MMC.CM = Op>>4;
  if ((MMC.CM & 0x0C) != 0x0C && MMC.CM != 0)
    /* Dot operation: use only relevant bits of color */
    VDPStatus[7]=(VDP[44]&=Mask[SM]);

  switch(Op>>4) {
    case CM_ABRT:
      VdpBootLogoTimingBoost=0u;
      VDPStatus[2]&=0xFE;
      VdpEngine=0;  
      VdpTraceSyncCE();
      return 1;
    case CM_POINT:
      VdpBootLogoTimingBoost=0u;
      VDPStatus[2]&=0xFE;
      VdpEngine=0;  
      VDPStatus[7]=VDP[44]=
                   VDP_POINT(SM, VDP[32]+((int)VDP[33]<<8),
                                 VDP[34]+((int)VDP[35]<<8));
      VdpTraceSyncCE();
      return 1;
    case CM_PSET:
      VdpBootLogoTimingBoost=0u;
      VDPStatus[2]&=0xFE;
      VdpEngine=0;  
      VDP_PSET(SM, 
               VDP[36]+((int)VDP[37]<<8),
               VDP[38]+((int)VDP[39]<<8),
               VDP[44],
               Op&0x0F);
      VdpTraceSyncCE();
      return 1;
    case CM_SRCH:
      VdpEngine=SrchEngine;
      break;
    case CM_LINE:
      VdpEngine=LineEngine;
      break;
    case CM_LMMV:
      VdpEngine=LmmvEngine;
      break;
    case CM_LMMM:
      VdpEngine=LmmmEngine;
      break;
    case CM_LMCM:
      VdpEngine=LmcmEngine;
      break;
    case CM_LMMC:
      VdpEngine=LmmcEngine;
      break;
    case CM_HMMV:
      VdpEngine=HmmvEngine;
      break;
    case CM_HMMM:
      VdpEngine=HmmmEngine;
      break;
    case CM_YMMM:
      VdpEngine=YmmmEngine;
      break;
    case CM_HMMC:
      VdpEngine=HmmcEngine;  
      break;
    default:
        VdpBootLogoTimingBoost=0u;
        return(0);
  }

  /* Fetch unconditional arguments */
  MMC.SX = (VDP[32]+((int)VDP[33]<<8)) & 511;
  MMC.SY = (VDP[34]+((int)VDP[35]<<8)) & 1023;
  MMC.DX = (VDP[36]+((int)VDP[37]<<8)) & 511;
  MMC.DY = (VDP[38]+((int)VDP[39]<<8)) & 1023;
  MMC.NY = (VDP[42]+((int)VDP[43]<<8)) & 1023;
  MMC.TY = VDP[45]&0x08? -1:1;
  MMC.MX = PPL[SM]; 
  MMC.CL = VDP[44];
  MMC.LO = Op&0x0F;

  /* Argument depends on uint8_t or dot operation */
  if ((MMC.CM & 0x0C) == 0x0C) {
    MMC.TX = VDP[45]&0x04? -PPB[SM]:PPB[SM];
    MMC.NX = ((VDP[40]+((int)VDP[41]<<8)) & 1023)/PPB[SM];
  }
  else {
    MMC.TX = VDP[45]&0x04? -1:1;
    MMC.NX = (VDP[40]+((int)VDP[41]<<8)) & 1023;
  }

  /* X loop variables are treated specially for LINE command */
  if (MMC.CM == CM_LINE) {
    MMC.ASX=((MMC.NX-1)>>1);
    MMC.ADX=0;
  }
  else {
    MMC.ASX = MMC.SX;
    MMC.ADX = MMC.DX;
  }    

  /* NX loop variable is treated specially for SRCH command */
  if (MMC.CM == CM_SRCH)
    MMC.ANX=(VDP[45]&0x02)!=0; /* Do we look for "==" or "!="? */
  else
    MMC.ANX = MMC.NX;

  /* Command execution started */
  VdpBootLogoTimingBoost = fmsx_msx2p_bootlogo_bios_timing_window() ? 1u : 0u;
  VDPStatus[2]|=0x01;
  VdpPrimeCommandClock(fmsx_vdp_cpu_cycles_now());

  /*
   * blueMSX only arms CE/state here and lets execution advance on the next
   * sync point. Do not consume a command slice immediately on R#46 start,
   * or short commands collapse into the same CPU-side status probe.
   */
  VdpTraceSyncCE();

  /* Operation successfull initiated */
  return(1);
}

/** LoopVDP() ************************************************/
/** Run X steps of active VDP command                       **/
/*************************************************************/
void LoopVDP(void)
{
  VdpSyncCommandTime();
}
