/** EMULib Emulation Library *********************************/
/**                                                         **/
/**                          Sound.h                        **/
/**                                                         **/
/** Local copy kept in src/ to preserve third_party intact  **/
/** while binding Sound.h to the local EMULib layout.       **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1996-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/*************************************************************/
#ifndef SOUND_H
#define SOUND_H

#include "EMULib.h"

#ifdef __cplusplus
extern "C" {
#endif

#define AUDIO_BUFFER_SIZE 1024

#define SND_MELODIC     0
#define SND_RECTANGLE   0
#define SND_TRIANGLE    1
#define SND_NOISE       2
#define SND_PERIODIC    3
#define SND_WAVE        4

#define DRM_CLICK       0

unsigned int InitSound(unsigned int Rate);
unsigned int RenderAndPlayAudio(unsigned int Samples);
void Sound(int Channel,int Freq,int Volume);
void SetSound(int Channel,int NewType);
void SetChannels(int Volume,int Switch);
void SetNoise(int Seed,int OUTBit,int XORBit);
void SetWave(int Channel,const signed char *Data,int Length,int Rate);

#ifdef __cplusplus
}
#endif
#endif /* SOUND_H */
