/** EMULib Emulation Library *********************************/
/**                                                         **/
/**                         YM2413.c                        **/
/**                                                         **/
/** This file contains emulation for the OPLL sound chip    **/
/** produced by Yamaha (also see OPL2, OPL3, OPL4 chips).   **/
/** See YM2413.h for declarations.                          **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1996-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/*************************************************************/

#include "YM2413.h"
#include "Sound.h"
#include "fmsx_local_ym2413_bluemsx.h"
#include <string.h>

static const int kFmPacAttenuationPct = 100;
static const int kFmPacBalancePct = 100;

static unsigned g_fm_layer_gain_pct = 100u;

static int ComputeFmVolume(uint8_t reg3x)
{
  int vol = 255 * ((~reg3x) & 0x0F) / 15;
  vol = (vol * kFmPacAttenuationPct) / 100;
  vol = (vol * kFmPacBalancePct) / 100;
  vol = (vol * (int) g_fm_layer_gain_pct) / 100;
  if(vol < 0) vol = 0;
  if(vol > 255) vol = 255;
  return vol;
}

static int ComputeFmFrequency(const YM2413 *D,uint8_t channel)
{
  uint8_t Oct;
  int Frq;

  if(!D || channel>=YM2413_CHANNELS) return 0;
  if(YM2413_DRUMS(D) && channel>=6u) return 0;

  Oct = D->R[0x20u + channel];
  if(!(Oct & 0x10u)) return 0;

  Frq = ((int)(Oct & 0x01u) << 8) + D->R[0x10u + channel];
  Oct = (Oct & 0x0Eu) >> 1;
  return (3125 * Frq * (1 << Oct)) >> 15;
}

static void RefreshFmMetadata(YM2413 *D)
{
  uint8_t C;

  if(!D) return;

  for(C=0; C<YM2413_CHANNELS; ++C)
  {
    D->Freq[C] = ComputeFmFrequency(D,C);
    D->Volume[C] = ComputeFmVolume(D->R[0x30u + C]);
  }
}

void fmsx_local_ym2413_set_layer_gain_pct(unsigned pct)
{
  if(pct > 100u) pct = 100u;
  g_fm_layer_gain_pct = pct;
  fmsx_bluemsx_ym2413_set_layer_gain_pct(pct);
}

unsigned fmsx_local_ym2413_get_layer_gain_pct(void)
{
  g_fm_layer_gain_pct = fmsx_bluemsx_ym2413_get_layer_gain_pct();
  return g_fm_layer_gain_pct;
}

void fmsx_local_ym2413_set_sample_rate(unsigned rate)
{
  fmsx_bluemsx_ym2413_set_sample_rate(rate);
}

void fmsx_local_ym2413_refresh(YM2413 *D)
{
  if(!D) return;
  RefreshFmMetadata(D);
  fmsx_bluemsx_ym2413_set_layer_gain_pct(g_fm_layer_gain_pct);
  fmsx_bluemsx_ym2413_rebuild_from_regs(D->R);
  D->Changed = 0;
}

/** Reset2413() **********************************************/
/** Reset the sound chip and use sound channels from the    **/
/** one given in First.                                     **/
/*************************************************************/
void Reset2413(YM2413 *D,int First)
{
  int J;

  /* All registers filled with 0x00 by default */
  memset(D->R,0x00,sizeof(D->R));

  /* Set initial frequencies, volumes, and instruments */
  for(J=0;J<YM2413_CHANNELS;J++)
  {
    SetSound(J+First,SND_MELODIC);
    D->Freq[J]   = 0;
    D->Volume[J] = 0;
    D->R[J+0x30] = 0x0F;
  }

  D->First    = First;
  D->Sync     = YM2413_ASYNC;
  D->Changed  = (1<<YM2413_CHANNELS)-1;
  D->Latch    = 0;

  fmsx_bluemsx_ym2413_set_layer_gain_pct(g_fm_layer_gain_pct);
  fmsx_bluemsx_ym2413_reset();
  fmsx_bluemsx_ym2413_rebuild_from_regs(D->R);
  RefreshFmMetadata(D);
}

/** WrCtrl2413() *********************************************/
/** Write a value V to the OPLL Control Port.               **/
/*************************************************************/
void WrCtrl2413(YM2413 *D,uint8_t V)
{
  D->Latch=V&0x3F;
}

/** WrData2413() *********************************************/
/** Write a value V to the OPLL Data Port.                  **/
/*************************************************************/
void WrData2413(YM2413 *D,uint8_t V)
{
  Write2413(D,D->Latch,V);
}

/** Write2413() **********************************************/
/** Call this function to output a value V into the sound   **/
/** chip.                                                   **/
/*************************************************************/
void Write2413(YM2413 *D,uint8_t R,uint8_t V)
{
  uint8_t C,Oct;
  int Frq;

  /* OPLL registers are 0..63 */
  R&=0x3F;

  /* Lowest 4 bits are channel number */
  C=R&0x0F;

  switch(R>>4)
  {
    case 0:
      switch(C)
      {
        case 0x0E:
          if(V==D->R[R]) return;
          if(!(V&0x20)) V&=0xE0;
          if((V^D->R[R])&V&0x20)
          {
            D->Freq[6]=D->Freq[7]=D->Freq[8]=0;
            D->Changed|=0x1C0;
          }
          break;
      }
      break;

    case 1:
      if((C>8)||(V==D->R[R])) return;
      if(!YM2413_DRUMS(D)||(C<6))
        if(D->R[R+0x10]&0x10)
        {
          Oct=D->R[R+0x10];
          Frq=((int)(Oct&0x01)<<8)+V;
          Oct=(Oct&0x0E)>>1;
          D->Freq[C]=(3125*Frq*(1<<Oct))>>15;
          D->Changed|=1<<C;
        }
      break;

    case 2:
      if(C>8) return;
      if(!YM2413_DRUMS(D)||(C<6))
      {
        if(!(V&0x10)) D->Freq[C]=0;
        else
        {
          Frq=((int)(V&0x01)<<8)+D->R[R-0x10];
          Oct=(V&0x0E)>>1;
          D->Freq[C]=(3125*Frq*(1<<Oct))>>15;
        }
        D->Changed|=1<<C;
      }
      break;

    case 3:
      if((C>8)||(V==D->R[R])) return;
      if((V^D->R[R])&0x0F)
      {
        D->Volume[C] = ComputeFmVolume(V);
        D->Changed|=1<<C;
      }
      break;
  }

  D->R[R]=V;
  fmsx_bluemsx_ym2413_write_reg(R,V);

  if(!D->Sync&&(D->Changed))
    Sync2413(D,YM2413_FLUSH);
}

/** Sync2413() ***********************************************/
/** Flush all accumulated changes by issuing Sound() calls  **/
/** and set the synchronization on/off. The second argument **/
/** should be YM2413_SYNC/YM2413_ASYNC to set/reset sync,   **/
/** or YM2413_FLUSH to leave sync mode as it is.            **/
/*************************************************************/
void Sync2413(YM2413 *D,uint8_t Sync)
{
  if(Sync!=YM2413_FLUSH) D->Sync=Sync;
  D->Changed=0x000;
}
