/** fMSX: portable MSX emulator ******************************/
/**                                                         **/
/**                         Common.h                        **/
/**                                                         **/
/** This file contains standard screen refresh drivers      **/
/** common for X11, VGA, and other "chunky" bitmapped video **/
/** implementations. It also includes dummy sound drivers   **/
/** for fMSX.                                               **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1994-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/*************************************************************/

static int FirstLine = 10 + BORDER;/* First scanline in XBuf */

static void  Sprites(uint8_t Y,uint16_t *Line);
static void  ColorSprites(uint8_t Y,uint8_t *ZBuf);
static uint16_t *RefreshBorder(uint8_t Y,uint16_t C);
static void  ClearLine(uint16_t *P,uint16_t C);
static uint16_t YJKColor(int Y,int J,int K);

extern void PutImage(void);
extern uint8_t FmsxVDPScreenOnLatched;
extern int FmsxVDPRenderVScrollOverride;
extern uint8_t FmsxVDPLineOddPageLatched;
extern uint8_t FmsxVDPLineFlipEvenOddLatched;
extern uint8_t FmsxVDPLineInterlaceOnLatched;
extern uint8_t FmsxVDPLineInterlaceOddFieldLatched;
extern uint8_t FmsxVDPLineR18Latched;

#define FMSX_SCREEN_ON (FmsxVDPScreenOnLatched)
/*
 * Keep vertical scroll live like upstream fMSX/openMSX. Knightmare Gold
 * updates R#23 in lockstep with its VRAM blits; latching it one scanline
 * early makes the 8x8 boundary consume the previous tile row again.
 */
#define FMSX_RENDER_VSCROLL \
  ((FmsxVDPRenderVScrollOverride>=0)? (uint8_t)FmsxVDPRenderVScrollOverride:VDP[23])

INLINE int FmsxDisplayHiResModeLatched(void)
{
  return FmsxVDPLineInterlaceOnLatched && (g_hires_mode != HIRES_OFF);
}

INLINE int FmsxDisplayInterlacedModeLatched(void)
{
  return FmsxDisplayHiResModeLatched() && (g_hires_mode == HIRES_INTERLACED);
}

INLINE int FmsxDisplayOddPageLatched(void)
{
  return FmsxVDPLineFlipEvenOddLatched ? (int)(FmsxVDPLineOddPageLatched & 0x01u) : 0;
}

INLINE int FmsxDisplayInterlaceOddFieldLatched(void)
{
  return FmsxVDPLineInterlaceOddFieldLatched ? 1 : 0;
}

INLINE int FmsxDisplayVAdjustLatched(void)
{
  return -(((int8_t)FmsxVDPLineR18Latched) >> 4);
}

INLINE int FmsxDisplayHAdjustLatched(void)
{
  return -(((int8_t)(uint8_t)(FmsxVDPLineR18Latched << 4)) >> 4);
}

/* V9958 horizontal scroll helpers:
 * R26 = coarse scroll blocks
 * R27 = fine scroll (display shift)
 * R25 bit1 = left-edge mask
 * R25 bit0 = multi-page horizontal scroll
 */
INLINE unsigned V9958CoarseBlocks(void)
{
  if(!MODEL(MSX_MSX2P)) return 0u;
  /* openMSX behavior: multi-page scroll requires R25 bit0 AND R2 bit5. */
  return (unsigned)(VDP[26] & (((VDP[25] & 0x01u) && (VDP[2] & 0x20u)) ? 0x3Fu : 0x1Fu));
}

INLINE unsigned V9958CoarseScroll256(void)
{
  return V9958CoarseBlocks()<<3;
}

INLINE unsigned V9958CoarseScroll512(void)
{
  return V9958CoarseBlocks()<<3;
}

INLINE unsigned V9958FineScroll256(void)
{
  return MODEL(MSX_MSX2P) ? (VDP[27] & 0x07u) : 0u;
}

INLINE unsigned V9958FineScroll512(void)
{
  return MODEL(MSX_MSX2P) ? (VDP[27] & 0x07u) : 0u;
}

INLINE unsigned V9958MaskLeft256(void)
{
  return (MODEL(MSX_MSX2P) && (VDP[25] & 0x02u)) ? 8u : 0u;
}

INLINE unsigned V9958MaskLeft512(void)
{
  return (MODEL(MSX_MSX2P) && (VDP[25] & 0x02u)) ? 8u : 0u;
}

INLINE unsigned V9958VirtualWidth256(void)
{
  return (MODEL(MSX_MSX2P) && (VDP[25] & 0x01u) && (VDP[2] & 0x20u)) ? 512u : 256u;
}

INLINE unsigned V9958ScrollActive256(void)
{
  return MODEL(MSX_MSX2P)
      && ((VDP[25] & 0x03u) || (VDP[26] != 0u) || ((VDP[27] & 0x07u) != 0u));
}

INLINE unsigned V9958VirtualWidth512(void)
{
  return (MODEL(MSX_MSX2P) && (VDP[25] & 0x01u) && (VDP[2] & 0x20u)) ? 1024u : 512u;
}

INLINE uint8_t *V9958VRAMOffsetPtr(uint8_t *Base,int Offset)
{
  int Size,Pos;

  if(!Offset) return Base;
  Size=VRAMPages<<14;
  if(Size<=0) return Base;

  Pos=(int)(Base-VRAM)+Offset;
  Pos%=Size;
  if(Pos<0) Pos+=Size;
  return VRAM+Pos;
}

INLINE uint8_t *V9958ScrollPagePtr(uint8_t *Base,int Offset)
{
  if(!MODEL(MSX_MSX2P) || !(VDP[25] & 0x01u) || !(VDP[2] & 0x20u) || !Offset) return Base;
  return V9958VRAMOffsetPtr(Base,Offset);
}

INLINE unsigned V9958InterleavedPlaneOffset(void)
{
  return (VRAMPages>=8) ? 0x10000u : 0u;
}

INLINE uint8_t *V9958BitmapLinePtr(uint8_t *Base,uint8_t Y)
{
  int Size;
  int BasePos;
  int LinePos;
  int Pos;

  BasePos=(int)(Base-VRAM);
  LinePos=(((int)(Y+FMSX_RENDER_VSCROLL)<<7)&ChrTabM&0x7FFF);
  Pos=(BasePos&~0x7FFF)|LinePos;

  /* BlueMSX/openMSX treat EO/page selection as a line snapshot once scanout
   * starts. Keep narrow bitmap modes aligned with the same rule. */
  if(FmsxDisplayOddPageLatched() && (Pos&0x8000)) Pos-=0x8000;

  Size=VRAMPages<<14;
  if(Size>0)
  {
    Pos%=Size;
    if(Pos<0) Pos+=Size;
  }

  return VRAM+Pos;
}

