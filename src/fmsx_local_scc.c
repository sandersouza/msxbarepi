/** EMULib Emulation Library *********************************/
/**                                                         **/
/**                           SCC.c                         **/
/**                                                         **/
/** This file contains emulation for the SCC sound chip     **/
/** produced by Konami.                                     **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1996-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/*************************************************************/

#include "SCC.h"
#include "Sound.h"
#include "fmsx_runtime.h"
#include "fmsx_local_scc_render.h"
#include <string.h>

#ifndef MSXBARE_FMSX_SCC_BALANCE_PCT
/*
 * SCC was noticeably hotter than both PSG and FM-PAC in the current fMSX mix.
 * Use PSG/FM-PAC as the audible reference and keep SCC closer to that range.
 */
#define MSXBARE_FMSX_SCC_BALANCE_PCT 60
#endif

static const int kSccBalancePct = MSXBARE_FMSX_SCC_BALANCE_PCT;
enum
{
  FMSX_SCC_MODE_REAL       = 0u,
  FMSX_SCC_MODE_COMPATIBLE = 1u,
  FMSX_SCC_MODE_PLUS       = 2u
};

extern SCC SCChip[FMSX_SCC_CHIP_COUNT];

static TFmsxLocalSccRenderState g_FmsxSccRender[FMSX_SCC_CHIP_COUNT];

static int ApplySccBalancePct(int volume);
static uint8_t fmsx_scc_get_raw_deform(const SCC *D);
static int fmsx_scc_get_raw_period(const SCC *D,unsigned int channel);

static int fmsx_scc_render_chip_index(const SCC *D)
{
  const int chip = (D->First - FIRST_SCC_CHANNEL) / SCC_CHANNELS;
  return ((chip >= 0) && (chip < FMSX_SCC_CHIP_COUNT))
       ? chip
       : -1;
}

static TFmsxLocalSccRenderState *fmsx_scc_render_state_for_scc(const SCC *D)
{
  const int chip = fmsx_scc_render_chip_index(D);
  return (chip >= 0) ? &g_FmsxSccRender[chip] : 0;
}

static int fmsx_scc_adjust_wave_sample(signed char wav,uint8_t volume_nibble)
{
  const int volume = ApplySccBalancePct(255 * (volume_nibble & 0x0Fu) / 15);
  return (int)wav * volume;
}

static int fmsx_scc_adjust_ref_volume(int ref_volume)
{
  int out = (ref_volume * kSccBalancePct) / 100;
  if(out < 0) out = 0;
  return out;
}

static void fmsx_scc_render_sync_flags(TFmsxLocalSccRenderState *S,uint8_t deform,uint8_t mode)
{
  unsigned int channel;
  uint8_t value = deform;

  if(mode != FMSX_SCC_MODE_REAL) value &= ~0x80u;

  S->Mode   = mode;
  S->Deform = value;

  switch(value & 0xC0u)
  {
    case 0x00u:
      for(channel=0; channel<SCC_CHANNELS; ++channel)
      {
        S->Rotate[channel]   = 0u;
        S->ReadOnly[channel] = 0u;
      }
      break;

    case 0x40u:
      for(channel=0; channel<SCC_CHANNELS; ++channel)
      {
        S->Rotate[channel]   = 1u;
        S->ReadOnly[channel] = 1u;
      }
      break;

    case 0x80u:
      for(channel=0; channel<3u; ++channel)
      {
        S->Rotate[channel]   = 0u;
        S->ReadOnly[channel] = 0u;
      }
      for(channel=3u; channel<SCC_CHANNELS; ++channel)
      {
        S->Rotate[channel]   = 1u;
        S->ReadOnly[channel] = 1u;
      }
      break;

    default:
      for(channel=0; channel<3u; ++channel)
      {
        S->Rotate[channel]   = 1u;
        S->ReadOnly[channel] = 1u;
      }
      for(channel=3u; channel<SCC_CHANNELS; ++channel)
      {
        S->Rotate[channel]   = 0u;
        S->ReadOnly[channel] = 1u;
      }
      break;
  }
}

