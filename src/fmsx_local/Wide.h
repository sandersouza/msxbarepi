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

/** ClearLine512() *******************************************/
/** Clear 512 pixels from P with color C.                   **/
/*************************************************************/
static void ClearLine512(uint16_t *P,uint16_t C)
{
  int J;

  for(J=0;J<512;J++) P[J]=C;
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

  /* First line number in the buffer */
  if(!Y) FirstLine=(ScanLines212?0:10)+BORDER+VAdjust;

  /* Return 0 if we've run out of the screen buffer due to overscan */
  if(Y>(OverscanMode?MAX_SCANLINE:211)) return(0);

  /* Set up the transparent color */
  XPal[0]=(!BGColor||SolidColor0)? XPal0:XPal[BGColor];

  /* Start of the buffer */
  P=(uint16_t *)WBuf;

  if(HiResMode)
  {
    if(!Y)
      /* Paint top of the screen */
      for(L=FirstLine;L>0;L--)
      {
        for(A=((WIDTH*L)<<2)-1,H=WIDTH<<1;H>0;H--,A--)
        {
          if (InterlacedMode)
          {
            if (OddPage)
            { // even lines are black
              P[A]=0;
              P[A-(WIDTH<<1)]=C;
            }
            else
            { // odd lines are black
              P[A]=C;
              P[A-(WIDTH<<1)]=0;
            }
          }
          else // progressive: only touch this frame's lines
          {
            if (OddPage)
              P[A-(WIDTH<<1)]=C;
            else
              P[A]=C;
          }
        }
      }

    /* Start of the line */
    P+=(WIDTH*(FirstLine+Y))<<2;

    if (OddPage)
    {
      if (InterlacedMode)
        // erase previous frame's line
        for(A=(WIDTH<<2)-1,H=WIDTH<<1;H>0;H--,A--) P[A]=0;
    }
    else
    {
      if (InterlacedMode)
        // erase previous frame's line
        for(H=(WIDTH<<2)-1;H>=0;H--) P[H]=0;
      P+=WIDTH<<1; // interlace offset
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
  for(H=(WIDTH-256)+2*HAdjust;H>0;H--) P[H-1]=C;
  for(H=(WIDTH-256)-2*HAdjust;H>0;H--) P[2*WIDTH-H]=C;

  /* Paint bottom of the screen */
  H=ScanLines212? 212:192;

  if(HiResMode)
  {
    if(Y==H-1)
    {
      for(L=MAX_HEIGHT-Y;L>0;L--)
      {
        for(A=((WIDTH*L)<<2)-1,H=WIDTH<<1;H>0;H--,A--)
        {
          if (InterlacedMode)
            // erase previous frame's line
            P[A]=0;
          P[A+(WIDTH<<1)]=C;
        }
      }
    }
  }
  else // standard mode
    if(Y==H-1) for(H=2*WIDTH*(HEIGHT-H-FirstLine+1)-1;H>=2*WIDTH;H--) P[H]=C;

  /* Return pointer to the scanline in XBuf */
  return(P+WIDTH-256+2*HAdjust);
}

/** RefreshScr6() ********************************************/
/** Function to be called to update SCREEN 6.               **/
/*************************************************************/
void RefreshLine6(uint8_t Y)
{
  uint8_t C,*T,*R,*T0,*T1;
  int PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint8_t BgRaw[1024];
  uint8_t BgIndex;
  uint8_t MaskBg;
  uint8_t ZBuf[304];
  uint16_t *P=RefreshBorder512(Y,XPal[BGColor&0x03]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine512(P,XPal[BGColor&0x03]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll512();
    Fine = V9958FineScroll512();
    LeftMask = V9958MaskLeft512();
    VirtualWidth = V9958VirtualWidth512();

    T0=T;
    for(PIdx=0;PIdx<128;PIdx++)
    {
      BgRaw[(PIdx<<2)+0]=T0[PIdx]>>6;
      BgRaw[(PIdx<<2)+1]=(T0[PIdx]>>4)&0x03;
      BgRaw[(PIdx<<2)+2]=(T0[PIdx]>>2)&0x03;
      BgRaw[(PIdx<<2)+3]=T0[PIdx]&0x03;
    }

    if(VirtualWidth>512u)
    {
      /* SCR6 next horizontal page is +0x8000 in fMSX VRAM layout. */
      T1=V9958ScrollPagePtr(T0,0x8000);
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

      C=R[PIdx>>1];
      P[PIdx]=XPal[C? C:BgIndex];
    }
  }
}
  
/** RefreshScr7() ********************************************/
/** Function to be called to update SCREEN 7.               **/
/*************************************************************/
void RefreshLine7(uint8_t Y)
{
  uint8_t C,*T,*R,*T0,*T1,*Plane0,*Plane1;
  int PIdx,Src;
  unsigned Coarse;
  unsigned Fine;
  unsigned LeftMask;
  unsigned VirtualWidth;
  uint8_t BgRaw[1024];
  uint8_t BgIndex;
  uint8_t MaskBg;
  uint8_t ZBuf[304];
  uint16_t *P=RefreshBorder512(Y,XPal[BGColor]);
  if(!P) return;

  if(!FMSX_SCREEN_ON) ClearLine512(P,XPal[BGColor]);
  else
  {
    LastScanline = Y + FirstLine;
    ColorSprites(Y,ZBuf);
    R=ZBuf+32;
    T=V9958BitmapLinePtr(ChrTab,Y);
    Coarse = V9958CoarseScroll512();
    Fine = V9958FineScroll512();
    LeftMask = V9958MaskLeft512();
    VirtualWidth = V9958VirtualWidth512();

    T0=T;
    Plane0=T0;
    Plane1=V9958ScrollPagePtr(T0,(int)V9958InterleavedPlaneOffset());
    for(PIdx=0;PIdx<128;PIdx++)
    {
      BgRaw[(PIdx<<2)+0]=Plane0[PIdx]>>4;
      BgRaw[(PIdx<<2)+1]=Plane0[PIdx]&0x0F;
      BgRaw[(PIdx<<2)+2]=Plane1[PIdx]>>4;
      BgRaw[(PIdx<<2)+3]=Plane1[PIdx]&0x0F;
    }

    if(VirtualWidth>512u)
    {
      /* SCR7 multipage follows the same +0x8000 page step as SCR5/6/8. */
      T1=V9958ScrollPagePtr(T0,0x8000);
      Plane0=T1;
      Plane1=V9958ScrollPagePtr(T1,(int)V9958InterleavedPlaneOffset());
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

      C=R[PIdx>>1];
      P[PIdx]=XPal[C? C:BgIndex];
    }
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
