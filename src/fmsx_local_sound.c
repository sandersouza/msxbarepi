/** EMULib Emulation Library *********************************/
/**                                                         **/
/**                          Sound.c                        **/
/**                                                         **/
/** This file file implements core part of the sound API.   **/
/** See Sound.h for declarations.                           **/
/**                                                         **/
/** Local copy kept in src/ to preserve third_party intact  **/
/** while applying MSXBarePi-specific bus voicing.          **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1996-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/*************************************************************/
#include "Sound.h"
#include "MSX.h"
#include "fmsx_audio_layout.h"
#include "fmsx_local_ym2413_bluemsx.h"
#include "fmsx_runtime.h"
#include "fmsx_local_scc_render.h"

#include "../third_party/fmsx/NukeYKT/WrapNukeYKT.h"

#include <string.h>

extern AY8910 PSG;

#if defined(_WIN32)
#include <direct.h>
#else
#include <unistd.h>
#endif

typedef unsigned char byte;
typedef unsigned short word;

static struct
{
  int Type;                       /* Channel type (SND_*)             */
  int Freq;                       /* Channel frequency (Hz)           */
  int Volume;                     /* Channel volume (0..255)          */

  const signed char *Data;        /* Wave data (-128..127 each)       */
  int Length;                     /* Wave length in Data              */
  int Rate;                       /* Wave playback rate (or 0Hz)      */
  int Pos;                        /* Wave current position in Data    */  

  int Count;                      /* Phase counter                    */
  int WaveSample;                 /* Cached current waveform sample   */
  int WaveSamplePos;              /* Cached waveform byte index       */
  int WaveReload;                 /* Force current byte reload        */
  int WaveActiveVolume;           /* Latched volume for current byte  */
  int WaveNextVolume;             /* Deferred volume for next byte    */
  int WaveHold;                   /* Hold current byte when step=0    */
} WaveCH[SND_CHANNELS];

/** RenderAudio() Variables *******************************************/
static int SndRate    = 0;        /* Sound rate (0=Off)               */
static int NoiseGen   = 0x10000;  /* Noise generator seed             */
static int NoiseOut   = 16;       /* NoiseGen bit used for output     */
static int NoiseXor   = 14;       /* NoiseGen bit used for XORing     */
int MasterSwitch      = 0xFFFF;   /* Switches to turn channels on/off */
int MasterVolume      = 192;      /* Master volume                    */

extern YM2413_NukeYKT OPLL_NukeYKT;
extern YM2413 OPLL;

#ifndef MSXBARE_FMSX_BUS_UNITY_GAIN_PCT
#define MSXBARE_FMSX_BUS_UNITY_GAIN_PCT 100
#endif

#ifndef MSXBARE_FMSX_BUS_HARMAN_SHELF_EXTRA_PCT
/*
 * Apply the same gentle Harman-inspired low shelf to every synthesized bus so
 * PSG/FM/SCC share the same tonal contour in the final mix.
 */
#define MSXBARE_FMSX_BUS_HARMAN_SHELF_EXTRA_PCT 16
#endif

#ifndef MSXBARE_FMSX_SCC_HARMAN_SHELF_EXTRA_PCT
#define MSXBARE_FMSX_SCC_HARMAN_SHELF_EXTRA_PCT MSXBARE_FMSX_BUS_HARMAN_SHELF_EXTRA_PCT
#endif

#ifndef MSXBARE_FMSX_SCC2_HARMAN_SHELF_EXTRA_PCT
#define MSXBARE_FMSX_SCC2_HARMAN_SHELF_EXTRA_PCT MSXBARE_FMSX_BUS_HARMAN_SHELF_EXTRA_PCT
#endif

#ifndef MSXBARE_FMSX_PSG_HARMAN_SHELF_EXTRA_PCT
#define MSXBARE_FMSX_PSG_HARMAN_SHELF_EXTRA_PCT MSXBARE_FMSX_BUS_HARMAN_SHELF_EXTRA_PCT
#endif

#ifndef MSXBARE_FMSX_FM_HARMAN_SHELF_EXTRA_PCT
#define MSXBARE_FMSX_FM_HARMAN_SHELF_EXTRA_PCT MSXBARE_FMSX_BUS_HARMAN_SHELF_EXTRA_PCT
#endif

#ifndef MSXBARE_FMSX_SCC2_GAIN_PCT
#define MSXBARE_FMSX_SCC2_GAIN_PCT MSXBARE_FMSX_BUS_UNITY_GAIN_PCT
#endif

#ifndef MSXBARE_FMSX_SCC_BALANCE_PCT
#define MSXBARE_FMSX_SCC_BALANCE_PCT 100
#endif

#define MSXBARE_FMSX_BUS_HARMAN_ALPHA_NUM 16
#define MSXBARE_FMSX_BUS_HARMAN_ALPHA_DEN 1024

enum
{
  MIX_BUS_PSG          = 0,
  MIX_BUS_FM           = 1,
  MIX_BUS_SCC_PRIMARY  = 2,
  MIX_BUS_SCC_SECONDARY= 3,
  MIX_BUS_COUNT
};

typedef struct
{
  int gain_pct;
  int shelf_extra_pct;
  int low_q8;
} fmsx_bus_voicing_t;

