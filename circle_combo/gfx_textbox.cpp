#include "gfx_textbox.h"

#include <circle/types.h>

CGfxTextBoxRenderer::CGfxTextBoxRenderer(CScreenDevice *screen)
: m_Screen(0)
, m_FrameBuffer(0)
, m_Font(DEFAULT_FONT, CCharGenerator::FontFlagsNone)
{
	Attach(screen);
}

void CGfxTextBoxRenderer::Attach(CScreenDevice *screen)
{
	m_Screen = screen;
	m_FrameBuffer = 0;
	if (m_Screen != 0)
	{
		m_FrameBuffer = m_Screen->GetFrameBuffer();
	}
}

unsigned CGfxTextBoxRenderer::GetCharWidth(void) const
{
	return m_Font.GetCharWidth();
}

unsigned CGfxTextBoxRenderer::GetCharHeight(void) const
{
	return m_Font.GetCharHeight();
}

void CGfxTextBoxRenderer::PutPixel(unsigned x, unsigned y, TScreenColor color)
{
	if (m_Screen == 0)
	{
		return;
	}

	const unsigned screen_w = m_Screen->GetWidth();
	const unsigned screen_h = m_Screen->GetHeight();
	if (x >= screen_w || y >= screen_h)
	{
		return;
	}

	if (m_FrameBuffer != 0 && m_FrameBuffer->GetDepth() == 16)
	{
		u16 *base = (u16 *) (uintptr) m_FrameBuffer->GetBuffer();
		const unsigned pitch_pixels = m_FrameBuffer->GetPitch() / sizeof(u16);
		base[(y * pitch_pixels) + x] = (u16) color;
		return;
	}

	m_Screen->SetPixel(x, y, color);
}

void CGfxTextBoxRenderer::FillRect(unsigned x, unsigned y, unsigned w, unsigned h, TScreenColor color)
{
	if (m_Screen == 0 || w == 0u || h == 0u)
	{
		return;
	}

	for (unsigned py = 0; py < h; ++py)
	{
		for (unsigned px = 0; px < w; ++px)
		{
			PutPixel(x + px, y + py, color);
		}
	}
}

void CGfxTextBoxRenderer::DrawRectBorder(unsigned x, unsigned y, unsigned w, unsigned h, TScreenColor color,
					 unsigned thickness)
{
	if (m_Screen == 0 || w == 0u || h == 0u)
	{
		return;
	}

	if (thickness == 0u)
	{
		thickness = 1u;
	}

	if (thickness > w)
	{
		thickness = w;
	}
	if (thickness > h)
	{
		thickness = h;
	}

	FillRect(x, y, w, thickness, color);
	FillRect(x, y + (h - thickness), w, thickness, color);
	FillRect(x, y, thickness, h, color);
	FillRect(x + (w - thickness), y, thickness, h, color);
}

void CGfxTextBoxRenderer::DrawChar(unsigned x, unsigned y, char ch, const TGfxTextStyle &style,
				   unsigned scale_x, unsigned scale_y)
{
	if (m_Screen == 0)
	{
		return;
	}
	if (scale_x == 0u) scale_x = 1u;
	if (scale_y == 0u) scale_y = 1u;

	const unsigned char_w = m_Font.GetCharWidth();
	const unsigned char_h = m_Font.GetCharHeight();

	for (unsigned row = 0; row < char_h; ++row)
	{
		const CCharGenerator::TPixelLine line = m_Font.GetPixelLine(ch, row);
		for (unsigned sy = 0; sy < scale_y; ++sy)
		{
			const unsigned dst_y = y + (row * scale_y) + sy;
			for (unsigned col = 0; col < char_w; ++col)
			{
				const boolean on = m_Font.GetPixel(col, line);
				if (!on && !style.opaque_bg)
				{
					continue;
				}
				const TScreenColor color = on ? style.fg : style.bg;
				for (unsigned sx = 0; sx < scale_x; ++sx)
				{
					const unsigned dst_x = x + (col * scale_x) + sx;
					PutPixel(dst_x, dst_y, color);
				}
			}
		}
	}
}

void CGfxTextBoxRenderer::DrawText(unsigned x, unsigned y, const char *text, const TGfxTextStyle &style,
				   unsigned scale_x, unsigned scale_y)
{
	if (m_Screen == 0 || text == 0)
	{
		return;
	}

	if (scale_x == 0u) scale_x = 1u;
	if (scale_y == 0u) scale_y = 1u;

	const unsigned step_x = m_Font.GetCharWidth() * scale_x;
	const unsigned step_y = m_Font.GetCharHeight() * scale_y;
	unsigned cx = x;
	unsigned cy = y;

	for (const char *p = text; *p != '\0'; ++p)
	{
		if (*p == '\n')
		{
			cx = x;
			cy += step_y;
			continue;
		}
		DrawChar(cx, cy, *p, style, scale_x, scale_y);
		cx += step_x;
	}
}

void CGfxTextBoxRenderer::DrawMatrix(unsigned x, unsigned y, const TGfxTextMatrix &matrix, const TGfxTextStyle &style,
				     unsigned scale_x, unsigned scale_y)
{
	if (m_Screen == 0 || matrix.cells == 0 || matrix.cols == 0u || matrix.rows == 0u)
	{
		return;
	}

	if (scale_x == 0u) scale_x = 1u;
	if (scale_y == 0u) scale_y = 1u;

	const unsigned step_x = m_Font.GetCharWidth() * scale_x;
	const unsigned step_y = m_Font.GetCharHeight() * scale_y;

	for (unsigned row = 0; row < matrix.rows; ++row)
	{
		for (unsigned col = 0; col < matrix.cols; ++col)
		{
			const char ch = matrix.cells[(row * matrix.cols) + col];
			DrawChar(x + (col * step_x), y + (row * step_y), ch != '\0' ? ch : ' ', style, scale_x, scale_y);
		}
	}
}
