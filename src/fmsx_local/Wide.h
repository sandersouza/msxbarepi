/** fMSX: portable MSX emulator ******************************/
/**                                                         **/
/**                           Wide.h                        **/
/**                                                         **/
/** This file contains wide (512pix) screen refresh drivers **/
/** common for X11, VGA, and other "chunky" bitmapped video **/
/** implementations. It also includes dummy sound drivers   **/
/** for fMSX.                                               **/
/**                                                         **/
/** Copyright (C) Marat Fayzullin 1994-2021                 **/
/**     You are not allowed to distribute this software     **/
/**     commercially. Please, notify me, if you make any    **/
/**     changes to this file.                               **/
/*************************************************************/
#ifndef NARROW

#ifndef FMSX_SCREEN_ON
extern uint8_t FmsxVDPScreenOnLatched;
#define FMSX_SCREEN_ON (FmsxVDPScreenOnLatched)
#endif

#ifndef FMSX_DRAW_AREA
extern uint8_t FmsxVDPDrawingLatched;
#define FMSX_DRAW_AREA (FmsxVDPDrawingLatched)
#endif

extern uint8_t *FmsxVDPLineChrTabLatched;
extern int FmsxVDPLineChrTabMLatched;
extern uint8_t FmsxVDPLineR2Latched;
extern uint8_t FmsxVDPLineR25Latched;
extern uint8_t FmsxVDPLineR26Latched;
extern uint8_t FmsxVDPLineR27Latched;
extern uint8_t FmsxVDPLineR18Latched;
extern uint8_t FmsxVDPLineOddPageLatched;
extern uint8_t FmsxVDPLineInterlaceOddFieldLatched;
extern uint8_t FmsxVDPLineColorSpritesLatched[384];
extern uint8_t FmsxVDPLineColorSpritesRender[384];
extern uint8_t FmsxVDPLineColorSpritesValid;
extern uint8_t FmsxVDPLineColorSpritesRenderValid;
extern void FmsxLatchColorSpritesLine(uint8_t Y,uint8_t *ZBuf);

/** ClearLine512() *******************************************/
/** Clear 512 pixels from P with color C.                   **/
/*************************************************************/
static void ClearLine512(uint16_t *P,uint16_t C)
{
  int J;

  for(J=0;J<512;J++) P[J]=C;
}

/**
 * In MSX2+ bitmap multipage scroll, blueMSX neutralizes R#2 bit5 in the
 * effective base address and then walks the second page through +0x8000.
 * Our local core mirrors that by masking R#2 bit5 in fmsx_vdp_r2_base(),
 * so the wide renderer should not try to reorder pages again from ChrTab.
 */
static unsigned V9958WideCoarseBlocksLatched(void)
{
  if(!MODEL(MSX_MSX2P)) return 0u;
  return (unsigned)(FmsxVDPLineR26Latched & (((FmsxVDPLineR25Latched & 0x01u) && (FmsxVDPLineR2Latched & 0x20u)) ? 0x3Fu : 0x1Fu));
}

static unsigned V9958WideCoarseScrollLatched(void)
{
  return V9958WideCoarseBlocksLatched()<<3;
}

static unsigned V9958WideFineScrollLatched(void)
{
  return MODEL(MSX_MSX2P) ? (FmsxVDPLineR27Latched & 0x07u) : 0u;
}

static unsigned V9958WidePhysicalCoarseScrollLatched(void)
{
  /*
   * In blueMSX line512 paths, SCREEN 6/7 scroll operates in the doubled
   * physical scanout space. A 9-bit logical scroll becomes a 10-bit walk
   * across the concatenated 1024-pixel wide line.
   */
  return V9958WideCoarseScrollLatched() << 1;
}

static unsigned V9958WidePhysicalFineScrollLatched(void)
{
  return V9958WideFineScrollLatched() << 1;
}

static unsigned V9958WideMaskLeftLatched(void)
{
  return (MODEL(MSX_MSX2P) && (FmsxVDPLineR25Latched & 0x02u)) ? 8u : 0u;
}

static unsigned V9958WideVirtualWidthLatched(void)
{
  return (MODEL(MSX_MSX2P) && (FmsxVDPLineR25Latched & 0x01u) && (FmsxVDPLineR2Latched & 0x20u)) ? 1024u : 512u;
}