static fmsx_bus_voicing_t g_BusVoicing[MIX_BUS_COUNT] =
{
  { MSXBARE_FMSX_BUS_UNITY_GAIN_PCT, MSXBARE_FMSX_PSG_HARMAN_SHELF_EXTRA_PCT,  0 },
  { MSXBARE_FMSX_BUS_UNITY_GAIN_PCT, MSXBARE_FMSX_FM_HARMAN_SHELF_EXTRA_PCT,   0 },
  { MSXBARE_FMSX_BUS_UNITY_GAIN_PCT, MSXBARE_FMSX_SCC_HARMAN_SHELF_EXTRA_PCT,  0 },
  { MSXBARE_FMSX_SCC2_GAIN_PCT, MSXBARE_FMSX_SCC2_HARMAN_SHELF_EXTRA_PCT, 0 }
};

static int fmsx_render_adjust_scc_wave_sample(signed char wav,uint8_t volume_nibble)
{
  int volume = (255 * (volume_nibble & 0x0Fu)) / 15;
  volume = (volume * MSXBARE_FMSX_SCC_BALANCE_PCT) / 100;
  if(volume < 0) volume = 0;
  if(volume > 255) volume = 255;
  return (int)wav * volume;
}

static int fmsx_render_adjust_scc_ref_volume(int ref_volume)
{
  int out = (ref_volume * MSXBARE_FMSX_SCC_BALANCE_PCT) / 100;
  if(out < 0) out = 0;
  return out;
}

typedef struct
{
  uint8_t regs[16];
  uint32_t tonePhase[3];
  uint32_t toneStep[3];
  uint32_t noisePhase;
  uint32_t noiseStep;
  uint32_t noiseRand;
  int16_t noiseVolume;
  uint8_t envShape;
  uint32_t envStep;
  uint32_t envPhase;
  uint8_t enable;
  uint8_t ampVolume[3];
  int32_t ctrlVolume;
  int32_t oldSampleVolume;
  int32_t daVolume;
  int initialized;
  unsigned rate;
} fmsx_psg_render_state_t;

static fmsx_psg_render_state_t g_PsgRender;
static int16_t g_PsgVoltTable[16];
static int16_t g_PsgVoltEnvTable[32];
static int g_PsgTablesReady = 0;

static const uint8_t g_PsgRegMask[16] =
{
  0xFF,0x0F,0xFF,0x0F,0xFF,0x0F,0x1F,0x3F,
  0x1F,0x1F,0x1F,0xFF,0xFF,0x0F,0xFF,0xFF
};

static void fmsx_psg_render_build_tables(void)
{
  int i;
  double v = 0x26a9;
  if(g_PsgTablesReady) return;

  for(i=15;i>=0;--i)
  {
    g_PsgVoltTable[i] = (int16_t)v;
    g_PsgVoltEnvTable[2*i + 0] = (int16_t)v;
    g_PsgVoltEnvTable[2*i + 1] = (int16_t)v;
    v *= 0.7079457843841379108;
  }

  for(i=0;i<16;++i) g_PsgVoltTable[i] -= g_PsgVoltTable[0];
  for(i=0;i<32;++i) g_PsgVoltEnvTable[i] -= g_PsgVoltEnvTable[0];
  g_PsgTablesReady = 1;
}

void fmsx_psg_render_reset_state(void)
{
  memset(&g_PsgRender,0,sizeof(g_PsgRender));
  g_PsgRender.noiseRand = 1u;
  g_PsgRender.noiseVolume = 1;
}

static uint32_t fmsx_psg_base_phase_step(void)
{
  if(!SndRate) return 0u;
  return (uint32_t)(((1ull<<28) * (uint64_t)fmsx_runtime_get_base_cpu_clock_hz()) / 32ull / (uint64_t)SndRate);
}

static void fmsx_psg_render_update_register(fmsx_psg_render_state_t *S,uint8_t regIndex,uint8_t data)
{
  uint32_t period;
  uint32_t baseStep;

  data &= g_PsgRegMask[regIndex];
  S->regs[regIndex] = data;
  baseStep = fmsx_psg_base_phase_step();

  switch(regIndex)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      period = S->regs[regIndex & 6] | ((uint32_t)S->regs[regIndex | 1] << 8);
      S->toneStep[regIndex >> 1] = period ? (baseStep / period) : (1u << 31);
      break;

    case 6:
      period = data ? data : 1u;
      S->noiseStep = period ? (baseStep / period) : (1u << 31);
      break;

    case 7:
      S->enable = data;
      break;

    case 8:
    case 9:
    case 10:
      S->ampVolume[regIndex - 8] = data;
      break;

    case 11:
    case 12:
      period = 16u * (S->regs[11] | ((uint32_t)S->regs[12] << 8));
      S->envStep = baseStep / (period ? period : 8u);
      break;

    case 13:
      if(data < 4) data = 0x09;
      if(data < 8) data = 0x0F;
      S->envShape = data;
      S->envPhase = 0u;
      break;

    default:
      break;
  }
}

static void fmsx_psg_render_sync_regs(void)
{
  unsigned i;

  fmsx_psg_render_build_tables();
  if(!g_PsgRender.initialized)
  {
    fmsx_psg_render_reset_state();
    memset(g_PsgRender.regs,0xFF,sizeof(g_PsgRender.regs));
    g_PsgRender.initialized = 1;
  }

  if(g_PsgRender.rate != (unsigned)SndRate)
  {
    g_PsgRender.rate = (unsigned)SndRate;
    for(i=0;i<14u;++i) fmsx_psg_render_update_register(&g_PsgRender,(uint8_t)i,PSG.R[i]);
  }

  for(i=0;i<16u;++i)
  {
    const uint8_t masked = PSG.R[i] & g_PsgRegMask[i];
    if(masked != g_PsgRender.regs[i])
      fmsx_psg_render_update_register(&g_PsgRender,(uint8_t)i,masked);
  }
}