INLINE void V9958ExpandInterleaved256ToPalette(uint16_t *Dst,uint8_t *EvenBase)
{
  uint8_t *OddBase;
  int I;

  OddBase=V9958VRAMOffsetPtr(EvenBase,(int)V9958InterleavedPlaneOffset());
  for(I=0;I<128;++I)
  {
    Dst[(I<<1)+0]=BPal[EvenBase[I]];
    Dst[(I<<1)+1]=BPal[OddBase[I]];
  }
}

INLINE void V9958ExpandInterleaved256ToBytes(uint8_t *Dst,uint8_t *EvenBase)
{
  uint8_t *OddBase;
  int I;

  OddBase=V9958VRAMOffsetPtr(EvenBase,(int)V9958InterleavedPlaneOffset());
  for(I=0;I<128;++I)
  {
    Dst[(I<<1)+0]=EvenBase[I];
    Dst[(I<<1)+1]=OddBase[I];
  }
}

INLINE void V9958ComposeScrolledLine256(
  uint16_t *Dst,
  const uint16_t *Raw,
  unsigned Coarse,
  unsigned Fine,
  unsigned LeftMask,
  unsigned VirtualWidth,
  uint16_t MaskColor)
{
  int PIdx,Src;
  uint16_t Bg;

  for(PIdx=0;PIdx<256;++PIdx)
  {
    Bg=MaskColor;
    if(PIdx>=(int)LeftMask)
    {
      Src=PIdx-(int)Fine+(int)Coarse;
      Bg=Raw[(unsigned)Src&(VirtualWidth-1u)];
    }
    Dst[PIdx]=Bg;
  }
}

/** ClearLine() **********************************************/
/** Clear 256 uint16_ts from P with color C.                   **/
/*************************************************************/
static void ClearLine(uint16_t *P,uint16_t C)
{
  int J;

  for(J=0;J<256;J++) P[J]=C;
}

/** YJKColor() ***********************************************/
/** Given a color in YJK format, return the corresponding   **/
/** palette entry.                                          **/
/*************************************************************/
INLINE uint16_t YJKColor(int Y,int J,int K)
{
  // See http://map.grauw.nl/articles/yjk/
  // YJK566 (17 bits of information, 131072 values) translates to RGB555 (15 bits, 32768 values)
  int R=(Y+J)<<3;
  int G=(Y+K)<<3;
  int B=(5*Y-2*J-K)<<1;

  // .. but because of overlapping & clipping that results in 16384 + 2884 = 19268 distinct colours
  // (SCREEN10+11 YJK466, 16bits: 8192 + 4307 = 12499, plus 16 palette colours)
  R=R<0? 0:R>255? 255:R;
  G=G<0? 0:G>255? 255:G;
  B=B<0? 0:B>255? 255:B;

  return PIXEL(R,G,B);
}

/** RefreshBorder() ******************************************/
/** This function is called from RefreshLine#() to refresh  **/
/** the screen border. It returns a pointer to the start of **/
/** scanline Y in XBuf or 0 if scanline is beyond XBuf.     **/
/*************************************************************/
uint16_t *RefreshBorder(uint8_t Y,uint16_t C)
{
  uint16_t *P;
  int H,L,A;
  const int lineHiResMode = FmsxDisplayHiResModeLatched();
  const int lineInterlacedMode = FmsxDisplayInterlacedModeLatched();
  const int lineFieldOdd = FmsxDisplayInterlaceOddFieldLatched();

  /* First line number in the buffer */
  if(!Y) FirstLine=(ScanLines212?0:10)+BORDER+FmsxDisplayVAdjustLatched();

  /* Return 0 if we've run out of the screen buffer due to overscan */
  if(Y>(OverscanMode?MAX_SCANLINE:211)) return(0);

  /* Set up the transparent color */
  XPal[0]=(!BGColor||SolidColor0)? XPal0:XPal[BGColor];

  /* Start of the buffer */
  P=(uint16_t *)XBuf;

  if(lineHiResMode)
  {
    if(!Y)
      /* Paint top of the screen */
      for(L=FirstLine;L>0;L--)
      {
        for(A=((WIDTH*L)<<1)-1,H=WIDTH;H>0;H--,A--)
        {
          if (lineInterlacedMode)
          {
            if (lineFieldOdd)
            { // odd field: preserve even field, refresh only odd physical lines
              P[A]=C;
            }
            else
            { // even field: preserve odd field, refresh only even physical lines
              P[A-WIDTH]=C;
            }
          }
          else // progressive: only touch this frame's lines
          {
            if (lineFieldOdd)
              P[A]=C;
            else
              P[A-WIDTH]=C;
          }
        }
      }

    /* Start of the line */
    P+=(WIDTH*(FirstLine+Y))<<1;

    if (lineFieldOdd)
    {
      P+=WIDTH; // odd field maps to odd physical scanlines
    }
    else
    {
    }
  }
  else // standard mode
  {
    /* Paint top of the screen */
    if(!Y) for(H=WIDTH*FirstLine-1;H>=0;H--) P[H]=C;

    /* Start of the line */
    P+=WIDTH*(FirstLine+Y);
  }

  /* Paint left/right borders */
  for(H=(WIDTH-256)/2+FmsxDisplayHAdjustLatched();H>0;H--) P[H-1]=C;
  for(H=(WIDTH-256)/2-FmsxDisplayHAdjustLatched();H>0;H--) P[WIDTH-H]=C;

  /* Paint bottom of the screen */
  H=ScanLines212? 212:192;

  if(lineHiResMode)
  {
    if(Y==H-1)
      for(L=MAX_HEIGHT-Y;L>0;L--)
      {
        for(A=((WIDTH*L)<<1)-1,H=WIDTH;H>0;H--,A--)
        {
          P[A+WIDTH]=C;
        }
      }
  }
  else // standard mode
    if(Y==H-1) for(H=WIDTH*(HEIGHT-H-FirstLine+1)-1;H>=WIDTH;H--) P[H]=C;

  /* Return pointer to the scanline in XBuf */
  return(P+(WIDTH-256)/2+FmsxDisplayHAdjustLatched());
}

