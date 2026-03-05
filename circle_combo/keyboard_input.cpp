#include "keyboard_input.h"

static const u8 kHidKeyX = 0x1B;
static const u8 kHidKeyZ = 0x1D;
static const u8 kHidKeySpace = 0x2C;
static const u8 kHidKeyRight = 0x4F;
static const u8 kHidKeyLeft = 0x50;
static const u8 kHidKeyDown = 0x51;
static const u8 kHidKeyUp = 0x52;
static const u8 kHidKeyPageUp = 0x4B;
static const u8 kHidKeyPageDown = 0x4E;
static const u8 kHidKeyEnter = 0x28;
static const u8 kHidKeyEsc = 0x29;
static const u8 kHidKeyDel = 0x4C;
static const u8 kHidKeyF6 = 0x3F;
static const u8 kHidKeyF7 = 0x40;
static const u8 kHidKeyF8 = 0x41;
static const u8 kHidKeyF9 = 0x42;
static const u8 kHidKeyF10 = 0x43;
static const u8 kHidKeyF11 = 0x44;
static const u8 kHidKeyF12 = 0x45;
static const u8 kHidKeyMinus = 0x2D;
static const u8 kHidKeyEqual = 0x2E;
static const u8 kHidKeyKeypadMinus = 0x56;
static const u8 kHidKeyKeypadPlus = 0x57;

static const u8 kJoyRight = (1u << 0);
static const u8 kJoyLeft = (1u << 1);
static const u8 kJoyDown = (1u << 2);
static const u8 kJoyUp = (1u << 3);
static const u8 kJoyButton1 = (1u << 4);
static const u8 kJoyButton2 = (1u << 5);
static const u8 kJoyMask = (kJoyRight | kJoyLeft | kJoyDown | kJoyUp | kJoyButton1 | kJoyButton2);

u8 ComboKeyboardJoyMask(void)
{
	return kJoyMask;
}

void ComboDecodeKeyboardRaw(unsigned char modifiers,
				      const unsigned char raw_keys[6],
				      TComboKeyboardInputState *out_state)
{
	if (out_state == 0)
	{
		return;
	}

	out_state->bridge_bits = 0;
	out_state->f6_pressed = FALSE;
	out_state->f7_pressed = FALSE;
	out_state->f8_pressed = FALSE;
	out_state->f9_pressed = FALSE;
	out_state->f10_pressed = FALSE;
	out_state->debug_fm_gain_up_pressed = FALSE;
	out_state->debug_fm_gain_down_pressed = FALSE;
	out_state->f1_pressed = FALSE;
	out_state->pause_pressed = FALSE;
	out_state->menu_up_pressed = FALSE;
	out_state->menu_down_pressed = FALSE;
	out_state->menu_left_pressed = FALSE;
	out_state->menu_right_pressed = FALSE;
	out_state->menu_page_up_pressed = FALSE;
	out_state->menu_page_down_pressed = FALSE;
	out_state->menu_enter_pressed = FALSE;
	out_state->menu_back_pressed = FALSE;
	out_state->menu_delete_pressed = FALSE;
	out_state->menu_jump_letter = '\0';

	if (raw_keys == 0)
	{
		return;
	}

	/* Map physical Shift to FIREA in joystick bridge. */
	if (modifiers & 0x22u)
	{
		out_state->bridge_bits |= kJoyButton1;
	}

	for (unsigned i = 0; i < 6; ++i)
	{
		const u8 key = raw_keys[i];
		if (key == kHidKeyF11)
		{
			out_state->f1_pressed = TRUE;
		}
		if (key == kHidKeyF6)
		{
			out_state->f6_pressed = TRUE;
		}
		if (key == kHidKeyF7)
		{
			out_state->f7_pressed = TRUE;
		}
		if (key == kHidKeyF8)
		{
			out_state->f8_pressed = TRUE;
		}
		if (key == kHidKeyF9)
		{
			out_state->f9_pressed = TRUE;
		}
		if (key == kHidKeyF10)
		{
			out_state->f10_pressed = TRUE;
		}
		if (key == kHidKeyEqual || key == kHidKeyKeypadPlus)
		{
			out_state->debug_fm_gain_up_pressed = TRUE;
		}
		if (key == kHidKeyMinus || key == kHidKeyKeypadMinus)
		{
			out_state->debug_fm_gain_down_pressed = TRUE;
		}
		if (key == kHidKeyF12)
		{
			out_state->pause_pressed = TRUE;
		}
		if (key == kHidKeyUp)
		{
			out_state->menu_up_pressed = TRUE;
		}
		if (key == kHidKeyDown)
		{
			out_state->menu_down_pressed = TRUE;
		}
		if (key == kHidKeyLeft)
		{
			out_state->menu_left_pressed = TRUE;
		}
		if (key == kHidKeyRight)
		{
			out_state->menu_right_pressed = TRUE;
		}
		if (key == kHidKeyPageUp)
		{
			out_state->menu_page_up_pressed = TRUE;
		}
		if (key == kHidKeyPageDown)
		{
			out_state->menu_page_down_pressed = TRUE;
		}
		if (key == kHidKeyEnter)
		{
			out_state->menu_enter_pressed = TRUE;
		}
		if (key == kHidKeyEsc)
		{
			out_state->menu_back_pressed = TRUE;
		}
		if (key == kHidKeyDel)
		{
			out_state->menu_delete_pressed = TRUE;
		}
		if (key >= 0x04u && key <= 0x1Du)
		{
			out_state->menu_jump_letter = (char) ('A' + (key - 0x04u));
		}

		switch (key)
		{
		case kHidKeyRight:
			out_state->bridge_bits |= kJoyRight;
			break;
		case kHidKeyLeft:
			out_state->bridge_bits |= kJoyLeft;
			break;
		case kHidKeyDown:
			out_state->bridge_bits |= kJoyDown;
			break;
		case kHidKeyUp:
			out_state->bridge_bits |= kJoyUp;
			break;
		case kHidKeySpace:
			out_state->bridge_bits |= kJoyButton1;
			break;
		case kHidKeyZ:
			out_state->bridge_bits |= kJoyButton2;
			break;
		default:
			break;
		}
	}
}