static void RenderPsgToMix(int *PsgWave,unsigned int Samples)
{
  unsigned index;
  const unsigned ayMask = ((1u << AY8910_CHANNELS) - 1u) << FIRST_AY8910_CHANNEL;

  if(!PsgWave || !Samples || !SndRate) return;
  if(!(MasterSwitch & ayMask)) return;

  fmsx_psg_render_sync_regs();

  for(index=0; index<Samples; ++index)
  {
    int32_t sampleVolume[3] = { 0, 0, 0 };
    int16_t envVolume;
    int channel;

    g_PsgRender.noisePhase += g_PsgRender.noiseStep;
    while(g_PsgRender.noisePhase >> 28)
    {
      g_PsgRender.noisePhase -= 0x10000000u;
      g_PsgRender.noiseVolume ^= (int16_t)(((g_PsgRender.noiseRand + 1u) >> 1) & 1u);
      g_PsgRender.noiseRand = (g_PsgRender.noiseRand ^ (0x28000u * (g_PsgRender.noiseRand & 1u))) >> 1;
    }

    g_PsgRender.envPhase += g_PsgRender.envStep;
    if((g_PsgRender.envShape & 1u) && (g_PsgRender.envPhase >> 28))
      g_PsgRender.envPhase = 0x10000000u;

    envVolume = (int16_t)((g_PsgRender.envPhase >> 23) & 0x1Fu);
    if((((g_PsgRender.envPhase >> 27) & (g_PsgRender.envShape + 1u)) ^ ((~g_PsgRender.envShape) >> 1)) & 2u)
      envVolume ^= 0x1Fu;

    for(channel=0; channel<3; ++channel)
    {
      uint32_t enable = g_PsgRender.enable >> channel;
      uint32_t noiseEnable = ((enable >> 3) | (uint32_t)g_PsgRender.noiseVolume) & 1u;
      uint32_t phaseStep = (~enable & 1u) * g_PsgRender.toneStep[channel];
      uint32_t tonePhase = g_PsgRender.tonePhase[channel];
      uint32_t tone = 0u;
      int count = 16;

      while(count--)
      {
        tonePhase += phaseStep;
        tone += (enable | (tonePhase >> 31)) & noiseEnable;
      }

      g_PsgRender.tonePhase[channel] = tonePhase;

      if(g_PsgRender.ampVolume[channel] & 0x10u)
        sampleVolume[channel] += (int32_t)tone * g_PsgVoltEnvTable[envVolume] / 16;
      else
        sampleVolume[channel] += (int32_t)tone * g_PsgVoltTable[g_PsgRender.ampVolume[channel] & 0x0Fu] / 16;
    }

    {
      int32_t mono = sampleVolume[0] + sampleVolume[1] + sampleVolume[2];
      g_PsgRender.ctrlVolume = mono - g_PsgRender.oldSampleVolume + (0x3fe7 * g_PsgRender.ctrlVolume) / 0x4000;
      g_PsgRender.oldSampleVolume = mono;
      g_PsgRender.daVolume += (2 * (g_PsgRender.ctrlVolume - g_PsgRender.daVolume)) / 3;
      PsgWave[index] += 9 * g_PsgRender.daVolume;
    }
  }
}

static void RenderFmToMix(int *FmWave,unsigned int Samples)
{
  const unsigned fm_mask = ((1u << YM2413_CHANNELS) - 1u) << FIRST_YM2413_CHANNEL;

  if(!FmWave || !Samples || !SndRate) return;
  fmsx_bluemsx_ym2413_render(FmWave,Samples,(MasterSwitch & fm_mask) != 0);
}