/** Sprites() ************************************************/
/** This function is called from RefreshLine#() to refresh  **/
/** sprites in SCREENs 1-3.                                 **/
/*************************************************************/
void Sprites(uint8_t Y,uint16_t *Line)
{
  static const uint8_t SprHeights[4] = { 8,16,16,32 };
  uint16_t *P,C;
  uint8_t OH,IH,*PT,*AT;
  unsigned int M;
  int L,K;

  /* No extra sprites yet */
  VDPStatus[0]&=~0x5F;

  /* Assign initial values before counting */
  OH = SprHeights[VDP[1]&0x03];
  IH = SprHeights[VDP[1]&0x02];
  AT = SprTab-4;
  Y += FMSX_RENDER_VSCROLL;
  C  = MAXSPRITE1+1;
  M  = 0;

  /* Count displayed sprites */
  for(L=0;L<32;++L)
  {
    M<<=1;AT+=4;        /* Iterating through SprTab      */
    K=AT[0];            /* K = sprite Y coordinate       */
    if(K==208) break;   /* Iteration terminates if Y=208 */
    if(K>256-IH) K-=256; /* Y coordinate may be negative  */

    /* Mark all valid sprites with 1s, break at MAXSPRITE1 sprites */
    if((Y>K)&&(Y<=K+OH))
    {
      /* If we exceed the maximum number of sprites per line... */
      if(!--C)
      {
        /* Set 5thSprite flag in the VDP status register */
        VDPStatus[0]|=0x40;
        /* Stop drawing sprites, unless all-sprites option enabled */
        if(!OPTION(MSX_ALLSPRITE)) break;
      }

      /* Mark sprite as ready to draw */
      M|=1;
    }
  }

  /* Mark last checked sprite (5th in line, Y=208, or sprite #31) */
  VDPStatus[0]|=L<32? L:31;

  /* Draw all marked sprites */
  for(;M;M>>=1,AT-=4)
    if(M&1)
    {
      C=AT[3];                  /* C = sprite attributes */
      L=C&0x80? AT[1]-32:AT[1]; /* Sprite may be shifted left by 32 */
      C&=0x0F;                  /* C = sprite color */

      if((L<256)&&(L>-OH)&&C)
      {
        K=AT[0];                /* K = sprite Y coordinate */
        if(K>256-IH) K-=256;      /* Y coordinate may be negative */

        P=Line+L;
        K  = Y-K-1;
        PT = SprGen+((int)(IH>8? AT[2]&0xFC:AT[2])<<3)+(OH>IH? (K>>1):K);
        C=XPal[C];

        /* Mask 1: clip left sprite boundary */
        K=L>=0? 0xFFFF:(0x10000>>(OH>IH? (-L>>1):-L))-1;

        /* Mask 2: clip right sprite boundary */
        L+=(int)OH-257;
        if(L>=0)
        {
          L=(IH>8? 0x0002:0x0200)<<(OH>IH? (L>>1):L);
          K&=~(L-1);
        }

        /* Get and clip the sprite data */
        K&=((int)PT[0]<<8)|(IH>8? PT[16]:0x00);

        /* If output size is bigger than the input size... */
        if(OH>IH)
        {
          /* Big (zoomed) sprite */

          /* Draw left 16 uint16_ts of the sprite */
          if(K&0xFF00)
          {
            if(K&0x8000) P[1]=P[0]=C;
            if(K&0x4000) P[3]=P[2]=C;
            if(K&0x2000) P[5]=P[4]=C;
            if(K&0x1000) P[7]=P[6]=C;
            if(K&0x0800) P[9]=P[8]=C;
            if(K&0x0400) P[11]=P[10]=C;
            if(K&0x0200) P[13]=P[12]=C;
            if(K&0x0100) P[15]=P[14]=C;
          }

          /* Draw right 16 uint16_ts of the sprite */
          if(K&0x00FF)
          {
            if(K&0x0080) P[17]=P[16]=C;
            if(K&0x0040) P[19]=P[18]=C;
            if(K&0x0020) P[21]=P[20]=C;
            if(K&0x0010) P[23]=P[22]=C;
            if(K&0x0008) P[25]=P[24]=C;
            if(K&0x0004) P[27]=P[26]=C;
            if(K&0x0002) P[29]=P[28]=C;
            if(K&0x0001) P[31]=P[30]=C;
          }
        }
        else
        {
          /* Normal (unzoomed) sprite */

          /* Draw left 8 uint16_ts of the sprite */
          if(K&0xFF00)
          {
            if(K&0x8000) P[0]=C;
            if(K&0x4000) P[1]=C;
            if(K&0x2000) P[2]=C;
            if(K&0x1000) P[3]=C;
            if(K&0x0800) P[4]=C;
            if(K&0x0400) P[5]=C;
            if(K&0x0200) P[6]=C;
            if(K&0x0100) P[7]=C;
          }

          /* Draw right 8 uint16_ts of the sprite */
          if(K&0x00FF)
          {
            if(K&0x0080) P[8]=C;
            if(K&0x0040) P[9]=C;
            if(K&0x0020) P[10]=C;
            if(K&0x0010) P[11]=C;
            if(K&0x0008) P[12]=C;
            if(K&0x0004) P[13]=C;
            if(K&0x0002) P[14]=C;
            if(K&0x0001) P[15]=C;
          }
        }
      }
    }
}

