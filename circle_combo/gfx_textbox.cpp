#include "gfx_textbox.h"

#include <circle/types.h>

static const unsigned char kFolderGlyphLeftChar = 0x1Eu;
static const unsigned char kFolderGlyphRightChar = 0x1Fu;

static unsigned DecodeUtf8Latin1(const char *text, unsigned *consumed)
{
    if (consumed == 0 || text == 0 || text[0] == '\0')
    {
        if (consumed != 0) *consumed = 0u;
        return 0u;
    }

    const unsigned b0 = (unsigned) (unsigned char) text[0];
    if (b0 < 0x80u)
    {
        *consumed = 1u;
        return b0;
    }

    const unsigned b1 = (unsigned) (unsigned char) text[1];
    if ((b0 == 0xC2u || b0 == 0xC3u) && (b1 >= 0x80u && b1 <= 0xBFu))
    {
        *consumed = 2u;
        return ((b0 & 0x1Fu) << 6) | (b1 & 0x3Fu);
    }

    *consumed = 1u;
    return '?';
}

static void DrawCustomFolderGlyphHalf(CGfxTextBoxRenderer *renderer,
                                      unsigned x,
                                      unsigned y,
                                      const TGfxTextStyle &style,
                                      unsigned scale_x,
                                      unsigned scale_y,
                                      unsigned char_w,
                                      unsigned char_h,
                                      boolean right_half)
{
    if (renderer == 0 || char_w == 0u || char_h == 0u)
    {
        return;
    }

    if (style.opaque_bg)
    {
        renderer->FillRect(x, y, char_w * scale_x, char_h * scale_y, style.bg);
    }

    const unsigned full_w = char_w * 2u;
    const unsigned half_offset = right_half ? char_w : 0u;
    const unsigned body_bottom = (char_h > 5u) ? (char_h - 5u) : (char_h - 1u);

    auto put_scaled = [&](unsigned px, unsigned py) {
        renderer->FillRect(x + (px * scale_x), y + (py * scale_y), scale_x, scale_y, style.fg);
    };

    for (unsigned lx = 0u; lx < char_w; ++lx)
    {
        const unsigned gx = half_offset + lx; /* 0..(2*char_w-1) */
        if (gx >= full_w)
        {
            continue;
        }

        /* Folder silhouette close to the reference:
         * - tab on top-left
         * - slight step from tab to main top edge
         * - filled body */
        unsigned top = char_h; /* default: no pixel */
        if (gx >= 1u && gx <= 5u)
        {
            top = 2u; /* tab top */
        }
        else if (gx == 6u || gx == 7u)
        {
            top = 3u; /* transition */
        }
        else if (gx >= 8u && gx + 1u < full_w)
        {
            top = 4u; /* main top */
        }

        if (top >= char_h)
        {
            continue;
        }

        if (body_bottom >= top)
        {
            for (unsigned py = top; py <= body_bottom; ++py)
            {
                put_scaled(lx, py);
            }
        }
    }
}

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

    const unsigned char glyph = (unsigned char) ch;
    if (glyph == kFolderGlyphLeftChar)
    {
        DrawCustomFolderGlyphHalf(this, x, y, style, scale_x, scale_y, char_w, char_h, FALSE);
        return;
    }
    if (glyph == kFolderGlyphRightChar)
    {
        DrawCustomFolderGlyphHalf(this, x, y, style, scale_x, scale_y, char_w, char_h, TRUE);
        return;
    }

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

	for (const char *p = text; *p != '\0';)
	{
		if (*p == '\n')
		{
			cx = x;
			cy += step_y;
            ++p;
			continue;
		}
        unsigned consumed = 0u;
        const unsigned cp = DecodeUtf8Latin1(p, &consumed);
        if (consumed == 0u)
        {
            break;
        }
		DrawChar(cx, cy, (char) (unsigned char) cp, style, scale_x, scale_y);
		cx += step_x;
        p += consumed;
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