static int fmsx_scc_filter4(TFmsxLocalSccRenderState *S,int in1,int in2,int in3,int in4)
{
  int i;
  double res;

  for(i=0; i<91; ++i) S->FilterIn[i] = S->FilterIn[i + 4];
  S->FilterIn[91] = in1;
  S->FilterIn[92] = in2;
  S->FilterIn[93] = in3;
  S->FilterIn[94] = in4;

  res =  2.8536195E-4 * (S->FilterIn[ 0] + S->FilterIn[94]) +
         9.052306E-5  * (S->FilterIn[ 1] + S->FilterIn[93]) +
        -2.6902245E-4 * (S->FilterIn[ 2] + S->FilterIn[92]) +
        -6.375284E-4  * (S->FilterIn[ 3] + S->FilterIn[91]) +
        -7.87536E-4   * (S->FilterIn[ 4] + S->FilterIn[90]) +
        -5.3910224E-4 * (S->FilterIn[ 5] + S->FilterIn[89]) +
         1.1107049E-4 * (S->FilterIn[ 6] + S->FilterIn[88]) +
         9.2801993E-4 * (S->FilterIn[ 7] + S->FilterIn[87]) +
         0.0015018889 * (S->FilterIn[ 8] + S->FilterIn[86]) +
         0.0014338732 * (S->FilterIn[ 9] + S->FilterIn[85]) +
         5.688559E-4  * (S->FilterIn[10] + S->FilterIn[84]) +
        -8.479743E-4  * (S->FilterIn[11] + S->FilterIn[83]) +
        -0.0021999443 * (S->FilterIn[12] + S->FilterIn[82]) +
        -0.0027432537 * (S->FilterIn[13] + S->FilterIn[81]) +
        -0.0019824558 * (S->FilterIn[14] + S->FilterIn[80]) +
         2.018935E-9  * (S->FilterIn[15] + S->FilterIn[79]) +
         0.0024515253 * (S->FilterIn[16] + S->FilterIn[78]) +
         0.00419754   * (S->FilterIn[17] + S->FilterIn[77]) +
         0.0041703423 * (S->FilterIn[18] + S->FilterIn[76]) +
         0.0019952168 * (S->FilterIn[19] + S->FilterIn[75]) +
        -0.0016656333 * (S->FilterIn[20] + S->FilterIn[74]) +
        -0.005242034  * (S->FilterIn[21] + S->FilterIn[73]) +
        -0.0068841926 * (S->FilterIn[22] + S->FilterIn[72]) +
        -0.005360789  * (S->FilterIn[23] + S->FilterIn[71]) +
        -8.1365916E-4 * (S->FilterIn[24] + S->FilterIn[70]) +
         0.0050464263 * (S->FilterIn[25] + S->FilterIn[69]) +
         0.00950725   * (S->FilterIn[26] + S->FilterIn[68]) +
         0.010038091  * (S->FilterIn[27] + S->FilterIn[67]) +
         0.005602208  * (S->FilterIn[28] + S->FilterIn[66]) +
        -0.00253724   * (S->FilterIn[29] + S->FilterIn[65]) +
        -0.011011368  * (S->FilterIn[30] + S->FilterIn[64]) +
        -0.015622435  * (S->FilterIn[31] + S->FilterIn[63]) +
        -0.013267951  * (S->FilterIn[32] + S->FilterIn[62]) +
        -0.0036876823 * (S->FilterIn[33] + S->FilterIn[61]) +
         0.009843254  * (S->FilterIn[34] + S->FilterIn[60]) +
         0.021394625  * (S->FilterIn[35] + S->FilterIn[59]) +
         0.02469893   * (S->FilterIn[36] + S->FilterIn[58]) +
         0.01608393   * (S->FilterIn[37] + S->FilterIn[57]) +
        -0.0032088074 * (S->FilterIn[38] + S->FilterIn[56]) +
        -0.026453404  * (S->FilterIn[39] + S->FilterIn[55]) +
        -0.043139543  * (S->FilterIn[40] + S->FilterIn[54]) +
        -0.042553578  * (S->FilterIn[41] + S->FilterIn[53]) +
        -0.018007802  * (S->FilterIn[42] + S->FilterIn[52]) +
         0.029919287  * (S->FilterIn[43] + S->FilterIn[51]) +
         0.09252273   * (S->FilterIn[44] + S->FilterIn[50]) +
         0.15504532   * (S->FilterIn[45] + S->FilterIn[49]) +
         0.20112106   * (S->FilterIn[46] + S->FilterIn[48]) +
         0.2180678    *  S->FilterIn[47];

  return (int)res;
}

static int fmsx_bus_index_from_channel(int Channel)
{
  if((Channel>=FIRST_AY8910_CHANNEL)
  && (Channel<FIRST_AY8910_CHANNEL+AY8910_CHANNELS))
    return MIX_BUS_PSG;

  if((Channel>=FIRST_YM2413_CHANNEL)
  && (Channel<FIRST_YM2413_CHANNEL+YM2413_CHANNELS))
    return MIX_BUS_FM;

  if((Channel>=FIRST_SCC_CHANNEL)
  && (Channel<FMSX_SECOND_SCC_CHANNEL))
    return MIX_BUS_SCC_PRIMARY;

  if((Channel>=FMSX_SECOND_SCC_CHANNEL)
  && (Channel<FIRST_SCC_CHANNEL+FMSX_TOTAL_SCC_CHANNELS))
    return MIX_BUS_SCC_SECONDARY;

  return -1;
}

static int *fmsx_bus_buffer_from_channel(int Channel,int *PsgMix,int *FmMix,int *SccPrimaryMix,int *SccSecondaryMix,int *MainMix)
{
  switch(fmsx_bus_index_from_channel(Channel))
  {
    case MIX_BUS_PSG:           return PsgMix;
    case MIX_BUS_FM:            return FmMix;
    case MIX_BUS_SCC_PRIMARY:   return SccPrimaryMix;
    case MIX_BUS_SCC_SECONDARY: return SccSecondaryMix;
    default:                    return MainMix;
  }
}

static void ResetBusVoicing(void)
{
  unsigned int i;
  for(i=0;i<MIX_BUS_COUNT;++i) g_BusVoicing[i].low_q8 = 0;
}

static void MixBusIntoMain(int *MainMix,const int *BusMix,unsigned int Samples,fmsx_bus_voicing_t *Voicing)
{
  unsigned int I;
  int low_q8;
  int shelf_extra_pct;

  if(!Voicing) return;
  low_q8 = Voicing->low_q8;
  shelf_extra_pct = Voicing->shelf_extra_pct;

  for(I=0;I<Samples;++I)
  {
    const int in = BusMix[I];
    low_q8 += ((((in<<8)-low_q8) * MSXBARE_FMSX_BUS_HARMAN_ALPHA_NUM)
             / MSXBARE_FMSX_BUS_HARMAN_ALPHA_DEN);
    MainMix[I] += ((in * Voicing->gain_pct) / 100)
               + ((((low_q8>>8) * shelf_extra_pct) / 100) * Voicing->gain_pct) / 100;
  }

  Voicing->low_q8 = low_q8;
}