/** ColorSprites() *******************************************/
/** This function is called from RefreshLine#() to refresh  **/
/** color sprites in SCREENs 4-8. The result is returned in **/
/** ZBuf, whose size must be 320 bytes (32+256+32).         **/
/*************************************************************/
void ColorSprites(uint8_t Y,uint8_t *ZBuf)
{
  static const uint8_t SprHeights[4] = { 8,16,16,32 };
  uint8_t C,IH,OH,J,OrThem;
  uint8_t *P,*PT,*AT;
  int L,K;
  unsigned int M;

  /* No extra sprites yet */
  VDPStatus[0]&=~0x5F;

  /* Clear ZBuffer and exit if sprites are off */
  memset(ZBuf+32,0,256);
  if(SpritesOFF) return;

  /* Assign initial values before counting */
  OrThem = 0x00;
  OH = SprHeights[VDP[1]&0x03];
  IH = SprHeights[VDP[1]&0x02];
  AT = SprTab-4;
  C  = MAXSPRITE2+1;
  M  = 0;

  /* Count displayed sprites */
  for(L=0;L<32;++L)
  {
    M<<=1;AT+=4;              /* Iterating through SprTab      */
    K=AT[0];                  /* Read Y from SprTab            */
    if(K==216) break;         /* Iteration terminates if Y=216 */
    K=(uint8_t)(K-FMSX_RENDER_VSCROLL);      /* Sprite's actual Y coordinate  */
    if(K>256-IH) K-=256;       /* Y coordinate may be negative  */

    /* Mark all valid sprites with 1s, break at MAXSPRITE2 sprites */
    if((Y>K)&&(Y<=K+OH))
    {
      /* If we exceed the maximum number of sprites per line... */
      if(!--C)
      {
        /* Set 9thSprite flag in the VDP status register */
        VDPStatus[0]|=0x40;
        /* Stop drawing sprites, unless all-sprites option enabled */
        if(!OPTION(MSX_ALLSPRITE)) break;
      }

      /* Mark sprite as ready to draw */
      M|=1;
    }
  }

  /* Mark last checked sprite (9th in line, Y=216, or sprite #31) */
  VDPStatus[0]|=L<32? L:31;

  /* Draw all marked sprites */
  for(;M;M>>=1,AT-=4)
    if(M&1)
    {
      K=(uint8_t)(AT[0]-FMSX_RENDER_VSCROLL); /* K = sprite Y coordinate */
      if(K>256-IH) K-=256;        /* Y coordinate may be negative */

      J=Y-K-1;
      J = OH>IH? (J>>1):J;
      C=SprTab[-0x0200+((AT-SprTab)<<2)+J];
      OrThem|=C&0x40;

      if(C&0x0F)
      {
        PT = SprGen+((int)(IH>8? AT[2]&0xFC:AT[2])<<3)+J;
        P=ZBuf+AT[1]+(C&0x80? 0:32);
        C&=0x0F;
        J=PT[0];

        if(OrThem&0x20)
        {
          if(OH>IH)
          {
            if(J&0x80) { P[0]|=C;P[1]|=C; }
            if(J&0x40) { P[2]|=C;P[3]|=C; }
            if(J&0x20) { P[4]|=C;P[5]|=C; }
            if(J&0x10) { P[6]|=C;P[7]|=C; }
            if(J&0x08) { P[8]|=C;P[9]|=C; }
            if(J&0x04) { P[10]|=C;P[11]|=C; }
            if(J&0x02) { P[12]|=C;P[13]|=C; }
            if(J&0x01) { P[14]|=C;P[15]|=C; }
            if(IH>8)
            {
              J=PT[16];
              if(J&0x80) { P[16]|=C;P[17]|=C; }
              if(J&0x40) { P[18]|=C;P[19]|=C; }
              if(J&0x20) { P[20]|=C;P[21]|=C; }
              if(J&0x10) { P[22]|=C;P[23]|=C; }
              if(J&0x08) { P[24]|=C;P[25]|=C; }
              if(J&0x04) { P[26]|=C;P[27]|=C; }
              if(J&0x02) { P[28]|=C;P[29]|=C; }
              if(J&0x01) { P[30]|=C;P[31]|=C; }
            }
          }
          else
          {
            if(J&0x80) P[0]|=C;
            if(J&0x40) P[1]|=C;
            if(J&0x20) P[2]|=C;
            if(J&0x10) P[3]|=C;
            if(J&0x08) P[4]|=C;
            if(J&0x04) P[5]|=C;
            if(J&0x02) P[6]|=C;
            if(J&0x01) P[7]|=C;
            if(IH>8)
            {
              J=PT[16];
              if(J&0x80) P[8]|=C;
              if(J&0x40) P[9]|=C;
              if(J&0x20) P[10]|=C;
              if(J&0x10) P[11]|=C;
              if(J&0x08) P[12]|=C;
              if(J&0x04) P[13]|=C;
              if(J&0x02) P[14]|=C;
              if(J&0x01) P[15]|=C;
            }
          }
        }
        else
        {
          if(OH>IH)
          {
            if(J&0x80) P[0]=P[1]=C;
            if(J&0x40) P[2]=P[3]=C;
            if(J&0x20) P[4]=P[5]=C;
            if(J&0x10) P[6]=P[7]=C;
            if(J&0x08) P[8]=P[9]=C;
            if(J&0x04) P[10]=P[11]=C;
            if(J&0x02) P[12]=P[13]=C;
            if(J&0x01) P[14]=P[15]=C;
            if(IH>8)
            {
              J=PT[16];
              if(J&0x80) P[16]=P[17]=C;
              if(J&0x40) P[18]=P[19]=C;
              if(J&0x20) P[20]=P[21]=C;
              if(J&0x10) P[22]=P[23]=C;
              if(J&0x08) P[24]=P[25]=C;
              if(J&0x04) P[26]=P[27]=C;
              if(J&0x02) P[28]=P[29]=C;
              if(J&0x01) P[30]=P[31]=C;
            }
          }
          else
          {
            if(J&0x80) P[0]=C;
            if(J&0x40) P[1]=C;
            if(J&0x20) P[2]=C;
            if(J&0x10) P[3]=C;
            if(J&0x08) P[4]=C;
            if(J&0x04) P[5]=C;
            if(J&0x02) P[6]=C;
            if(J&0x01) P[7]=C;
            if(IH>8)
            {
              J=PT[16];
              if(J&0x80) P[8]=C;
              if(J&0x40) P[9]=C;
              if(J&0x20) P[10]=C;
              if(J&0x10) P[11]=C;
              if(J&0x08) P[12]=C;
              if(J&0x04) P[13]=C;
              if(J&0x02) P[14]=C;
              if(J&0x01) P[15]=C;
            }
          }
        }
      }

      /* Update overlapping flag */
      OrThem>>=1;
    }
}

/** RefreshLineF() *******************************************/
/** Dummy refresh function called for non-existing screens. **/
/*************************************************************/
void RefreshLineF(uint8_t Y)
{
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  if(P) ClearLine(P,XPal[BGColor]);
}

/** RefreshLine0() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN0.                 **/
/*************************************************************/
void RefreshLine0(uint8_t Y)
{
  uint16_t FC;
  uint8_t X,*T,*G;
  uint16_t BC=XPal[BGColor];
  uint16_t *P=RefreshBorder(Y,BC);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,BC);
  else
  {
    LastScanline = Y + FirstLine;
    P[0]=P[1]=P[2]=P[3]=P[4]=P[5]=P[6]=P[7]=P[8]=BC;

    G=(FontBuf&&(Mode&MSX_FIXEDFONT)? FontBuf:ChrGen)+((Y+FMSX_RENDER_VSCROLL)&0x07);
    T=ChrTab+40*(Y>>3);
    FC=XPal[FGColor];
    P+=9;

    for(X=0;X<40;X++,T++,P+=6)
    {
      Y=G[(int)*T<<3];
      P[0]=Y&0x80? FC:BC;P[1]=Y&0x40? FC:BC;
      P[2]=Y&0x20? FC:BC;P[3]=Y&0x10? FC:BC;
      P[4]=Y&0x08? FC:BC;P[5]=Y&0x04? FC:BC;
    }

    P[0]=P[1]=P[2]=P[3]=P[4]=P[5]=P[6]=BC;
  }
}