static uint8_t *V9958BitmapLinePtrWideLatched(uint8_t Y)
{
  uint8_t *Base;
  int Mask;
  int Size;
  int BasePos;
  int LinePos;
  int Pos;

  Base=FmsxVDPLineChrTabLatched? FmsxVDPLineChrTabLatched:ChrTab;
  Mask=FmsxVDPLineChrTabMLatched? FmsxVDPLineChrTabMLatched:ChrTabM;
  BasePos=(int)(Base-VRAM);
  LinePos=(((int)(Y+FMSX_RENDER_VSCROLL)<<7)&Mask&0x7FFF);
  Pos=(BasePos&~0x7FFF)|LinePos;

  /*
   * blueMSX applies vdpIsOddPage() directly in SCREEN 6/7 bitmap addressing,
   * independent of R#9 bit2. The visible MSX2+ boot logo keeps R#9=00 while
   * still toggling the display page through S#2-derived odd/even state, so
   * the wide path must honor the latched odd page unconditionally.
   */
  if(FmsxVDPLineOddPageLatched && (Pos&0x8000)) Pos-=0x8000;

  Size=VRAMPages<<14;
  if(Size>0)
  {
    Pos%=Size;
    if(Pos<0) Pos+=Size;
  }

  return VRAM+Pos;
}

static uint8_t *V9958BitmapLinePtrWideScreen7Latched(uint8_t Y)
{
  unsigned size;
  unsigned addr;
  unsigned base;
  unsigned line_addr;
  unsigned odd_mask;

  size = (unsigned)(VRAMPages << 14);
  if(size == 0u) return VRAM;

  /*
   * blueMSX keeps SCREEN 7 page selection tied to the full R#2 << 10 base and
   * only resolves EO/odd-page at the final line address mask. The generic
   * fMSX-derived ChrTab/ChrTabM path masks R#2 too early, which is harmless in
   * the boot-logo SCREEN 6 path but can desynchronize one field/page pair in
   * HIRES/interlaced SCREEN 7.
   */
  base = (((unsigned)FmsxVDPLineR2Latched) << 10);
  if(MODEL(MSX_MSX2P) && (FmsxVDPLineR25Latched & 0x01u))
    base &= ~(1u << 15);

  base |= (1u << 10) - 1u;
  odd_mask = FmsxVDPLineOddPageLatched ? ~(1u << 15) : ~0u;
  line_addr = ((unsigned)(Y + FMSX_RENDER_VSCROLL) << 7);
  addr = base & odd_mask & (0xFFFF8000u | line_addr);
  addr %= size;

  return VRAM + addr;
}

static void V9958WideBitmapPages(uint8_t Y,unsigned VirtualWidth,uint8_t **Page0,uint8_t **Page1)
{
  uint8_t *Base;
  uint8_t *Next;

  if((ScrMode==7u) && FmsxVDPLineInterlaceOnLatched)
    Base=V9958BitmapLinePtrWideScreen7Latched(Y);
  else
    Base=V9958BitmapLinePtrWideLatched(Y);
  Next=V9958ScrollPagePtr(Base,0x8000);

  *Page0=Base;
  *Page1=Next;
}

static void RefreshBorder6Wide(uint16_t *P)
{
  const int Left = (WIDTH-256)+2*FmsxDisplayHAdjustLatched();
  const int Right = (WIDTH-256)-2*FmsxDisplayHAdjustLatched();
  const uint16_t C0 = XPal[(BGColor>>2)&0x03];
  const uint16_t C1 = XPal[BGColor&0x03];
  int I;

  for(I=0;I<Left;I++)
    P[-Left+I] = (I&1)? C1:C0;

  for(I=0;I<Right;I++)
    P[512+I] = (I&1)? C1:C0;
}