static void fmsx_scc_render_sync_wave_channel(
  TFmsxLocalSccRenderState *S,
  const SCC *D,
  unsigned int channel,
  uint8_t mode
)
{
  unsigned int i;
  const unsigned int source_channel =
    ((mode != FMSX_SCC_MODE_PLUS) && (channel == 4u)) ? 3u : channel;
  const unsigned int offset = source_channel << 5;

  for(i=0; i<32u; ++i)
  {
    S->Wave[channel][i] = (signed char)D->R[offset + i];
  }
}

static void fmsx_scc_render_sync_period_channel(
  TFmsxLocalSccRenderState *S,
  const SCC *D,
  unsigned int channel,
  uint8_t mode,
  int reset_waveform
)
{
  const uint16_t org = (uint16_t)fmsx_scc_get_raw_period(D,channel);
  const unsigned int previous_sample =
    reset_waveform
      ? 0u
      : ((S->Pos[channel] != 0xFFu)
          ? (unsigned int)(S->Pos[channel] & 0x1Fu)
          : (unsigned int)((S->Count[channel] >> 23) & 0x1Fu));
  unsigned int effective = org;

  if(S->Deform & 0x02u) effective &= 0x00FFu;
  else if(S->Deform & 0x01u) effective >>= 8;

  S->OrgPeriod[channel] = org;
  S->Period[channel]    = (uint16_t)effective;
  if(reset_waveform || (S->Deform & 0x20u))
    S->Count[channel] = 0u;
  else
    S->Count[channel] &= (0x1Fu << 23);

  S->VolumeNibble[channel] = S->NextVolumeNibble[channel] & 0x0Fu;
  S->Pos[channel] = 0xFFu;
  S->CurWave[channel] = S->Wave[channel][previous_sample & 0x1Fu];
  S->Out[channel] = fmsx_scc_adjust_wave_sample(
    (signed char)S->CurWave[channel],
    S->VolumeNibble[channel]
  );
  (void)mode;
}

static void fmsx_scc_render_rebuild_one(SCC *D,uint8_t mode)
{
  TFmsxLocalSccRenderState *S = fmsx_scc_render_state_for_scc(D);
  unsigned int channel;

  if(!S) return;

  memset(S,0,sizeof(*S));
  fmsx_scc_render_sync_flags(S,fmsx_scc_get_raw_deform(D),mode);
  S->Enable = D->R[0xAF] & 0x1Fu;

  for(channel=0; channel<SCC_CHANNELS; ++channel)
  {
    S->VolumeNibble[channel] = D->R[0xAAu + channel] & 0x0Fu;
    S->NextVolumeNibble[channel] = S->VolumeNibble[channel];
    S->CurWave[channel] = 0;
    S->DaVolume[channel] = 0;
    S->DeformSample[channel] = 0;
    S->Pos[channel] = 0xFFu;
    fmsx_scc_render_sync_wave_channel(S,D,channel,mode);
    fmsx_scc_render_sync_period_channel(S,D,channel,mode,1);
  }
}

static int ApplySccBalancePct(int volume)
{
  int out = (volume * kSccBalancePct) / 100;
  if(out < 0) out = 0;
  if(out > 255) out = 255;
  return out;
}

static uint8_t fmsx_scc_get_raw_deform(const SCC *D)
{
  return D->R[0xC0];
}

static uint8_t fmsx_scc_get_effective_deform(const SCC *D,uint8_t mode)
{
  uint8_t value = fmsx_scc_get_raw_deform(D);
  if(mode!=FMSX_SCC_MODE_REAL) value &= ~0x80u;
  return value;
}

static void fmsx_scc_set_raw_deform(SCC *D,uint8_t value)
{
  int i;
  for(i=0;i<0x20;++i) D->R[0xC0+i]=value;
}

static int fmsx_scc_channel_enabled(const SCC *D,unsigned int channel)
{
  return channel<SCC_CHANNELS? ((D->R[0xAF]&(1u<<channel))!=0):0;
}

static int fmsx_scc_channel_read_only(const SCC *D,uint8_t mode,unsigned int channel)
{
  switch(fmsx_scc_get_effective_deform(D,mode)&0xC0u)
  {
    case 0x00u: return 0;
    case 0x40u: return 1;
    case 0x80u: return channel>=3u;
    case 0xC0u: return 1;
  }

  return 0;
}