/** RefreshLine1() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN1, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine1(uint8_t Y)
{
  uint16_t FC,BC;
  uint8_t K,X,*T,*G;
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  if(!P)
     return;

  if(!FMSX_SCREEN_ON)
     ClearLine(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    Y+=FMSX_RENDER_VSCROLL;
    G=(FontBuf&&(Mode&MSX_FIXEDFONT)? FontBuf:ChrGen)+(Y&0x07);
    T=ChrTab+((int)(Y&0xF8)<<2);

    for(X=0;X<32;X++,T++,P+=8)
    {
      K=ColTab[*T>>3];
      FC=XPal[K>>4];
      BC=XPal[K&0x0F];
      K=G[(int)*T<<3];
      P[0]=K&0x80? FC:BC;P[1]=K&0x40? FC:BC;
      P[2]=K&0x20? FC:BC;P[3]=K&0x10? FC:BC;
      P[4]=K&0x08? FC:BC;P[5]=K&0x04? FC:BC;
      P[6]=K&0x02? FC:BC;P[7]=K&0x01? FC:BC;
    }

    if(!SpritesOFF) Sprites(Y,P-256);
  }
}

/** RefreshLine2() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN2, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine2(uint8_t Y)
{
  uint16_t FC,BC;
  uint8_t K,X,*T,*T0,*T1;
  int I,J,PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint16_t MaskBg;
  uint16_t BgRaw[512];
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    Y+=FMSX_RENDER_VSCROLL;
    T=ChrTab+((int)(Y&0xF8)<<2);
    I=((int)(Y&0xC0)<<5)+(Y&0x07);
    Coarse = V9958CoarseScroll256();
    Fine = V9958FineScroll256();
    LeftMask = V9958MaskLeft256();
    VirtualWidth = V9958VirtualWidth256();

    T0=T;
    for(X=0;X<32;X++)
    {
      J=(int)T0[X]<<3;
      K=ColTab[(I+J)&ColTabM];
      FC=XPal[K>>4];
      BC=XPal[K&0x0F];
      K=ChrGen[(I+J)&ChrGenM];

      BgRaw[(X<<3)+0]=(K&0x80)? FC:BC;
      BgRaw[(X<<3)+1]=(K&0x40)? FC:BC;
      BgRaw[(X<<3)+2]=(K&0x20)? FC:BC;
      BgRaw[(X<<3)+3]=(K&0x10)? FC:BC;
      BgRaw[(X<<3)+4]=(K&0x08)? FC:BC;
      BgRaw[(X<<3)+5]=(K&0x04)? FC:BC;
      BgRaw[(X<<3)+6]=(K&0x02)? FC:BC;
      BgRaw[(X<<3)+7]=(K&0x01)? FC:BC;
    }

    if(VirtualWidth>256u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      for(X=0;X<32;X++)
      {
        J=(int)T1[X]<<3;
        K=ColTab[(I+J)&ColTabM];
        FC=XPal[K>>4];
        BC=XPal[K&0x0F];
        K=ChrGen[(I+J)&ChrGenM];

        BgRaw[256+(X<<3)+0]=(K&0x80)? FC:BC;
        BgRaw[256+(X<<3)+1]=(K&0x40)? FC:BC;
        BgRaw[256+(X<<3)+2]=(K&0x20)? FC:BC;
        BgRaw[256+(X<<3)+3]=(K&0x10)? FC:BC;
        BgRaw[256+(X<<3)+4]=(K&0x08)? FC:BC;
        BgRaw[256+(X<<3)+5]=(K&0x04)? FC:BC;
        BgRaw[256+(X<<3)+6]=(K&0x02)? FC:BC;
        BgRaw[256+(X<<3)+7]=(K&0x01)? FC:BC;
      }
    }

    P0=P;
    for(PIdx=0;PIdx<256;++PIdx)
    {
      Bg=XPal[BGColor];
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        Bg=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }
      P0[PIdx]=Bg;
    }

    if(!SpritesOFF) Sprites(Y,P0);
  }
}

/** RefreshLine3() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN3, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine3(uint8_t Y)
{
  uint8_t X,K,*T,*G;
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    Y+=FMSX_RENDER_VSCROLL;
    T=ChrTab+((int)(Y&0xF8)<<2);
    G=ChrGen+((Y&0x1C)>>2);

    for(X=0;X<32;X++,T++,P+=8)
    {
      K=G[(int)*T<<3];
      P[0]=P[1]=P[2]=P[3]=XPal[K>>4];
      P[4]=P[5]=P[6]=P[7]=XPal[K&0x0F];
    }

    if(!SpritesOFF) Sprites(Y,P-256);
  }
}

/** RefreshLine4() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN4, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine4PlainRange(uint8_t Y,unsigned X0,unsigned X1)
{
  uint16_t FC,BC;
  uint8_t K,C,*T,*R;
  int I,J;
  uint8_t ZBuf[320];
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  unsigned X;

  if(!P) return;
  if(X0>=32u) return;
  if(X1>32u) X1=32u;
  if(X1<=X0) return;

  if(!FMSX_SCREEN_ON)
  {
    ClearLine(P,XPal[BGColor]);
    return;
  }

  LastScanline = Y + FirstLine;
  ColorSprites(Y,ZBuf);
  R=ZBuf+32u+(X0<<3);
  P+=(X0<<3);
  Y+=FMSX_RENDER_VSCROLL;
  T=ChrTab+((int)(Y&0xF8)<<2)+(int)X0;
  I=((int)(Y&0xC0)<<5)+(Y&0x07);

  for(X=X0;X<X1;X++,R+=8,P+=8,T++)
  {
    J=(int)*T<<3;
    K=ColTab[(I+J)&ColTabM];
    FC=XPal[K>>4];
    BC=XPal[K&0x0F];
    K=ChrGen[(I+J)&ChrGenM];

    C=R[0];P[0]=C? XPal[C]:(K&0x80)? FC:BC;
    C=R[1];P[1]=C? XPal[C]:(K&0x40)? FC:BC;
    C=R[2];P[2]=C? XPal[C]:(K&0x20)? FC:BC;
    C=R[3];P[3]=C? XPal[C]:(K&0x10)? FC:BC;
    C=R[4];P[4]=C? XPal[C]:(K&0x08)? FC:BC;
    C=R[5];P[5]=C? XPal[C]:(K&0x04)? FC:BC;
    C=R[6];P[6]=C? XPal[C]:(K&0x02)? FC:BC;
    C=R[7];P[7]=C? XPal[C]:(K&0x01)? FC:BC;
  }
}

void RefreshLine4(uint8_t Y)
{
  uint16_t FC,BC;
  uint8_t K,X,C,*T,*T0,*T1,*R;
  int I,J;
  int PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint8_t ZBuf[320];
  uint16_t BgRaw[512];
  uint8_t *R0;
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    Y+=FMSX_RENDER_VSCROLL;
    T=ChrTab+((int)(Y&0xF8)<<2);
    I=((int)(Y&0xC0)<<5)+(Y&0x07);

    /*
     * Keep the plain SCREEN 4 path identical to upstream fMSX unless the
     * V9958 horizontal-scroll registers are really in use. This avoids
     * dragging the wider multipage compositor into title-specific raster
     * hacks such as Knightmare Gold's vertical smooth-scroll patches.
     */
    if(!V9958ScrollActive256())
    {
      for(X=0;X<32;X++,R+=8,P+=8,T++)
      {
        J=(int)*T<<3;
        K=ColTab[(I+J)&ColTabM];
        FC=XPal[K>>4];
        BC=XPal[K&0x0F];
        K=ChrGen[(I+J)&ChrGenM];

        C=R[0];P[0]=C? XPal[C]:(K&0x80)? FC:BC;
        C=R[1];P[1]=C? XPal[C]:(K&0x40)? FC:BC;
        C=R[2];P[2]=C? XPal[C]:(K&0x20)? FC:BC;
        C=R[3];P[3]=C? XPal[C]:(K&0x10)? FC:BC;
        C=R[4];P[4]=C? XPal[C]:(K&0x08)? FC:BC;
        C=R[5];P[5]=C? XPal[C]:(K&0x04)? FC:BC;
        C=R[6];P[6]=C? XPal[C]:(K&0x02)? FC:BC;
        C=R[7];P[7]=C? XPal[C]:(K&0x01)? FC:BC;
      }
      return;
    }

    R0=R;
    P0=P;
    Coarse = V9958CoarseScroll256();
    Fine = V9958FineScroll256();
    LeftMask = V9958MaskLeft256();
    VirtualWidth = V9958VirtualWidth256();

    /* Build full virtual background span (page 0 + optional page 1). */
    T0=T;
    for(X=0;X<32;X++)
    {
      J=(int)T0[X]<<3;
      K=ColTab[(I+J)&ColTabM];
      FC=XPal[K>>4];
      BC=XPal[K&0x0F];
      K=ChrGen[(I+J)&ChrGenM];

      BgRaw[(X<<3)+0]=(K&0x80)? FC:BC;
      BgRaw[(X<<3)+1]=(K&0x40)? FC:BC;
      BgRaw[(X<<3)+2]=(K&0x20)? FC:BC;
      BgRaw[(X<<3)+3]=(K&0x10)? FC:BC;
      BgRaw[(X<<3)+4]=(K&0x08)? FC:BC;
      BgRaw[(X<<3)+5]=(K&0x04)? FC:BC;
      BgRaw[(X<<3)+6]=(K&0x02)? FC:BC;
      BgRaw[(X<<3)+7]=(K&0x01)? FC:BC;
    }

    if(VirtualWidth>256u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      for(X=0;X<32;X++)
      {
        J=(int)T1[X]<<3;
        K=ColTab[(I+J)&ColTabM];
        FC=XPal[K>>4];
        BC=XPal[K&0x0F];
        K=ChrGen[(I+J)&ChrGenM];

        BgRaw[256+(X<<3)+0]=(K&0x80)? FC:BC;
        BgRaw[256+(X<<3)+1]=(K&0x40)? FC:BC;
        BgRaw[256+(X<<3)+2]=(K&0x20)? FC:BC;
        BgRaw[256+(X<<3)+3]=(K&0x10)? FC:BC;
        BgRaw[256+(X<<3)+4]=(K&0x08)? FC:BC;
        BgRaw[256+(X<<3)+5]=(K&0x04)? FC:BC;
        BgRaw[256+(X<<3)+6]=(K&0x02)? FC:BC;
        BgRaw[256+(X<<3)+7]=(K&0x01)? FC:BC;
      }
    }

    for(PIdx=0;PIdx<256;++PIdx)
    {
      Bg=XPal[BGColor];
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        Bg=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }
      C=R0[PIdx];
      P0[PIdx]=C? XPal[C]:Bg;
    }
  }
}