/** RefreshBorder512() ***************************************/
/** This function is called from RefreshLine#() to refresh  **/
/** the screen border. It returns a pointer to the start of **/
/** scanline Y in XBuf or 0 if scanline is beyond XBuf.     **/
/*************************************************************/
uint16_t *RefreshBorder512(uint8_t Y,uint16_t C)
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
  P=(uint16_t *)WBuf;

  if(lineHiResMode)
  {
    if(!Y)
      /* Paint top of the screen */
      for(L=FirstLine;L>0;L--)
      {
        for(A=((WIDTH*L)<<2)-1,H=WIDTH<<1;H>0;H--,A--)
        {
          if (lineInterlacedMode)
          {
            if (lineFieldOdd)
            { // odd field: preserve even field, refresh only odd physical lines
              P[A]=C;
            }
            else
            { // even field: preserve odd field, refresh only even physical lines
              P[A-(WIDTH<<1)]=C;
            }
          }
          else // progressive: only touch this frame's lines
          {
            if (lineFieldOdd)
              P[A]=C;
            else
              P[A-(WIDTH<<1)]=C;
          }
        }
      }

    /* Start of the line */
    P+=(WIDTH*(FirstLine+Y))<<2;

    if (lineFieldOdd)
    {
      P+=WIDTH<<1; // odd field maps to odd physical scanlines
    }
    else
    {
    }
  }
  else // standard mode
  {
    /* Paint top of the screen */
    if(!Y) for(H=2*WIDTH*FirstLine-1;H>=0;H--) P[H]=C;

    /* Start of the line */
    P+=2*WIDTH*(FirstLine+Y);
  }

  /* Paint left/right borders */
  for(H=(WIDTH-256)+2*FmsxDisplayHAdjustLatched();H>0;H--) P[H-1]=C;
  for(H=(WIDTH-256)-2*FmsxDisplayHAdjustLatched();H>0;H--) P[2*WIDTH-H]=C;

  /* Paint bottom of the screen */
  H=ScanLines212? 212:192;

  if(lineHiResMode)
  {
    if(Y==H-1)
    {
      for(L=MAX_HEIGHT-Y;L>0;L--)
      {
        for(A=((WIDTH*L)<<2)-1,H=WIDTH<<1;H>0;H--,A--)
        {
          P[A+(WIDTH<<1)]=C;
        }
      }
    }
  }
  else // standard mode
    if(Y==H-1) for(H=2*WIDTH*(HEIGHT-H-FirstLine+1)-1;H>=2*WIDTH;H--) P[H]=C;

  /* Return pointer to the scanline in XBuf */
  return(P+WIDTH-256+2*FmsxDisplayHAdjustLatched());
}

static uint16_t V9958Screen6WideSpritePixel(uint8_t SpriteByte,unsigned Pixel)
{
  uint8_t Packed;

  Packed=(Pixel&1u)? (uint8_t)(SpriteByte&0x07u): (uint8_t)(SpriteByte>>3);
  return Packed? XPal[(Packed>>1)&0x03u]: 0u;
}

static uint16_t V9958Screen7WideSpritePixel(uint8_t SpriteByte)
{
  return SpriteByte? XPal[(SpriteByte>>1)&0x0Fu]: 0u;
}

/** RefreshScr6() ********************************************/
/** Function to be called to update SCREEN 6.               **/
/*************************************************************/
void RefreshLine6(uint8_t Y)
{
  uint8_t C,*R,*T0,*T1;
  int PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint8_t BgRaw[1024];
  uint8_t BgIndex;
  uint8_t MaskBg;
  uint8_t ZBuf[384];
  uint16_t *P=RefreshBorder512(Y,XPal[BGColor&0x03]);
  if(!P) return;

  RefreshBorder6Wide(P);

  if(!FMSX_SCREEN_ON || !FMSX_DRAW_AREA)
  {
    const uint16_t C0 = XPal[(BGColor>>2)&0x03];
    const uint16_t C1 = XPal[BGColor&0x03];
    for(PIdx=0;PIdx<512;PIdx++) P[PIdx] = (PIdx&1)? C1:C0;
  }
  else
  {
    LastScanline = Y + FirstLine;
    if(!FmsxVDPLineColorSpritesValid)
    {
      FmsxLatchColorSpritesLine(Y,FmsxVDPLineColorSpritesLatched);
      FmsxVDPLineColorSpritesValid=1u;
    }
    if(FmsxVDPLineColorSpritesRenderValid)
      R=FmsxVDPLineColorSpritesRender+32;
    else
    {
      memset(ZBuf,0,sizeof(ZBuf));
      R=ZBuf+32;
    }
    Coarse = V9958WidePhysicalCoarseScrollLatched();
    Fine = V9958WidePhysicalFineScrollLatched();
    LeftMask = V9958WideMaskLeftLatched()<<1;
    VirtualWidth = V9958WideVirtualWidthLatched();

    V9958WideBitmapPages(Y,VirtualWidth,&T0,&T1);
    for(PIdx=0;PIdx<128;PIdx++)
    {
      BgRaw[(PIdx<<2)+0]=T0[PIdx]>>6;
      BgRaw[(PIdx<<2)+1]=(T0[PIdx]>>4)&0x03;
      BgRaw[(PIdx<<2)+2]=(T0[PIdx]>>2)&0x03;
      BgRaw[(PIdx<<2)+3]=T0[PIdx]&0x03;
    }

    if(VirtualWidth>512u)
    {
      for(PIdx=0;PIdx<128;PIdx++)
      {
        BgRaw[512+(PIdx<<2)+0]=T1[PIdx]>>6;
        BgRaw[512+(PIdx<<2)+1]=(T1[PIdx]>>4)&0x03;
        BgRaw[512+(PIdx<<2)+2]=(T1[PIdx]>>2)&0x03;
        BgRaw[512+(PIdx<<2)+3]=T1[PIdx]&0x03;
      }
    }

    MaskBg=BgRaw[(unsigned)((int)Coarse-(int)Fine)&(VirtualWidth-1u)];
    for(PIdx=0;PIdx<512;PIdx++)
    {
      BgIndex=MaskBg;
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        BgIndex=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }

      const uint16_t SpritePixel = V9958Screen6WideSpritePixel(R[PIdx>>1],(unsigned)PIdx);
      P[PIdx]=SpritePixel? SpritePixel:XPal[BgIndex];
    }
  }
}