static int fmsx_scc_get_raw_period(const SCC *D,unsigned int channel)
{
  const unsigned int base = 0xA0u + (channel<<1);
  return ((int)(D->R[base+1u]&0x0Fu)<<8)|D->R[base];
}

static int fmsx_scc_get_effective_period(const SCC *D,uint8_t mode,unsigned int channel)
{
  int period = fmsx_scc_get_raw_period(D,channel);
  const uint8_t deform = fmsx_scc_get_effective_deform(D,mode);

  if(deform&0x02u) period &= 0x00FF;
  else if(deform&0x01u) period >>= 8;

  return period;
}

static int fmsx_scc_get_output_freq(const SCC *D,uint8_t mode,unsigned int channel)
{
  const int period = fmsx_scc_get_effective_period(D,mode,channel);
  return period>8? SCC_BASE/(period+1):0;
}

static void fmsx_scc_mark_wave_changed(SCC *D,unsigned int channel)
{
  if(channel<SCC_CHANNELS) D->WChanged|=1u<<channel;
}

static void fmsx_scc_refresh_channel_freq(SCC *D,uint8_t mode,unsigned int channel)
{
  const int freq = fmsx_scc_channel_enabled(D,channel)?
    fmsx_scc_get_output_freq(D,mode,channel):0;

  if(freq!=D->Freq[channel])
  {
    D->Freq[channel]=freq;
    D->Changed|=1u<<channel;
  }
}

static int fmsx_scc_get_next_volume(const SCC *D,unsigned int channel)
{
  return channel<SCC_CHANNELS? 255*(D->R[0xAAu+channel]&0x0Fu)/15:0;
}

static void fmsx_scc_apply_volume(SCC *D,unsigned int channel)
{
  const int volume = fmsx_scc_get_next_volume(D,channel);

  if(channel>=SCC_CHANNELS) return;
  if(volume==D->Volume[channel]) return;

  D->Volume[channel]=volume;
  if(fmsx_scc_channel_enabled(D,channel)) D->Changed|=1u<<channel;
}

static void fmsx_scc_write_wave_value(SCC *D,unsigned int channel,uint8_t index,uint8_t value)
{
  const unsigned int offset = (channel<<5)|(index&0x1Fu);
  if(D->R[offset]==value) return;
  D->R[offset]=value;
  fmsx_scc_mark_wave_changed(D,channel);
}

static void fmsx_scc_write_wave_compatible(SCC *D,uint8_t address,uint8_t value)
{
  TFmsxLocalSccRenderState *S = fmsx_scc_render_state_for_scc(D);
  const unsigned int channel = address>>5;
  if(fmsx_scc_channel_read_only(D,FMSX_SCC_MODE_COMPATIBLE,channel)) return;

  fmsx_scc_write_wave_value(D,channel,address,value);
  if(S) fmsx_scc_render_sync_wave_channel(S,D,channel,FMSX_SCC_MODE_COMPATIBLE);

  /* Generic SCC mirrors waveform 4 onto waveform 5. */
  if(channel==3u)
  {
    fmsx_scc_write_wave_value(D,4u,address,value);
    if(S) fmsx_scc_render_sync_wave_channel(S,D,4u,FMSX_SCC_MODE_COMPATIBLE);
  }
}

static void fmsx_scc_write_wave_plus(SCC *D,uint8_t address,uint8_t value)
{
  TFmsxLocalSccRenderState *S = fmsx_scc_render_state_for_scc(D);
  const unsigned int channel = address>>5;
  if(channel>=SCC_CHANNELS) return;
  if(fmsx_scc_channel_read_only(D,FMSX_SCC_MODE_PLUS,channel)) return;
  fmsx_scc_write_wave_value(D,channel,address,value);
  if(S) fmsx_scc_render_sync_wave_channel(S,D,channel,FMSX_SCC_MODE_PLUS);
}