/** RefreshLine5() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN5, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine5(uint8_t Y)
{
  uint8_t X,*T,*R,*T0,*T1;
  uint8_t C;
  int PIdx;
  int Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint16_t MaskBg;
  uint8_t ZBuf[320];
  uint16_t BgRaw[512];
  uint8_t *R0;
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    R0=R;
    P0=P;
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll256();
    Fine = V9958FineScroll256();
    LeftMask = V9958MaskLeft256();
    VirtualWidth = V9958VirtualWidth256();

    T0=T;
    for(X=0,T=T0;X<16;X++,T+=8)
    {
      BgRaw[(X<<4)+0]=XPal[T[0]>>4];
      BgRaw[(X<<4)+1]=XPal[T[0]&0x0F];
      BgRaw[(X<<4)+2]=XPal[T[1]>>4];
      BgRaw[(X<<4)+3]=XPal[T[1]&0x0F];
      BgRaw[(X<<4)+4]=XPal[T[2]>>4];
      BgRaw[(X<<4)+5]=XPal[T[2]&0x0F];
      BgRaw[(X<<4)+6]=XPal[T[3]>>4];
      BgRaw[(X<<4)+7]=XPal[T[3]&0x0F];
      BgRaw[(X<<4)+8]=XPal[T[4]>>4];
      BgRaw[(X<<4)+9]=XPal[T[4]&0x0F];
      BgRaw[(X<<4)+10]=XPal[T[5]>>4];
      BgRaw[(X<<4)+11]=XPal[T[5]&0x0F];
      BgRaw[(X<<4)+12]=XPal[T[6]>>4];
      BgRaw[(X<<4)+13]=XPal[T[6]&0x0F];
      BgRaw[(X<<4)+14]=XPal[T[7]>>4];
      BgRaw[(X<<4)+15]=XPal[T[7]&0x0F];
    }

    if(VirtualWidth>256u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      for(X=0,T=T1;X<16;X++,T+=8)
      {
        BgRaw[256+(X<<4)+0]=XPal[T[0]>>4];
        BgRaw[256+(X<<4)+1]=XPal[T[0]&0x0F];
        BgRaw[256+(X<<4)+2]=XPal[T[1]>>4];
        BgRaw[256+(X<<4)+3]=XPal[T[1]&0x0F];
        BgRaw[256+(X<<4)+4]=XPal[T[2]>>4];
        BgRaw[256+(X<<4)+5]=XPal[T[2]&0x0F];
        BgRaw[256+(X<<4)+6]=XPal[T[3]>>4];
        BgRaw[256+(X<<4)+7]=XPal[T[3]&0x0F];
        BgRaw[256+(X<<4)+8]=XPal[T[4]>>4];
        BgRaw[256+(X<<4)+9]=XPal[T[4]&0x0F];
        BgRaw[256+(X<<4)+10]=XPal[T[5]>>4];
        BgRaw[256+(X<<4)+11]=XPal[T[5]&0x0F];
        BgRaw[256+(X<<4)+12]=XPal[T[6]>>4];
        BgRaw[256+(X<<4)+13]=XPal[T[6]&0x0F];
        BgRaw[256+(X<<4)+14]=XPal[T[7]>>4];
        BgRaw[256+(X<<4)+15]=XPal[T[7]&0x0F];
      }
    }

    /* Match left mask color to current scrolled backdrop pixel. */
    MaskBg=BgRaw[(unsigned)((int)Coarse-(int)Fine)&(VirtualWidth-1u)];
    for(PIdx=0;PIdx<256;++PIdx)
    {
      Bg=MaskBg;
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        Bg=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }
      C=R0[PIdx];
      P0[PIdx]=C? XPal[C]:Bg;
    }
  }
}