static uint8_t V9958Screen6WideSampleLatched(uint8_t *Page0,uint8_t *Page1,unsigned VirtualWidth,unsigned Pos)
{
  uint8_t *Page;
  uint8_t Value;

  Pos&=VirtualWidth-1u;
  Page=(VirtualWidth>512u) && (Pos&0x200u) ? Page1:Page0;
  Pos&=0x1FFu;
  Value=Page[Pos>>2];

  switch(Pos&0x03u)
  {
    case 0: return Value>>6;
    case 1: return (Value>>4)&0x03u;
    case 2: return (Value>>2)&0x03u;
    default:return Value&0x03u;
  }
}

void RefreshLine6WideRange(uint8_t Y,unsigned X0,unsigned X1)
{
  uint8_t C,*R,*T0,*T1;
  int PIdx;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  unsigned Px0;
  unsigned Px1;
  uint8_t BgIndex;
  uint8_t MaskBg;
  uint8_t ZBuf[384];
  uint16_t *P=RefreshBorder512(Y,XPal[BGColor&0x03]);
  if(!P) return;

  if(X0>32u) X0=32u;
  if(X1>32u) X1=32u;
  if(X1<=X0) return;

  Px0=X0<<4;
  Px1=X1<<4;
  RefreshBorder6Wide(P);

  if(!FMSX_SCREEN_ON || !FMSX_DRAW_AREA)
  {
    const uint16_t C0 = XPal[(BGColor>>2)&0x03];
    const uint16_t C1 = XPal[BGColor&0x03];
    for(PIdx=(int)Px0;PIdx<(int)Px1;++PIdx) P[PIdx] = (PIdx&1)? C1:C0;
    return;
  }

  LastScanline = Y + FirstLine;
  if(FmsxVDPLineColorSpritesRenderValid)
    R=FmsxVDPLineColorSpritesRender+32;
  else
  {
    memset(ZBuf,0,sizeof(ZBuf));
    R=ZBuf+32;
  }
  Coarse = V9958WidePhysicalCoarseScrollLatched();
  Fine = V9958WidePhysicalFineScrollLatched();
  LeftMask = V9958WideMaskLeftLatched()<<1;
  VirtualWidth = V9958WideVirtualWidthLatched();

  V9958WideBitmapPages(Y,VirtualWidth,&T0,&T1);
  MaskBg=V9958Screen6WideSampleLatched(T0,T1,VirtualWidth,(unsigned)((int)Coarse-(int)Fine));
  for(PIdx=(int)Px0;PIdx<(int)Px1;PIdx++)
  {
    BgIndex=MaskBg;
    if(PIdx>=(int)LeftMask)
      BgIndex=V9958Screen6WideSampleLatched(T0,T1,VirtualWidth,(unsigned)((int)PIdx-(int)Fine+(int)Coarse));

    const uint16_t SpritePixel = V9958Screen6WideSpritePixel(R[PIdx>>1],(unsigned)PIdx);
    P[PIdx]=SpritePixel? SpritePixel:XPal[BgIndex];
  }
}
  