static void fmsx_scc_write_freq_volume(SCC *D,uint8_t address,uint8_t value,uint8_t mode)
{
  TFmsxLocalSccRenderState *S = fmsx_scc_render_state_for_scc(D);
  uint8_t slot;
  uint8_t reg;
  uint8_t prev_enable;

  slot = address&0xEFu;
  if(slot<0xA0u || slot>=0xC0u) return;

  prev_enable = D->R[0xAF]&0x1Fu;
  if(value==D->R[slot] && value==D->R[slot+0x10u]) return;

  D->R[slot]       = value;
  D->R[slot+0x10u] = value;
  reg              = slot&0x0Fu;

  switch(reg)
  {
    case 0: case 1: case 2: case 3: case 4:
    case 5: case 6: case 7: case 8: case 9:
    {
      const unsigned int channel = reg>>1;
      /*
       * blueMSX applies the pending volume on a frequency write, preserves the
       * current waveform byte and forces the renderer to reload it via
       * oldSample=0xFF on the next mixed sample.
       */
      fmsx_scc_mark_wave_changed(D,channel);
      fmsx_scc_refresh_channel_freq(D,mode,channel);
      if(S) fmsx_scc_render_sync_period_channel(S,D,channel,mode,0);
      break;
    }

    case 10: case 11: case 12: case 13: case 14:
    {
      const unsigned int channel = reg-10u;
      fmsx_scc_apply_volume(D,channel);
      if(S)
      {
        S->NextVolumeNibble[channel] = D->R[0xAAu + channel] & 0x0Fu;
      }
      break;
    }

    case 15:
    {
      uint8_t diff = (value^prev_enable)&0x1Fu;
      unsigned int channel;

      if(S) S->Enable = value & 0x1Fu;

      for(channel=0;channel<SCC_CHANNELS;++channel)
        if(diff&(1u<<channel))
          fmsx_scc_refresh_channel_freq(D,mode,channel);
      break;
    }
  }
}

static void fmsx_scc_write_deform(SCC *D,uint8_t value,uint8_t mode)
{
  TFmsxLocalSccRenderState *S = fmsx_scc_render_state_for_scc(D);
  unsigned int channel;

  if(value==fmsx_scc_get_raw_deform(D)) return;

  fmsx_scc_set_raw_deform(D,value);
  if(S)
  {
    unsigned int channel;
    for(channel=0; channel<SCC_CHANNELS; ++channel)
      S->DeformSample[channel] = S->Pos[channel];
    fmsx_scc_render_sync_flags(S,value,mode);
  }

  for(channel=0;channel<SCC_CHANNELS;++channel)
  {
    fmsx_scc_refresh_channel_freq(D,mode,channel);
    if(S) fmsx_scc_render_sync_period_channel(S,D,channel,mode,0);
  }
}

static void fmsx_scc_flush_if_async(SCC *D)
{
  if(!D->Sync&&(D->Changed||D->WChanged)) SyncSCC(D,SCC_FLUSH);
}

/** ResetSCC() ***********************************************/
/** Reset the sound chip and use sound channels from the    **/
/** one given in First.                                     **/
/*************************************************************/
void ResetSCC(SCC *D,int First)
{
  int J;

  /* Reset registers */
  memset(D->R,0x00,sizeof(D->R));

  /* Set instruments, frequencies, volumes */
  for(J=0;J<SCC_CHANNELS;J++)
  {
    SetSound(0+First,SND_MELODIC);
    D->Freq[J]=D->Volume[J]=0;
  }

  D->First    = First;
  D->Sync     = SCC_ASYNC;
  D->Changed  = 0x00;
  D->WChanged = 0x00;

  fmsx_scc_render_rebuild_one(D,FMSX_SCC_MODE_COMPATIBLE);
}

/** ReadSCC() ************************************************/
/** Call this function to read contents of the generic SCC  **/
/** sound chip registers.                                   **/
/*************************************************************/
uint8_t ReadSCC(SCC *D,uint8_t R)
{
  if(R<0x80u) return D->R[R];
  if(R<0xA0u) return 0xFF;
  if(R<0xC0u) return D->R[R-0x20u];
  if(R<0xE0u)
  {
    fmsx_scc_write_deform(D,0xFFu,FMSX_SCC_MODE_COMPATIBLE);
    fmsx_scc_flush_if_async(D);
  }
  return 0xFF;
}
           