/** RefreshLine8() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN8, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine8(uint8_t Y)
{
  static uint8_t SprToScr[16] =
  {
    0x00,0x02,0x10,0x12,0x80,0x82,0x90,0x92,
    0x49,0x4B,0x59,0x5B,0xC9,0xCB,0xD9,0xDB
  };
  uint8_t C,*T,*R,*T0,*T1;
  int PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint16_t MaskBg;
  uint8_t ZBuf[320];
  uint16_t BgRaw[512];
  uint8_t *R0;
  uint8_t *S0;
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,BPal[VDP[7]]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,BPal[VDP[7]]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    R0=R;
    S0=R;
    P0=P;
    /* Follow BlueMSX/openMSX interleaved layout: 128 bytes/line per plane. */
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll256();
    Fine = V9958FineScroll256();
    LeftMask = V9958MaskLeft256();
    VirtualWidth = V9958VirtualWidth256();

    T0=T;
    V9958ExpandInterleaved256ToPalette(BgRaw,T0);

    if(VirtualWidth>256u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      V9958ExpandInterleaved256ToPalette(BgRaw+256,T1);
    }

    /* Match left mask color to current scrolled backdrop pixel. */
    MaskBg=BgRaw[(unsigned)((int)Coarse-(int)Fine)&(VirtualWidth-1u)];
    for(PIdx=0;PIdx<256;PIdx++)
    {
      Bg=MaskBg;
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        Bg=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }

      C=S0[PIdx];
      P0[PIdx]=C? BPal[SprToScr[C]]:Bg;
    }
  }
}

/** RefreshLine10() ******************************************/
/** Refresh line Y (0..191/211) of SCREEN10/11, including   **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine10(uint8_t Y)
{
  uint8_t C,*T,*R,*T0,*T1;
  int J,K;
  int PIdx,Src,Base;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint16_t MaskBg;
  uint8_t ZBuf[320];
  uint8_t BgRaw[512];
  uint8_t *R0;
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,BPal[VDP[7]]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,BPal[VDP[7]]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    R0=R;
    P0=P;
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll256();
    Fine = V9958FineScroll256();
    LeftMask = V9958MaskLeft256();
    VirtualWidth = V9958VirtualWidth256();

    T0=T;
    V9958ExpandInterleaved256ToBytes(BgRaw,T0);

    if(VirtualWidth>256u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      V9958ExpandInterleaved256ToBytes(BgRaw+256,T1);
    }

    /* Match left mask color to current scrolled backdrop pixel. */
    Src=(int)Coarse-(int)Fine;
    if(Src<0) Src+= (int)VirtualWidth;
    Src&=(int)(VirtualWidth-1u);
    Base=Src&~3;
    K=(BgRaw[Base+0]&0x07)|((BgRaw[Base+1]&0x07)<<3);
    if(K&0x20) K-=64;
    J=(BgRaw[Base+2]&0x07)|((BgRaw[Base+3]&0x07)<<3);
    if(J&0x20) J-=64;
    Y=BgRaw[Src]>>3;
    MaskBg=Y&1? XPal[Y>>1]:YJKColor(Y,J,K);

    for(PIdx=0;PIdx<256;PIdx++)
    {
      Bg=MaskBg;
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        Src&=(int)(VirtualWidth-1u);
        Base=Src&~3;
        K=(BgRaw[Base+0]&0x07)|((BgRaw[Base+1]&0x07)<<3);
        if(K&0x20) K-=64;
        J=(BgRaw[Base+2]&0x07)|((BgRaw[Base+3]&0x07)<<3);
        if(J&0x20) J-=64;
        Y=BgRaw[Src]>>3;
        Bg=Y&1? XPal[Y>>1]:YJKColor(Y,J,K);
      }
      C=R0[PIdx];
      P0[PIdx]=C? XPal[C]:Bg;
    }
  }
}

/** RefreshLine12() ******************************************/
/** Refresh line Y (0..191/211) of SCREEN12, including      **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine12(uint8_t Y)
{
  uint8_t C,*T,*R,*T0,*T1;
  int J,K;
  int PIdx,Src,Base;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint16_t MaskBg;
  uint8_t ZBuf[320];
  uint8_t BgRaw[512];
  uint8_t *R0;
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,BPal[VDP[7]]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,BPal[VDP[7]]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R = ZBuf+32;
    R0=R;
    P0=P;
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll256();
    Fine = V9958FineScroll256();
    LeftMask = V9958MaskLeft256();
    VirtualWidth = V9958VirtualWidth256();

    T0=T;
    V9958ExpandInterleaved256ToBytes(BgRaw,T0);

    if(VirtualWidth>256u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      V9958ExpandInterleaved256ToBytes(BgRaw+256,T1);
    }

    /* Match left mask color to current scrolled backdrop pixel. */
    Src=(int)Coarse-(int)Fine;
    if(Src<0) Src+=(int)VirtualWidth;
    Src&=(int)(VirtualWidth-1u);
    Base=Src&~3;
    K=(BgRaw[Base+0]&0x07)|((BgRaw[Base+1]&0x07)<<3);
    if(K&0x20) K-=64;
    J=(BgRaw[Base+2]&0x07)|((BgRaw[Base+3]&0x07)<<3);
    if(J&0x20) J-=64;
    MaskBg=YJKColor(BgRaw[Src]>>3,J,K);

    for(PIdx=0;PIdx<256;PIdx++)
    {
      Bg=MaskBg;
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        Src&=(int)(VirtualWidth-1u);
        Base=Src&~3;
        K=(BgRaw[Base+0]&0x07)|((BgRaw[Base+1]&0x07)<<3);
        if(K&0x20) K-=64;
        J=(BgRaw[Base+2]&0x07)|((BgRaw[Base+3]&0x07)<<3);
        if(J&0x20) J-=64;
        Bg=YJKColor(BgRaw[Src]>>3,J,K);
      }
      C=R0[PIdx];
      P0[PIdx]=C? XPal[C]:Bg;
    }
  }
}