static void RenderSccChipToMix(
  TFmsxLocalSccRenderState *S,
  unsigned chip_index,
  int *Mix,
  unsigned int Samples
)
{
  const uint64_t phase_base =
    SndRate
      ? (((uint64_t)1u << 28) * (uint64_t)SCC_BASE) / ((uint64_t)SndRate * 4ull)
      : 0u;
  unsigned int i;

  if(!S) return;

  for(i=0; i<Samples; ++i)
  {
    int master[4] = { 0, 0, 0, 0 };
    unsigned int sub;

    for(sub=0; sub<4u; ++sub)
    {
      unsigned int channel;

      for(channel=0; channel<SCC_CHANNELS; ++channel)
      {
        const int bus_channel = FMSX_SCC_CHIP_FIRST_CHANNEL(chip_index) + (int)channel;
        const unsigned int enabled = (S->Enable >> channel) & 1u;
        const unsigned int period  = (unsigned int)S->Period[channel] + 1u;
        const uint32_t step_q28 =
          (S->Period[channel] == 0u || !phase_base)
            ? 0u
            : (uint32_t)(phase_base / (uint64_t)period);
        uint32_t phase = S->Count[channel] & 0x0FFFFFFFu;
        int old_sample = (int)S->Pos[channel];
        int active_volume = (int)(S->VolumeNibble[channel] & 0x0Fu);
        const int next_volume = (int)(S->NextVolumeNibble[channel] & 0x0Fu);
        int cur_wave = S->CurWave[channel];
        int da_volume = S->DaVolume[channel];
        const int ref_volume = enabled
          ? fmsx_render_adjust_scc_ref_volume(25 * active_volume)
          : 0;
        int sample;

        if(!(MasterSwitch & (1u << bus_channel))) continue;

        phase = (phase + step_q28) & 0x0FFFFFFFu;
        sample = (int)((phase >> 23) & 0x1Fu);

        if(sample != old_sample)
        {
          active_volume = next_volume;
          cur_wave = S->Wave[channel][sample];
          old_sample = sample;
        }

        if(da_volume < ref_volume)
        {
          da_volume = ref_volume;
        }

        master[sub] += cur_wave * da_volume;

        if(da_volume > ref_volume)
        {
          da_volume = (da_volume * 9) / 10;
        }

        S->Count[channel] = phase;
        S->Pos[channel] = (uint8_t)(old_sample & 0xFF);
        S->VolumeNibble[channel] = (uint8_t)(active_volume & 0x0F);
        S->CurWave[channel] = cur_wave;
        S->DaVolume[channel] = da_volume;
      }
    }

    Mix[i] += fmsx_scc_filter4(S,master[0],master[1],master[2],master[3]);
  }
}

/** Sound() **************************************************/
/** Generate sound of given frequency (Hz) and volume       **/
/** (0..255) via given channel. Setting Freq=0 or Volume=0  **/
/** turns sound off.                                        **/
/*************************************************************/
void Sound(int Channel,int Freq,int Volume)
{
  int PrevFreq;
  int IsWave;
  int FreqChanged;

  /* All parameters have to be valid */
  if((Channel<0)||(Channel>=SND_CHANNELS)) return;
  PrevFreq = WaveCH[Channel].Freq;
  IsWave = WaveCH[Channel].Type==SND_WAVE;
  Freq   = Freq<0? 0:Freq;
  Volume = Volume<0? 0:Volume>255? 255:Volume;
  FreqChanged = Freq!=PrevFreq;

  /* Modify channel parameters */ 
  WaveCH[Channel].Volume = Volume;
  WaveCH[Channel].Freq   = Freq;

  /*
   * openMSX/blueMSX keep the current SCC sample byte latched until the
   * waveform index advances, while a frequency write explicitly restarts the
   * current byte. Mirror that behavior for SND_WAVE by forcing a reload only
   * on frequency changes.
   */
  if(IsWave)
  {
    WaveCH[Channel].WaveNextVolume = Volume;
    WaveCH[Channel].WaveHold = (Freq==0) && (Volume>0);
    if(FreqChanged)
    {
      /*
       * SCC sample players rely on a frequency write restarting playback at
       * the beginning of the current waveform byte. openMSX resets the
       * per-byte counter and blueMSX clears the fractional phase bits.
       * Mirror that here by keeping the current byte index (Pos) while
       * clearing the fractional phase accumulator (Count).
       */
      WaveCH[Channel].Count = 0;
      WaveCH[Channel].WaveActiveVolume = Volume;
      WaveCH[Channel].WaveReload = 1;
    }
  }

  /* When disabling sound, reset waveform */
  if((!Freq && !IsWave) || (!Volume && !IsWave))
  {
    WaveCH[Channel].Pos           = 0;
    WaveCH[Channel].Count         = 0;
    WaveCH[Channel].WaveSample    = 0;
    WaveCH[Channel].WaveSamplePos = -1;
    WaveCH[Channel].WaveReload    = 0;
    WaveCH[Channel].WaveActiveVolume = 0;
    WaveCH[Channel].WaveNextVolume   = 0;
    WaveCH[Channel].WaveHold      = 0;
  }
  else if(IsWave && !Volume)
  {
    WaveCH[Channel].WaveActiveVolume = 0;
    WaveCH[Channel].WaveNextVolume   = 0;
    WaveCH[Channel].WaveHold         = 0;
  }
}