/** ReadSCCP() ***********************************************/
/** Call this function to read contents of the newer SCC+   **/
/** sound chip registers.                                   **/
/*************************************************************/
uint8_t ReadSCCP(SCC *D,uint8_t R)
{
  if(R<0xA0u) return D->R[R];
  if(R<0xE0u)
  {
    if(R>=0xC0u)
    {
      fmsx_scc_write_deform(D,0xFFu,FMSX_SCC_MODE_PLUS);
      fmsx_scc_flush_if_async(D);
    }
    return 0xFF;
  }
  return 0xFF;
}
           
/** WriteSCC() ***********************************************/
/** Call this function to output a value V into the generic **/
/** SCC sound chip.                                         **/
/*************************************************************/
void WriteSCC(SCC *D,uint8_t R,uint8_t V)
{
  TFmsxLocalSccRenderState *S = fmsx_scc_render_state_for_scc(D);
  fmsx_audio_render_to_cpu_now();
  if(S) S->Mode = FMSX_SCC_MODE_COMPATIBLE;

  if(R<0x80u)
    fmsx_scc_write_wave_compatible(D,R,V);
  else if(R<0xA0u)
    fmsx_scc_write_freq_volume(D,R+0x20u,V,FMSX_SCC_MODE_COMPATIBLE);
  else if(R<0xC0u)
  {
    /* Waveform 5 is read-only in SCC compatible mode. */
  }
  else if(R<0xE0u)
    fmsx_scc_write_deform(D,V,FMSX_SCC_MODE_COMPATIBLE);

  fmsx_scc_flush_if_async(D);
}

/** WriteSCCP() **********************************************/
/** Call this function to output a value V into the newer   **/
/** SCC+ sound chip.                                        **/
/*************************************************************/
void WriteSCCP(SCC *D,uint8_t R,uint8_t V)
{
  TFmsxLocalSccRenderState *S = fmsx_scc_render_state_for_scc(D);
  fmsx_audio_render_to_cpu_now();
  if(S) S->Mode = FMSX_SCC_MODE_PLUS;

  if(R<0xA0u)
    fmsx_scc_write_wave_plus(D,R,V);
  else if(R<0xC0u)
    fmsx_scc_write_freq_volume(D,R,V,FMSX_SCC_MODE_PLUS);
  else if(R<0xE0u)
    fmsx_scc_write_deform(D,V,FMSX_SCC_MODE_PLUS);

  fmsx_scc_flush_if_async(D);
}

/** SyncSCC() ************************************************/
/** Flush all accumulated changes by issuing Sound() calls  **/
/** and set the synchronization on/off. The second argument **/
/** should be SCC_SYNC/SCC_ASYNC to set/reset sync, or      **/
/** SCC_FLUSH to leave sync mode as it is.                  **/
/*************************************************************/
void SyncSCC(SCC *D,uint8_t Sync)
{
  int J,I;

  if(Sync!=SCC_FLUSH) D->Sync=Sync;

  /* Modify waveforms */
  for(J=0,I=D->WChanged;I&&(J<SCC_CHANNELS);J++,I>>=1)
    if(I&1) SetWave(J+D->First,(signed char *)(D->R+(J<<5)),32,0);

  /* Modify frequencies and volumes */
  for(J=0,I=D->Changed;I&&(J<SCC_CHANNELS);J++,I>>=1)
    if(I&1) Sound(J+D->First,D->Freq[J],ApplySccBalancePct(D->Volume[J]));

  D->Changed=D->WChanged=0x00;
}

TFmsxLocalSccRenderState *fmsx_scc_get_render_state(unsigned chip_index)
{
  return chip_index < FMSX_SCC_CHIP_COUNT ? &g_FmsxSccRender[chip_index] : 0;
}

void fmsx_scc_rebuild_render_state_all(void)
{
  unsigned int chip;
  for(chip=0; chip<FMSX_SCC_CHIP_COUNT; ++chip)
  {
    fmsx_scc_render_rebuild_one(
      &SCChip[chip],
      g_FmsxSccRender[chip].Mode ? g_FmsxSccRender[chip].Mode : FMSX_SCC_MODE_COMPATIBLE
    );
  }
}