#ifdef NARROW

/** RefreshLine6() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN6, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine6(uint8_t Y)
{
  uint8_t X,*T,*R,*T0,*T1,C;
  int I,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint8_t ZBuf[320];
  uint16_t BgRaw[1024];
  uint8_t *R0;
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,XPal[BGColor&0x03]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,XPal[BGColor&0x03]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    R0=R;
    P0=P;
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll512();
    Fine = V9958FineScroll512();
    LeftMask = V9958MaskLeft512();
    VirtualWidth = V9958VirtualWidth512();

    T0=T;
    for(X=0,T=T0;X<128;X++,T++)
    {
      BgRaw[(X<<2)+0]=XPal[T[0]>>6];
      BgRaw[(X<<2)+1]=XPal[(T[0]>>4)&0x03];
      BgRaw[(X<<2)+2]=XPal[(T[0]>>2)&0x03];
      BgRaw[(X<<2)+3]=XPal[T[0]&0x03];
    }

    if(VirtualWidth>512u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      for(X=0,T=T1;X<128;X++,T++)
      {
        BgRaw[512+(X<<2)+0]=XPal[T[0]>>6];
        BgRaw[512+(X<<2)+1]=XPal[(T[0]>>4)&0x03];
        BgRaw[512+(X<<2)+2]=XPal[(T[0]>>2)&0x03];
        BgRaw[512+(X<<2)+3]=XPal[T[0]&0x03];
      }
    }

    /* Match left mask color to current scrolled backdrop pixel. */
    MaskBg=BgRaw[(unsigned)((int)Coarse-(int)Fine)&(VirtualWidth-1u)];
    for(I=0;I<256;I++)
    {
      Bg=MaskBg;
      if((unsigned)(I<<1)>=(unsigned)LeftMask)
      {
        Src=(I<<1)-(int)Fine+(int)Coarse;
        Bg=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }
      C=R0[I];
      P0[I]=C? XPal[C]:Bg;
    }
  }
}
  
/** RefreshLine7() *******************************************/
/** Refresh line Y (0..191/211) of SCREEN7, including       **/
/** sprites in this line.                                   **/
/*************************************************************/
void RefreshLine7(uint8_t Y)
{
  uint8_t C,*T,*R,*T0,*T1,*Plane0,*Plane1;
  unsigned X;
  int I,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint16_t Bg;
  uint16_t MaskBg;
  uint8_t ZBuf[320];
  uint16_t BgRaw[1024];
  uint8_t *R0;
  uint16_t *P0;
  uint16_t *P=RefreshBorder(Y,XPal[BGColor]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    R0=R;
    P0=P;
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll512();
    Fine = V9958FineScroll512();
    LeftMask = V9958MaskLeft512();
    VirtualWidth = V9958VirtualWidth512();

    T0=T;
    Plane0=T0;
    Plane1=V9958VRAMOffsetPtr(T0,(int)V9958InterleavedPlaneOffset());
    for(X=0;X<128;X++)
    {
      BgRaw[(X<<2)+0]=XPal[Plane0[X]>>4];
      BgRaw[(X<<2)+1]=XPal[Plane0[X]&0x0F];
      BgRaw[(X<<2)+2]=XPal[Plane1[X]>>4];
      BgRaw[(X<<2)+3]=XPal[Plane1[X]&0x0F];
    }

    if(VirtualWidth>512u)
    {
      T1=V9958ScrollPagePtr(T0,0x8000);
      Plane0=T1;
      Plane1=V9958VRAMOffsetPtr(T1,(int)V9958InterleavedPlaneOffset());
      for(X=0;X<128;X++)
      {
        BgRaw[512+(X<<2)+0]=XPal[Plane0[X]>>4];
        BgRaw[512+(X<<2)+1]=XPal[Plane0[X]&0x0F];
        BgRaw[512+(X<<2)+2]=XPal[Plane1[X]>>4];
        BgRaw[512+(X<<2)+3]=XPal[Plane1[X]&0x0F];
      }
    }

    /* Match left mask color to current scrolled backdrop pixel. */
    MaskBg=BgRaw[(unsigned)((int)Coarse-(int)Fine)&(VirtualWidth-1u)];
    for(I=0;I<256;I++)
    {
      Bg=MaskBg;
      if((unsigned)(I<<1)>=(unsigned)LeftMask)
      {
        Src=(I<<1)-(int)Fine+(int)Coarse;
        Bg=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }
      C=R0[I];
      P0[I]=C? XPal[C]:Bg;
    }
  }
}

/** RefreshLineTx80() ****************************************/
/** Refresh line Y (0..191/211) of TEXT80.                  **/
/*************************************************************/
void RefreshLineTx80(uint8_t Y)
{
  uint16_t FC;
  uint8_t X,M,*T,*C,*G;
  uint16_t BC=XPal[BGColor];
  uint16_t *P=RefreshBorder(Y,BC);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine(P,BC);
  else
  {
    LastScanline = Y + FirstLine;
    P[0]=P[1]=P[2]=P[3]=P[4]=P[5]=P[6]=P[7]=P[8]=BC;
    G=(FontBuf&&(Mode&MSX_FIXEDFONT)? FontBuf:ChrGen)+((Y+FMSX_RENDER_VSCROLL)&0x07);
    T=ChrTab+((80*(Y>>3))&ChrTabM);
    C=ColTab+((10*(Y>>3))&ColTabM);
    P+=9;

    for(X=0,M=0x00;X<80;X++,T++,P+=3)
    {
      if(!(X&0x07)) M=*C++;
      if(M&0x80) { FC=XPal[XFGColor];BC=XPal[XBGColor]; }
      else       { FC=XPal[FGColor];BC=XPal[BGColor]; }
      M<<=1;
      Y=*(G+((int)*T<<3));
      P[0]=Y&0xC0? FC:BC;
      P[1]=Y&0x30? FC:BC;
      P[2]=Y&0x0C? FC:BC;
    }

    P[0]=P[1]=P[2]=P[3]=P[4]=P[5]=P[6]=XPal[BGColor];
  }
}

#endif /* NARROW */