/** SetSound() ***********************************************/
/** Set sound type at a given channel.                      **/
/*************************************************************/
void SetSound(int Channel,int Type)
{
  /* Channel has to be valid */
  if((Channel<0)||(Channel>=SND_CHANNELS)) return;

  /* Set wave channel type */
  WaveCH[Channel].Type = Type;
  if(Type!=SND_WAVE)
  {
    WaveCH[Channel].WaveSample    = 0;
    WaveCH[Channel].WaveSamplePos = -1;
    WaveCH[Channel].WaveReload    = 0;
    WaveCH[Channel].WaveActiveVolume = 0;
    WaveCH[Channel].WaveNextVolume   = 0;
    WaveCH[Channel].WaveHold         = 0;
  }
}

/** SetChannels() ********************************************/
/** Set master volume (0..255) and switch channels on/off.  **/
/** Each channel N has corresponding bit 2^N in Switch. Set **/
/** or reset this bit to turn the channel on or off.        **/ 
/*************************************************************/
void SetChannels(int Volume,int Switch)
{
  /* Volume has to be valid */
  Volume = Volume<0? 0:Volume>255? 255:Volume;

  /* Modify wave master settings */ 
  MasterVolume = Volume;
  MasterSwitch = Switch&((1u<<SND_CHANNELS)-1u);
}

/** SetNoise() ***********************************************/
/** Initialize random noise generator to the given Seed and **/
/** then take random output from OUTBit and XOR it with     **/
/** XORBit.                                                 **/
/*************************************************************/
void SetNoise(int Seed,int OUTBit,int XORBit)
{
  NoiseGen = Seed;
  NoiseOut = OUTBit;
  NoiseXor = XORBit;
}

/** SetWave() ************************************************/
/** Set waveform for a given channel. The channel will be   **/
/** marked with sound type SND_WAVE. Set Rate=0 if you want **/
/** waveform to be an instrument or set it to the waveform  **/
/** own playback rate.                                      **/
/*************************************************************/
void SetWave(int Channel,const signed char *Data,int Length,int Rate)
{
  int ResetCache;

  /* Channel and waveform length have to be valid */
  if((Channel<0)||(Channel>=SND_CHANNELS)||(Length<=0)) return;

  ResetCache = !WaveCH[Channel].Data
            || (WaveCH[Channel].Data!=Data)
            || (WaveCH[Channel].Length!=Length);

  /* Set wave channel parameters */
  WaveCH[Channel].Type   = SND_WAVE;
  WaveCH[Channel].Length = Length;
  WaveCH[Channel].Rate   = Rate;
  WaveCH[Channel].Pos    = Length? WaveCH[Channel].Pos%Length:0;
  WaveCH[Channel].Data   = Data;
  if(ResetCache)
  {
    WaveCH[Channel].WaveSample    = 0;
    WaveCH[Channel].WaveSamplePos = -1;
  }
}

/** InitSound() **********************************************/
/** Initialize RenderSound() with given parameters.         **/
/*************************************************************/
unsigned int InitSound(unsigned int Rate)
{
  int I;

  /* Initialize internal variables (keeping MasterVolume/MasterSwitch!) */
  SndRate  = 0;
  ResetBusVoicing();

  /* Reset sound parameters */
  for(I=0;I<SND_CHANNELS;I++)
  {
    /* NOTICE: Preserving Type value! */
    WaveCH[I].Count         = 0;
    WaveCH[I].Volume        = 0;
    WaveCH[I].Freq          = 0;
    WaveCH[I].WaveSample    = 0;
    WaveCH[I].WaveSamplePos = -1;
    WaveCH[I].WaveReload    = 0;
    WaveCH[I].WaveActiveVolume = 0;
    WaveCH[I].WaveNextVolume   = 0;
    WaveCH[I].WaveHold         = 0;
  }

  /* Rate=0 means silence */
  if(!Rate) { SndRate=0;return(0); }

  /* Done */
  SetChannels(MasterVolume,MasterSwitch);
  fmsx_bluemsx_ym2413_set_sample_rate(Rate);
  return(SndRate=Rate);
}