/** RefreshScr7() ********************************************/
/** Function to be called to update SCREEN 7.               **/
/*************************************************************/
void RefreshLine7(uint8_t Y)
{
  uint8_t C,*R,*T0,*T1,*Plane0,*Plane1;
  int PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint8_t BgRaw[1024];
  uint8_t BgIndex;
  uint8_t MaskBg;
  uint8_t ZBuf[384];
  uint16_t *P=RefreshBorder512(Y,XPal[BGColor]);
  if(!P) return;

  if(!FMSX_SCREEN_ON || !FMSX_DRAW_AREA) ClearLine512(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    if(!FmsxVDPLineColorSpritesValid)
    {
      FmsxLatchColorSpritesLine(Y,FmsxVDPLineColorSpritesLatched);
      FmsxVDPLineColorSpritesValid=1u;
    }
    if(FmsxVDPLineColorSpritesRenderValid)
      R=FmsxVDPLineColorSpritesRender+32;
    else
    {
      memset(ZBuf,0,sizeof(ZBuf));
      R=ZBuf+32;
    }
    Coarse = V9958WidePhysicalCoarseScrollLatched();
    Fine = V9958WidePhysicalFineScrollLatched();
    LeftMask = V9958WideMaskLeftLatched()<<1;
    VirtualWidth = V9958WideVirtualWidthLatched();

    V9958WideBitmapPages(Y,VirtualWidth,&T0,&T1);
    Plane0=T0;
    Plane1=V9958VRAMOffsetPtr(T0,(int)V9958InterleavedPlaneOffset());
    fmsx_debug_capture_screen7_wide_source(Y,Plane0,Plane1);
    for(PIdx=0;PIdx<128;PIdx++)
    {
      BgRaw[(PIdx<<2)+0]=Plane0[PIdx]>>4;
      BgRaw[(PIdx<<2)+1]=Plane0[PIdx]&0x0F;
      BgRaw[(PIdx<<2)+2]=Plane1[PIdx]>>4;
      BgRaw[(PIdx<<2)+3]=Plane1[PIdx]&0x0F;
    }

    if(VirtualWidth>512u)
    {
      Plane0=T1;
      Plane1=V9958VRAMOffsetPtr(T1,(int)V9958InterleavedPlaneOffset());
      for(PIdx=0;PIdx<128;PIdx++)
      {
        BgRaw[512+(PIdx<<2)+0]=Plane0[PIdx]>>4;
        BgRaw[512+(PIdx<<2)+1]=Plane0[PIdx]&0x0F;
        BgRaw[512+(PIdx<<2)+2]=Plane1[PIdx]>>4;
        BgRaw[512+(PIdx<<2)+3]=Plane1[PIdx]&0x0F;
      }
    }

    MaskBg=BgRaw[(unsigned)((int)Coarse-(int)Fine)&(VirtualWidth-1u)];
    for(PIdx=0;PIdx<512;PIdx++)
    {
      BgIndex=MaskBg;
      if(PIdx>=(int)LeftMask)
      {
        Src=PIdx-(int)Fine+(int)Coarse;
        BgIndex=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
      }

      const uint16_t SpritePixel = V9958Screen7WideSpritePixel(R[PIdx>>1]);
      P[PIdx]=SpritePixel? SpritePixel:XPal[BgIndex];
    }
  }
}

