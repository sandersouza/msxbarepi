#ifndef MSXBARE_CIRCLE_COMBO_GFX_TEXTBOX_H
#define MSXBARE_CIRCLE_COMBO_GFX_TEXTBOX_H

#include <circle/chargenerator.h>
#include <circle/screen.h>
#include <circle/types.h>

struct TGfxTextStyle
{
	TScreenColor fg;
	TScreenColor bg;
	boolean opaque_bg;
};

struct TGfxTextMatrix
{
	const char *cells;
	unsigned cols;
	unsigned rows;
};

class CGfxTextBoxRenderer
{
public:
	CGfxTextBoxRenderer(CScreenDevice *screen = 0);

	void Attach(CScreenDevice *screen);
	unsigned GetCharWidth(void) const;
	unsigned GetCharHeight(void) const;

	void FillRect(unsigned x, unsigned y, unsigned w, unsigned h, TScreenColor color);
	void DrawRectBorder(unsigned x, unsigned y, unsigned w, unsigned h, TScreenColor color,
			   unsigned thickness = 1u);
	void DrawChar(unsigned x, unsigned y, char ch, const TGfxTextStyle &style,
		      unsigned scale_x = 1u, unsigned scale_y = 1u);
	void DrawText(unsigned x, unsigned y, const char *text, const TGfxTextStyle &style,
		      unsigned scale_x = 1u, unsigned scale_y = 1u);
	void DrawMatrix(unsigned x, unsigned y, const TGfxTextMatrix &matrix, const TGfxTextStyle &style,
			unsigned scale_x = 1u, unsigned scale_y = 1u);

private:
	void PutPixel(unsigned x, unsigned y, TScreenColor color);

private:
	CScreenDevice *m_Screen;
	CBcmFrameBuffer *m_FrameBuffer;
	CCharGenerator m_Font;
};

#endif