/** RenderAudio() ********************************************/
/** Render given number of melodic sound samples into an    **/
/** integer buffer for mixing.                              **/
/*************************************************************/
static void RenderAudio(int *Wave,unsigned int Samples)
{
  int PsgWave[256];
  int FmWave[256];
  int SccPrimaryWave[256];
  int SccSecondaryWave[256];
  int J,K,I,L1,L2,V,A1;
  int *Mix;
#ifdef WAVE_INTERPOLATION
  /* Keep GCC happy about variable initialization */
  int A2 = 0;
  int L  = 0;
  int N  = 0;
#endif

  /* Waveform generator */
  memset(PsgWave,0,Samples*sizeof(PsgWave[0]));
  memset(FmWave,0,Samples*sizeof(FmWave[0]));
  memset(SccPrimaryWave,0,Samples*sizeof(SccPrimaryWave[0]));
  memset(SccSecondaryWave,0,Samples*sizeof(SccSecondaryWave[0]));
  for(J=0;J<SND_CHANNELS;J++)
    if((MasterSwitch&(1u<<J))
    && (WaveCH[J].Freq
      || ((WaveCH[J].Type==SND_WAVE) && WaveCH[J].WaveHold)))
    {
      if((J>=FIRST_AY8910_CHANNEL)
      && (J<(FIRST_AY8910_CHANNEL+AY8910_CHANNELS))) continue;

      if((J>=FIRST_YM2413_CHANNEL)
      && (J<(FIRST_YM2413_CHANNEL+YM2413_CHANNELS))) continue;

      if((J>=FIRST_SCC_CHANNEL)
      && (J<(FIRST_SCC_CHANNEL+FMSX_TOTAL_SCC_CHANNELS))) continue;

      if((WaveCH[J].Type!=SND_WAVE)&&!(V=WaveCH[J].Volume)) continue;
      Mix = fmsx_bus_buffer_from_channel(J,PsgWave,FmWave,SccPrimaryWave,SccSecondaryWave,Wave);
      switch(WaveCH[J].Type)
      {
        case SND_WAVE: /* Custom Waveform */
        {
          uint64_t step;
          uint32_t phase;
          uint32_t phase_mod;
          int current_sample;
          int current_pos;
          int reload;
          int active_volume;
          int next_volume;
          int hold_output;
          /* Waveform data must have correct length! */
          if(WaveCH[J].Length<=0) break;
          /*
           * The upstream fMSX path drops SND_WAVE entirely once the effective
           * playback step exceeds one waveform sample per output sample
           * (K<0x8000). That is catastrophic for SCC+ sampled voice and hurts
           * any high-rate wavetable playback. Use a straightforward Q16 phase
           * accumulator so high-frequency wave playback continues to render.
           *
           * openMSX/blueMSX also keep the current sample byte latched until
           * the waveform index advances. Do the same here so rapid SCC
           * wave/volume writes behave like a held DAC byte instead of being
           * re-evaluated every output sample.
           */
          step = (uint64_t)WaveCH[J].Freq
               * (uint64_t)(WaveCH[J].Rate>0? WaveCH[J].Rate:WaveCH[J].Length)
               * 65536ull
               / (uint64_t)SndRate;

          phase_mod = (uint32_t)WaveCH[J].Length<<16;
          phase     = ((uint32_t)(WaveCH[J].Pos%WaveCH[J].Length)<<16)
                    | (uint32_t)(WaveCH[J].Count&0xFFFF);
          current_sample = WaveCH[J].WaveSample;
          current_pos    = WaveCH[J].WaveSamplePos;
          reload         = WaveCH[J].WaveReload;
          active_volume  = WaveCH[J].WaveActiveVolume;
          next_volume    = WaveCH[J].WaveNextVolume;
          hold_output    = WaveCH[J].WaveHold;

          if((current_pos<0)||(current_pos>=WaveCH[J].Length))
            current_pos = WaveCH[J].Pos%WaveCH[J].Length;

          if(hold_output)
          {
            if(reload || (current_sample==0 && active_volume!=0))
            {
              active_volume  = next_volume;
              current_sample = WaveCH[J].Data[current_pos]*active_volume;
              reload         = 0;
            }

            for(I=0;I<Samples;I++) Mix[I]+=current_sample;

            WaveCH[J].WaveSample    = current_sample;
            WaveCH[J].WaveSamplePos = current_pos;
            WaveCH[J].WaveReload    = reload;
            WaveCH[J].WaveActiveVolume = active_volume;
            WaveCH[J].WaveNextVolume   = next_volume;
            WaveCH[J].Count         = 0;
            break;
          }

          if(!step) break;

          for(I=0;I<Samples;I++)
          {
            L1 = (phase>>16)%WaveCH[J].Length;
            if(reload||(L1!=current_pos))
            {
              current_pos    = L1;
              active_volume  = next_volume;
              current_sample = WaveCH[J].Data[L1]*active_volume;
              reload         = 0;
            }
            Mix[I]+=current_sample;
            phase += (uint32_t)step;
            if(phase>=phase_mod) phase%=phase_mod;
          }

          WaveCH[J].Pos           = (int)((phase>>16)%WaveCH[J].Length);
          WaveCH[J].Count         = (int)(phase&0xFFFFu);
          WaveCH[J].WaveSample    = current_sample;
          WaveCH[J].WaveSamplePos = current_pos;
          WaveCH[J].WaveReload    = reload;
          WaveCH[J].WaveActiveVolume = active_volume;
          WaveCH[J].WaveNextVolume   = next_volume;
          break;
        }

        case SND_NOISE: /* White Noise */
          /* For high frequencies, recompute volume */
          if(WaveCH[J].Freq<SndRate)
            K=((unsigned int)WaveCH[J].Freq<<16)/SndRate;
          else
          {
            V = V*SndRate/WaveCH[J].Freq;
            K = 0x10000;
          }
          L1=WaveCH[J].Count;
          for(I=0;I<Samples;I++)
          {
            /* Use NoiseOut bit for output */
            Mix[I]+=((NoiseGen>>NoiseOut)&1? 127:-128)*V;
            L1+=K;
            if(L1&0xFFFF0000)
            {
              /* XOR NoiseOut and NoiseXOR bits and feed them back */
              NoiseGen=
                (((NoiseGen>>NoiseOut)^(NoiseGen>>NoiseXor))&1)
              | ((NoiseGen<<1)&((2<<NoiseOut)-1));
              L1&=0xFFFF;
            }
          }
          WaveCH[J].Count=L1;
          break;

        case SND_MELODIC:  /* Melodic Sound   */
        case SND_TRIANGLE: /* Triangular Wave */
        default:           /* Default Sound   */
          /* Do not allow frequencies that are too high */
          if(WaveCH[J].Freq>=SndRate/2) break;
          K=0x10000*WaveCH[J].Freq/SndRate;
          L1=WaveCH[J].Count;
#if !defined(SLOW_MELODIC_AUDIO)
          for(I=0;I<Samples;I++,L1+=K)
            Mix[I]+=((L1-K)^(L1+K))&0x8000? 0:(L1&0x8000? 127:-128)*V;
#else /* SLOW_MELODIC_AUDIO */
          for(I=0;I<Samples;I++,L1+=K)
          {
            L2 = L1+K;
            A1 = L1&0x8000? 127:-128;
            if((L1^L2)&0x8000)
              A1=A1*(0x8000-(L1&0x7FFF)-(L2&0x7FFF))/K;
            Mix[I]+=A1*V;
          }
#endif /* SLOW_MELODIC_AUDIO */
          WaveCH[J].Count=L1&0xFFFF;
          break;
      }
    }

  RenderPsgToMix(PsgWave,Samples);
  if(!OPTION(MSX_NUKEYKT)) RenderFmToMix(FmWave,Samples);
  RenderSccChipToMix(
    fmsx_scc_get_render_state(FMSX_SCC_CHIP_PRIMARY),
    FMSX_SCC_CHIP_PRIMARY,
    SccPrimaryWave,
    Samples
  );
  RenderSccChipToMix(
    fmsx_scc_get_render_state(FMSX_SCC_CHIP_SECONDARY),
    FMSX_SCC_CHIP_SECONDARY,
    SccSecondaryWave,
    Samples
  );

  MixBusIntoMain(Wave,PsgWave,Samples,&g_BusVoicing[MIX_BUS_PSG]);
  MixBusIntoMain(Wave,FmWave,Samples,&g_BusVoicing[MIX_BUS_FM]);
  MixBusIntoMain(Wave,SccPrimaryWave,Samples,&g_BusVoicing[MIX_BUS_SCC_PRIMARY]);
  MixBusIntoMain(Wave,SccSecondaryWave,Samples,&g_BusVoicing[MIX_BUS_SCC_SECONDARY]);
}

