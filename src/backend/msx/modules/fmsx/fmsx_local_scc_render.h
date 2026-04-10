#ifndef MSXBARE_FMSX_LOCAL_SCC_RENDER_H
#define MSXBARE_FMSX_LOCAL_SCC_RENDER_H

#include "SCC.h"
#include "fmsx_audio_layout.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
  signed char Wave[SCC_CHANNELS][32];
  unsigned short OrgPeriod[SCC_CHANNELS];
  unsigned short Period[SCC_CHANNELS];
  unsigned int Count[SCC_CHANNELS];
  unsigned char Pos[SCC_CHANNELS];
  int Out[SCC_CHANNELS];
  int CurWave[SCC_CHANNELS];
  int DaVolume[SCC_CHANNELS];
  int DeformSample[SCC_CHANNELS];
  int FilterIn[95];
  unsigned char VolumeNibble[SCC_CHANNELS];
  unsigned char NextVolumeNibble[SCC_CHANNELS];
  unsigned char Enable;
  unsigned char Deform;
  unsigned char Rotate[SCC_CHANNELS];
  unsigned char ReadOnly[SCC_CHANNELS];
  unsigned char Mode;
} TFmsxLocalSccRenderState;

TFmsxLocalSccRenderState *fmsx_scc_get_render_state(unsigned chip_index);
void fmsx_scc_rebuild_render_state_all(void);

#ifdef __cplusplus
}
#endif

#endif