void RefreshLine7WideRange(uint8_t Y,unsigned X0,unsigned X1)
{
  uint8_t C,*R,*T0,*T1,*Plane0,*Plane1;
  int PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  unsigned Px0;
  unsigned Px1;
  uint8_t BgRaw[1024];
  uint8_t BgIndex;
  uint8_t MaskBg;
  uint8_t ZBuf[384];
  uint16_t *P=RefreshBorder512(Y,XPal[BGColor]);
  if(!P) return;

  if(X0>32u) X0=32u;
  if(X1>32u) X1=32u;
  if(X1<=X0) return;

  Px0=X0<<4;
  Px1=X1<<4;

  if(!FMSX_SCREEN_ON || !FMSX_DRAW_AREA)
  {
    const uint16_t Bg = XPal[BGColor];
    for(PIdx=(int)Px0;PIdx<(int)Px1;++PIdx) P[PIdx]=Bg;
    return;
  }

  LastScanline = Y + FirstLine;
  if(FmsxVDPLineColorSpritesRenderValid)
    R=FmsxVDPLineColorSpritesRender+32;
  else
  {
    memset(ZBuf,0,sizeof(ZBuf));
    R=ZBuf+32;
  }
  Coarse = V9958WidePhysicalCoarseScrollLatched();
  Fine = V9958WidePhysicalFineScrollLatched();
  LeftMask = V9958WideMaskLeftLatched()<<1;
  VirtualWidth = V9958WideVirtualWidthLatched();

  V9958WideBitmapPages(Y,VirtualWidth,&T0,&T1);
  Plane0=T0;
  Plane1=V9958VRAMOffsetPtr(T0,(int)V9958InterleavedPlaneOffset());
  fmsx_debug_capture_screen7_wide_source(Y,Plane0,Plane1);
  for(PIdx=0;PIdx<128;PIdx++)
  {
    BgRaw[(PIdx<<2)+0]=Plane0[PIdx]>>4;
    BgRaw[(PIdx<<2)+1]=Plane0[PIdx]&0x0F;
    BgRaw[(PIdx<<2)+2]=Plane1[PIdx]>>4;
    BgRaw[(PIdx<<2)+3]=Plane1[PIdx]&0x0F;
  }

  if(VirtualWidth>512u)
  {
    Plane0=T1;
    Plane1=V9958VRAMOffsetPtr(T1,(int)V9958InterleavedPlaneOffset());
    for(PIdx=0;PIdx<128;PIdx++)
    {
      BgRaw[512+(PIdx<<2)+0]=Plane0[PIdx]>>4;
      BgRaw[512+(PIdx<<2)+1]=Plane0[PIdx]&0x0F;
      BgRaw[512+(PIdx<<2)+2]=Plane1[PIdx]>>4;
      BgRaw[512+(PIdx<<2)+3]=Plane1[PIdx]&0x0F;
    }
  }

  MaskBg=BgRaw[(unsigned)((int)Coarse-(int)Fine)&(VirtualWidth-1u)];
  for(PIdx=(int)Px0;PIdx<(int)Px1;PIdx++)
  {
    BgIndex=MaskBg;
    if(PIdx>=(int)LeftMask)
    {
      Src=PIdx-(int)Fine+(int)Coarse;
      BgIndex=BgRaw[(unsigned)Src&(VirtualWidth-1u)];
    }

    const uint16_t SpritePixel = V9958Screen7WideSpritePixel(R[PIdx>>1]);
    P[PIdx]=SpritePixel? SpritePixel:XPal[BgIndex];
  }
}

/** RefreshTx80() ********************************************/
/** Function to be called to update TEXT80.                 **/
/*************************************************************/
void RefreshLineTx80(uint8_t Y)
{
  uint16_t FC;
  uint8_t X,M,*T,*C,*G;
  uint16_t BC=XPal[BGColor];
  uint16_t *P=RefreshBorder512(Y,BC);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine512(P,BC);
  else
  {
    LastScanline = Y + FirstLine;
    G=(FontBuf&&(Mode&MSX_FIXEDFONT)? FontBuf:ChrGen)+(Y&0x07);
    T=ChrTab+((80*(Y>>3))&ChrTabM);
    C=ColTab+((10*(Y>>3))&ColTabM);

    P[0]=P[1]=P[2]=P[3]=P[4]=P[5]=P[6]=P[7]=P[8]=
    P[9]=P[10]=P[11]=P[12]=P[13]=P[14]=P[15]=
    P[16]=P[17]=XPal[BGColor];
    P+=18;

    for(X=M=0;X<80;X++,T++,P+=6)
    {
      if(!(X&0x07)) M=*C++;
      if(M&0x80) { FC=XPal[XFGColor];BC=XPal[XBGColor]; }
      else       { FC=XPal[FGColor];BC=XPal[BGColor]; }
      M<<=1;
      Y=*(G+((int)*T<<3));
      P[0]=Y&0x80? FC:BC;
      P[1]=Y&0x40? FC:BC;
      P[2]=Y&0x20? FC:BC;
      P[3]=Y&0x10? FC:BC;
      P[4]=Y&0x08? FC:BC;
      P[5]=Y&0x04? FC:BC;
    }

    P[0]=P[1]=P[2]=P[3]=P[4]=P[5]=P[6]=P[7]=P[8]=
    P[9]=P[10]=P[11]=P[12]=P[13]=XPal[BGColor];
  }
}

#endif /* !NARROW */