/** PlayAudio() **********************************************/
/** Normalize and play given number of samples from the mix **/
/** buffer. Returns the number of samples actually played.  **/
/*************************************************************/
static unsigned int PlayAudio(int *Wave,unsigned int Samples)
{
  int16_t Buf[256];
  unsigned int I,K;
  int D;
  /* Check if the buffer contains enough free space */
  unsigned int J = AUDIO_BUFFER_SIZE;
  if(J<Samples) Samples=J;

  /* Spin until all samples played or WriteAudio() fails */
  for(K=I=J=0;(K<Samples)&&(I==J);K+=I)
  {
    /* Compute number of samples to convert */
    J = sizeof(Buf)/sizeof(int16_t);
    J = Samples-K>J? J:Samples-K;

    /* Convert samples */
    for(I=0;I<J;++I)
    {
      D      = ((*Wave++)*MasterVolume)>>8;
      D      = D>32767? 32767:D<-32768? -32768:D;
      Buf[I] = D;
    }

    /* Play samples */
    I = WriteAudio(Buf,J);
  }

  /* Return number of samples played */
  return(K);
}

/** RenderAndPlayAudio() *************************************/
/** Render and play a given number of samples. Returns the  **/
/** number of samples actually played.                      **/
/*************************************************************/
unsigned int RenderAndPlayAudio(unsigned int Samples)
{
  int Buf[256];
  int FmNukeWave[256];
  unsigned int J,I,K,idx;
  float ResampleRate,R,frac;

  /* Exit if wave sound not initialized */
  if(SndRate<8192) return(0);

  /* silence fMSX FM-PAC if NukeYKT is active */
  if(OPTION(MSX_NUKEYKT))
  {
    for(K=0;K<YM2413_CHANNELS;K++)
      Sound(K+OPLL.First,0,0);
    OPLL.Changed=0;
  }

  J       = AUDIO_BUFFER_SIZE;
  Samples = Samples<J? Samples:J;
  ResampleRate = (float)OPLL_NukeYKT.sample_write_index/Samples;

  /* Render and play sound */
  for(I=0,R=0.0;I<Samples;I+=J)
  {
    J = Samples-I;
    J = J<sizeof(Buf)/sizeof(Buf[0])? J:sizeof(Buf)/sizeof(Buf[0]);
    memset(Buf,0,J*sizeof(Buf[0]));
    RenderAudio(Buf,J);

    /*
     * Merge in YM2413 NukeYKT using simplistic linear resampler.
     * Max input range slightly outside [-1024,+1023], output [-32768,+32767] or 16b signed after amplification by 32.
     * BUT matching it to PSG volume (by hand) requires a further amplification by 4.
     * That's still a factor 4-8 less loud than fMSX's FM-PAC volume.
     */
    if(OPTION(MSX_NUKEYKT))
    {
      memset(FmNukeWave,0,J*sizeof(FmNukeWave[0]));
      for(K=0;K<J;K++,R+=ResampleRate)
      {
        idx=(unsigned int)R;
        frac=R-idx;
        FmNukeWave[K]=(int)(.5+128.0*(OPLL_NukeYKT.samples[idx]*(1.0-frac) + OPLL_NukeYKT.samples[idx+1]*frac));
      }
      MixBusIntoMain(Buf,FmNukeWave,J,&g_BusVoicing[MIX_BUS_FM]);
    }

    if(PlayAudio(Buf,J)<J) { I+=J;break; }
  }

  // move last sample to beginning (for linear resampler) and signal a buffer refill
  if (OPLL_NukeYKT.sample_write_index>0)
    OPLL_NukeYKT.samples[0]=OPLL_NukeYKT.samples[OPLL_NukeYKT.sample_write_index-1];
  OPLL_NukeYKT.sample_write_index=1;

  /* Return number of samples rendered */
  return I;
}
