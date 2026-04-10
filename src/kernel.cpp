#include "kernel.h"
#include "keyboard_input.h"
#include "combo_locale.h"
#include "viewport_screenshot.h"
#include "backend/runtime/runtime.h"

#include <circle/bcmpropertytags.h>
#include <circle/machineinfo.h>
#include <circle/sound/hdmisoundbasedevice.h>
#include <circle/startup.h>
#include <circle/string.h>
#include <circle/synchronize.h>
#include <circle/util.h>
#include <assert.h>

extern "C" unsigned long long msxbare_monotonic_time_us(void)
{
	return CTimer::GetClockTicks64();
}

#if MSXBARE_ENABLE_DEBUG_OVERLAY
static CSerialDevice *g_backend_uart_trace_serial = 0;

extern "C" void msxbare_uart_write(const char *text)
{
	if (g_backend_uart_trace_serial == 0 || text == 0 || text[0] == '\0')
	{
		return;
	}

	g_backend_uart_trace_serial->Write(text, strlen(text));
}
#else
extern "C" void msxbare_uart_write(const char *text)
{
	(void) text;
}
#endif

static const char FromKernel[] = "combo";
static const unsigned kSampleRate = 48000;
static const unsigned kChunkSize = 384 * 10;
static const unsigned kQueueMs = 120;
/* 16667us caps cadence at <=60fps (1000000/60 truncated would run slightly >60). */
static const u64 kFrameInterval60Us = 16667ull;
static const u64 kFrameInterval50Us = 20000ull;
static const u64 kDebugOverlayIntervalUs = 200000ull;
static const u64 kUartPerfLogIntervalUs = 250000ull;
static const u64 kFramePacingGuardUs = 300ull;
static const u64 kFramePacingSleepTargetUs = 1200ull;
static const u64 kFramePacingSpinThresholdUs = 80ull;
static const uintptr kDCacheLineSize = 64u;
static const u16 kLetterboxColor565 = 0x0000u;
static const unsigned kScalePercentNone = 200u;
static const unsigned kScalePercentMin = 250u;
static const unsigned kScalePercentStep = 50u;
static const unsigned kScalePercentHardMax = 450u;
static const unsigned kScanlineModeOff = 0u;
static const unsigned kScanlineModeLcd = 1u;
static const unsigned kBootModeNorm = 0u;
static const unsigned kBootModeFast = 1u;
static const unsigned kBootModeGame = 2u;
static const unsigned kRamMapperKbDefault = 256u;
static const unsigned kMegaRamKbDefault = 0u;
static const unsigned kResolutionModeAuto = 0u;
static const unsigned kResolutionMode1080 = 1u;
static const unsigned kResolutionMode720 = 2u;
static const unsigned kResolutionMode768 = 3u;
static const char kSettingsDrive[] = "SD:";
static const char kSettingsPath[] = "SD:/msxbarepi.cfg";
static const char kSettingsLegacyPath[] = "SD:/MSXBARE.CFG";
static const char kBootConfigPath[] = "SD:/config.txt";
static const char kStateDirPath[] = "SD:/states";
static const char kStatePath[] = "SD:/states/slot-last.sav";
static const unsigned kStateBufferMaxBytes = 2u * 1024u * 1024u;
static const unsigned kZ80TurboModeDes = 0u;
static const unsigned kZ80TurboModePan = 1u;
static const unsigned kZ80TurboModeMax = 2u;
static const u8 kJoyBridgeRight = (u8) (1u << 0);
static const u8 kJoyBridgeLeft = (u8) (1u << 1);
static const u8 kJoyBridgeDown = (u8) (1u << 2);
static const u8 kJoyBridgeUp = (u8) (1u << 3);
static const u8 kJoyBridgeFireA = (u8) (1u << 4);
static const u8 kJoyBridgeFireB = (u8) (1u << 5);
static const boolean kBootQuiet = TRUE;
/* Rensha modes are expressed in pulses per 10 frames (0.5, 1.0, 1.5). */
static const unsigned kRenshaRateDen = 20u; /* 1/20 pulse per frame unit */

#ifndef MSXBARE_BUILD_OWNER
#define MSXBARE_BUILD_OWNER ""
#endif

#ifndef MSXBARE_BUILD_BID
#define MSXBARE_BUILD_BID ""
#endif

static unsigned BuildHash16FromString(const char *text)
{
	unsigned hash = 2166136261u; /* FNV-1a 32-bit basis */
	if (text == 0)
	{
		return 0u;
	}
	while (*text != '\0')
	{
		hash ^= (unsigned) (u8) *text++;
		hash *= 16777619u; /* FNV prime */
	}
	hash ^= (hash >> 16);
	return hash & 0xFFFFu;
}

static unsigned BuildHash16(void)
{
	static unsigned cached = 0xFFFFFFFFu;
	if (cached == 0xFFFFFFFFu)
	{
		cached = BuildHash16FromString(MSXBARE_BUILD_BID);
	}
	return cached;
}

static unsigned ClampDebugOverlayMode(unsigned mode)
{
	return (mode <= ComboDebugOverlayMin) ? mode : ComboDebugOverlayOff;
}

static boolean DebugOverlayModeEnabled(unsigned mode)
{
	return ClampDebugOverlayMode(mode) != ComboDebugOverlayOff ? TRUE : FALSE;
}

static unsigned NextDebugOverlayMode(unsigned mode)
{
	switch (ClampDebugOverlayMode(mode))
	{
	case ComboDebugOverlayOff: return ComboDebugOverlayMax;
	case ComboDebugOverlayMax: return ComboDebugOverlayMin;
	case ComboDebugOverlayMin:
	default: return ComboDebugOverlayOff;
	}
}

static unsigned PrevDebugOverlayMode(unsigned mode)
{
	switch (ClampDebugOverlayMode(mode))
	{
	case ComboDebugOverlayOff: return ComboDebugOverlayMin;
	case ComboDebugOverlayMax: return ComboDebugOverlayOff;
	case ComboDebugOverlayMin:
	default: return ComboDebugOverlayMax;
	}
}

static const char *DebugOverlayModeLogLabel(unsigned mode)
{
	switch (ClampDebugOverlayMode(mode))
	{
	case ComboDebugOverlayMax: return "MAX";
	case ComboDebugOverlayMin: return "MIN";
	case ComboDebugOverlayOff:
	default: return "OFF";
	}
}

static void BootPhase(CLogger &logger, const char *phase, const char *status)
{
	CString line;
	line.Format("%s: %s", phase != 0 ? phase : "BT?", status != 0 ? status : "");
	logger.Write(FromKernel, LogNotice, line);
}

static void BootPhaseWarn(CLogger &logger, const char *phase, const char *status)
{
	CString line;
	line.Format("%s: %s", phase != 0 ? phase : "BT?", status != 0 ? status : "");
	logger.Write(FromKernel, LogWarning, line);
}

static const char *ThrottleStateLabel(TSystemThrottledState state)
{
	switch (state)
	{
	case SystemStateUnderVoltageOccurred: return "UNDERVOLT";
	case SystemStateFrequencyCappingOccurred: return "FREQCAP";
	case SystemStateThrottlingOccurred: return "THROTTLED";
	case SystemStateSoftTempLimitOccurred: return "SOFTTEMP";
	default: return "MIXED";
	}
}

static unsigned UMax(unsigned a, unsigned b)
{
	return a > b ? a : b;
}

static unsigned UMin(unsigned a, unsigned b)
{
	return a < b ? a : b;
}

static const unsigned kViewportBaseWidth = 256u;
static const unsigned kViewportBaseHeight = 243u;

static boolean CanUseDirectPresentWithDebug(unsigned dst_x,
							 unsigned dst_y,
							 unsigned dst_w,
							 unsigned dst_h,
							 unsigned screen_w,
							 unsigned screen_h)
{
	(void) dst_x;
	(void) dst_w;
	(void) screen_w;
	(void) screen_h;

	/*
	 * In debug mode the viewport is forced down to a compact 1x-style mailbox,
	 * centered on screen. When its top edge stays well below the text overlay
	 * band, direct present is safe and avoids the extra SetArea() copy.
	 */
	if (dst_h == 0u)
	{
		return FALSE;
	}
	return dst_y >= 144u ? TRUE : FALSE;
}

static boolean ShouldPreferPresentArea(unsigned dst_w,
						 unsigned dst_h,
						 unsigned screen_w,
						 unsigned screen_h,
						 boolean scale_max_fit_enabled,
						 boolean hires_mode)
{
	(void) scale_max_fit_enabled;

	if (dst_w == 0u || dst_h == 0u || screen_w == 0u || screen_h == 0u)
	{
		return FALSE;
	}

	if (hires_mode)
	{
		return TRUE;
	}

	const u64 dst_area = (u64) dst_w * (u64) dst_h;
	const u64 screen_area = (u64) screen_w * (u64) screen_h;

	/*
	 * Large mailboxes are faster through the compact staging buffer than by
	 * writing directly into the visible framebuffer with pitch gaps and cache
	 * flushes. The debug-overlay A/B already proved this path wins for MAX.
	 */
	return (dst_area * 2u >= screen_area) ? TRUE : FALSE;
}

static unsigned ScaleFactorFromPercent(unsigned percent)
{
	if (percent == kScalePercentNone)
	{
		return 1u;
	}
	if (percent < kScalePercentMin)
	{
		percent = kScalePercentMin;
	}
	if (percent > kScalePercentHardMax)
	{
		percent = kScalePercentHardMax;
	}
	return 2u + ((percent - kScalePercentMin) / kScalePercentStep);
}

static unsigned ScalePercentFromFactor(unsigned factor)
{
	if (factor <= 1u)
	{
		return kScalePercentNone;
	}
	if (factor >= 6u)
	{
		return kScalePercentHardMax;
	}
	return kScalePercentMin + ((factor - 2u) * kScalePercentStep);
}

static unsigned ComputeFixedMaxScaleFactor(unsigned screen_h)
{
	if (screen_h >= 1080u)
	{
		return 4u;
	}
	if (screen_h >= 720u)
	{
		return 3u;
	}
	return 2u;
}

static unsigned ComputeViewportUiMaxScalePercent(unsigned screen_h)
{
	if (screen_h == 0u)
	{
		return kScalePercentHardMax;
	}
	return ScalePercentFromFactor(ComputeFixedMaxScaleFactor(screen_h));
}

static boolean ScalePercentIsNone(unsigned percent)
{
	return percent == kScalePercentNone ? TRUE : FALSE;
}

static unsigned ClampScalePercent(unsigned percent, unsigned max_scale)
{
	if (ScalePercentIsNone(percent))
	{
		return kScalePercentNone;
	}
	if (percent < kScalePercentMin) percent = kScalePercentMin;
	if (percent > max_scale) percent = max_scale;
	return percent;
}

static unsigned ComputeEffectiveViewportScalePercent(unsigned manual_scale_percent,
									 unsigned max_scale_percent,
									 unsigned screen_height,
									 unsigned overlay_mode)
{
	if (max_scale_percent < kScalePercentMin)
	{
		max_scale_percent = kScalePercentMin;
	}
	if (max_scale_percent > kScalePercentHardMax)
	{
		max_scale_percent = kScalePercentHardMax;
	}

#if MSXBARE_ENABLE_DEBUG_OVERLAY
	if (DebugOverlayModeEnabled(ClampDebugOverlayMode(overlay_mode)))
	{
		return ClampScalePercent(manual_scale_percent, max_scale_percent);
	}
#else
	(void) overlay_mode;
#endif

	unsigned fixed_scale_percent = ScalePercentFromFactor(ComputeFixedMaxScaleFactor(screen_height));
	if (fixed_scale_percent > max_scale_percent)
	{
		fixed_scale_percent = max_scale_percent;
	}
	return fixed_scale_percent;
}

static boolean EffectiveOverscanEnabled(unsigned scale_percent)
{
	return (scale_percent > kScalePercentMin) ? TRUE : FALSE;
}

static void ComputeViewportLayout(unsigned screen_width, unsigned screen_height,
							 unsigned src_width, unsigned src_height,
							 unsigned scale_percent,
							 unsigned *out_box_x,
							 unsigned *out_box_y,
							 unsigned *out_box_w,
							 unsigned *out_box_h,
							 unsigned *out_full_w,
							 unsigned *out_full_h,
							 unsigned *out_crop_x,
							 unsigned *out_crop_y)
{
	unsigned box_x = 0u;
	unsigned box_y = 0u;
	unsigned box_w = screen_width;
	unsigned box_h = screen_height;
	unsigned full_w = screen_width;
	unsigned full_h = screen_height;
	unsigned crop_x = 0u;
	unsigned crop_y = 0u;

	if (screen_width > 0u && screen_height > 0u && src_width > 0u && src_height > 0u)
	{
		const boolean hires_mode = src_width >= 512u ? TRUE : FALSE;
		const unsigned box_base_w = kViewportBaseWidth;
		const unsigned box_base_h = kViewportBaseHeight;
		const unsigned scale_factor = ScaleFactorFromPercent(scale_percent);

		(void) hires_mode;
		full_w = box_base_w * scale_factor;
		full_h = box_base_h * scale_factor;

		if (full_w == 0u) full_w = 1u;
		if (full_h == 0u) full_h = 1u;

		box_w = (full_w > screen_width) ? screen_width : full_w;
		box_h = (full_h > screen_height) ? screen_height : full_h;
		crop_x = (full_w > box_w) ? ((full_w - box_w) / 2u) : 0u;
		crop_y = (full_h > box_h) ? ((full_h - box_h) / 2u) : 0u;
		box_x = (screen_width > box_w) ? ((screen_width - box_w) / 2u) : 0u;
		box_y = (screen_height > box_h) ? ((screen_height - box_h) / 2u) : 0u;
	}

	if (out_box_x != 0) *out_box_x = box_x;
	if (out_box_y != 0) *out_box_y = box_y;
	if (out_box_w != 0) *out_box_w = box_w;
	if (out_box_h != 0) *out_box_h = box_h;
	if (out_full_w != 0) *out_full_w = full_w;
	if (out_full_h != 0) *out_full_h = full_h;
	if (out_crop_x != 0) *out_crop_x = crop_x;
	if (out_crop_y != 0) *out_crop_y = crop_y;
}

static unsigned MapWovenHiResPhysicalY(unsigned full_y,
									   unsigned full_dst_height,
									   unsigned logical_src_height,
									   unsigned physical_src_height,
									   boolean current_field_odd)
{
	if (full_dst_height == 0u || logical_src_height == 0u || physical_src_height == 0u)
	{
		return 0u;
	}

	const unsigned logical_y =
		(unsigned) (((u64) full_y * (u64) logical_src_height) / (u64) full_dst_height);
	const unsigned clamped_logical_y =
		logical_y >= logical_src_height ? (logical_src_height - 1u) : logical_y;
	const unsigned group_start =
		(unsigned) (((u64) clamped_logical_y * (u64) full_dst_height) / (u64) logical_src_height);
	const unsigned group_end =
		(unsigned) (((u64) (clamped_logical_y + 1u) * (u64) full_dst_height) / (u64) logical_src_height);
	const unsigned group_rows = group_end > group_start ? (group_end - group_start) : 1u;
	const unsigned local_row = full_y > group_start ? (full_y - group_start) : 0u;
	const unsigned field_odd = current_field_odd
		? (((local_row << 1) < group_rows) ? 1u : 0u)
		: (((local_row << 1) >= group_rows) ? 1u : 0u);
	const unsigned physical_y = (clamped_logical_y << 1) | field_odd;

	return physical_y < physical_src_height ? physical_y : (physical_src_height - 1u);
}

static char Port99OpTag(unsigned op)
{
	switch (op)
	{
	case 1u: return 'R';
	case 2u: return 'L';
	case 3u: return 'W';
	case 4u: return 'S';
	case 5u: return 'A';
	default: return '-';
	}
}

static u64 FrameIntervalFromRefreshHz(unsigned hz)
{
	return (hz == 50u) ? kFrameInterval50Us : kFrameInterval60Us;
}

static unsigned ClampRefreshRateHz(unsigned hz)
{
	return (hz == 50u) ? 50u : 60u;
}

static unsigned Z80TurboPercentFromMode(unsigned mode)
{
	switch (mode)
	{
	case kZ80TurboModePan:
		return 150u;  /* 5.369318MHz over 3.579545MHz base */
	case kZ80TurboModeMax:
		return 200u;  /* 7.159090MHz over 3.579545MHz base */
	case kZ80TurboModeDes:
	default:
		return 100u;
	}
}

static const char *BootModeLabelFromMode(unsigned mode)
{
	switch (mode)
	{
	case kBootModeFast: return "FAST";
	case kBootModeGame: return "GAME";
	default: return "NORM";
	}
}

static const char *MachineLabelFromProfile(unsigned profile)
{
	return backend_machine_profile_label(profile);
}

static boolean IsMsx2FamilyProfile(unsigned profile)
{
	return backend_machine_profile_is_msx2_family(profile);
}

static boolean IsMachineProfileSupportedByBuild(unsigned profile)
{
	switch (profile)
	{
	case 1u: return MSXBARE_FEAT_MSX2 ? TRUE : FALSE;
	case 2u: return MSXBARE_FEAT_MSX2P ? TRUE : FALSE;
	default: return TRUE;
	}
}

static unsigned FirstSupportedMachineProfile(void)
{
	const unsigned count = backend_machine_profile_count();
	for (unsigned i = 0u; i < count; ++i)
	{
		if (IsMachineProfileSupportedByBuild(i))
		{
			return i;
		}
	}
	return 0u;
}

static unsigned ClampMachineProfileForBuild(unsigned profile)
{
	profile = backend_machine_profile_clamp(profile);
	if (IsMachineProfileSupportedByBuild(profile))
	{
		return profile;
	}
	return FirstSupportedMachineProfile();
}

static unsigned CycleMachineProfileForBuild(unsigned current, boolean reverse)
{
	const unsigned count = backend_machine_profile_count();
	if (count == 0u)
	{
		return 0u;
	}
	current = backend_machine_profile_clamp(current);
	for (unsigned step = 0u; step < count; ++step)
	{
		current = reverse
			? ((current == 0u) ? (count - 1u) : (current - 1u))
			: ((current + 1u) % count);
		if (IsMachineProfileSupportedByBuild(current))
		{
			return current;
		}
	}
	return FirstSupportedMachineProfile();
}

static unsigned ClampRamMapperKb(unsigned kb)
{
	switch (kb)
	{
	case 512u:
	case 1024u:
		return kb;
	case 256u:
	default:
		return 256u;
	}
}

static unsigned CycleRamMapperKb(unsigned kb, boolean reverse)
{
	kb = ClampRamMapperKb(kb);
	if (!reverse)
	{
		return (kb == 256u) ? 512u : ((kb == 512u) ? 1024u : 256u);
	}
	return (kb == 1024u) ? 512u : ((kb == 512u) ? 256u : 1024u);
}

static unsigned ClampMegaRamKb(unsigned kb)
{
	switch (kb)
	{
	case 0u:
	case 256u:
	case 512u:
	case 1024u:
		return kb;
	default:
		return 0u;
	}
}

static unsigned CycleMegaRamKb(unsigned kb, boolean reverse)
{
	kb = ClampMegaRamKb(kb);
	if (!reverse)
	{
		return (kb == 0u) ? 256u : ((kb == 256u) ? 512u : ((kb == 512u) ? 1024u : 0u));
	}
	return (kb == 0u) ? 1024u : ((kb == 1024u) ? 512u : ((kb == 512u) ? 256u : 0u));
}

static unsigned AudioGainEffectivePct(unsigned ui_pct)
{
	if (ui_pct > 100u) ui_pct = 100u;
	/* UI gain is now a direct 0..100% scaler in the final audio stage. */
	return ui_pct;
}

static unsigned AudioGainUiLevelFromPercent(unsigned ui_pct)
{
	if (ui_pct > 100u) ui_pct = 100u;
	return (ui_pct * 9u + 50u) / 100u;
}

static char ToUpperAscii(char ch)
{
	if (ch >= 'a' && ch <= 'z')
	{
		return (char) (ch - 'a' + 'A');
	}
	return ch;
}

static int IsFileChar83(char ch)
{
	if ((ch >= 'A' && ch <= 'Z') || (ch >= '0' && ch <= '9'))
	{
		return 1;
	}
	return (ch == '_' || ch == '$' || ch == '~' || ch == '!' || ch == '#' || ch == '%' || ch == '-');
}

static const char *BaseNameFromPath(const char *path)
{
	if (path == 0)
	{
		return 0;
	}

	const char *base = path;
	for (const char *p = path; *p != '\0'; ++p)
	{
		if (*p == '/' || *p == '\\' || *p == ':')
		{
			base = p + 1;
		}
	}
	return base;
}

static void FormatRomName83(const char *path, char out[17])
{
	if (out == 0)
	{
		return;
	}

	if (path == 0 || path[0] == '\0')
	{
		out[0] = '\0';
		return;
	}

	const char *base = BaseNameFromPath(path);
	if (base == 0 || base[0] == '\0')
	{
		out[0] = '\0';
		return;
	}

	unsigned n = 0u;
	for (const char *p = base; *p != '\0' && *p != '.' && n < 16u; ++p)
	{
		char ch = ToUpperAscii(*p);
		if (IsFileChar83(ch))
		{
			out[n++] = ch;
		}
	}
	if (n == 0u)
	{
		out[n++] = '_';
	}
	out[n] = '\0';
}

static unsigned ParseUintValue(const char *text)
{
	if (text == 0)
	{
		return 0u;
	}

	unsigned value = 0u;
	while (*text == ' ' || *text == '\t')
	{
		++text;
	}

	while (*text >= '0' && *text <= '9')
	{
		value = (value * 10u) + (unsigned) (*text - '0');
		++text;
	}

	return value;
}

static unsigned ClampFatFsCode(FRESULT code)
{
	return ((unsigned) code > 999u) ? 999u : (unsigned) code;
}

static void LogSdOpResult(CLogger &logger, const char *op, FRESULT code, const char *path, boolean warning)
{
	CString line;
	if (path != 0 && path[0] != '\0')
	{
		line.Format("SD %s fr=%u path=%s", op != 0 ? op : "OP", ClampFatFsCode(code), path);
	}
	else
	{
		line.Format("SD %s fr=%u", op != 0 ? op : "OP", ClampFatFsCode(code));
	}
	logger.Write(FromKernel, warning ? LogWarning : LogNotice, line);
}

static const char *VideoModeLabelFromPresentation(const BackendVideoPresentation &presentation)
{
	return presentation.interlaced_mode ? "Interlaced"
		: (presentation.hires_mode ? "Hires" : "Normal");
}

static void ParseTextValueLine(const char *value_start, const char *value_end, char *dst, unsigned dst_size)
{
	auto text_to_upper = [](char c) -> char {
		return (c >= 'a' && c <= 'z') ? (char) (c - ('a' - 'A')) : c;
	};
	auto text_is_space = [](char c) -> boolean {
		return (c == ' ' || c == '\t') ? TRUE : FALSE;
	};
	auto text_is_empty_marker = [&](const char *text) -> boolean {
		if (text == 0)
		{
			return FALSE;
		}
		const char *p = text;
		while (text_is_space(*p))
		{
			++p;
		}
		if (*p == '[')
		{
			++p;
			while (text_is_space(*p))
			{
				++p;
			}
		}
		static const char kEmptyTag[] = "EMPTY";
		for (unsigned i = 0u; kEmptyTag[i] != '\0'; ++i)
		{
			if (text_to_upper(p[i]) != kEmptyTag[i])
			{
				return FALSE;
			}
		}
		p += 5;
		while (text_is_space(*p))
		{
			++p;
		}
		if (*p == ']')
		{
			++p;
		}
		while (text_is_space(*p))
		{
			++p;
		}
		return (*p == '\0') ? TRUE : FALSE;
	};

	if (dst == 0 || dst_size == 0u)
	{
		return;
	}
	dst[0] = '\0';
	if (value_start == 0 || value_end == 0 || value_end < value_start)
	{
		return;
	}

	unsigned n = 0u;
	const char *p = value_start;
	while (p < value_end && n + 1u < dst_size)
	{
		dst[n++] = *p++;
	}
	dst[n] = '\0';
	if (text_is_empty_marker(dst))
	{
		dst[0] = '\0';
	}
}

static int SettingsKeyEquals(const char *key, unsigned key_len, const char *literal)
{
	if (key == 0 || literal == 0)
	{
		return 0;
	}

	unsigned i = 0u;
	for (; i < key_len; ++i)
	{
		if (literal[i] == '\0' || key[i] != literal[i])
		{
			return 0;
		}
	}

	return literal[i] == '\0';
}

static boolean BootConfigKeyEquals(const char *line, unsigned key_len, const char *literal)
{
	if (line == 0 || literal == 0)
	{
		return FALSE;
	}
	for (unsigned i = 0u; i < key_len; ++i)
	{
		if (literal[i] == '\0' || line[i] != literal[i])
		{
			return FALSE;
		}
	}
	return literal[key_len] == '\0' ? TRUE : FALSE;
}


static void FlushDCacheRange(void *addr, unsigned bytes)
{
	if (addr == 0 || bytes == 0u)
	{
		return;
	}

	uintptr start = (uintptr) addr;
	uintptr end = start + (uintptr) bytes;
	start &= ~(kDCacheLineSize - 1u);
	end = (end + (kDCacheLineSize - 1u)) & ~(kDCacheLineSize - 1u);

	for (uintptr p = start; p < end; p += kDCacheLineSize)
	{
		asm volatile ("dc cvac, %0" :: "r" (p) : "memory");
	}

	asm volatile ("dsb ish" ::: "memory");
}

static void FlushDCacheRect565(u16 *base,
					 unsigned pitch_pixels,
					 unsigned x,
					 unsigned y,
					 unsigned width,
					 unsigned height)
{
	if (base == 0 || width == 0u || height == 0u)
	{
		return;
	}

	for (unsigned row = 0u; row < height; ++row)
	{
		FlushDCacheRange(base + ((y + row) * pitch_pixels) + x, width * (unsigned) sizeof(u16));
	}
}

static void FlushDCacheRect565Contiguous(u16 *base,
						 unsigned pitch_pixels,
						 unsigned x,
						 unsigned y,
						 unsigned width,
						 unsigned height)
{
	if (base == 0 || width == 0u || height == 0u || pitch_pixels == 0u)
	{
		return;
	}

	u16 *flush_start = base + (y * pitch_pixels) + x;
	const unsigned flush_pixels = ((height - 1u) * pitch_pixels) + width;
	FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
}

static void FillRun565(u16 *dst, u16 sample, unsigned count)
{
	if (dst == 0 || count == 0u)
	{
		return;
	}

	if ((((uintptr) dst) & 0x2u) != 0u)
	{
		*dst++ = sample;
		if (--count == 0u)
		{
			return;
		}
	}

	const u32 packed = (u32) sample | ((u32) sample << 16);
	while (count >= 2u)
	{
		*(u32 *) (void *) dst = packed;
		dst += 2;
		count -= 2u;
	}
	if (count != 0u)
	{
		*dst = sample;
	}
}

static void BlitMappedRunsRgb565(u16 *dst_line,
						  const u16 *src_line,
						  const u16 *run_src_x,
						  const u16 *run_dst_x,
						  const u16 *run_len,
						  unsigned run_count,
						  unsigned src_x0,
						  unsigned dim_mode)
{
	if (dst_line == 0 || src_line == 0 || run_src_x == 0 || run_dst_x == 0 || run_len == 0)
	{
		return;
	}

	for (unsigned i = 0u; i < run_count; ++i)
	{
		u16 sample = src_line[src_x0 + run_src_x[i]];
		if (dim_mode == 1u)
		{
			sample = (u16) ((sample & 0xF7DEu) >> 1);
		}
		FillRun565(dst_line + run_dst_x[i], sample, run_len[i]);
	}
}

static void BlitLineExpandNxRgb565NoDim(u16 *dst_line,
							const u16 *src_line,
							unsigned src_width,
							unsigned scale)
{
	if (dst_line == 0 || src_line == 0 || src_width == 0u || scale == 0u)
	{
		return;
	}

	for (unsigned x = 0u; x < src_width; ++x)
	{
		FillRun565(dst_line + (x * scale), src_line[x], scale);
	}
}

static void FillRect565(u16 *dst_base,
					  unsigned pitch_pixels,
					  unsigned screen_width,
					  unsigned screen_height,
					  unsigned x,
					  unsigned y,
					  unsigned w,
					  unsigned h,
					  u16 color)
{
	if (dst_base == 0 || w == 0u || h == 0u || pitch_pixels == 0u)
	{
		return;
	}

	if (x >= screen_width || y >= screen_height)
	{
		return;
	}

	const unsigned max_w = screen_width - x;
	const unsigned max_h = screen_height - y;
	if (w > max_w) w = max_w;
	if (h > max_h) h = max_h;
	if (w == 0u || h == 0u)
	{
		return;
	}

	for (unsigned row = 0; row < h; ++row)
	{
		u16 *dst = dst_base + ((y + row) * pitch_pixels) + x;
		for (unsigned col = 0; col < w; ++col)
		{
			dst[col] = color;
		}
	}
}

static void FillRectScreen(CComboScreenDevice *screen,
					   unsigned x,
					   unsigned y,
					   unsigned w,
					   unsigned h,
					   TScreenColor color)
{
	if (screen == 0 || w == 0u || h == 0u)
	{
		return;
	}

	for (unsigned row = 0; row < h; ++row)
	{
		for (unsigned col = 0; col < w; ++col)
		{
			screen->SetPixel(x + col, y + row, color);
		}
	}
}

#ifndef MSXBARE_FMSX_AUDIO_GAIN
#define MSXBARE_FMSX_AUDIO_GAIN 1
#endif

#ifndef MSXBARE_FMSX_AUDIO_GAIN_MAX
#define MSXBARE_FMSX_AUDIO_GAIN_MAX 16
#endif

#ifndef MSXBARE_FMSX_AUDIO_TARGET_PEAK
#define MSXBARE_FMSX_AUDIO_TARGET_PEAK 12000
#endif

#ifndef MSXBARE_FMSX_AUDIO_PROBE_TONE
#define MSXBARE_FMSX_AUDIO_PROBE_TONE 0
#endif

#ifndef MSXBARE_AUDIO_BOOT_TONE_MS
#define MSXBARE_AUDIO_BOOT_TONE_MS 0
#endif

#ifndef MSXBARE_AUDIO_BOOT_TONE_AMP
#define MSXBARE_AUDIO_BOOT_TONE_AMP 12000
#endif

#ifndef MSXBARE_ENABLE_DEBUG_OVERLAY
#define MSXBARE_ENABLE_DEBUG_OVERLAY 0
#endif

#ifndef MSXBARE_FEAT_SCC
#define MSXBARE_FEAT_SCC 1
#endif
#ifndef MSXBARE_FEAT_FMPAC
#define MSXBARE_FEAT_FMPAC 1
#endif
#ifndef MSXBARE_FEAT_DISK_ROM
#define MSXBARE_FEAT_DISK_ROM 1
#endif
#ifndef MSXBARE_FEAT_MEGARAM
#define MSXBARE_FEAT_MEGARAM 1
#endif
#ifndef MSXBARE_FEAT_MSX2
#define MSXBARE_FEAT_MSX2 1
#endif
#ifndef MSXBARE_FEAT_MSX2P
#define MSXBARE_FEAT_MSX2P 1
#endif
#ifndef MSXBARE_FEAT_LOAD_ROM
#define MSXBARE_FEAT_LOAD_ROM 1
#endif
#ifndef MSXBARE_FEAT_LOAD_DISK
#define MSXBARE_FEAT_LOAD_DISK 1
#endif
#ifndef MSXBARE_ONE_ROM_MODE
#define MSXBARE_ONE_ROM_MODE 0
#endif
#ifndef MSXBARE_BOOT_MODE_DEFAULT_ENUM
#define MSXBARE_BOOT_MODE_DEFAULT_ENUM 0
#endif
#ifndef MSXBARE_BOOT_MODE_LOCKED
#define MSXBARE_BOOT_MODE_LOCKED 0
#endif

CComboKernel *CComboKernel::s_Instance = 0;

CComboKernel::CComboKernel(void)
:	m_Screen(m_Options.GetWidth(), m_Options.GetHeight()),
	m_GfxText(&m_Screen),
	m_Timer(&m_Interrupt),
	m_Logger(m_Options.GetLogLevel(), &m_Timer),
	m_USBHCI(&m_Interrupt, &m_Timer, TRUE),
	m_EMMC(&m_Interrupt, &m_Timer, &m_ActLED),
	m_Sound(0),
	m_UsbGamepad(),
	m_UsbKeyboard(),
	m_AudioPhase(0),
	m_AudioStep((u32)(((u64)440u << 32) / (u64)kSampleRate)),
	m_PlugAndPlayCount(0),
	m_KeyEventCount(0),
	m_LastKeyCode(0),
	m_AudioWriteOps(0),
	m_AudioDropOps(0),
	m_AudioOverwriteSeen(0),
	m_AudioTrimSeen(0),
	m_AudioUnderrunSeen(0),
	m_AudioShortPullSeen(0),
	m_AudioPeak(0),
	m_LastAudioSample(0),
	m_SoundStartAttempts(0),
	m_SoundStartFailures(0),
	m_LastQueueAvail(0),
	m_LastQueueFree(0),
	m_AudioTargetPeakRuntime(MSXBARE_FMSX_AUDIO_TARGET_PEAK),
	m_AudioClipMaxRuntime(28000),
	m_AudioOutputGainPct(50),
	m_BootToneFramesRemaining(0),
	m_UsbInitRetryTick(0u),
	m_AudioInitAttempted(FALSE),
	m_UsbReady(FALSE),
	m_JoyBridgeBits(0),
	m_JoyMappedBits(ComboKeyboardJoyMask()),
	m_DebugOverlayMode(ComboDebugOverlayOff),
	m_DebugOverlayUnlocked(TRUE),
	m_ScreenReady(FALSE),
	m_EmulationPaused(FALSE),
	m_LastF12Pressed(FALSE),
	m_LastF6Pressed(FALSE),
	m_LastF7Pressed(FALSE),
	m_LastF8Pressed(FALSE),
	m_LastFmGainUpPressed(FALSE),
	m_LastFmGainDownPressed(FALSE),
	m_LastPauseWasInSettings(FALSE),
	m_LastPausePressed(FALSE),
	m_LastMenuBackPressed(FALSE),
	m_PauseNeedsBackgroundRedraw(FALSE),
	m_PauseNeedsFullViewportClear(FALSE),
	m_ForceViewportFullClearNextFrame(FALSE),
	m_PauseRenderSuppressed(FALSE),
	m_BackendEnabled(TRUE),
	m_BackendReady(FALSE),
	m_EmulatorBackendName("unknown"),
	m_BackendInitFailCode(0u),
	m_BackendFrames(0),
	m_BackendLastError(0),
	m_BackendLastPC(-1),
	m_BackendPcRepeatCount(0),
	m_BackendPcLoopLogged(FALSE),
	m_BackendVideoSeq(0),
	m_BackendVdpTraceSeq(0u),
	m_BackendVdpTraceDropped(0u),
	m_BackendSccTraceSeq(0u),
	m_BackendSccTraceDropped(0u),
	m_BackendAudioPortTraceSeq(0u),
	m_BackendAudioPortTraceDropped(0u),
	m_BackendKmgTraceSeq(0u),
	m_BackendKmgTraceDropped(0u),
	m_LastAudioQueueLogUs(0),
	m_LastVideoPacingLogUs(0),
	m_BackendFpsWindowStartUs(0),
	m_LastPauseToggleUs(0),
	m_LastMenuInputPollUs(0),
	m_LastOverlayUs(0),
	m_UartAudioQueueAvailMin(0u),
	m_UartAudioLowWaterHits(0u),
	m_UartAudioRefillUsLast(0u),
	m_UartAudioRefillUsPeak(0u),
	m_UartVideoCatchupLast(0u),
	m_UartVideoCatchupPeak(0u),
	m_UartVideoCatchupCapCount(0u),
	m_UartVideoLateUsLast(0u),
	m_UartVideoLateUsPeak(0u),
	m_UartVideoStepUsLast(0u),
	m_UartVideoStepUsPeak(0u),
	m_UartVideoBlitUsLast(0u),
	m_UartVideoBlitUsPeak(0u),
	m_LastVideoModeScreen(0u),
	m_LastVideoModeLogicalWidth(0u),
	m_LastVideoModeLogicalHeight(0u),
	m_HiresHostTraceFramesRemaining(0u),
	m_BackendFpsWindowStartFrames(0),
	m_BackendFpsX10(0),
	m_FramePacingErrAvgUs(0u),
	m_FramePacingErrMaxUs(0u),
	m_BackendBlankFrames(0),
	m_LastVideoModeLogValid(FALSE),
	m_LastVideoModeHires(FALSE),
	m_LastVideoModeInterlaced(FALSE),
	m_InitramfsFiles(0),
	m_BackendBoxX(0),
	m_BackendBoxY(0),
	m_BackendBoxW(0),
	m_BackendBoxH(0),
	m_BlitMapSrcW(0),
	m_BlitMapSrcH(0),
	m_BlitMapDstW(0),
	m_BlitMapDstH(0),
	m_BlitRunCount(0u),
	m_BlitMapValid(FALSE),
	m_BlitMapWovenHiRes(FALSE),
	m_GameMasterCatalog{{0}},
	m_OverscanPercent(250u),
	m_ScaleMaxFitEnabled(FALSE),
	m_Language(ComboLanguagePT),
	m_ResolutionMode(kResolutionModeAuto),
	m_ScanlineMode(kScanlineModeOff),
	m_RefreshRateHz(60u),
	m_DiskRomEnabled(MSXBARE_FEAT_DISK_ROM ? TRUE : FALSE),
	m_BootMode((MSXBARE_BOOT_MODE_DEFAULT_ENUM <= 2u) ? MSXBARE_BOOT_MODE_DEFAULT_ENUM : kBootModeNorm),
	m_MachineProfile(backend_machine_profile_default()->id),
	m_RamMapperKb(kRamMapperKbDefault),
	m_MegaRamKb(MSXBARE_FEAT_MEGARAM ? kMegaRamKbDefault : 0u),
	m_Z80TurboMode(kZ80TurboModeDes),
	m_RenshaMode(0u),
	m_RenshaPhase(0u),
	m_RenshaFireAHeld(FALSE),
	m_RenshaSpaceHeld(FALSE),
	m_LastKeyboardModifiers(0u),
	m_LastKeyboardRawKeys{0u, 0u, 0u, 0u, 0u, 0u},
	m_RuntimeKeyboardModifiers(0u),
	m_RuntimeKeyboardRawKeys{0u, 0u, 0u, 0u, 0u, 0u},
	m_RuntimeKeyboardDispatchValid(FALSE),
	m_RuntimeKeyboardReplayBudget(0u),
	m_RuntimeKeyboardDispatchedModifiers(0u),
	m_RuntimeKeyboardDispatchedRawKeys{0u, 0u, 0u, 0u, 0u, 0u},
	m_FmMusicEnabled(MSXBARE_FEAT_FMPAC ? TRUE : FALSE),
	m_FmLayerGainPct(80u),
	m_SccCartEnabled(MSXBARE_FEAT_SCC ? TRUE : FALSE),
	m_SccDualCartEnabled(FALSE),
	m_FrameIntervalUs(FrameIntervalFromRefreshHz(60u)),
	m_FramePacingResetPending(FALSE),
	m_BackendFallbackPattern(FALSE),
	m_TestToneEnabled(FALSE),
	m_MmuEnabled(FALSE),
	m_DCacheEnabled(FALSE),
	m_ICacheEnabled(FALSE),
	m_SettingsStorageReady(FALSE),
	m_UartTelemetryEnabled(FALSE),
	m_KanjiRomEnabled(TRUE),
	m_KanjiRomAvailable(FALSE),
	m_SettingsLoadPending(FALSE),
	m_InitramfsDeferredMountPending(FALSE),
	m_SettingsSavePending(FALSE),
	m_ResolutionModeLoadPending(FALSE),
	m_StateSavePending(FALSE),
	m_StateLoadPending(FALSE),
	m_MediaCatalogStarted(FALSE),
	m_MediaCatalogSummaryLogged(FALSE),
	m_PendingMenuAction((unsigned) ComboMenuActionNone),
	m_SettingsSaveStage(0u),
	m_SettingsSaveCode(0u),
	m_SettingsSaveAux(0u),
	m_BootStartUs(0u),
	m_BootToBackendMs(0u),
	m_StateIoBuffer(0),
	m_StateIoBufferCapacity(0u),
	m_BackendPresentBuffer(0),
	m_BackendPresentBufferPixels(0u)
{
	s_Instance = this;
	m_ActLED.Blink(5);
	memset(m_DebugOverlayLineLengths, 0, sizeof(m_DebugOverlayLineLengths));
	NormalizeSettingsForBuild();
	ResetUartPerfTelemetry();
}

void CComboKernel::NormalizeSettingsForBuild(void)
{
	/*
	 * If build defines an explicit machine profile, lock boot to that profile.
	 * Otherwise preserve persisted/user-selected machine profile and only clamp
	 * to profiles supported by the current build.
	 */
#ifdef MSXBARE_MACHINE_BOOT_PROFILE
	m_MachineProfile = ClampMachineProfileForBuild((unsigned) MSXBARE_MACHINE_BOOT_PROFILE);
#else
	m_MachineProfile = ClampMachineProfileForBuild(m_MachineProfile);
#endif

#if MSXBARE_ONE_ROM_MODE
	if (IsMachineProfileSupportedByBuild(2u))
	{
		m_MachineProfile = 2u;
	}
	m_BootMode = kBootModeGame;
#elif MSXBARE_BOOT_MODE_LOCKED
	m_BootMode = (MSXBARE_BOOT_MODE_DEFAULT_ENUM <= kBootModeGame) ? MSXBARE_BOOT_MODE_DEFAULT_ENUM : kBootModeNorm;
#else
	m_BootMode = (m_BootMode > kBootModeGame) ? kBootModeNorm : m_BootMode;
#endif

#if !MSXBARE_FEAT_DISK_ROM
	m_DiskRomEnabled = FALSE;
#elif !MSXBARE_ENABLE_DEBUG_OVERLAY
	/*
	 * In non-debug builds Disk ROM must stay enabled regardless of persisted
	 * boot config. Disabling is only allowed when DEBUG is compiled in.
	 */
	m_DiskRomEnabled = TRUE;
#endif
#if !MSXBARE_FEAT_MEGARAM
	m_MegaRamKb = 0u;
#endif
#if !MSXBARE_FEAT_FMPAC
	m_FmMusicEnabled = FALSE;
#endif
#if !MSXBARE_FEAT_SCC
	m_SccCartEnabled = FALSE;
	m_SccDualCartEnabled = FALSE;
#endif

	m_RamMapperKb = ClampRamMapperKb(m_RamMapperKb);
	m_MegaRamKb = ClampMegaRamKb(m_MegaRamKb);
	if (!IsMsx2FamilyProfile(m_MachineProfile))
	{
		m_RamMapperKb = kRamMapperKbDefault;
	}
}

CComboKernel::~CComboKernel(void)
{
	if (m_StateIoBuffer != 0)
	{
		delete[] m_StateIoBuffer;
		m_StateIoBuffer = 0;
		m_StateIoBufferCapacity = 0u;
	}
	if (m_BackendPresentBuffer != 0)
	{
		delete[] m_BackendPresentBuffer;
		m_BackendPresentBuffer = 0;
		m_BackendPresentBufferPixels = 0u;
	}
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	g_backend_uart_trace_serial = 0;
#endif
	s_Instance = 0;
}

boolean CComboKernel::Initialize(void)
{
	boolean ok = TRUE;

	if (ok)
	{
		ok = m_Logger.Initialize(&m_NullLog);
	}

	if (ok) ok = m_Interrupt.Initialize();
	if (ok) ok = m_Timer.Initialize();
	if (ok)
	{
		BootPhase(m_Logger, "BT1", "Interrupt + Timer... OK");
		if (m_CPUThrottle.IsDynamic())
		{
			(void) m_CPUThrottle.SetSpeed(CPUSpeedMaximum, TRUE);
		}
		m_CPUThrottle.RegisterSystemThrottledHandler(
			SystemStateUnderVoltageOccurred
				| SystemStateFrequencyCappingOccurred
				| SystemStateThrottlingOccurred
				| SystemStateSoftTempLimitOccurred,
			SystemThrottledHandler,
			this);
		LogCpuClockStatus("BT1");
	}

	return ok;
}

boolean CComboKernel::InitializeSettingsStorage(void)
{
	if (m_SettingsStorageReady)
	{
		return TRUE;
	}

	if (!m_EMMC.Initialize())
	{
		BootPhaseWarn(m_Logger, "BT4", "SD/eMMC driver... FAIL");
		m_Logger.Write(FromKernel, LogWarning, "SD storage init failed; settings persistence disabled");
		return FALSE;
	}

	m_SettingsStorageReady = TRUE;
	BootPhase(m_Logger, "BT4", "SD/eMMC driver... OK");
	return TRUE;
}

void CComboKernel::InitializeDebugRuntime(void)
{
#if !MSXBARE_ENABLE_DEBUG_OVERLAY
	return;
#else
	if (g_backend_uart_trace_serial != 0)
	{
		return;
	}

	if (!m_Serial.Initialize(115200))
	{
		BootPhaseWarn(m_Logger, "BT11", "UART + Logger... FAIL");
		return;
	}

	g_backend_uart_trace_serial = &m_Serial;
	(void) m_Logger.Initialize(&m_Serial);
	BootPhase(m_Logger, "BT11", "UART + Logger... OK");
	m_Logger.Write(FromKernel, LogNotice, "Compile time: " __DATE__ " " __TIME__);
	m_Logger.Write(FromKernel, LogNotice, "Combo standalone: HDMI audio + USB keyboard");
	{
		CString mem_line;
		mem_line.Format("MMU/Caches M:%u C:%u I:%u", m_MmuEnabled ? 1u : 0u, m_DCacheEnabled ? 1u : 0u, m_ICacheEnabled ? 1u : 0u);
		m_Logger.Write(FromKernel, LogNotice, mem_line);
	}
	{
		const BackendInfo backend_info = backend_runtime_get_info();
		const char *selected_backend_id = backend_info.selected_backend_id != 0
			? backend_info.selected_backend_id
			: backend_runtime_selected_backend_id();
		CString backend_line;
		backend_line.Format("Emulator backend: %s [%s]",
			m_EmulatorBackendName != 0 ? m_EmulatorBackendName : "unknown",
			selected_backend_id != 0 ? selected_backend_id : "default");
		m_Logger.Write(FromKernel, LogNotice, backend_line);
		if (backend_info.requested_backend_id != 0
			&& backend_info.requested_backend_id[0] != '\0'
			&& !backend_info.requested_backend_found
			&& backend_info.selected_backend_id != 0)
		{
			CString fallback_line;
			fallback_line.Format("Backend fallback: requested=%s -> selected=%s",
				backend_info.requested_backend_id,
				backend_info.selected_backend_id);
			m_Logger.Write(FromKernel, LogWarning, fallback_line);
		}
	}
	{
		CString initramfs_line;
		initramfs_line.Format("initramfs files: %u", m_InitramfsFiles);
		m_Logger.Write(FromKernel, LogNotice, initramfs_line);
	}
	{
		CString boot_line;
		boot_line.Format("Fastboot to backend: %ums", m_BootToBackendMs);
		m_Logger.Write(FromKernel, LogNotice, boot_line);
	}
	LogCpuClockStatus("BT11");
#endif
}

void CComboKernel::ProcessDeferredBootTasks(void)
{
#if MSXBARE_ENABLE_FMSX
	if (m_InitramfsDeferredMountPending)
	{
		const unsigned mounted_more = backend_runtime_initramfs_mount_remaining();
		m_InitramfsFiles += mounted_more;
		m_InitramfsDeferredMountPending = FALSE;
		if (mounted_more > 0u)
		{
			CString line;
			line.Format("Boot deferred: initramfs remaining +%u => %u", mounted_more, m_InitramfsFiles);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
	}
#endif
}

TComboShutdownMode CComboKernel::Run(void)
{
	if (!kBootQuiet)
	{
		BootTrace("R0");
	}
	m_BootStartUs = CTimer::GetClockTicks64();
	m_BootToBackendMs = 0u;
	u64 sctlr_el1 = 0;
	asm volatile ("mrs %0, sctlr_el1" : "=r" (sctlr_el1));
	m_MmuEnabled = (sctlr_el1 & (1u << 0)) ? TRUE : FALSE;
	m_DCacheEnabled = (sctlr_el1 & (1u << 2)) ? TRUE : FALSE;
	m_ICacheEnabled = (sctlr_el1 & (1u << 12)) ? TRUE : FALSE;
	const boolean backend_audio_enabled = m_BackendEnabled ? TRUE : FALSE;

	if (!m_Screen.Initialize())
	{
		BootPhaseWarn(m_Logger, "BT2", "screen... FAIL");
		m_Logger.Write(FromKernel, LogPanic, "Screen init failed");
		return ComboShutdownHalt;
	}
	m_ScreenReady = TRUE;
	BootPhase(m_Logger, "BT2", "screen... OK");

	if (m_TestToneEnabled || backend_audio_enabled)
	{
		InitializeAudioOutput(backend_audio_enabled);
		BootPhase(m_Logger, "BT3", "audio... OK");
	}
	else
	{
		BootPhase(m_Logger, "BT3", "audio... OFF");
	}

	if (InitializeSettingsStorage())
	{
		/* Must be applied before backend init so boot/runtime settings take effect on first boot. */
		if (f_mount(&m_SettingsFileSystem, kSettingsDrive, 1) == FR_OK)
		{
			BootPhase(m_Logger, "BT5", "FATFS mount... OK");
			LoadSettingsFromStorage();
		}
		else
		{
			m_SettingsStorageReady = FALSE;
			BootPhaseWarn(m_Logger, "BT5", "FATFS mount... FAIL");
			m_Logger.Write(FromKernel, LogWarning, "Settings mount failed on SD:; persistence disabled");
		}
	}
	else
	{
		BootPhaseWarn(m_Logger, "BT5", "FATFS mount... SKIP");
	}
	NormalizeSettingsForBuild();
	BootPhase(m_Logger, "BT7", "Normalize settings... OK");
#if MSXBARE_ENABLE_FMSX
	if (m_BackendEnabled)
	{
		const boolean backend_has_machine = backend_runtime_is_capability_available(BACKEND_CAP_MACHINE);
		const boolean backend_has_media = backend_runtime_is_capability_available(BACKEND_CAP_MEDIA);
		if (!kBootQuiet)
		{
			BootTrace("R1");
		}
		m_InitramfsFiles = backend_runtime_initramfs_mount_boot_minimal();
		m_InitramfsDeferredMountPending = TRUE;
		if (!kBootQuiet)
		{
			BootTrace("R2");
		}
		BootPhase(m_Logger, "BT8", "initramfs boot-minimal... OK");

		if (!kBootQuiet)
		{
			BootTrace("R3");
		}
		if (backend_has_machine)
		{
			m_RefreshRateHz = ClampRefreshRateHz(m_RefreshRateHz);
			backend_runtime_set_refresh_hz(m_RefreshRateHz);
			backend_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
			backend_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
			backend_runtime_set_boot_mode(m_BootMode);
			backend_runtime_set_model_profile(m_MachineProfile);
			backend_runtime_set_rammapper_kb(m_RamMapperKb);
			backend_runtime_set_megaram_kb(m_MegaRamKb);
			backend_runtime_set_z80_turbo_mode(m_Z80TurboMode);
			backend_runtime_set_fm_music_enabled(m_FmMusicEnabled);
			backend_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
			backend_runtime_set_scc_plus_enabled(m_SccCartEnabled);
			if (!backend_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
			{
				m_SccDualCartEnabled = FALSE;
			}
		}
		BootPhase(m_Logger, "BT9", "runtime config... OK");
		m_BackendReady = backend_runtime_init();
		{
			const BackendInfo backend_info = backend_runtime_get_info();
			m_EmulatorBackendName = backend_info.active_backend_name;
			m_BackendInitFailCode = (backend_info.init_error_code > 0) ? (unsigned) backend_info.init_error_code : 0u;
		}
		{
			const u64 boot_elapsed_us = CTimer::GetClockTicks64() - m_BootStartUs;
			m_BootToBackendMs = (unsigned) (boot_elapsed_us / 1000u);
		}
		if (!m_BackendReady)
		{
			m_BackendLastError = (int) (m_BackendInitFailCode != 0u ? m_BackendInitFailCode : 1u);
			if (!kBootQuiet)
			{
				BootTrace("R4E");
			}
			CString line;
			line.Format("%s bootstrap failed (init code=%u)",
				m_EmulatorBackendName != 0 ? m_EmulatorBackendName : "backend",
				m_BackendInitFailCode);
			m_Logger.Write(FromKernel, LogWarning, line);
			BootPhaseWarn(m_Logger, "BT10", "emulator backend... FAIL");
		}
		else
		{
			if (!kBootQuiet)
			{
				BootTrace("R4O");
			}
			CString line;
			line.Format("%s bootstrap OK (frame-step)",
				m_EmulatorBackendName != 0 ? m_EmulatorBackendName : "backend");
			m_Logger.Write(FromKernel, LogNotice, line);
			BootPhase(m_Logger, "BT10", "emulator backend... OK");

			/* Defensive restore exists only on the current media-capable path for now. */
			if (backend_has_media)
			{
#if MSXBARE_FEAT_LOAD_DISK
				for (unsigned drive = 0u; drive < 2u; ++drive)
				{
					const char *persisted_path = backend_runtime_get_disk_path(drive);
					const char *mounted_name = backend_runtime_get_disk_name(drive);
					if (persisted_path != 0 && persisted_path[0] != '\0'
					 && (mounted_name == 0 || mounted_name[0] == '\0'))
					{
						if (backend_runtime_media_load_disk(drive, persisted_path))
						{
							CString restore_line;
							restore_line.Format("Boot media restore: DSK DRIVE%u <= %s", drive + 1u, persisted_path);
							m_Logger.Write(FromKernel, LogNotice, restore_line);
						}
						else
						{
							CString restore_line;
							restore_line.Format("Boot media restore failed: DSK DRIVE%u <= %s", drive + 1u, persisted_path);
							m_Logger.Write(FromKernel, LogWarning, restore_line);
						}
					}
				}
#endif
			}
		}
	}
#endif
	InitializeDebugRuntime();
	if (MSXBARE_ENABLE_DEBUG_OVERLAY && m_DebugOverlayUnlocked && DebugOverlayModeEnabled(m_DebugOverlayMode))
	{
		if (!kBootQuiet)
		{
			WriteScreenText("\x1b[2J\x1b[H\x1b[0m\x1b[?25l");
		}
	}
	else
	{
		WriteScreenText("\x1b[?25l");
	}
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	BootPhase(m_Logger, "BT12", "debug overlay... READY");
	m_Logger.Write(FromKernel, LogNotice, "Overlay: F11 | Pause: F12");
#else
	BootPhase(m_Logger, "BT12", "debug overlay... OFF");
#endif
#if MSXBARE_ENABLE_FMSX
	if (m_BackendReady && backend_runtime_is_capability_available(BACKEND_CAP_MACHINE))
	{
		m_FmLayerGainPct = backend_runtime_get_fm_layer_gain_pct();
	}
#endif
	m_PauseMenu.SetScalePercent(m_OverscanPercent);
	m_PauseMenu.SetLanguage(m_Language);
	m_PauseMenu.SetResolutionMode(m_ResolutionMode);
	m_PauseMenu.SetScanlineMode(m_ScanlineMode);
	m_RefreshRateHz = 60u;
	m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
	m_PauseMenu.SetDiskRomEnabled(m_DiskRomEnabled);
	m_PauseMenu.SetKanjiRomEnabled(m_KanjiRomEnabled);
	m_PauseMenu.SetKanjiRomAvailable(m_KanjiRomAvailable);
	m_PauseMenu.SetBootMode(m_BootMode);
	m_PauseMenu.SetMachineProfile(m_MachineProfile);
	m_PauseMenu.SetRamMapperKb(m_RamMapperKb);
	m_PauseMenu.SetMegaRamKb(m_MegaRamKb);
	m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
	m_PauseMenu.SetRenshaMode(m_RenshaMode);
	{
		u16 joy_codes[CUsbHidGamepad::MapSlotCount];
		m_UsbGamepad.GetMappingCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
		m_PauseMenu.SetJoystickMapCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
	}
	m_PauseMenu.SetFmMusicEnabled(m_FmMusicEnabled);
	m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
	m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled,
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_get_scc_dual_cart_available()
	#else
		FALSE
	#endif
	);
		m_PauseMenu.SetOverlayMode(
		MSXBARE_ENABLE_DEBUG_OVERLAY ? m_DebugOverlayMode : ComboDebugOverlayOff,
		MSXBARE_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE);
	m_PauseMenu.SetAudioGainPercent(m_AudioOutputGainPct);
	{
		const unsigned max_scale = ComputeViewportUiMaxScalePercent(m_Screen.GetHeight());
		m_PauseMenu.SetMaxScalePercent(max_scale);
		m_ScaleMaxFitEnabled = FALSE;
		m_OverscanPercent = ClampScalePercent(m_OverscanPercent, max_scale);
		m_PauseMenu.SetScalePercent(m_OverscanPercent);
		m_PauseMenu.SetScaleMaxFitEnabled(FALSE);
	}
	SetUartTelemetryEnabled(m_UartTelemetryEnabled);
	#if MSXBARE_ENABLE_FMSX
		m_Logger.Write(FromKernel, LogNotice, "Boot step: apply runtime");
		ApplyRuntimeSettingsToBackend();
		m_Logger.Write(FromKernel, LogNotice, "Boot step: runtime OK");
		if (!m_UsbReady)
		{
			m_Logger.Write(FromKernel, LogNotice, "Boot step: init USB");
			if (m_USBHCI.Initialize())
			{
				m_UsbReady = TRUE;
				m_Logger.Write(FromKernel, LogNotice, "USB host ready");
				m_Logger.Write(FromKernel, LogNotice, "Attach USB keyboard/gamepad");
				BootPhase(m_Logger, "BT13", "USB Host... OK");
			}
			else
			{
				m_Logger.Write(FromKernel, LogWarning, "USB host init failed; retrying");
				m_UsbInitRetryTick = 300u;
				BootPhaseWarn(m_Logger, "BT13", "USB Host... RETRY");
			}
		}
		/* Force first visible frame to use current viewport policy (avoid transient wide boot frame). */
		if (m_BackendReady)
		{
			m_Logger.Write(FromKernel, LogNotice, "Boot step: first blit");
			BlitBackendFrame(TRUE);
			(void) m_Screen.PresentIfDirty(m_DCacheEnabled, TRUE);
			m_Logger.Write(FromKernel, LogNotice, "Boot step: blit OK");
		}
	#endif

	m_Logger.Write(FromKernel, LogNotice, "Boot step: main loop");
	BootPhase(m_Logger, "BT14", "main loop... OK");
	u64 next_frame_us = CTimer::GetClockTicks64();
	for (unsigned tick = 0; ; ++tick)
	{
		u64 now_us = CTimer::GetClockTicks64();
		if (m_FramePacingResetPending)
		{
			next_frame_us = now_us + m_FrameIntervalUs;
			m_FramePacingResetPending = FALSE;
		}
		m_CPUThrottle.Update();
		if (!m_AudioInitAttempted && (m_TestToneEnabled || backend_audio_enabled))
		{
			if (m_TestToneEnabled || !m_BackendEnabled || !m_BackendReady || m_BackendFrames >= 2u)
			{
				InitializeAudioOutput(backend_audio_enabled);
			}
		}
		if (!m_UsbReady)
		{
			if (tick >= m_UsbInitRetryTick)
			{
				if (m_USBHCI.Initialize())
				{
					m_UsbReady = TRUE;
					m_Logger.Write(FromKernel, LogNotice, "USB host ready");
					m_Logger.Write(FromKernel, LogNotice, "Attach USB keyboard/gamepad");
				}
				else
				{
					/* Retry later without blocking the emulation startup path. */
					m_UsbInitRetryTick = tick + 300u;
				}
			}
		}

		const boolean updated = m_UsbReady ? m_USBHCI.UpdatePlugAndPlay() : FALSE;
		if (updated)
		{
			m_PlugAndPlayCount++;
		}

		if (updated)
		{
			if (m_UsbGamepad.AttachIfAvailable(m_DeviceNameService, m_Logger))
			{
				u16 joy_codes[CUsbHidGamepad::MapSlotCount];
				m_UsbGamepad.GetMappingCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
				m_PauseMenu.SetJoystickMapCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
			}
			(void) m_UsbKeyboard.AttachIfAvailable(m_DeviceNameService, m_Logger, KeyPressedHandler);
		}

		if (m_UsbGamepad.ConsumeRemovedEvent())
		{
			m_Logger.Write(FromKernel, LogNotice, "USB gamepad removed");
		}

		if (m_UsbKeyboard.ConsumeRemovedEvent())
		{
			m_LastKeyboardModifiers = 0u;
			m_RuntimeKeyboardModifiers = 0u;
			for (unsigned i = 0u; i < 6u; ++i)
			{
				m_LastKeyboardRawKeys[i] = 0u;
				m_RuntimeKeyboardRawKeys[i] = 0u;
			}
			m_LastPausePressed = FALSE;
			m_LastMenuBackPressed = FALSE;
			m_LastF6Pressed = FALSE;
			m_LastF7Pressed = FALSE;
			m_LastF8Pressed = FALSE;
			m_LastFmGainUpPressed = FALSE;
			m_LastFmGainDownPressed = FALSE;
	#if MSXBARE_ENABLE_FMSX
			if (m_BackendReady)
			{
				static const unsigned char kEmptyKeyboard[6] = {0u, 0u, 0u, 0u, 0u, 0u};
				backend_runtime_input_push_keyboard(0u, kEmptyKeyboard);
				m_RuntimeKeyboardDispatchValid = TRUE;
				m_RuntimeKeyboardReplayBudget = 0u;
				m_RuntimeKeyboardDispatchedModifiers = 0u;
				for (unsigned i = 0u; i < 6u; ++i)
				{
					m_RuntimeKeyboardDispatchedRawKeys[i] = 0u;
				}
			}
			else
			{
				m_RuntimeKeyboardDispatchValid = FALSE;
				m_RuntimeKeyboardReplayBudget = 0u;
			}
	#endif
			m_Logger.Write(FromKernel, LogNotice, "USB keyboard removed");
		}

		if (m_UsbKeyboard.IsAttached())
		{
			unsigned char pending_modifiers = 0u;
			unsigned char pending_raw[6] = {0u, 0u, 0u, 0u, 0u, 0u};
			boolean consumed_report = FALSE;
			while (m_UsbKeyboard.ConsumeLatest(&pending_modifiers, pending_raw))
			{
				UpdateJoystickFromRaw(pending_modifiers, pending_raw);
				consumed_report = TRUE;
			}
			m_UsbKeyboard.UpdateLEDs();
			/* Keep menu navigation responsive while a key is held (auto-repeat driven by frame loop). */
			if (!consumed_report)
			{
				UpdateJoystickFromRaw(m_LastKeyboardModifiers, m_LastKeyboardRawKeys);
			}
		}
		else if (m_EmulationPaused)
		{
			UpdateJoystickFromRaw(m_LastKeyboardModifiers, m_LastKeyboardRawKeys);
		}

		ProcessDeferredBootTasks();

		if (m_SettingsSavePending)
		{
			m_SettingsSavePending = FALSE;
			SaveSettingsToStorage();
			m_PauseMenu.ReturnToRoot();
			m_LastPauseWasInSettings = FALSE;
			m_PauseMenu.RequestRedraw();
		}
		if (m_ResolutionModeLoadPending)
		{
			if (m_EmulationPaused && m_PauseMenu.IsInSettings())
			{
				m_ResolutionMode = LoadResolutionModeFromBootConfig();
				m_PauseMenu.SetResolutionMode(m_ResolutionMode);
				m_PauseMenu.RequestRedraw();
			}
			m_ResolutionModeLoadPending = FALSE;
		}
		if (m_StateSavePending)
		{
			m_StateSavePending = FALSE;
			SaveEmulatorStateToStorage();
		}
		if (m_StateLoadPending)
		{
			m_StateLoadPending = FALSE;
			LoadEmulatorStateFromStorage();
		}
		if (m_PendingMenuAction != (unsigned) ComboMenuActionNone)
		{
			const TComboMenuAction deferred_action = (TComboMenuAction) m_PendingMenuAction;
			m_PendingMenuAction = (unsigned) ComboMenuActionNone;
			HandleMenuAction(deferred_action);
		}
		SyncRefreshRateStateFromRuntime();
		if (MSXBARE_ENABLE_DEBUG_OVERLAY && !m_DebugOverlayUnlocked && m_BackendReady)
		{
			const unsigned load_diag = backend_runtime_get_load_diag();
			/* Unlock debug only after StartMSX() has completed in runtime init path. */
			if (load_diag >= 2102u && load_diag < 9000u)
			{
				m_DebugOverlayUnlocked = TRUE;
				m_PauseMenu.SetOverlayMode(m_DebugOverlayMode, TRUE);
				m_PauseMenu.RequestRedraw();
				m_Logger.Write(FromKernel, LogNotice, "Debug overlay unlocked (post-StartMSX)");
			}
		}

		/* Hybrid wait: coarse sleep first, then short busy delay for tighter frame deadline. */
		if (m_BackendReady && !m_EmulationPaused)
		{
			now_us = CTimer::GetClockTicks64();
			if (next_frame_us > now_us + kFramePacingGuardUs)
			{
				const u64 slack_us = next_frame_us - now_us;
				if (slack_us > kFramePacingSleepTargetUs + kFramePacingGuardUs)
				{
					m_Scheduler.usSleep((unsigned) (slack_us - kFramePacingSleepTargetUs));
				}
				now_us = CTimer::GetClockTicks64();
				const u64 fine_slack_us = next_frame_us > now_us ? (next_frame_us - now_us) : 0ull;
				if (fine_slack_us > kFramePacingSpinThresholdUs + kFramePacingGuardUs)
				{
					CTimer::SimpleusDelay((unsigned) (fine_slack_us - kFramePacingGuardUs));
				}
			}
		}

		#if MSXBARE_ENABLE_FMSX
		if (m_BackendReady && !m_EmulationPaused)
		{
			now_us = CTimer::GetClockTicks64();
			boolean stepped_backend = FALSE;
			unsigned catchup_steps = 0;
			const unsigned max_catchup_steps = 2u;
			const boolean uart_perf_enabled = FALSE;
			while (now_us >= next_frame_us && catchup_steps < max_catchup_steps)
			{
				const u64 late_us64 = now_us - next_frame_us;
				const unsigned pacing_err_us = (unsigned) (late_us64 > 999u ? 999u : late_us64);
				if (uart_perf_enabled)
				{
					const unsigned late_us = (unsigned) (late_us64 > 9999u ? 9999u : late_us64);
					m_UartVideoLateUsLast = late_us;
					if (late_us > m_UartVideoLateUsPeak)
					{
						m_UartVideoLateUsPeak = late_us;
					}
				}
				if (m_FramePacingErrAvgUs == 0u)
				{
					m_FramePacingErrAvgUs = pacing_err_us;
				}
				else
				{
					m_FramePacingErrAvgUs = ((m_FramePacingErrAvgUs * 7u) + pacing_err_us) / 8u;
				}
				if (pacing_err_us > m_FramePacingErrMaxUs)
				{
					m_FramePacingErrMaxUs = pacing_err_us;
				}

				boolean rensha_fire_on = TRUE;
				u8 joy_bits_runtime = ResolveRuntimeJoystickBits();
				const unsigned rate_num = (m_RenshaMode > 3u) ? 0u : m_RenshaMode;
				const boolean rensha_pressed = m_RenshaSpaceHeld ? TRUE : FALSE;
				if (rate_num > 0u && rensha_pressed)
				{
					if (!m_RenshaFireAHeld)
					{
						/* First press must fire immediately and start oscillator phase at ON state. */
						m_RenshaFireAHeld = TRUE;
						m_RenshaPhase = 0u;
					}
					else
					{
						m_RenshaPhase += rate_num;
						while (m_RenshaPhase >= kRenshaRateDen)
						{
							m_RenshaPhase -= kRenshaRateDen;
						}
					}

					/* Use a wider duty cycle (50%) to avoid missed shots on games that poll at lower cadence. */
					const boolean fire_on_phase = (m_RenshaPhase < (kRenshaRateDen / 2u)) ? TRUE : FALSE;
					if (!fire_on_phase)
					{
						rensha_fire_on = FALSE;
						/* Keep joystick autofire behavior aligned when FIREA is also mapped/pressed. */
						joy_bits_runtime &= (u8) ~kJoyBridgeFireA;
					}
				}
				else
				{
					m_RenshaFireAHeld = FALSE;
					m_RenshaPhase = 0u;
				}
				PushKeyboardStateToRuntime(rensha_fire_on);
				backend_runtime_input_push_joystick(joy_bits_runtime);
				const u64 step_start_us = uart_perf_enabled ? CTimer::GetClockTicks64() : 0u;
				if (backend_runtime_step_frame())
				{
					if (uart_perf_enabled)
					{
						const u64 step_elapsed_us64 = CTimer::GetClockTicks64() - step_start_us;
						const unsigned step_elapsed_us = (unsigned) (step_elapsed_us64 > 9999u ? 9999u : step_elapsed_us64);
						m_UartVideoStepUsLast = step_elapsed_us;
						if (step_elapsed_us > m_UartVideoStepUsPeak)
						{
							m_UartVideoStepUsPeak = step_elapsed_us;
						}
					}
					stepped_backend = TRUE;
					const BackendRuntimeStatus runtime_status = backend_runtime_get_status();
					m_BackendFrames = runtime_status.frames;
					m_BackendLastError = runtime_status.last_error;
					SyncRefreshRateStateFromRuntime();

					if (m_BackendFpsWindowStartUs == 0u)
					{
						m_BackendFpsWindowStartUs = now_us;
						m_BackendFpsWindowStartFrames = m_BackendFrames;
					}
					else if (now_us > m_BackendFpsWindowStartUs)
					{
						const u64 elapsed_us = now_us - m_BackendFpsWindowStartUs;
						if (elapsed_us >= 1000000ull)
						{
							const unsigned long elapsed_frames = m_BackendFrames - m_BackendFpsWindowStartFrames;
							m_BackendFpsX10 = (unsigned) (((u64) elapsed_frames * 10000000ull) / elapsed_us);
							m_BackendFpsWindowStartUs = now_us;
							m_BackendFpsWindowStartFrames = m_BackendFrames;
							m_FramePacingErrMaxUs = 0u;
						}
					}

					if (runtime_status.last_pc == m_BackendLastPC)
					{
						if (m_BackendPcRepeatCount < 999999u)
						{
							m_BackendPcRepeatCount++;
						}
					}
					else
					{
						m_BackendLastPC = runtime_status.last_pc;
						m_BackendPcRepeatCount = 0;
						m_BackendPcLoopLogged = FALSE;
					}

					if (!m_BackendPcLoopLogged && m_BackendPcRepeatCount >= 1200u)
					{
						CString loop_line;
						loop_line.Format("Backend PC loop? PC=%04X repeat=%u", (unsigned) (m_BackendLastPC & 0xFFFF), m_BackendPcRepeatCount);
						m_Logger.Write(FromKernel, LogWarning, loop_line);
						m_BackendPcLoopLogged = TRUE;
					}

				}
				next_frame_us += m_FrameIntervalUs;
				catchup_steps++;
				now_us = CTimer::GetClockTicks64();
			}
			if (uart_perf_enabled)
			{
				m_UartVideoCatchupLast = catchup_steps;
				if (catchup_steps > m_UartVideoCatchupPeak)
				{
					m_UartVideoCatchupPeak = catchup_steps;
				}
				if (catchup_steps >= max_catchup_steps && now_us >= next_frame_us)
				{
					if (m_UartVideoCatchupCapCount < 999u)
					{
						m_UartVideoCatchupCapCount++;
					}
				}
			}

			if (stepped_backend)
			{
				const boolean force_viewport_clear = m_ForceViewportFullClearNextFrame;
				m_ForceViewportFullClearNextFrame = FALSE;
				const u64 blit_start_us = uart_perf_enabled ? CTimer::GetClockTicks64() : 0u;
				BlitBackendFrame(force_viewport_clear ? TRUE : FALSE);
				if (uart_perf_enabled)
				{
					const u64 blit_elapsed_us64 = CTimer::GetClockTicks64() - blit_start_us;
					const unsigned blit_elapsed_us = (unsigned) (blit_elapsed_us64 > 9999u ? 9999u : blit_elapsed_us64);
					m_UartVideoBlitUsLast = blit_elapsed_us;
					if (blit_elapsed_us > m_UartVideoBlitUsPeak)
					{
						m_UartVideoBlitUsPeak = blit_elapsed_us;
					}
				}
			}

			if (now_us > next_frame_us + (m_FrameIntervalUs * 12ull))
			{
				next_frame_us = now_us - (m_FrameIntervalUs * 2ull);
			}
		}
		#endif

		#if MSXBARE_ENABLE_FMSX
		if (m_BackendReady && m_EmulationPaused && m_PauseNeedsBackgroundRedraw)
		{
			const boolean full_viewport_clear =
				(m_PauseNeedsFullViewportClear || m_ForceViewportFullClearNextFrame) ? TRUE : FALSE;
			m_PauseNeedsBackgroundRedraw = FALSE;
			m_PauseNeedsFullViewportClear = FALSE;
			m_ForceViewportFullClearNextFrame = FALSE;
			if (full_viewport_clear)
			{
				BlitBackendFrame(TRUE);
			}
			const u16 *src_pixels = 0;
			unsigned src_w = 0u;
			unsigned src_h = 0u;
			BackendVideoPresentation presentation = {0};
			(void) backend_runtime_video_frame(&src_pixels, &src_w, &src_h);
			backend_runtime_get_video_presentation(&presentation);
			if (src_pixels != 0 && src_w > 0u && src_h > 0u)
			{
				const unsigned screen_width = m_Screen.GetWidth();
				const unsigned screen_height = m_Screen.GetHeight();
				unsigned full_snap_w = 0u;
				unsigned full_snap_h = 0u;
				unsigned crop_x = 0u;
				unsigned crop_y = 0u;
				const unsigned max_scale = ComputeViewportUiMaxScalePercent(screen_height);
				const unsigned scale_percent =
					ComputeEffectiveViewportScalePercent(m_OverscanPercent,
						max_scale,
						screen_height,
						m_DebugOverlayMode);
				ComputeViewportLayout(screen_width, screen_height,
					src_w, src_h,
					scale_percent,
					&m_BackendBoxX, &m_BackendBoxY, &m_BackendBoxW, &m_BackendBoxH,
					&full_snap_w, &full_snap_h,
					&crop_x, &crop_y);
				(void) combo_viewport_screenshot_capture_from_emulator(
					src_pixels, src_w, src_h,
					m_BackendBoxX, m_BackendBoxY, m_BackendBoxW, m_BackendBoxH,
					full_snap_w, full_snap_h, crop_x, crop_y,
					m_ScanlineMode);
			}
			m_PauseMenu.RequestRedraw();
		}
		#endif

		if (m_Sound != 0)
		{
			const boolean uart_perf_enabled = FALSE;
			const u64 refill_start_us = uart_perf_enabled ? CTimer::GetClockTicks64() : 0u;
			RefillAudioQueue();
			if (uart_perf_enabled)
			{
				const u64 refill_elapsed_us64 = CTimer::GetClockTicks64() - refill_start_us;
				const unsigned refill_elapsed_us = (unsigned) (refill_elapsed_us64 > 9999u ? 9999u : refill_elapsed_us64);
				m_UartAudioRefillUsLast = refill_elapsed_us;
				if (refill_elapsed_us > m_UartAudioRefillUsPeak)
				{
					m_UartAudioRefillUsPeak = refill_elapsed_us;
				}
			}
			if (!m_Sound->IsActive() && ((tick % 500u) == 0u))
			{
				m_SoundStartAttempts++;
				if (m_Sound->Start())
				{
					m_Logger.Write(FromKernel, LogWarning, "HDMI sound recovered after retry");
				}
				else
				{
					m_SoundStartFailures++;
				}
			}
		}
#if MSXBARE_ENABLE_DEBUG_OVERLAY
		if (m_DebugOverlayUnlocked && DebugOverlayModeEnabled(m_DebugOverlayMode))
		{
			now_us = CTimer::GetClockTicks64();
			if (m_LastOverlayUs == 0u || now_us - m_LastOverlayUs >= kDebugOverlayIntervalUs)
			{
				DrawDebugOverlay(tick);
				m_LastOverlayUs = now_us;
			}
		}
#endif
		{
			char slot1_name[17];
			char slot2_name[17];
			char drive1_name[17];
			char drive2_name[17];
		#if MSXBARE_ENABLE_FMSX
			const char *slot1_src = m_BackendReady ? backend_runtime_get_cartridge_name(0u) : 0;
			const char *slot2_src = m_BackendReady ? backend_runtime_get_cartridge_name(1u) : 0;
			const char *drive1_src = m_BackendReady ? backend_runtime_get_disk_name(0u) : 0;
			const char *drive2_src = m_BackendReady ? backend_runtime_get_disk_name(1u) : 0;
			FormatRomName83(slot1_src, slot1_name);
			FormatRomName83(slot2_src, slot2_name);
			FormatRomName83(drive1_src, drive1_name);
			FormatRomName83(drive2_src, drive2_name);
		#else
			FormatRomName83(0, slot1_name);
			FormatRomName83(0, slot2_name);
			FormatRomName83(0, drive1_name);
			FormatRomName83(0, drive2_name);
		#endif
			m_PauseMenu.SetLoadRomSlotNames(slot1_name, slot2_name);
			m_PauseMenu.SetLoadDiskDriveNames(drive1_name, drive2_name);
		}
		const unsigned menu_anchor_x = (m_BackendBoxW > 0u) ? m_BackendBoxX : 0u;
		const unsigned menu_anchor_y = (m_BackendBoxH > 0u) ? m_BackendBoxY : 0u;
		const unsigned menu_anchor_w = (m_BackendBoxW > 0u) ? m_BackendBoxW : m_Screen.GetWidth();
		const unsigned menu_anchor_h = (m_BackendBoxH > 0u) ? m_BackendBoxH : m_Screen.GetHeight();
		if (!(m_PauseRenderSuppressed && !m_EmulationPaused))
		{
			m_PauseMenu.Render(m_EmulationPaused, &m_GfxText,
				m_Screen.GetWidth(), m_Screen.GetHeight(),
				menu_anchor_x, menu_anchor_y, menu_anchor_w, menu_anchor_h);
		}
		m_Screen.Rotor(0, tick);
		(void) m_Screen.PresentIfDirty(m_DCacheEnabled, TRUE);
		m_Scheduler.Yield();
	}

	return ComboShutdownHalt;
}

void CComboKernel::InitializeAudioOutput(boolean backend_audio_enabled)
{
	m_AudioInitAttempted = TRUE;
	m_Sound = new CHDMISoundBaseDevice(&m_Interrupt, kSampleRate, kChunkSize);
	if (m_Sound == 0)
	{
		m_Logger.Write(FromKernel, LogPanic, "Failed to allocate CHDMISoundBaseDevice");
		return;
	}

	if (!m_Sound->AllocateQueue(kQueueMs))
	{
		m_Logger.Write(FromKernel, LogPanic, "Cannot allocate sound queue");
		return;
	}

	m_Sound->SetWriteFormat(SoundFormatSigned16, 2);
	RefillAudioQueue();

	m_SoundStartAttempts++;
	if (!m_Sound->Start())
	{
		m_SoundStartFailures++;
		m_Logger.Write(FromKernel, LogPanic, "Cannot start HDMI sound");
	}

	if (m_TestToneEnabled)
	{
		m_Logger.Write(FromKernel, LogNotice, "Test tone ON (440Hz HDMI)");
	}
	else if (backend_audio_enabled)
	{
		if (MSXBARE_AUDIO_BOOT_TONE_MS > 0)
		{
			m_BootToneFramesRemaining = (kSampleRate * MSXBARE_AUDIO_BOOT_TONE_MS) / 1000u;
			CString tone_line;
			tone_line.Format("Boot probe tone: %ums", MSXBARE_AUDIO_BOOT_TONE_MS);
			m_Logger.Write(FromKernel, LogNotice, tone_line);
		}
		m_Logger.Write(FromKernel, LogNotice, "Emulator audio ON (HDMI)");
	}
}

void CComboKernel::RefillAudioQueue(void)
{
	if (m_Sound == 0)
	{
		return;
	}

	static const unsigned kFramesPerBatch = 256;
	static const unsigned kRefillBudgetPerCall = 2048;
	static const unsigned kQueueTargetFillPct = 75;
	static const unsigned kQueueLowWaterPct = 25;
	s16 buffer[kFramesPerBatch * 2];
	unsigned call_peak = 0;

	const unsigned queue_size = m_Sound->GetQueueSizeFrames();
	const unsigned queue_avail = m_Sound->GetQueueFramesAvail();
	unsigned free_frames = queue_size > queue_avail
		? (queue_size - queue_avail)
		: 0;
	unsigned refill_budget = kRefillBudgetPerCall;
	m_LastQueueAvail = queue_avail;
	m_LastQueueFree = free_frames;
	if (queue_avail < m_UartAudioQueueAvailMin)
	{
		m_UartAudioQueueAvailMin = queue_avail;
	}
	if (free_frames == 0u)
	{
		return;
	}

	/* Keep queue near a target fill to reduce jitter while avoiding excess latency. */
	const unsigned target_fill = (queue_size * kQueueTargetFillPct) / 100u;
	const unsigned low_water = (queue_size * kQueueLowWaterPct) / 100u;
	if (queue_avail >= target_fill)
	{
		return;
	}

	unsigned desired_write = target_fill - queue_avail;
	if (desired_write > free_frames)
	{
		desired_write = free_frames;
	}
	if (queue_avail <= low_water)
	{
		if (m_UartAudioLowWaterHits < 999u)
		{
			m_UartAudioLowWaterHits++;
		}
		/* After a hiccup, refill aggressively to recover audio continuity quickly. */
		desired_write = free_frames;
	}
	if (refill_budget < desired_write)
	{
		refill_budget = desired_write;
	}

	while (free_frames > 0 && refill_budget > 0)
	{
		unsigned write_frames = free_frames < kFramesPerBatch ? free_frames : kFramesPerBatch;
		if (write_frames > refill_budget)
		{
			write_frames = refill_budget;
		}
		unsigned out_frames = write_frames;
		if (m_EmulationPaused)
		{
			memset(buffer, 0, write_frames * 2u * sizeof(s16));
		}
		else if (m_TestToneEnabled)
		{
			GenerateSamples(buffer, write_frames);
		}
		else if (!m_BackendEnabled || !m_BackendReady)
		{
			memset(buffer, 0, write_frames * 2u * sizeof(s16));
		}
		else
		{
			int16_t mono[kFramesPerBatch];
			const unsigned got = backend_runtime_audio_pull(mono, write_frames);
			const boolean boot_probe_active = m_BootToneFramesRemaining > 0u;
			unsigned src_peak = 0;
			unsigned peak = 0;
			unsigned gain = MSXBARE_FMSX_AUDIO_GAIN;
			const unsigned effective_gain_pct = AudioGainEffectivePct(m_AudioOutputGainPct);
			out_frames = write_frames;
			for (unsigned i = 0; i < got; ++i)
			{
				const int sample = (int) mono[i];
				const unsigned abs_sample = sample >= 0 ? (unsigned) sample : (unsigned) (-sample);
				if (abs_sample > src_peak)
				{
					src_peak = abs_sample;
				}
			}
			if (src_peak > 0u)
			{
				const unsigned auto_gain = (unsigned) (m_AudioTargetPeakRuntime / src_peak);
				if (auto_gain > gain)
				{
					gain = auto_gain;
				}
			}
			if (gain > MSXBARE_FMSX_AUDIO_GAIN_MAX)
			{
				gain = MSXBARE_FMSX_AUDIO_GAIN_MAX;
			}
			for (unsigned i = 0; i < write_frames; ++i)
			{
				int sample32 = 0;
				if (i < got)
				{
					sample32 = (int) mono[i];
				}
				sample32 *= (int) gain;
				if (boot_probe_active && m_BootToneFramesRemaining > 0u)
				{
					m_AudioPhase += m_AudioStep;
					const int probe = (m_AudioPhase & 0x80000000u) ? MSXBARE_AUDIO_BOOT_TONE_AMP : -MSXBARE_AUDIO_BOOT_TONE_AMP;
					sample32 += probe;
					m_BootToneFramesRemaining--;
				}
				else
				{
				#if MSXBARE_FMSX_AUDIO_PROBE_TONE
					m_AudioPhase += m_AudioStep;
					const int probe = (m_AudioPhase & 0x80000000u) ? 2400 : -2400;
					sample32 += probe;
				#endif
				}
				sample32 = (sample32 * (int) effective_gain_pct) / 100;
				if (effective_gain_pct == 0u)
				{
					sample32 = 0;
				}
				const int clip_max = (int) m_AudioClipMaxRuntime;
				if (sample32 > clip_max) sample32 = clip_max;
				if (sample32 < -clip_max) sample32 = -clip_max;
				const s16 sample = (s16) sample32;
				m_LastAudioSample = sample;
				const unsigned abs_sample = sample >= 0 ? (unsigned) sample : (unsigned) (-sample);
				if (abs_sample > peak) peak = abs_sample;
				buffer[(i * 2u) + 0u] = sample;
				buffer[(i * 2u) + 1u] = sample;
			}
			if (peak > call_peak) call_peak = peak;
		}
		const int bytes = (int)(out_frames * 2u * sizeof(s16));
		const int written = m_Sound->Write(buffer, (size_t)bytes);
		m_AudioWriteOps++;
		if (written != bytes)
		{
			m_AudioDropOps++;
			break;
		}
		free_frames -= out_frames;
		refill_budget -= out_frames;
	}

	if (call_peak > 0u)
	{
		m_AudioPeak = call_peak;
	}
	else if (m_AudioPeak > 64u)
	{
		m_AudioPeak -= 64u;
	}
	else
	{
		m_AudioPeak = 0u;
	}
}

void CComboKernel::PrimeAudioSilenceBeforeReset(void)
{
	if (m_Sound == 0)
	{
		return;
	}

	/* Drop any pending samples and replace with a short silence window before reset. */
	m_Sound->Flush();
	static const unsigned kSilenceFrames = 512u;
	s16 silence[kSilenceFrames * 2u];
	memset(silence, 0, sizeof(silence));
	const int bytes = (int) sizeof(silence);
	const int written = m_Sound->Write(silence, (size_t) bytes);
	if (written == bytes)
	{
		m_AudioWriteOps++;
	}
	else
	{
		m_AudioDropOps++;
	}
}

boolean CComboKernel::PerformMenuHardReset(unsigned requested_diag, unsigned success_diag, unsigned fail_diag)
{
#if !MSXBARE_ENABLE_FMSX
	(void) requested_diag;
	(void) success_diag;
	(void) fail_diag;
	return FALSE;
#else
	UpdateLoadDiagTelemetry(requested_diag);
	PrimeAudioSilenceBeforeReset();
	UpdateLoadDiagTelemetry(3510u); /* shared hard reset path */
	backend_runtime_set_boot_mode(m_BootMode);
	backend_runtime_set_model_profile(m_MachineProfile);
	const boolean reset_ok = backend_runtime_reset();
	if (reset_ok)
	{
		UpdateLoadDiagTelemetry(success_diag);
		ResetEmulationRuntimeState();
		ApplyRuntimeSettingsToBackend();
	}
	else
	{
		UpdateLoadDiagTelemetry(fail_diag);
	}
	return reset_ok;
#endif
}

void CComboKernel::GenerateSamples(s16 *buffer, unsigned frames)
{
	const s16 amplitude = 6000;

	for (unsigned i = 0; i < frames; ++i)
	{
		m_AudioPhase += m_AudioStep;
		const s16 sample = (m_AudioPhase & 0x80000000u) ? amplitude : (s16)-amplitude;
		buffer[(i * 2u) + 0u] = sample;
		buffer[(i * 2u) + 1u] = sample;
	}
}

void CComboKernel::ResetUartPerfTelemetry(void)
{
	m_LastAudioQueueLogUs = 0u;
	m_LastVideoPacingLogUs = 0u;
	m_UartAudioQueueAvailMin = 0xFFFFFFFFu;
	m_UartAudioLowWaterHits = 0u;
	m_UartAudioRefillUsLast = 0u;
	m_UartAudioRefillUsPeak = 0u;
	m_UartVideoCatchupLast = 0u;
	m_UartVideoCatchupPeak = 0u;
	m_UartVideoCatchupCapCount = 0u;
	m_UartVideoLateUsLast = 0u;
	m_UartVideoLateUsPeak = 0u;
	m_UartVideoStepUsLast = 0u;
	m_UartVideoStepUsPeak = 0u;
	m_UartVideoBlitUsLast = 0u;
	m_UartVideoBlitUsPeak = 0u;
}

void CComboKernel::LogAudioQueueUart(void)
{
	return;
}

void CComboKernel::LogVideoPacingUart(void)
{
	return;
}

void CComboKernel::LogVideoModeTransitionUart(void)
{
	return;
}

void CComboKernel::LogVideoHiresHostDebugUart(void)
{
	return;
}

void CComboKernel::KeyPressedHandler(const char *text)
{
	if (s_Instance == 0 || text == 0)
	{
		return;
	}

	CComboKernel *self = s_Instance;
	self->m_KeyEventCount++;
	if (text[0] != '\0')
	{
		self->m_LastKeyCode = (unsigned) (u8) text[0];
	}
}

void CComboKernel::LogVdpTraceUart(void)
{
#if !MSXBARE_ENABLE_FMSX || !MSXBARE_ENABLE_DEBUG_OVERLAY
	return;
#else
	if (!m_UartTelemetryEnabled)
	{
		return;
	}

	BackendVdpTraceView trace_view = { 0, 0u, 0u, 0u, 0u };
	auto event_tag = [](unsigned event_type) -> const char *
	{
		switch (event_type)
		{
		case BACKEND_VDP_EVENT_IE0_FIRE:      return "I0";
		case BACKEND_VDP_EVENT_IE1_ARM:       return "I1A";
		case BACKEND_VDP_EVENT_IE1_FIRE:      return "I1F";
		case BACKEND_VDP_EVENT_R19_WRITE:     return "R19";
		case BACKEND_VDP_EVENT_R23_WRITE:     return "R23";
		case BACKEND_VDP_EVENT_S1_READ:       return "S1";
		case BACKEND_VDP_EVENT_S2_READ:       return "S2";
		case BACKEND_VDP_EVENT_CMD_START:     return "CS";
		case BACKEND_VDP_EVENT_CMD_END:       return "CE";
		case BACKEND_VDP_EVENT_PORT98_WRITE:  return "98W";
		case BACKEND_VDP_EVENT_PORT99_ADDR:   return "99A";
		case BACKEND_VDP_EVENT_PORT99_REG:    return "99R";
		default:                           return "--";
		}
	};
	auto trace_window_tag = [](unsigned window) -> const char *
	{
		switch (window)
		{
		case BACKEND_VDP_TRACE_TITLE:       return "TI";
		case BACKEND_VDP_TRACE_SAVE_SELECT: return "SV";
		case BACKEND_VDP_TRACE_STARDATE:    return "SD";
		case BACKEND_VDP_TRACE_KMG:         return "KG";
		default:                         return "--";
		}
	};

	backend_runtime_get_vdp_trace_view(&trace_view);
	if (trace_view.dropped != m_BackendVdpTraceDropped)
	{
		CString drop_line;
		drop_line.Format("VDP DROP count=%u", trace_view.dropped);
		m_Logger.Write(FromKernel, LogWarning, drop_line);
		m_BackendVdpTraceDropped = trace_view.dropped;
	}
	if (trace_view.events == 0 || trace_view.count == 0u || trace_view.capacity == 0u)
	{
		return;
	}

	const unsigned start =
		(trace_view.head + trace_view.capacity - trace_view.count) % trace_view.capacity;
	for (unsigned i = 0u; i < trace_view.count; ++i)
	{
		const BackendVdpTraceEvent &event = trace_view.events[(start + i) % trace_view.capacity];
		if (event.seq <= m_BackendVdpTraceSeq)
		{
			continue;
		}
		if (event.capture_window == BACKEND_VDP_TRACE_NONE)
		{
			m_BackendVdpTraceSeq = event.seq;
			continue;
		}

		CString line;
		line.Format("VDP EVT #%lu W=%s E=%s PC=%04X SL=%u LP=%u A=%05lX R=%02X V=%02X C=%02X T=%03u D=%d S=%02X/%02X M=%u",
			(unsigned long) event.seq,
			trace_window_tag((unsigned) event.capture_window),
			event_tag((unsigned) event.event_type),
			(unsigned) event.pc,
			(unsigned) event.scanline,
			(unsigned) event.line_phase,
			(unsigned long) event.aux_addr,
			(unsigned) event.aux_reg,
			(unsigned) event.aux_value,
			(unsigned) event.aux_ctrl,
			(unsigned) event.ie1_target_line,
			(int) event.ie1_target_delta,
			(unsigned) event.status1,
			(unsigned) event.status2,
			(unsigned) event.scr_mode);
		m_Logger.Write(FromKernel, LogNotice, line);
		m_BackendVdpTraceSeq = event.seq;
	}
#endif
}

void CComboKernel::LogSccTraceUart(void)
{
#if !MSXBARE_ENABLE_FMSX || !MSXBARE_ENABLE_DEBUG_OVERLAY
	return;
#else
	if (!m_UartTelemetryEnabled)
	{
		return;
	}

	BackendSccTraceView trace_view = { 0, 0u, 0u, 0u, 0u };
	const unsigned kind_none = (unsigned) BACKEND_SCC_TRACE_NONE;
	auto kind_tag = [](unsigned kind) -> const char *
	{
		switch (kind)
		{
		case BACKEND_SCC_TRACE_WAVE:   return "W";
		case BACKEND_SCC_TRACE_FREQ:   return "F";
		case BACKEND_SCC_TRACE_VOLUME: return "V";
		case BACKEND_SCC_TRACE_ENABLE: return "E";
		case BACKEND_SCC_TRACE_DEFORM: return "D";
		default:                    return "-";
		}
	};
	auto mode_tag = [](unsigned mode) -> const char *
	{
		return mode ? "P" : "C";
	};
	auto trace_window_tag = [](unsigned window) -> const char *
	{
		switch (window)
		{
		case BACKEND_VDP_TRACE_TITLE:       return "TI";
		case BACKEND_VDP_TRACE_SAVE_SELECT: return "SV";
		case BACKEND_VDP_TRACE_STARDATE:    return "SD";
		default:                         return "--";
		}
	};

	backend_runtime_get_scc_trace_view(&trace_view);
	if (trace_view.dropped != m_BackendSccTraceDropped)
	{
		CString drop_line;
		drop_line.Format("SCC DROP count=%u", trace_view.dropped);
		m_Logger.Write(FromKernel, LogWarning, drop_line);
		m_BackendSccTraceDropped = trace_view.dropped;
	}
	if (trace_view.events == 0 || trace_view.count == 0u || trace_view.capacity == 0u)
	{
		return;
	}

	const unsigned start =
		(trace_view.head + trace_view.capacity - trace_view.count) % trace_view.capacity;
	for (unsigned i = 0u; i < trace_view.count; ++i)
	{
		const BackendSccTraceEvent &event = trace_view.events[(start + i) % trace_view.capacity];
		if (event.seq <= m_BackendSccTraceSeq)
		{
			continue;
		}

		CString line;
		line.Format("SCC EVT #%lu Q=%u W=%s R=%u PC=%04X B=%02X K=%s N=%u A=%04X-%04X V=%02X/%02X S=%u C=%u P=%u-%u T=%02X M=%s",
			(unsigned long) event.seq,
			(unsigned) event.session,
			trace_window_tag((unsigned) event.capture_window),
			(unsigned) event.rendered_samples_before,
			(unsigned) event.pc,
			(unsigned) event.bank16,
			(event.kind == kind_none) ? "-" : kind_tag((unsigned) event.kind),
			(unsigned) event.count,
			(unsigned) event.addr_first,
			(unsigned) event.addr_last,
			(unsigned) event.value_first,
			(unsigned) event.value_last,
			(unsigned) event.slot,
			(unsigned) event.chip,
			(unsigned) event.ps,
			(unsigned) event.ss,
			(unsigned) event.mapper,
			mode_tag((unsigned) event.mode));
		m_Logger.Write(FromKernel, LogNotice, line);
		m_BackendSccTraceSeq = event.seq;
	}
#endif
}

void CComboKernel::LogAudioPortTraceUart(void)
{
	return;
}

void CComboKernel::LogKmgTraceUart(void)
{
#if !MSXBARE_ENABLE_FMSX || !MSXBARE_ENABLE_DEBUG_OVERLAY
	return;
#else
	if (!m_UartTelemetryEnabled)
	{
		return;
	}

	BackendKmgTraceView trace_view = { 0, 0u, 0u, 0u, 0u };

	backend_runtime_get_kmg_trace_view(&trace_view);
	if (trace_view.dropped != m_BackendKmgTraceDropped)
	{
		CString drop_line;
		drop_line.Format("KMG DROP count=%u", trace_view.dropped);
		m_Logger.Write(FromKernel, LogWarning, drop_line);
		m_BackendKmgTraceDropped = trace_view.dropped;
	}
	if (trace_view.events == 0 || trace_view.count == 0u || trace_view.capacity == 0u)
	{
		return;
	}

	const unsigned start =
		(trace_view.head + trace_view.capacity - trace_view.count) % trace_view.capacity;
	for (unsigned i = 0u; i < trace_view.count; ++i)
	{
		const BackendKmgTraceEvent &event = trace_view.events[(start + i) % trace_view.capacity];
		if (event.seq <= m_BackendKmgTraceSeq)
		{
			continue;
		}

		CString line;
		line.Format("KMG EVT #%lu PC=%04X A=%04X V=%02X E=%02X F=%02X M=%02X H=%02X",
			(unsigned long) event.seq,
			(unsigned) event.pc,
			(unsigned) event.addr,
			(unsigned) event.value,
			(unsigned) event.l220e,
			(unsigned) event.l220f,
			(unsigned) event.l2212,
			(unsigned) event.l2219);
		m_Logger.Write(FromKernel, LogNotice, line);
		m_BackendKmgTraceSeq = event.seq;
	}
#endif
}

void CComboKernel::DrawDebugOverlay(unsigned tick)
{
#if !MSXBARE_ENABLE_DEBUG_OVERLAY
	(void) tick;
	return;
#else
	CString line;
	BackendAudioStats audio_stats = { 0 };
	BackendTimingDebug timing_stats = { 0 };
	BackendVideoPresentation presentation = { 0 };
	auto trace_event_tag = [](unsigned event_type) -> const char *
	{
		switch (event_type)
		{
		case BACKEND_VDP_EVENT_IE0_FIRE:  return "I0";
		case BACKEND_VDP_EVENT_IE1_ARM:   return "I1A";
		case BACKEND_VDP_EVENT_IE1_FIRE:  return "I1F";
		case BACKEND_VDP_EVENT_R19_WRITE: return "R19";
		case BACKEND_VDP_EVENT_R23_WRITE: return "R23";
		case BACKEND_VDP_EVENT_S1_READ:   return "S1";
		case BACKEND_VDP_EVENT_S2_READ:   return "S2";
		case BACKEND_VDP_EVENT_CMD_START: return "CS";
		case BACKEND_VDP_EVENT_CMD_END:   return "CE";
		case BACKEND_VDP_EVENT_PORT98_WRITE: return "98W";
		case BACKEND_VDP_EVENT_PORT99_ADDR:  return "99A";
		case BACKEND_VDP_EVENT_PORT99_REG:   return "99R";
		default:                       return "--";
		}
	};
	auto trace_window_tag = [](unsigned window) -> const char *
	{
		switch (window)
		{
		case BACKEND_VDP_TRACE_TITLE:       return "TI";
		case BACKEND_VDP_TRACE_SAVE_SELECT: return "SV";
		case BACKEND_VDP_TRACE_STARDATE:    return "SD";
		default:                         return "--";
		}
	};
	auto flash_op_tag = [](unsigned op) -> const char *
	{
		switch (op)
		{
		case 1u: return "RD";
		case 2u: return "RS";
		case 3u: return "AS";
		case 4u: return "PG";
		case 5u: return "ER";
		case 6u: return "CM";
		default: return "--";
		}
	};
	unsigned load_diag = 0u;
	unsigned active_boot_mode = 0u;
	unsigned active_model_profile = 0u;
	const char *backend_name = m_EmulatorBackendName != 0 ? m_EmulatorBackendName : "unknown";
#if MSXBARE_ENABLE_FMSX
	backend_runtime_get_audio_stats(&audio_stats);
	backend_runtime_get_timing_debug(&timing_stats);
	load_diag = backend_runtime_get_load_diag();
	active_boot_mode = backend_runtime_get_active_boot_mode();
	active_model_profile = backend_runtime_get_active_model_profile();
#endif
	backend_runtime_get_video_presentation(&presentation);

	if (ClampDebugOverlayMode(m_DebugOverlayMode) == ComboDebugOverlayMin)
	{
		const unsigned build_hash16 = BuildHash16();
		const unsigned cpu_mhz = m_CPUThrottle.GetClockRate() / 1000000u;
		const char *dfs_label = timing_stats.pal_video ? "PAL " : "NTSC";
		const char *mode_label = VideoModeLabelFromPresentation(presentation);

		line.Format("TXTDBG BUILD:%04X FREQ:%4uMHz",
			build_hash16 & 0xFFFFu,
			cpu_mhz > 9999u ? 9999u : cpu_mhz);
		WriteDebugOverlayLine(1u, line);

		line.Format("DFS:%s FPS:%02u.%u F:%lu",
			dfs_label,
			(m_BackendFpsX10 / 10u) > 99u ? 99u : (m_BackendFpsX10 / 10u),
			m_BackendFpsX10 % 10u,
			m_BackendFrames);
		WriteDebugOverlayLine(2u, line);

		line.Format("Screen:%02u Mode:%s",
			timing_stats.scr_mode > 99u ? 99u : timing_stats.scr_mode,
			mode_label);
		WriteDebugOverlayLine(3u, line);
		return;
	}

	const unsigned os_tick = tick % 1000u;
	const unsigned build_hash16 = BuildHash16();
	line.Format("TXTDBG BUILD:%04X OS:%03u M:%u C:%u I:%u PAU:%u BK:%.7s R:%u K:%u S:%u H:%u/%u LD:%04u BT:%04u",
		build_hash16 & 0xFFFFu,
		os_tick,
		m_MmuEnabled ? 1u : 0u,
		m_DCacheEnabled ? 1u : 0u,
		m_ICacheEnabled ? 1u : 0u,
		m_EmulationPaused ? 1u : 0u,
		backend_name,
		m_BackendReady ? 1u : 0u,
		m_UsbKeyboard.IsAttached() ? 1u : 0u,
		m_Sound != 0 && m_Sound->IsActive() ? 1u : 0u,
		m_SoundStartAttempts > 99u ? 99u : m_SoundStartAttempts,
		m_SoundStartFailures > 99u ? 99u : m_SoundStartFailures,
		load_diag > 9999u ? 9999u : load_diag,
		m_BootToBackendMs > 9999u ? 9999u : m_BootToBackendMs);
	WriteDebugOverlayLine(1u, line);

	line.Format("AUD1 Q:%06u E:%06u O:%05u T:%05u U:%04u/%04u B:%04u/%04u P:%04u/%04u R:%04u/%04u V:%02u.%u",
		m_AudioWriteOps,
		m_AudioDropOps,
		audio_stats.overwrite_samples % 100000u,
		audio_stats.trim_samples % 100000u,
		audio_stats.short_pulls % 10000u,
		audio_stats.underrun_samples % 10000u,
		audio_stats.last_render_batch > 9999u ? 9999u : audio_stats.last_render_batch,
		audio_stats.max_render_batch > 9999u ? 9999u : audio_stats.max_render_batch,
		audio_stats.last_pull_returned > 9999u ? 9999u : audio_stats.last_pull_returned,
		audio_stats.last_pull_requested > 9999u ? 9999u : audio_stats.last_pull_requested,
		audio_stats.ring_level > 9999u ? 9999u : audio_stats.ring_level,
		audio_stats.ring_peak > 9999u ? 9999u : audio_stats.ring_peak,
		(m_BackendFpsX10 / 10u) > 99u ? 99u : (m_BackendFpsX10 / 10u),
		m_BackendFpsX10 % 10u);
	WriteDebugOverlayLine(2u, line);

	line.Format("SYS BJ:%02X MJ:%02X F:%06lu PC:%04X R:%04u L:%04u D:%03u/%04u JP:%03u/%03u SV:%02u C:%03u A:%04u CA:%u CB:%u BM:%u MP:%u RM:%4u MR:%4u IN:%03u",
		(unsigned) m_JoyBridgeBits,
		(unsigned) m_JoyMappedBits,
		m_BackendFrames,
		(unsigned) (m_BackendLastPC & 0xFFFF),
		m_BackendPcRepeatCount > 9999u ? 9999u : m_BackendPcRepeatCount,
		audio_stats.ring_level > 9999u ? 9999u : audio_stats.ring_level,
		audio_stats.last_trim_samples > 999u ? 999u : audio_stats.last_trim_samples,
		audio_stats.drop_count > 9999u ? 9999u : audio_stats.drop_count,
		m_FramePacingErrAvgUs > 999u ? 999u : m_FramePacingErrAvgUs,
		m_FramePacingErrMaxUs > 999u ? 999u : m_FramePacingErrMaxUs,
		m_SettingsSaveStage > 99u ? 99u : m_SettingsSaveStage,
		m_SettingsSaveCode > 999u ? 999u : m_SettingsSaveCode,
		m_SettingsSaveAux > 9999u ? 9999u : m_SettingsSaveAux,
		(backend_runtime_get_cartridge_name(0u) != 0) ? 1u : 0u,
		(backend_runtime_get_cartridge_name(1u) != 0) ? 1u : 0u,
		active_boot_mode > 9u ? 9u : active_boot_mode,
		active_model_profile > 9u ? 9u : active_model_profile,
		backend_runtime_get_rammapper_kb(),
		backend_runtime_get_megaram_kb(),
		m_InitramfsFiles > 999u ? 999u : m_InitramfsFiles);
	WriteDebugOverlayLine(3u, line);

	m_FmLayerGainPct = backend_runtime_get_fm_layer_gain_pct();
	line.Format("AC1 FM:%u/%u FG:%03u SCC:%u/%u AG:%u AE:%03u L1:%u L2:%u L3:%u P7:%02X MS:%05X",
		m_FmMusicEnabled ? 1u : 0u,
		backend_runtime_get_audio_layer_muted(2u) ? 0u : 1u,
		m_FmLayerGainPct > 999u ? 999u : m_FmLayerGainPct,
		m_SccCartEnabled ? 1u : 0u,
		backend_runtime_get_audio_layer_muted(3u) ? 0u : 1u,
		AudioGainUiLevelFromPercent(m_AudioOutputGainPct),
		AudioGainEffectivePct(m_AudioOutputGainPct) > 999u ? 999u : AudioGainEffectivePct(m_AudioOutputGainPct),
		backend_runtime_get_audio_layer_muted(1u) ? 1u : 0u,
		backend_runtime_get_audio_layer_muted(2u) ? 1u : 0u,
		backend_runtime_get_audio_layer_muted(3u) ? 1u : 0u,
		backend_runtime_get_psg_mixer_reg7() & 0xFFu,
		backend_runtime_get_master_switch() & 0xFFFFFu);
	WriteDebugOverlayLine(4u, line);

	line.Format("TM HP:%05u VP:%05u IP:%05u SL:%03u %s L212:%u T:%03u%% | SM:%02u R2:%02X R25:%02X R26:%02X R27:%02X HS:%03u MP:%u DP:%u EP:%u I1:%u F1:%u",
		timing_stats.h_period > 99999u ? 99999u : timing_stats.h_period,
		timing_stats.v_period > 99999u ? 99999u : timing_stats.v_period,
		timing_stats.i_period > 99999u ? 99999u : timing_stats.i_period,
		timing_stats.scanline > 999u ? 999u : timing_stats.scanline,
		timing_stats.pal_video ? "PAL " : "NTSC",
		timing_stats.lines_212 ? 1u : 0u,
		timing_stats.turbo_percent > 999u ? 999u : timing_stats.turbo_percent,
		timing_stats.scr_mode > 99u ? 99u : timing_stats.scr_mode,
		timing_stats.reg2 & 0xFFu,
		timing_stats.reg25 & 0xFFu,
		timing_stats.reg26 & 0xFFu,
		timing_stats.reg27 & 0xFFu,
		timing_stats.hscroll > 999u ? 999u : timing_stats.hscroll,
		timing_stats.multipage_enabled ? 1u : 0u,
		timing_stats.display_page > 3u ? 3u : timing_stats.display_page,
		timing_stats.render_page > 3u ? 3u : timing_stats.render_page,
		timing_stats.ie1_enabled ? 1u : 0u,
		timing_stats.ie1_flag ? 1u : 0u);
	WriteDebugOverlayLine(5u, line);

		line.Format("TM C:%X CE:%u TR:%u CS:%03u CP:%03u KB:%u/%u/%u/%u P1:%u-%u D:%u/%u S:%u | I1:%03u/%03u IA:%03u IH:%03u KJ:%u KR:%03u KW:%03u R1:%02X R7:%02X SO:%u",
			timing_stats.vdp_cmd & 0x0Fu,
			timing_stats.vdp_ce ? 1u : 0u,
			timing_stats.vdp_tr ? 1u : 0u,
			timing_stats.vdp_cmd_starts > 999u ? 999u : timing_stats.vdp_cmd_starts,
			timing_stats.vdp_copy_starts > 999u ? 999u : timing_stats.vdp_copy_starts,
			timing_stats.msx2p_kanji_basic ? 1u : 0u,
			timing_stats.msx2p_kanji_basic_map_ok ? 1u : 0u,
			timing_stats.msx2p_kanji_basic_selected_p1 ? 1u : 0u,
			timing_stats.msx2p_kanji_basic_seen_p1 ? 1u : 0u,
			timing_stats.p1_ps > 9u ? 9u : timing_stats.p1_ps,
			timing_stats.p1_ss > 9u ? 9u : timing_stats.p1_ss,
			timing_stats.disk_rom_enabled ? 1u : 0u,
			timing_stats.disk_rom_loaded ? 1u : 0u,
			timing_stats.hscroll512 ? 1u : 0u,
			timing_stats.ie1_events > 999u ? 999u : timing_stats.ie1_events,
			timing_stats.ie1_acks > 999u ? 999u : timing_stats.ie1_acks,
			timing_stats.ie1_armed > 999u ? 999u : timing_stats.ie1_armed,
			timing_stats.ie1_fired_hblank > 999u ? 999u : timing_stats.ie1_fired_hblank,
			timing_stats.kanji_available ? 1u : 0u,
			timing_stats.kanji_reads > 999u ? 999u : timing_stats.kanji_reads,
			timing_stats.kanji_addr_writes > 999u ? 999u : timing_stats.kanji_addr_writes,
			timing_stats.reg1 & 0xFFu,
			timing_stats.reg7 & 0xFFu,
			timing_stats.screen_on ? 1u : 0u);
		WriteDebugOverlayLine(6u, line);

		line.Format("TM I0:%u S0:%u HR:%u VR:%u LP:%u TL:%03u TD:%+04d EO:%u RP:%u | KQ:%03u/%03u KD:%03u KC:%03u/%03u/%03u KR:%03u KP:%03u",
			timing_stats.ie0_enabled ? 1u : 0u,
			timing_stats.vblank_flag ? 1u : 0u,
			timing_stats.status2_hr ? 1u : 0u,
			timing_stats.status2_vr ? 1u : 0u,
			timing_stats.line_phase > 9u ? 9u : timing_stats.line_phase,
			timing_stats.ie1_target_line > 999u ? 999u : timing_stats.ie1_target_line,
			timing_stats.ie1_target_delta,
			timing_stats.effective_odd_page ? 1u : 0u,
			timing_stats.render_page > 9u ? 9u : timing_stats.render_page,
			timing_stats.kbd_runtime_queued > 999u ? 999u : timing_stats.kbd_runtime_queued,
			timing_stats.kbd_runtime_high_water > 999u ? 999u : timing_stats.kbd_runtime_high_water,
			timing_stats.kbd_runtime_dropped > 999u ? 999u : timing_stats.kbd_runtime_dropped,
			timing_stats.kbd_candidate_created > 999u ? 999u : timing_stats.kbd_candidate_created,
			timing_stats.kbd_candidate_promoted > 999u ? 999u : timing_stats.kbd_candidate_promoted,
			timing_stats.kbd_candidate_discarded > 999u ? 999u : timing_stats.kbd_candidate_discarded,
			timing_stats.kbd_immediate_releases > 999u ? 999u : timing_stats.kbd_immediate_releases,
			timing_stats.kbd_immediate_gameplay_presses > 999u ? 999u : timing_stats.kbd_immediate_gameplay_presses);
		WriteDebugOverlayLine(7u, line);

		line.Format("TM 6A 9:%04u 15:%04u 18:%04u 19:%04u 25:%04u 26:%04u 27:%04u | 6B EV:%s W:%s P9:%04X SL:%03u LP:%u B:%03u/%03u R1:%02X S2:%02X SR:%X/%02X 99:%c/%u/%X/%02X/%02X",
			timing_stats.vdp_r9_writes > 9999u ? 9999u : timing_stats.vdp_r9_writes,
			timing_stats.vdp_r15_writes > 9999u ? 9999u : timing_stats.vdp_r15_writes,
			timing_stats.vdp_r18_writes > 9999u ? 9999u : timing_stats.vdp_r18_writes,
			timing_stats.vdp_r19_writes > 9999u ? 9999u : timing_stats.vdp_r19_writes,
			timing_stats.vdp_r25_writes > 9999u ? 9999u : timing_stats.vdp_r25_writes,
			timing_stats.vdp_r26_writes > 9999u ? 9999u : timing_stats.vdp_r26_writes,
			timing_stats.vdp_r27_writes > 9999u ? 9999u : timing_stats.vdp_r27_writes,
			trace_event_tag(timing_stats.trace_last_event_type),
			trace_window_tag(timing_stats.trace_last_window),
			timing_stats.last_port99_pc & 0xFFFFu,
			timing_stats.trace_last_scanline > 999u ? 999u : timing_stats.trace_last_scanline,
			timing_stats.trace_last_line_phase > 9u ? 9u : timing_stats.trace_last_line_phase,
			timing_stats.trace_last_bank_p1_lo > 999u ? 999u : timing_stats.trace_last_bank_p1_lo,
			timing_stats.trace_last_bank_p2_lo > 999u ? 999u : timing_stats.trace_last_bank_p2_lo,
			timing_stats.trace_last_reg1 & 0xFFu,
			timing_stats.trace_last_status2 & 0xFFu,
			timing_stats.last_status_read_reg & 0x0Fu,
			timing_stats.last_status_read_value & 0xFFu,
			Port99OpTag(timing_stats.last_port99_op),
			timing_stats.last_port99_vkey ? 1u : 0u,
			timing_stats.last_port99_r15 & 0x0Fu,
			timing_stats.last_port99_alatch & 0xFFu,
			timing_stats.last_port99_value & 0xFFu);
		WriteDebugOverlayLine(8u, line);

			line.Format("TM 6C A8:%02X EW:%u C:%u T:%02X/%u B:%02X/%02X/%02X/%02X F:%s S:%u M:%u A:%04X O:%05X V:%02X/%02X | 6D R17:%02X 9B:%02X>%02X>%02X V:%02X S:%02X/%02X P9:%04u",
				timing_stats.slot_reg & 0xFFu,
				timing_stats.p1_write_enabled ? 1u : 0u,
			timing_stats.cart_slot_p1 & 0xFFu,
			timing_stats.cart_type_p1 & 0xFFu,
			timing_stats.cart_type_source_p1 > 9u ? 9u : timing_stats.cart_type_source_p1,
			timing_stats.cart_bank_p1_lo & 0xFFu,
			timing_stats.cart_bank_p1_hi & 0xFFu,
			timing_stats.cart_bank_p2_lo & 0xFFu,
			timing_stats.cart_bank_p2_hi & 0xFFu,
			flash_op_tag(timing_stats.flash_last_op),
			timing_stats.flash_last_state > 9u ? 9u : timing_stats.flash_last_state,
				timing_stats.flash_last_mode > 9u ? 9u : timing_stats.flash_last_mode,
				timing_stats.flash_last_addr & 0xFFFFu,
				timing_stats.flash_last_offset > 0xFFFFFu ? 0xFFFFFu : timing_stats.flash_last_offset,
				timing_stats.flash_last_value & 0xFFu,
				timing_stats.flash_last_read_value & 0xFFu,
				timing_stats.reg17 & 0xFFu,
				timing_stats.vdp_port9b_last_reg17_before & 0xFFu,
				timing_stats.vdp_port9b_last_target & 0xFFu,
				timing_stats.vdp_port9b_last_reg17_after & 0xFFu,
				timing_stats.vdp_port9b_last_value & 0xFFu,
				timing_stats.status8 & 0xFFu,
				timing_stats.status9 & 0xFFu,
				timing_stats.vdp_port9b_writes > 9999u ? 9999u : timing_stats.vdp_port9b_writes);
			WriteDebugOverlayLine(9u, line);

		WriteScreenText("\x1b[0m");
#endif
}

void CComboKernel::ComputeViewportBox(unsigned src_width, unsigned src_height,
									const BackendVideoPresentation *presentation,
									unsigned *out_x, unsigned *out_y,
									unsigned *out_w, unsigned *out_h) const
{
	unsigned box_x = 0u;
	unsigned box_y = 0u;
	unsigned box_w = m_Screen.GetWidth();
	unsigned box_h = m_Screen.GetHeight();
	const unsigned screen_width = m_Screen.GetWidth();
	const unsigned screen_height = m_Screen.GetHeight();

	if (screen_width > 0u && screen_height > 0u)
	{
		const unsigned max_scale = ComputeViewportUiMaxScalePercent(screen_height);
		const unsigned scale_percent =
			ComputeEffectiveViewportScalePercent(m_OverscanPercent,
				max_scale,
				screen_height,
				m_DebugOverlayMode);
		ComputeViewportLayout(screen_width, screen_height,
			src_width, src_height,
			scale_percent,
			&box_x, &box_y, &box_w, &box_h,
			0, 0, 0, 0);
	}

	if (out_x != 0) *out_x = box_x;
	if (out_y != 0) *out_y = box_y;
	if (out_w != 0) *out_w = box_w;
	if (out_h != 0) *out_h = box_h;
}

void CComboKernel::ResolveViewportBox(unsigned src_width, unsigned src_height,
									const BackendVideoPresentation *presentation,
									unsigned *out_x, unsigned *out_y,
									unsigned *out_w, unsigned *out_h)
{
	ComputeViewportBox(src_width, src_height, presentation, out_x, out_y, out_w, out_h);
}

void CComboKernel::ClearPresentationSurfaces(void)
{
	if (!m_ScreenReady)
	{
		return;
	}

	const unsigned screen_width = m_Screen.GetWidth();
	const unsigned screen_height = m_Screen.GetHeight();
	if (screen_width == 0u || screen_height == 0u)
	{
		return;
	}

	CBcmFrameBuffer *frame_buffer = m_Screen.GetFrameBuffer();
	if (frame_buffer == 0 || frame_buffer->GetDepth() != 16)
	{
		FillRectScreen(&m_Screen, 0u, 0u, screen_width, screen_height, (TScreenColor) kLetterboxColor565);
		return;
	}

	m_Screen.ClearAllPages((TScreenColor) kLetterboxColor565, m_DCacheEnabled);
	m_Screen.ClearDirty();
}

void CComboKernel::BlitBackendFrame(boolean force_redraw)
{
#if MSXBARE_ENABLE_FMSX
	const u16 *pixels = 0;
	unsigned width = 0;
	unsigned height = 0;
	BackendVideoPresentation presentation = { 0 };
	const unsigned sequence = backend_runtime_video_frame(&pixels, &width, &height);
	backend_runtime_get_video_presentation(&presentation);

	if ((!force_redraw && sequence == m_BackendVideoSeq) || pixels == 0 || width == 0 || height == 0)
	{
		return;
	}

	m_BackendVideoSeq = sequence;

	const unsigned screen_width = m_Screen.GetWidth();
	const unsigned screen_height = m_Screen.GetHeight();
	unsigned src_x0 = 0u;
	unsigned src_y0 = 0u;
	unsigned src_w = width;
	unsigned src_h = height;
	unsigned dst_width = 0u;
	unsigned dst_height = 0u;
	unsigned full_dst_width = 0u;
	unsigned full_dst_height = 0u;
	unsigned crop_x = 0u;
	unsigned crop_y = 0u;
	const boolean woven_hires =
		(presentation.woven_hires != 0u)
		&& (presentation.logical_height > 0u)
		&& (height == (presentation.logical_height << 1));
	const unsigned logical_src_height =
		woven_hires ? presentation.logical_height : height;

	const unsigned scanline_mode = (m_ScanlineMode != kScanlineModeOff) ? kScanlineModeLcd : kScanlineModeOff;
	unsigned offset_x = 0u;
	unsigned offset_y = 0u;
	{
		const unsigned max_scale = ComputeViewportUiMaxScalePercent(screen_height);
		const unsigned scale_percent =
			ComputeEffectiveViewportScalePercent(m_OverscanPercent,
				max_scale,
				screen_height,
				m_DebugOverlayMode);
		ComputeViewportLayout(screen_width, screen_height,
			width, height,
			scale_percent,
			&offset_x, &offset_y, &dst_width, &dst_height,
			&full_dst_width, &full_dst_height,
			&crop_x, &crop_y);
	}
	const boolean hires_mode = width >= 512u ? TRUE : FALSE;
	const unsigned old_box_x = m_BackendBoxX;
	const unsigned old_box_y = m_BackendBoxY;
	const unsigned old_box_w = m_BackendBoxW;
	const unsigned old_box_h = m_BackendBoxH;
	const boolean box_changed = (old_box_x != offset_x)
						  || (old_box_y != offset_y)
						  || (old_box_w != dst_width)
						  || (old_box_h != dst_height);
	m_BackendBoxX = offset_x;
	m_BackendBoxY = offset_y;
	m_BackendBoxW = dst_width;
	m_BackendBoxH = dst_height;
	m_BackendFallbackPattern = FALSE;

	CBcmFrameBuffer *frame_buffer = m_Screen.GetFrameBuffer();
	if (frame_buffer != 0 && frame_buffer->GetDepth() == 16)
	{
		u16 *dst_base = m_Screen.GetDrawBuffer16();
		const unsigned pitch_pixels = m_Screen.GetPitchPixels();
		const unsigned scanline_mode = (m_ScanlineMode != kScanlineModeOff) ? kScanlineModeLcd : kScanlineModeOff;
		u16 *present_base = dst_base;
		const unsigned present_pitch_pixels = pitch_pixels;
		const unsigned present_offset_pixels = (offset_y * pitch_pixels) + offset_x;
		if (force_redraw)
		{
			FillRect565(dst_base, pitch_pixels, screen_width, screen_height,
				0u, 0u, screen_width, screen_height, kLetterboxColor565);
			m_Screen.MarkDirtyRect(0u, 0u, screen_width, screen_height);
		}
		if (box_changed && old_box_w > 0u && old_box_h > 0u)
		{
			const unsigned old_x1 = old_box_x + old_box_w;
			const unsigned old_y1 = old_box_y + old_box_h;
			const unsigned new_x1 = offset_x + dst_width;
			const unsigned new_y1 = offset_y + dst_height;
			const unsigned ix0 = UMax(old_box_x, offset_x);
			const unsigned iy0 = UMax(old_box_y, offset_y);
			const unsigned ix1 = UMin(old_x1, new_x1);
			const unsigned iy1 = UMin(old_y1, new_y1);
			if (ix0 >= ix1 || iy0 >= iy1)
			{
				FillRect565(dst_base, pitch_pixels, screen_width, screen_height,
					old_box_x, old_box_y, old_box_w, old_box_h, kLetterboxColor565);
				m_Screen.MarkDirtyRect(old_box_x, old_box_y, old_box_w, old_box_h);
			}
			else
			{
				const unsigned top_h = iy0 - old_box_y;
				const unsigned bottom_h = old_y1 - iy1;
				const unsigned mid_h = iy1 - iy0;
				const unsigned left_w = ix0 - old_box_x;
				const unsigned right_w = old_x1 - ix1;

				FillRect565(dst_base, pitch_pixels, screen_width, screen_height,
					old_box_x, old_box_y, old_box_w, top_h, kLetterboxColor565);
				FillRect565(dst_base, pitch_pixels, screen_width, screen_height,
					old_box_x, iy1, old_box_w, bottom_h, kLetterboxColor565);
				FillRect565(dst_base, pitch_pixels, screen_width, screen_height,
					old_box_x, iy0, left_w, mid_h, kLetterboxColor565);
				FillRect565(dst_base, pitch_pixels, screen_width, screen_height,
					ix1, iy0, right_w, mid_h, kLetterboxColor565);
				if (top_h > 0u) m_Screen.MarkDirtyRect(old_box_x, old_box_y, old_box_w, top_h);
				if (bottom_h > 0u) m_Screen.MarkDirtyRect(old_box_x, iy1, old_box_w, bottom_h);
				if (left_w > 0u && mid_h > 0u) m_Screen.MarkDirtyRect(old_box_x, iy0, left_w, mid_h);
				if (right_w > 0u && mid_h > 0u) m_Screen.MarkDirtyRect(ix1, iy0, right_w, mid_h);
			}
		}
		const unsigned exact_scale_x =
			(src_w > 0u && full_dst_width > 0u && (full_dst_width % src_w) == 0u) ? (full_dst_width / src_w) : 0u;
		const unsigned exact_scale_y =
			(src_h > 0u && full_dst_height > 0u && (full_dst_height % src_h) == 0u) ? (full_dst_height / src_h) : 0u;
		const boolean exact_integer_physical =
			!woven_hires &&
			(scanline_mode == kScanlineModeOff)
			&& (src_x0 == 0u)
			&& (src_y0 == 0u)
			&& (exact_scale_x >= 2u)
			&& (exact_scale_x == exact_scale_y)
			&& (full_dst_width == (src_w * exact_scale_x))
			&& (full_dst_height == (src_h * exact_scale_y));
		if (exact_integer_physical)
		{
			const unsigned scale = exact_scale_x;
			unsigned prev_src_y = 0xFFFFFFFFu;
			for (unsigned y = 0u; y < dst_height; ++y)
			{
				const unsigned full_y = y + crop_y;
				const unsigned src_rel_y = full_y / scale;
				const unsigned src_y = src_y0 + src_rel_y;
				u16 *dst_line =
					present_base + present_offset_pixels + (y * present_pitch_pixels);
				if (prev_src_y == src_y)
				{
					memcpy(dst_line, dst_line - present_pitch_pixels,
						dst_width * sizeof(u16));
				}
				else
				{
					const u16 *src_line = pixels + (src_y * width) + src_x0;
					BlitLineExpandNxRgb565NoDim(dst_line, src_line + (crop_x / scale), dst_width / scale + ((dst_width % scale) != 0u ? 1u : 0u), scale);
				}
				prev_src_y = src_y;
			}
			m_Screen.MarkDirtyRect(offset_x, offset_y, dst_width, dst_height);
			return;
		}
		const boolean can_use_maps = (dst_width <= kBlitMapMaxAxis) && (dst_height <= kBlitMapMaxAxis);
		if (can_use_maps)
		{
			if (woven_hires)
			{
				m_BlitMapValid = FALSE;
			}
			if (!m_BlitMapValid
			 || m_BlitMapSrcW != src_w
			 || m_BlitMapSrcH != src_h
			 || m_BlitMapDstW != dst_width
			 || m_BlitMapDstH != dst_height)
			{
				for (unsigned x = 0; x < dst_width; ++x)
				{
					m_BlitXMap[x] = (u16) (((u64) (x + crop_x) * (u64) src_w) / (u64) full_dst_width);
				}
				for (unsigned y = 0; y < dst_height; ++y)
				{
					if (woven_hires)
					{
						m_BlitYMap[y] = (u16) MapWovenHiResPhysicalY(
							y + crop_y,
							full_dst_height,
							logical_src_height,
							src_h,
							presentation.field_parity_odd);
					}
					else
					{
						m_BlitYMap[y] = (u16) (((u64) (y + crop_y) * (u64) src_h) / (u64) full_dst_height);
					}
				}
				m_BlitRunCount = 0u;
				if (dst_width > 0u)
				{
					unsigned run_start = 0u;
					unsigned run_src_x = m_BlitXMap[0];
					for (unsigned x = 1u; x <= dst_width; ++x)
					{
						if (x == dst_width || m_BlitXMap[x] != run_src_x)
						{
							m_BlitRunSrcX[m_BlitRunCount] = (u16) run_src_x;
							m_BlitRunDstX[m_BlitRunCount] = (u16) run_start;
							m_BlitRunLen[m_BlitRunCount] = (u16) (x - run_start);
							++m_BlitRunCount;
							if (x < dst_width)
							{
								run_start = x;
								run_src_x = m_BlitXMap[x];
							}
						}
					}
				}
				m_BlitMapSrcW = src_w;
				m_BlitMapSrcH = src_h;
				m_BlitMapDstW = dst_width;
				m_BlitMapDstH = dst_height;
				m_BlitMapValid = TRUE;
			}

			unsigned prev_src_rel_y = 0xFFFFFFFFu;
			unsigned prev_dim_mode = 0xFFFFFFFFu;
			boolean prev_line_valid = FALSE;
			for (unsigned y = 0; y < dst_height; ++y)
			{
				const unsigned src_rel_y = m_BlitYMap[y];
				const unsigned src_y = src_y0 + src_rel_y;
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = present_base + present_offset_pixels + (y * present_pitch_pixels);
				const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
				const unsigned dim_mode = dark_lcd ? 1u : 0u;
				if (prev_line_valid && src_rel_y == prev_src_rel_y && dim_mode == prev_dim_mode)
				{
					memcpy(dst_line, dst_line - present_pitch_pixels, dst_width * sizeof(u16));
					continue;
				}
				if (dim_mode == 0u)
				{
					BlitMappedRunsRgb565(dst_line, src_line,
						m_BlitRunSrcX, m_BlitRunDstX, m_BlitRunLen, m_BlitRunCount,
						src_x0, 0u);
				}
				else
				{
					BlitMappedRunsRgb565(dst_line, src_line,
						m_BlitRunSrcX, m_BlitRunDstX, m_BlitRunLen, m_BlitRunCount,
						src_x0, dim_mode);
				}
				prev_src_rel_y = src_rel_y;
				prev_dim_mode = dim_mode;
				prev_line_valid = TRUE;
			}
		}
		else
		{
			unsigned prev_src_rel_y = 0xFFFFFFFFu;
			unsigned prev_dim_mode = 0xFFFFFFFFu;
			boolean prev_line_valid = FALSE;
			for (unsigned y = 0; y < dst_height; ++y)
			{
				const unsigned src_rel_y = woven_hires
					? MapWovenHiResPhysicalY(
						y + crop_y,
						full_dst_height,
						logical_src_height,
						src_h,
						presentation.field_parity_odd)
					: (unsigned) (((u64) (y + crop_y) * (u64) src_h) / (u64) full_dst_height);
				const unsigned src_y = src_y0 + src_rel_y;
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = present_base + present_offset_pixels + (y * present_pitch_pixels);
				const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
				const unsigned dim_mode = dark_lcd ? 1u : 0u;
				if (prev_line_valid && src_rel_y == prev_src_rel_y && dim_mode == prev_dim_mode)
				{
					memcpy(dst_line, dst_line - present_pitch_pixels, dst_width * sizeof(u16));
					continue;
				}
				if (dark_lcd)
				{
						for (unsigned x = 0; x < dst_width; ++x)
						{
							const unsigned src_x = src_x0 + (unsigned) (((u64) (x + crop_x) * (u64) src_w) / (u64) full_dst_width);
							dst_line[x] = (u16) ((src_line[src_x] & 0xF7DEu) >> 1);
						}
				}
				else
				{
					for (unsigned x = 0; x < dst_width; ++x)
					{
						const unsigned src_x = src_x0 + (unsigned) (((u64) (x + crop_x) * (u64) src_w) / (u64) full_dst_width);
						dst_line[x] = src_line[src_x];
					}
				}
				prev_src_rel_y = src_rel_y;
				prev_dim_mode = dim_mode;
				prev_line_valid = TRUE;
			}
			m_BlitMapValid = FALSE;
		}
		m_Screen.MarkDirtyRect(offset_x, offset_y, dst_width, dst_height);
		return;
	}

	if (force_redraw)
	{
		FillRectScreen(&m_Screen, 0u, 0u, screen_width, screen_height, (TScreenColor) kLetterboxColor565);
	}
	if (box_changed && old_box_w > 0u && old_box_h > 0u)
	{
		const unsigned old_x1 = old_box_x + old_box_w;
		const unsigned old_y1 = old_box_y + old_box_h;
		const unsigned new_x1 = offset_x + dst_width;
		const unsigned new_y1 = offset_y + dst_height;
		const unsigned ix0 = UMax(old_box_x, offset_x);
		const unsigned iy0 = UMax(old_box_y, offset_y);
		const unsigned ix1 = UMin(old_x1, new_x1);
		const unsigned iy1 = UMin(old_y1, new_y1);
		if (ix0 >= ix1 || iy0 >= iy1)
		{
			FillRectScreen(&m_Screen, old_box_x, old_box_y, old_box_w, old_box_h, (TScreenColor) kLetterboxColor565);
		}
		else
		{
			const unsigned top_h = iy0 - old_box_y;
			const unsigned bottom_h = old_y1 - iy1;
			const unsigned mid_h = iy1 - iy0;
			const unsigned left_w = ix0 - old_box_x;
			const unsigned right_w = old_x1 - ix1;
			FillRectScreen(&m_Screen, old_box_x, old_box_y, old_box_w, top_h, (TScreenColor) kLetterboxColor565);
			FillRectScreen(&m_Screen, old_box_x, iy1, old_box_w, bottom_h, (TScreenColor) kLetterboxColor565);
			FillRectScreen(&m_Screen, old_box_x, iy0, left_w, mid_h, (TScreenColor) kLetterboxColor565);
			FillRectScreen(&m_Screen, ix1, iy0, right_w, mid_h, (TScreenColor) kLetterboxColor565);
		}
	}

	for (unsigned y = 0; y < dst_height; ++y)
	{
		const unsigned src_rel_y = (unsigned) (((u64) y * (u64) src_h) / (u64) dst_height);
		const unsigned src_y = src_y0 + src_rel_y;
		const u16 *line = pixels + (src_y * width);
		const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
		for (unsigned x = 0; x < dst_width; ++x)
		{
			const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
			u16 sample = line[src_x];
			if (dark_lcd)
			{
				sample = (u16) ((sample & 0xF7DEu) >> 1);
			}
			m_Screen.SetPixel(offset_x + x, offset_y + y, (TScreenColor) sample);
		}
	}

#endif
}

void CComboKernel::ResetEmulationRuntimeState(void)
{
	m_BackendFrames = 0;
	m_BackendLastPC = -1;
	m_BackendPcRepeatCount = 0;
	m_BackendPcLoopLogged = FALSE;
	m_BackendVdpTraceSeq = 0u;
	m_BackendVdpTraceDropped = 0u;
	m_BackendSccTraceSeq = 0u;
	m_BackendSccTraceDropped = 0u;
	m_BackendAudioPortTraceSeq = 0u;
	m_BackendAudioPortTraceDropped = 0u;
	m_BackendKmgTraceSeq = 0u;
	m_BackendKmgTraceDropped = 0u;
	m_RenshaFireAHeld = FALSE;
	m_RenshaSpaceHeld = FALSE;
	m_RuntimeKeyboardModifiers = 0u;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		m_RuntimeKeyboardRawKeys[i] = 0u;
		m_RuntimeKeyboardDispatchedRawKeys[i] = 0u;
	}
	m_RuntimeKeyboardDispatchedModifiers = 0u;
	m_RuntimeKeyboardDispatchValid = TRUE;
	m_RuntimeKeyboardReplayBudget = 0u;
	ResetUartPerfTelemetry();
#if MSXBARE_ENABLE_FMSX
	{
		static const unsigned char kEmptyKeyboard[6] = {0u, 0u, 0u, 0u, 0u, 0u};
		backend_runtime_input_push_keyboard(0u, kEmptyKeyboard);
	}
#endif
	m_EmulationPaused = FALSE;
	m_ForceViewportFullClearNextFrame = FALSE;
	m_PauseRenderSuppressed = FALSE;
	m_PauseMenu.Reset();
}

void CComboKernel::ExitPauseForBackendAction(void)
{
	if (!m_EmulationPaused)
	{
		return;
	}

	m_EmulationPaused = FALSE;
	m_PauseNeedsBackgroundRedraw = FALSE;
	m_PauseNeedsFullViewportClear = FALSE;
	m_PauseRenderSuppressed = TRUE;
	m_LastPauseWasInSettings = FALSE;
	m_PauseMenu.Reset();
	m_LastPauseToggleUs = CTimer::GetClockTicks64();
}

void CComboKernel::RefreshSettingsUiAfterAction(void)
{
	m_PauseMenu.RequestRedraw();
}

void CComboKernel::ApplyRuntimeSettingsToBackend(void)
{
#if MSXBARE_ENABLE_FMSX
	if (!m_BackendReady)
	{
		return;
	}
	if (!backend_runtime_is_capability_available(BACKEND_CAP_MACHINE))
	{
		return;
	}
	{
		const unsigned effective_scale = ComputeEffectiveViewportScalePercent(
			m_OverscanPercent,
			ComputeViewportUiMaxScalePercent(m_Screen.GetHeight()),
			m_Screen.GetHeight(),
			m_DebugOverlayMode);
		backend_runtime_set_overscan(EffectiveOverscanEnabled(effective_scale));
	}
	backend_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	backend_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
	backend_runtime_set_boot_mode(m_BootMode);
	backend_runtime_set_model_profile(m_MachineProfile);
	backend_runtime_set_rammapper_kb(m_RamMapperKb);
	backend_runtime_set_megaram_kb(m_MegaRamKb);
	backend_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	backend_runtime_set_fm_music_enabled(m_FmMusicEnabled);
	backend_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
	backend_runtime_set_scc_plus_enabled(m_SccCartEnabled);
	if (!backend_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
	{
		m_SccDualCartEnabled = FALSE;
	}
	SyncKanjiRomStateFromRuntime();
	SyncRefreshRateStateFromRuntime();
#endif
}

void CComboKernel::SyncRefreshRateStateFromRuntime(void)
{
#if MSXBARE_ENABLE_FMSX
	if (!m_BackendReady || !backend_runtime_is_capability_available(BACKEND_CAP_MACHINE))
	{
		return;
	}

	const unsigned runtime_refresh_hz = ClampRefreshRateHz(backend_runtime_get_refresh_hz());
	const u64 runtime_frame_interval_us = backend_runtime_get_frame_interval_us_exact();

	if (runtime_refresh_hz != m_RefreshRateHz)
	{
		m_RefreshRateHz = runtime_refresh_hz;
		m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
		m_FramePacingResetPending = TRUE;
		m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
	}

	if (runtime_frame_interval_us != 0u && runtime_frame_interval_us != m_FrameIntervalUs)
	{
		m_FrameIntervalUs = runtime_frame_interval_us;
		m_FramePacingResetPending = TRUE;
	}
#endif
}

void CComboKernel::SyncKanjiRomStateFromRuntime(void)
{
#if MSXBARE_ENABLE_FMSX
	if (!m_BackendReady || !backend_runtime_is_capability_available(BACKEND_CAP_MACHINE))
	{
		m_KanjiRomAvailable = FALSE;
		m_PauseMenu.SetKanjiRomEnabled(m_KanjiRomEnabled);
		m_PauseMenu.SetKanjiRomAvailable(m_KanjiRomAvailable);
		return;
	}
	m_KanjiRomAvailable = backend_runtime_get_kanji_rom_available();
	m_KanjiRomEnabled = backend_runtime_get_kanji_rom_enabled();
#else
	m_KanjiRomAvailable = FALSE;
#endif
	m_PauseMenu.SetKanjiRomEnabled(m_KanjiRomEnabled);
	m_PauseMenu.SetKanjiRomAvailable(m_KanjiRomAvailable);
}

void CComboKernel::UpdateSettingsSaveTelemetry(unsigned stage, unsigned code, unsigned aux)
{
	m_SettingsSaveStage = stage;
	m_SettingsSaveCode = code;
	m_SettingsSaveAux = aux;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	if (m_ScreenReady && m_DebugOverlayUnlocked && DebugOverlayModeEnabled(m_DebugOverlayMode))
	{
		DrawDebugOverlay((unsigned) (m_BackendFrames & 0xFFFFFFFFu));
	}
#endif
}

void CComboKernel::UpdateLoadDiagTelemetry(unsigned stage)
{
#if MSXBARE_ENABLE_FMSX
	backend_runtime_set_load_diag(stage);
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	if (m_ScreenReady && m_DebugOverlayUnlocked && DebugOverlayModeEnabled(m_DebugOverlayMode))
	{
		DrawDebugOverlay((unsigned) (m_BackendFrames & 0xFFFFFFFFu));
	}
#endif
#else
	(void) stage;
#endif
}

void CComboKernel::LoadSettingsFromStorage(void)
{
	if (!m_SettingsStorageReady)
	{
		return;
	}
	UpdateLoadDiagTelemetry(5101u); /* CFG stat */

	FILINFO file_info;
	const char *settings_path = kSettingsPath;
	FRESULT stat_result = f_stat(settings_path, &file_info);
	if (stat_result == FR_NO_FILE)
	{
		settings_path = kSettingsLegacyPath;
		stat_result = f_stat(settings_path, &file_info);
	}
	if (stat_result == FR_NO_FILE)
	{
		UpdateLoadDiagTelemetry(5102u); /* CFG not found */
		BootPhaseWarn(m_Logger, "BT6", "msxbarepi.cfg... DEFAULTS");
		m_Logger.Write(FromKernel, LogNotice, "Settings file not found; using defaults");
		return;
	}
	if (stat_result != FR_OK)
	{
		UpdateLoadDiagTelemetry(5190u + (ClampFatFsCode(stat_result) % 10u)); /* CFG stat fail */
		LogSdOpResult(m_Logger, "CFG:STAT", stat_result, settings_path, TRUE);
		BootPhaseWarn(m_Logger, "BT6", "msxbarepi.cfg... FALLBACK");
		m_Logger.Write(FromKernel, LogWarning, "Settings stat failed; using defaults");
		return;
	}

	FIL file;
	UpdateLoadDiagTelemetry(5201u); /* CFG open */
	const FRESULT open_result = f_open(&file, settings_path, FA_READ);
	if (open_result != FR_OK)
	{
		UpdateLoadDiagTelemetry(5290u + (ClampFatFsCode(open_result) % 10u)); /* CFG open fail */
		LogSdOpResult(m_Logger, "CFG:OPEN", open_result, settings_path, TRUE);
		BootPhaseWarn(m_Logger, "BT6", "msxbarepi.cfg... FALLBACK");
		m_Logger.Write(FromKernel, LogWarning, "Settings open failed; using defaults");
		return;
	}

	char buffer[1024];
	UINT bytes_read = 0;
	UpdateLoadDiagTelemetry(5301u); /* CFG read */
	const FRESULT read_result = f_read(&file, buffer, sizeof(buffer) - 1u, &bytes_read);
	(void) f_close(&file);
	if (read_result != FR_OK || bytes_read == 0u)
	{
		UpdateLoadDiagTelemetry(5390u + (ClampFatFsCode(read_result) % 10u)); /* CFG read fail */
		if (read_result != FR_OK)
		{
			LogSdOpResult(m_Logger, "CFG:READ", read_result, settings_path, TRUE);
		}
		BootPhaseWarn(m_Logger, "BT6", "msxbarepi.cfg... FALLBACK");
		m_Logger.Write(FromKernel, LogWarning, "Settings read failed; using defaults");
		return;
	}
	UpdateLoadDiagTelemetry(5302u); /* CFG read ok */
	buffer[bytes_read] = '\0';

	/* Corruption guard: only parse files written by SaveSettingsToStorage(). */
	if (strstr(buffer, "#END") == 0)
	{
		BootPhaseWarn(m_Logger, "BT6", "msxbarepi.cfg... FALLBACK");
		m_Logger.Write(FromKernel, LogWarning, "Settings file invalid/corrupt; using defaults");
		return;
	}

	boolean has_cfg_carta = FALSE;
	boolean has_cfg_cartb = FALSE;
	boolean has_cfg_diska = FALSE;
	boolean has_cfg_diskb = FALSE;
	boolean has_backend_id = FALSE;
	boolean has_scc_plus = FALSE;
	boolean has_joy_map = FALSE;
	char cfg_carta_path[192];
	char cfg_cartb_path[192];
	char cfg_diska_path[192];
	char cfg_diskb_path[192];
	char cfg_backend_id[32];
	u16 joy_map_codes[CUsbHidGamepad::MapSlotCount];
	cfg_carta_path[0] = '\0';
	cfg_cartb_path[0] = '\0';
	cfg_diska_path[0] = '\0';
	cfg_diskb_path[0] = '\0';
	cfg_backend_id[0] = '\0';
	m_UsbGamepad.GetMappingCodes(joy_map_codes, CUsbHidGamepad::MapSlotCount);

	char *line = buffer;
	while (*line != '\0')
	{
		while (*line == '\r' || *line == '\n')
		{
			++line;
		}
		if (*line == '\0')
		{
			break;
		}

		char *line_end = line;
		while (*line_end != '\0' && *line_end != '\r' && *line_end != '\n')
		{
			++line_end;
		}

		char *eq = line;
		while (eq < line_end && *eq != '=')
		{
			++eq;
		}

			if (eq < line_end)
			{
				const unsigned key_len = (unsigned) (eq - line);
				const unsigned value = ParseUintValue(eq + 1);
				if (SettingsKeyEquals(line, key_len, "resolution"))
				{
					m_ResolutionMode = (value > kResolutionMode768) ? kResolutionModeAuto : value;
				}
				else if (SettingsKeyEquals(line, key_len, "scale"))
				{
					unsigned clamped = value;
					if (clamped == 500u)
					{
						clamped = kScalePercentHardMax;
					}
					else
					{
						const unsigned max_saved_factor = ScaleFactorFromPercent(kScalePercentHardMax);
						if (clamped > 0u && clamped <= max_saved_factor)
						{
							clamped = ScalePercentFromFactor(clamped);
						}
					}
					if (clamped != kScalePercentNone && clamped < kScalePercentMin) clamped = kScalePercentMin;
					if (clamped > kScalePercentHardMax) clamped = kScalePercentHardMax;
					m_OverscanPercent = (clamped == kScalePercentNone)
						? kScalePercentNone
						: ((clamped / kScalePercentStep) * kScalePercentStep);
				}
				else if (SettingsKeyEquals(line, key_len, "scale_max"))
				{
					if (value)
					{
						m_OverscanPercent = kScalePercentHardMax;
					}
				}
				else if (SettingsKeyEquals(line, key_len, "overscan"))
				{
					/* Legacy migration: overscan 0..100 -> scale 250..450 (steps of 50). */
					const unsigned legacy = value > 100u ? 100u : value;
					unsigned migrated = kScalePercentMin + ((legacy / 25u) * kScalePercentStep);
					if (migrated > kScalePercentHardMax) migrated = kScalePercentHardMax;
					m_OverscanPercent = migrated;
				}
				else if (SettingsKeyEquals(line, key_len, "language"))
				{
					m_Language = combo_locale_clamp_language(value);
				}
				else if (SettingsKeyEquals(line, key_len, "scanline"))
				{
					m_ScanlineMode = value != 0u ? kScanlineModeLcd : kScanlineModeOff;
				}
			else if (SettingsKeyEquals(line, key_len, "refresh"))
			{
				m_RefreshRateHz = ClampRefreshRateHz(value);
			}
			else if (SettingsKeyEquals(line, key_len, "disk_rom"))
			{
				m_DiskRomEnabled = value ? TRUE : FALSE;
			}
			else if (SettingsKeyEquals(line, key_len, "kanji_rom"))
			{
				m_KanjiRomEnabled = value ? TRUE : FALSE;
			}
				else if (SettingsKeyEquals(line, key_len, "boot_mode"))
				{
					m_BootMode = (value > 2u) ? kBootModeNorm : value;
				}
				else if (SettingsKeyEquals(line, key_len, "machine"))
				{
					m_MachineProfile = ClampMachineProfileForBuild(value);
				}
				else if (SettingsKeyEquals(line, key_len, "rammapper_kb"))
				{
					m_RamMapperKb = ClampRamMapperKb(value);
				}
			else if (SettingsKeyEquals(line, key_len, "megaram_kb"))
			{
				m_MegaRamKb = ClampMegaRamKb(value);
			}
			else if (SettingsKeyEquals(line, key_len, "z80_turbo"))
			{
				m_Z80TurboMode = value > 3u ? 0u : value;
			}
			else if (SettingsKeyEquals(line, key_len, "rensha"))
			{
				m_RenshaMode = (value > 3u) ? 0u : value;
			}
			else if (SettingsKeyEquals(line, key_len, "scc_plus"))
			{
				m_SccCartEnabled = value ? TRUE : FALSE;
				has_scc_plus = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "scc_dual"))
			{
				m_SccDualCartEnabled = value ? TRUE : FALSE;
			}
			else if (SettingsKeyEquals(line, key_len, "scc_cart"))
			{
				if (!has_scc_plus)
				{
					m_SccCartEnabled = value ? TRUE : FALSE;
				}
			}
			else if (SettingsKeyEquals(line, key_len, "fm_music"))
			{
				m_FmMusicEnabled = value ? TRUE : FALSE;
			}
			else if (SettingsKeyEquals(line, key_len, "debugger"))
			{
#if MSXBARE_ENABLE_DEBUG_OVERLAY
				m_DebugOverlayMode = ClampDebugOverlayMode(value);
#else
				(void) value;
				m_DebugOverlayMode = ComboDebugOverlayOff;
#endif
			}
			else if (SettingsKeyEquals(line, key_len, "audio_mute"))
			{
				/* Backward compatibility: old audio_mute maps to gain=0. */
				if (value != 0u)
				{
					m_AudioOutputGainPct = 0u;
				}
			}
			else if (SettingsKeyEquals(line, key_len, "audio_gain"))
			{
				m_AudioOutputGainPct = (value > 100u) ? 100u : value;
			}
			else if (SettingsKeyEquals(line, key_len, "backend_id"))
			{
				ParseTextValueLine(eq + 1, line_end, cfg_backend_id, sizeof(cfg_backend_id));
				has_backend_id = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "joy_map_up"))
			{
				joy_map_codes[CUsbHidGamepad::MapSlotUp] = CUsbHidGamepad::ClampControlCode((u16) value);
				has_joy_map = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "joy_map_down"))
			{
				joy_map_codes[CUsbHidGamepad::MapSlotDown] = CUsbHidGamepad::ClampControlCode((u16) value);
				has_joy_map = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "joy_map_left"))
			{
				joy_map_codes[CUsbHidGamepad::MapSlotLeft] = CUsbHidGamepad::ClampControlCode((u16) value);
				has_joy_map = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "joy_map_right"))
			{
				joy_map_codes[CUsbHidGamepad::MapSlotRight] = CUsbHidGamepad::ClampControlCode((u16) value);
				has_joy_map = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "joy_map_button1"))
			{
				joy_map_codes[CUsbHidGamepad::MapSlotButton1] = CUsbHidGamepad::ClampControlCode((u16) value);
				has_joy_map = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "joy_map_button2"))
			{
				joy_map_codes[CUsbHidGamepad::MapSlotButton2] = CUsbHidGamepad::ClampControlCode((u16) value);
				has_joy_map = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "cart_a_path"))
			{
				ParseTextValueLine(eq + 1, line_end, cfg_carta_path, sizeof(cfg_carta_path));
				has_cfg_carta = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "cart_b_path"))
			{
				ParseTextValueLine(eq + 1, line_end, cfg_cartb_path, sizeof(cfg_cartb_path));
				has_cfg_cartb = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "disk_a_path"))
			{
				ParseTextValueLine(eq + 1, line_end, cfg_diska_path, sizeof(cfg_diska_path));
				has_cfg_diska = TRUE;
			}
			else if (SettingsKeyEquals(line, key_len, "disk_b_path"))
			{
				ParseTextValueLine(eq + 1, line_end, cfg_diskb_path, sizeof(cfg_diskb_path));
				has_cfg_diskb = TRUE;
			}
		}

		line = line_end;
	}

	NormalizeSettingsForBuild();
	backend_runtime_set_requested_backend_id(has_backend_id && cfg_backend_id[0] != '\0' ? cfg_backend_id : 0);
	if (has_joy_map)
	{
		m_UsbGamepad.SetMappingCodes(joy_map_codes, CUsbHidGamepad::MapSlotCount, TRUE);
	}

	m_RefreshRateHz = ClampRefreshRateHz(m_RefreshRateHz);
	m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
	m_PauseMenu.SetScalePercent(m_OverscanPercent);
	m_PauseMenu.SetScaleMaxFitEnabled(m_ScaleMaxFitEnabled);
	m_PauseMenu.SetLanguage(m_Language);
	m_PauseMenu.SetResolutionMode(m_ResolutionMode);
	m_PauseMenu.SetScanlineMode(m_ScanlineMode);
	m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
	m_PauseMenu.SetDiskRomEnabled(m_DiskRomEnabled);
	m_PauseMenu.SetKanjiRomEnabled(m_KanjiRomEnabled);
	m_PauseMenu.SetKanjiRomAvailable(m_KanjiRomAvailable);
	m_PauseMenu.SetBootMode(m_BootMode);
	m_PauseMenu.SetMachineProfile(m_MachineProfile);
	m_PauseMenu.SetRamMapperKb(m_RamMapperKb);
	m_PauseMenu.SetMegaRamKb(m_MegaRamKb);
	m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
	m_PauseMenu.SetRenshaMode(m_RenshaMode);
	{
		u16 joy_codes[CUsbHidGamepad::MapSlotCount];
		m_UsbGamepad.GetMappingCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
		m_PauseMenu.SetJoystickMapCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
	}
	m_PauseMenu.SetFmMusicEnabled(m_FmMusicEnabled);
	m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
	m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled,
		has_cfg_cartb && cfg_cartb_path[0] ? FALSE : TRUE);
	m_PauseMenu.SetOverlayMode(
		MSXBARE_ENABLE_DEBUG_OVERLAY ? m_DebugOverlayMode : ComboDebugOverlayOff,
		MSXBARE_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE);
	m_PauseMenu.SetAudioGainPercent(m_AudioOutputGainPct);
	{
		const unsigned max_scale = ComputeViewportUiMaxScalePercent(m_Screen.GetHeight());
		m_PauseMenu.SetMaxScalePercent(max_scale);
		m_ScaleMaxFitEnabled = FALSE;
		m_OverscanPercent = ClampScalePercent(m_OverscanPercent, max_scale);
		m_PauseMenu.SetScalePercent(m_OverscanPercent);
		m_PauseMenu.SetScaleMaxFitEnabled(FALSE);
	}
#if MSXBARE_ENABLE_FMSX
	{
		const unsigned effective_scale = ComputeEffectiveViewportScalePercent(
			m_OverscanPercent,
			ComputeViewportUiMaxScalePercent(m_Screen.GetHeight()),
			m_Screen.GetHeight(),
			m_DebugOverlayMode);
		backend_runtime_set_overscan(EffectiveOverscanEnabled(effective_scale));
	}
	backend_runtime_set_refresh_hz(m_RefreshRateHz);
	backend_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	backend_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
	backend_runtime_set_boot_mode(m_BootMode);
	backend_runtime_set_model_profile(m_MachineProfile);
	backend_runtime_set_rammapper_kb(m_RamMapperKb);
	backend_runtime_set_megaram_kb(m_MegaRamKb);
	backend_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	backend_runtime_set_fm_music_enabled(m_FmMusicEnabled);
	backend_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
	backend_runtime_set_scc_plus_enabled(m_SccCartEnabled);
#if MSXBARE_FEAT_LOAD_ROM
		if (has_cfg_carta) (void) backend_runtime_set_cartridge_path(0u, cfg_carta_path[0] ? cfg_carta_path : 0);
		if (has_cfg_cartb) (void) backend_runtime_set_cartridge_path(1u, cfg_cartb_path[0] ? cfg_cartb_path : 0);
#else
		(void) has_cfg_carta;
		(void) has_cfg_cartb;
#endif
#if MSXBARE_FEAT_LOAD_DISK
		if (has_cfg_diska) (void) backend_runtime_set_disk_path(0u, cfg_diska_path[0] ? cfg_diska_path : 0);
		if (has_cfg_diskb) (void) backend_runtime_set_disk_path(1u, cfg_diskb_path[0] ? cfg_diskb_path : 0);
#else
		(void) has_cfg_diska;
		(void) has_cfg_diskb;
#endif
		if (!backend_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
		{
			m_SccDualCartEnabled = FALSE;
		}
		SyncKanjiRomStateFromRuntime();
		m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled, backend_runtime_get_scc_dual_cart_available());
	#endif

	CString line_log;
	line_log.Format("Settings loaded from %s", settings_path);
	m_Logger.Write(FromKernel, LogNotice, line_log);
	BootPhase(m_Logger, "BT6", "msxbarepi.cfg... OK");
}

void CComboKernel::SaveSettingsToStorage(void)
{
	UpdateSettingsSaveTelemetry(1u, 0u, 0u); /* begin */
	if (!m_SettingsStorageReady)
	{
		UpdateSettingsSaveTelemetry(90u, 0u, 0u); /* storage unavailable */
		m_Logger.Write(FromKernel, LogWarning, "Settings save unavailable (storage not mounted)");
		return;
	}

	char buffer[1024];
	unsigned offset = 0u;
	const char *saved_backend_id = backend_runtime_selected_backend_id();
	if (saved_backend_id == 0 || saved_backend_id[0] == '\0')
	{
		saved_backend_id = backend_runtime_default_id();
	}

#define APPEND_LINE_FMT(fmt, value) \
	do { \
		CString line; \
		line.Format(fmt, value); \
		const char *text = (const char *) line; \
		if (text != 0) \
		{ \
			const unsigned len = (unsigned) strlen(text); \
			if (offset + len < sizeof(buffer)) \
			{ \
				memcpy(buffer + offset, text, len); \
				offset += len; \
			} \
		} \
	} while (0)

#define APPEND_LINE_TEXT(key, text_value) \
	do { \
		const char *v = (text_value) != 0 ? (text_value) : ""; \
		const unsigned key_len = (unsigned) strlen(key); \
		const unsigned value_len = (unsigned) strlen(v); \
		if (offset + key_len + value_len + 2u < sizeof(buffer)) \
		{ \
			memcpy(buffer + offset, key, key_len); \
			offset += key_len; \
			buffer[offset++] = '='; \
			memcpy(buffer + offset, v, value_len); \
			offset += value_len; \
			buffer[offset++] = '\n'; \
		} \
	} while (0)

		APPEND_LINE_TEXT("backend_id", saved_backend_id);
		APPEND_LINE_FMT("scale=%u\n", ScaleFactorFromPercent(m_OverscanPercent));
		APPEND_LINE_FMT("language=%u\n", m_Language);
		APPEND_LINE_FMT("resolution=%u\n", m_ResolutionMode);
		APPEND_LINE_FMT("scanline=%u\n", m_ScanlineMode);
	APPEND_LINE_FMT("refresh=%u\n", ClampRefreshRateHz(m_RefreshRateHz));
	APPEND_LINE_FMT("disk_rom=%u\n", m_DiskRomEnabled ? 1u : 0u);
	APPEND_LINE_FMT("kanji_rom=%u\n", m_KanjiRomEnabled ? 1u : 0u);
	APPEND_LINE_FMT("boot_mode=%u\n", m_BootMode);
	APPEND_LINE_FMT("machine=%u\n", m_MachineProfile);
	APPEND_LINE_FMT("rammapper_kb=%u\n", m_RamMapperKb);
	APPEND_LINE_FMT("megaram_kb=%u\n", m_MegaRamKb);
	APPEND_LINE_FMT("z80_turbo=%u\n", m_Z80TurboMode);
	APPEND_LINE_FMT("rensha=%u\n", m_RenshaMode);
	{
		u16 joy_codes[CUsbHidGamepad::MapSlotCount];
		m_PauseMenu.GetJoystickMapCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
		APPEND_LINE_FMT("joy_map_up=%u\n", (unsigned) joy_codes[CUsbHidGamepad::MapSlotUp]);
		APPEND_LINE_FMT("joy_map_down=%u\n", (unsigned) joy_codes[CUsbHidGamepad::MapSlotDown]);
		APPEND_LINE_FMT("joy_map_left=%u\n", (unsigned) joy_codes[CUsbHidGamepad::MapSlotLeft]);
		APPEND_LINE_FMT("joy_map_right=%u\n", (unsigned) joy_codes[CUsbHidGamepad::MapSlotRight]);
		APPEND_LINE_FMT("joy_map_button1=%u\n", (unsigned) joy_codes[CUsbHidGamepad::MapSlotButton1]);
		APPEND_LINE_FMT("joy_map_button2=%u\n", (unsigned) joy_codes[CUsbHidGamepad::MapSlotButton2]);
	}
	APPEND_LINE_FMT("fm_music=%u\n", m_FmMusicEnabled ? 1u : 0u);
	APPEND_LINE_FMT("scc_plus=%u\n", m_SccCartEnabled ? 1u : 0u);
	APPEND_LINE_FMT("scc_dual=%u\n", m_SccDualCartEnabled ? 1u : 0u);
	APPEND_LINE_FMT("debugger=%u\n", ClampDebugOverlayMode(m_DebugOverlayMode));
	APPEND_LINE_FMT("audio_gain=%u\n", m_AudioOutputGainPct > 100u ? 100u : m_AudioOutputGainPct);
	#if MSXBARE_ENABLE_FMSX
		APPEND_LINE_TEXT("cart_a_path", backend_runtime_get_cartridge_path(0u));
		APPEND_LINE_TEXT("cart_b_path", backend_runtime_get_cartridge_path(1u));
		APPEND_LINE_TEXT("disk_a_path", backend_runtime_get_disk_path(0u));
		APPEND_LINE_TEXT("disk_b_path", backend_runtime_get_disk_path(1u));
	#endif

	#undef APPEND_LINE_FMT
	#undef APPEND_LINE_TEXT

	{
		static const char kEndMarker[] = "#END\n";
		const unsigned end_len = (unsigned) (sizeof(kEndMarker) - 1u);
		if (offset + end_len >= sizeof(buffer))
		{
			offset = (sizeof(buffer) > (end_len + 1u)) ? (unsigned) (sizeof(buffer) - end_len - 1u) : 0u;
		}
		memcpy(buffer + offset, kEndMarker, end_len);
		offset += end_len;
	}

	/* Persist fixed-size block to keep parser/overwrite deterministic. */
	const unsigned fixed_write_bytes = 1024u;
	if (offset > fixed_write_bytes)
	{
		offset = fixed_write_bytes;
	}
	memset(buffer + offset, '\n', fixed_write_bytes - offset);

	UpdateSettingsSaveTelemetry(2u, fixed_write_bytes, 0u); /* open/create */
	FIL file;
	const FRESULT open_result = f_open(&file, kSettingsPath, FA_WRITE | FA_OPEN_ALWAYS);
	if (open_result != FR_OK)
	{
		UpdateSettingsSaveTelemetry(91u, open_result, 0u); /* open error */
		UpdateLoadDiagTelemetry(6190u + (ClampFatFsCode(open_result) % 10u));
		LogSdOpResult(m_Logger, "CFG:OPENW", open_result, kSettingsPath, TRUE);
		m_Logger.Write(FromKernel, LogWarning, "Settings save failed (cannot open config file)");
		return;
	}
	const FRESULT seek_result = f_lseek(&file, 0);
	if (seek_result != FR_OK)
	{
		(void) f_close(&file);
		UpdateSettingsSaveTelemetry(97u, seek_result, 0u);
		UpdateLoadDiagTelemetry(6290u + (ClampFatFsCode(seek_result) % 10u));
		LogSdOpResult(m_Logger, "CFG:SEEK", seek_result, kSettingsPath, TRUE);
		m_Logger.Write(FromKernel, LogWarning, "Settings save failed (seek error)");
		return;
	}

	UpdateSettingsSaveTelemetry(3u, fixed_write_bytes, 0u); /* write begin */
	UINT bytes_written = 0;
	const FRESULT write_result = f_write(&file, buffer, fixed_write_bytes, &bytes_written);
	UpdateSettingsSaveTelemetry(4u, bytes_written > 999u ? 999u : bytes_written, fixed_write_bytes); /* write end */

	UpdateSettingsSaveTelemetry(5u, bytes_written > 999u ? 999u : bytes_written, 0u); /* close begin */
	const FRESULT close_result = f_close(&file);
	const unsigned close_ok = (close_result == FR_OK) ? 1u : 0u;
	UpdateSettingsSaveTelemetry(6u, close_ok, bytes_written > 999u ? 999u : bytes_written); /* close end */

	const boolean cfg_saved_ok = (write_result == FR_OK && bytes_written == fixed_write_bytes && close_ok != 0u) ? TRUE : FALSE;
	if (cfg_saved_ok)
	{
		UpdateSettingsSaveTelemetry(7u, bytes_written, fixed_write_bytes); /* success */
		CString line_log;
		line_log.Format("Settings saved to %s", kSettingsPath);
		m_Logger.Write(FromKernel, LogNotice, line_log);
		PersistResolutionModeToBootConfig(m_ResolutionMode);
	}
	else
	{
		UpdateSettingsSaveTelemetry(92u, write_result, close_ok); /* write/close error */
		if (write_result != FR_OK)
		{
			UpdateLoadDiagTelemetry(6390u + (ClampFatFsCode(write_result) % 10u));
			LogSdOpResult(m_Logger, "CFG:WRITE", write_result, kSettingsPath, TRUE);
		}
		else if (!close_ok)
		{
			UpdateLoadDiagTelemetry(6490u + (ClampFatFsCode(close_result) % 10u));
			LogSdOpResult(m_Logger, "CFG:CLOSE", close_result, kSettingsPath, TRUE);
		}
		m_Logger.Write(FromKernel, LogWarning, "Settings save failed (write error)");
	}
}

unsigned CComboKernel::LoadResolutionModeFromBootConfig(void)
{
	if (!m_SettingsStorageReady)
	{
		return kResolutionModeAuto;
	}

	FILINFO info;
	const FRESULT stat_result = f_stat(kBootConfigPath, &info);
	if (stat_result != FR_OK)
	{
		return kResolutionModeAuto;
	}

	FIL file;
	const FRESULT open_result = f_open(&file, kBootConfigPath, FA_READ);
	if (open_result != FR_OK)
	{
		return kResolutionModeAuto;
	}

	char buffer[4096];
	UINT bytes_read = 0u;
	const FRESULT read_result = f_read(&file, buffer, sizeof(buffer) - 1u, &bytes_read);
	(void) f_close(&file);
	if (read_result != FR_OK || bytes_read == 0u)
	{
		return kResolutionModeAuto;
	}
	/* Safety: treat truncated reads as invalid and fallback to AUTO. */
	if (bytes_read >= (sizeof(buffer) - 1u))
	{
		return kResolutionModeAuto;
	}
	buffer[bytes_read] = '\0';

	unsigned hdmi_group = 0u;
	unsigned hdmi_mode = 0u;
	unsigned fb_w = 0u;
	unsigned fb_h = 0u;
	boolean has_hdmi_group = FALSE;
	boolean has_hdmi_mode = FALSE;
	boolean has_fb_w = FALSE;
	boolean has_fb_h = FALSE;

	char *line = buffer;
	while (*line != '\0')
	{
		while (*line == '\r' || *line == '\n')
		{
			++line;
		}
		if (*line == '\0')
		{
			break;
		}
		char *line_end = line;
		while (*line_end != '\0' && *line_end != '\r' && *line_end != '\n')
		{
			++line_end;
		}
		char *eq = line;
		while (eq < line_end && *eq != '=')
		{
			++eq;
		}
		if (eq < line_end)
		{
			const unsigned key_len = (unsigned) (eq - line);
			const unsigned value = ParseUintValue(eq + 1);
			if (BootConfigKeyEquals(line, key_len, "framebuffer_width"))
			{
				fb_w = value;
				has_fb_w = TRUE;
			}
			else if (BootConfigKeyEquals(line, key_len, "framebuffer_height"))
			{
				fb_h = value;
				has_fb_h = TRUE;
			}
			else if (BootConfigKeyEquals(line, key_len, "hdmi_group"))
			{
				hdmi_group = value;
				has_hdmi_group = TRUE;
			}
			else if (BootConfigKeyEquals(line, key_len, "hdmi_mode"))
			{
				hdmi_mode = value;
				has_hdmi_mode = TRUE;
			}
		}
		line = line_end;
	}

	if (has_fb_w && has_fb_h)
	{
		if (fb_w == 1920u && fb_h == 1080u) return kResolutionMode1080;
		if (fb_w == 1280u && fb_h == 720u) return kResolutionMode720;
		if (fb_w == 1024u && fb_h == 768u) return kResolutionMode768;
	}
	if (has_hdmi_group && has_hdmi_mode)
	{
		if (hdmi_group == 1u && hdmi_mode == 16u) return kResolutionMode1080;
		if (hdmi_group == 1u && hdmi_mode == 4u) return kResolutionMode720;
		if (hdmi_group == 2u && hdmi_mode == 16u) return kResolutionMode768;
	}

	return kResolutionModeAuto;
}

void CComboKernel::PersistResolutionModeToBootConfig(unsigned mode)
{
	if (!m_SettingsStorageReady)
	{
		return;
	}

	if (mode > kResolutionMode768)
	{
		mode = kResolutionModeAuto;
	}

	char input[4096];
	unsigned input_len = 0u;
	input[0] = '\0';
	FILINFO info;
	const FRESULT stat_result = f_stat(kBootConfigPath, &info);
	if (stat_result != FR_OK)
	{
		/* No readable boot config: do not touch firmware config, keep AUTO semantic. */
		return;
	}

	{
		FIL file;
		if (f_open(&file, kBootConfigPath, FA_READ) == FR_OK)
		{
			UINT bytes_read = 0u;
			if (f_read(&file, input, sizeof(input) - 1u, &bytes_read) == FR_OK)
			{
				input_len = (unsigned) bytes_read;
				input[input_len] = '\0';
			}
			(void) f_close(&file);
		}
		else
		{
			return;
		}
	}
	if (input_len == 0u || input_len >= (sizeof(input) - 1u))
	{
		/* Avoid corrupting config.txt on large/truncated content. */
		return;
	}

	char output[4096];
	unsigned out_len = 0u;
	char *line = input;
	while (*line != '\0')
	{
		char *line_end = line;
		while (*line_end != '\0' && *line_end != '\r' && *line_end != '\n')
		{
			++line_end;
		}
		char *next = line_end;
		while (*next == '\r' || *next == '\n')
		{
			++next;
		}

		char *eq = line;
		while (eq < line_end && *eq != '=')
		{
			++eq;
		}
		boolean skip = FALSE;
		if (eq < line_end)
		{
			const unsigned key_len = (unsigned) (eq - line);
			if (BootConfigKeyEquals(line, key_len, "hdmi_group")
			 || BootConfigKeyEquals(line, key_len, "hdmi_mode")
			 || BootConfigKeyEquals(line, key_len, "framebuffer_width")
			 || BootConfigKeyEquals(line, key_len, "framebuffer_height"))
			{
				skip = TRUE;
			}
		}
		if (!skip)
		{
			const unsigned line_len = (unsigned) (line_end - line);
			if (line_len > 0u && out_len + line_len + 1u < sizeof(output))
			{
				memcpy(output + out_len, line, line_len);
				out_len += line_len;
				output[out_len++] = '\n';
			}
		}

		line = next;
	}

	const char *append = 0;
	switch (mode)
	{
	case kResolutionMode1080:
		append = "framebuffer_width=1920\nframebuffer_height=1080\n";
		break;
	case kResolutionMode720:
		append = "framebuffer_width=1280\nframebuffer_height=720\n";
		break;
	case kResolutionMode768:
		append = "framebuffer_width=1024\nframebuffer_height=768\n";
		break;
	case kResolutionModeAuto:
	default:
		append = 0;
		break;
	}
	if (append != 0)
	{
		const unsigned append_len = (unsigned) strlen(append);
		if (out_len + append_len < sizeof(output))
		{
			memcpy(output + out_len, append, append_len);
			out_len += append_len;
		}
		else
		{
			return;
		}
	}

	FIL out;
	const FRESULT open_result = f_open(&out, kBootConfigPath, FA_WRITE | FA_CREATE_ALWAYS);
	if (open_result != FR_OK)
	{
		return;
	}
	UINT written = 0u;
	(void) f_write(&out, output, out_len, &written);
	(void) f_truncate(&out);
	(void) f_close(&out);
}

boolean CComboKernel::EnsureStateIoBuffer(unsigned min_capacity)
{
	if (min_capacity == 0u || min_capacity > kStateBufferMaxBytes)
	{
		return FALSE;
	}
	if (m_StateIoBuffer != 0 && m_StateIoBufferCapacity >= min_capacity)
	{
		return TRUE;
	}

	u8 *new_buffer = new u8[min_capacity];
	if (new_buffer == 0)
	{
		return FALSE;
	}
	if (m_StateIoBuffer != 0)
	{
		delete[] m_StateIoBuffer;
	}
	m_StateIoBuffer = new_buffer;
	m_StateIoBufferCapacity = min_capacity;
	return TRUE;
}

boolean CComboKernel::EnsureBackendPresentBuffer(unsigned min_pixels)
{
	static const unsigned kPresentBufferMaxPixels = kBlitMapMaxAxis * kBlitMapMaxAxis;

	if (min_pixels == 0u || min_pixels > kPresentBufferMaxPixels)
	{
		return FALSE;
	}
	if (m_BackendPresentBuffer != 0 && m_BackendPresentBufferPixels >= min_pixels)
	{
		return TRUE;
	}

	u16 *new_buffer = new u16[min_pixels];
	if (new_buffer == 0)
	{
		return FALSE;
	}
	if (m_BackendPresentBuffer != 0)
	{
		delete[] m_BackendPresentBuffer;
	}
	m_BackendPresentBuffer = new_buffer;
	m_BackendPresentBufferPixels = min_pixels;
	return TRUE;
}

boolean CComboKernel::EnsureStateStorageDirectory(void)
{
	if (!m_SettingsStorageReady)
	{
		return FALSE;
	}

	FILINFO file_info;
	const FRESULT stat_result = f_stat(kStateDirPath, &file_info);
	if (stat_result == FR_OK)
	{
		return ((file_info.fattrib & AM_DIR) != 0u) ? TRUE : FALSE;
	}
	if (stat_result != FR_NO_FILE)
	{
		UpdateLoadDiagTelemetry(7190u + (ClampFatFsCode(stat_result) % 10u));
		LogSdOpResult(m_Logger, "STATE:STATDIR", stat_result, kStateDirPath, TRUE);
		return FALSE;
	}

	const FRESULT mkdir_result = f_mkdir(kStateDirPath);
	if (!(mkdir_result == FR_OK || mkdir_result == FR_EXIST))
	{
		UpdateLoadDiagTelemetry(7290u + (ClampFatFsCode(mkdir_result) % 10u));
		LogSdOpResult(m_Logger, "STATE:MKDIR", mkdir_result, kStateDirPath, TRUE);
	}
	return (mkdir_result == FR_OK || mkdir_result == FR_EXIST) ? TRUE : FALSE;
}

void CComboKernel::SaveEmulatorStateToStorage(void)
{
	UpdateSettingsSaveTelemetry(32u, 0u, 0u);
#if !MSXBARE_ENABLE_FMSX
	UpdateSettingsSaveTelemetry(93u, 1u, 0u);
	m_Logger.Write(FromKernel, LogWarning, "Save State indisponivel neste build");
	return;
#else
	if (!m_BackendReady)
	{
		UpdateSettingsSaveTelemetry(93u, 2u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Save State falhou: runtime backend inativo");
		return;
	}
	if (!EnsureStateStorageDirectory())
	{
		UpdateSettingsSaveTelemetry(93u, 3u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Save State falhou: armazenamento SD indisponivel");
		return;
	}
	unsigned state_bytes = 0u;
	static const unsigned kTryCaps[] = { 512u * 1024u, 1024u * 1024u, 1536u * 1024u, 2u * 1024u * 1024u };
	boolean serialized = FALSE;
	for (unsigned i = 0u; i < (unsigned) (sizeof(kTryCaps) / sizeof(kTryCaps[0])); ++i)
	{
		const unsigned cap = kTryCaps[i];
		if (!EnsureStateIoBuffer(cap))
		{
			continue;
		}
		if (backend_runtime_save_state(m_StateIoBuffer, cap, &state_bytes) && state_bytes > 0u)
		{
			serialized = TRUE;
			break;
		}
	}
	if (!serialized)
	{
		UpdateSettingsSaveTelemetry(93u, 5u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Save State falhou: serializacao do estado");
		return;
	}
	UpdateSettingsSaveTelemetry(33u, state_bytes > 999u ? 999u : state_bytes, 0u);

	FIL file;
	const FRESULT open_result = f_open(&file, kStatePath, FA_WRITE | FA_CREATE_ALWAYS);
	if (open_result != FR_OK)
	{
		UpdateSettingsSaveTelemetry(93u, 6u, open_result);
		UpdateLoadDiagTelemetry(7390u + (ClampFatFsCode(open_result) % 10u));
		LogSdOpResult(m_Logger, "STATE:OPENW", open_result, kStatePath, TRUE);
		m_Logger.Write(FromKernel, LogWarning, "Save State falhou: nao foi possivel criar arquivo");
		return;
	}

	UINT bytes_written = 0u;
	const FRESULT write_result = f_write(&file, m_StateIoBuffer, state_bytes, &bytes_written);
	const FRESULT close_result = f_close(&file);
	if (write_result == FR_OK && close_result == FR_OK && bytes_written == state_bytes)
	{
		UpdateSettingsSaveTelemetry(34u, bytes_written > 999u ? 999u : bytes_written, 0u);
		CString line;
		line.Format("Save State OK: %u bytes em %s", state_bytes, kStatePath);
		m_Logger.Write(FromKernel, LogNotice, line);
	}
	else
	{
		UpdateSettingsSaveTelemetry(93u, 7u, bytes_written > 999u ? 999u : bytes_written);
		if (write_result != FR_OK)
		{
			UpdateLoadDiagTelemetry(7490u + (ClampFatFsCode(write_result) % 10u));
			LogSdOpResult(m_Logger, "STATE:WRITE", write_result, kStatePath, TRUE);
		}
		else if (close_result != FR_OK)
		{
			UpdateLoadDiagTelemetry(7590u + (ClampFatFsCode(close_result) % 10u));
			LogSdOpResult(m_Logger, "STATE:CLOSE", close_result, kStatePath, TRUE);
		}
		m_Logger.Write(FromKernel, LogWarning, "Save State falhou: erro de escrita no SD");
	}
#endif
}

void CComboKernel::LoadEmulatorStateFromStorage(void)
{
	UpdateSettingsSaveTelemetry(42u, 0u, 0u);
#if !MSXBARE_ENABLE_FMSX
	UpdateSettingsSaveTelemetry(94u, 1u, 0u);
	m_Logger.Write(FromKernel, LogWarning, "Load State indisponivel neste build");
	return;
#else
	if (!m_BackendReady)
	{
		UpdateSettingsSaveTelemetry(94u, 2u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: runtime backend inativo");
		return;
	}
	if (!m_SettingsStorageReady)
	{
		UpdateSettingsSaveTelemetry(94u, 3u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: armazenamento SD indisponivel");
		return;
	}

	FILINFO file_info;
	const FRESULT stat_result = f_stat(kStatePath, &file_info);
	if (stat_result == FR_NO_FILE)
	{
		UpdateSettingsSaveTelemetry(94u, 5u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: arquivo inexistente");
		return;
	}
	if (stat_result != FR_OK)
	{
		UpdateSettingsSaveTelemetry(94u, 6u, stat_result);
		UpdateLoadDiagTelemetry(8190u + (ClampFatFsCode(stat_result) % 10u));
		LogSdOpResult(m_Logger, "STATE:STAT", stat_result, kStatePath, TRUE);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: erro ao consultar arquivo");
		return;
	}

	FIL file;
	const FRESULT open_result = f_open(&file, kStatePath, FA_READ);
	if (open_result != FR_OK)
	{
		UpdateSettingsSaveTelemetry(94u, 7u, open_result);
		UpdateLoadDiagTelemetry(8290u + (ClampFatFsCode(open_result) % 10u));
		LogSdOpResult(m_Logger, "STATE:OPENR", open_result, kStatePath, TRUE);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: nao foi possivel abrir arquivo");
		return;
	}

	const unsigned file_size = (unsigned) f_size(&file);
	if (file_size == 0u || file_size > kStateBufferMaxBytes)
	{
		(void) f_close(&file);
		UpdateSettingsSaveTelemetry(94u, 8u, file_size > 999u ? 999u : file_size);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: tamanho invalido");
		return;
	}
	if (!EnsureStateIoBuffer(file_size))
	{
		(void) f_close(&file);
		UpdateSettingsSaveTelemetry(94u, 4u, file_size > 999u ? 999u : file_size);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: memoria insuficiente");
		return;
	}
	UpdateSettingsSaveTelemetry(43u, file_size > 999u ? 999u : file_size, 0u);

	UINT bytes_read = 0u;
	const FRESULT read_result = f_read(&file, m_StateIoBuffer, file_size, &bytes_read);
	const FRESULT close_result = f_close(&file);
	if (read_result != FR_OK || close_result != FR_OK || bytes_read != file_size)
	{
		UpdateSettingsSaveTelemetry(94u, 9u, bytes_read > 999u ? 999u : bytes_read);
		if (read_result != FR_OK)
		{
			UpdateLoadDiagTelemetry(8390u + (ClampFatFsCode(read_result) % 10u));
			LogSdOpResult(m_Logger, "STATE:READ", read_result, kStatePath, TRUE);
		}
		else if (close_result != FR_OK)
		{
			UpdateLoadDiagTelemetry(8490u + (ClampFatFsCode(close_result) % 10u));
			LogSdOpResult(m_Logger, "STATE:CLOSE", close_result, kStatePath, TRUE);
		}
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: erro de leitura no SD");
		return;
	}

	if (!backend_runtime_load_state(m_StateIoBuffer, file_size))
	{
		UpdateSettingsSaveTelemetry(94u, 10u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: arquivo invalido/corrompido");
		return;
	}

		PushKeyboardStateToRuntime(TRUE);
		backend_runtime_input_push_joystick(ResolveRuntimeJoystickBits());
		if (backend_runtime_step_frame())
		{
			const BackendRuntimeStatus runtime_status = backend_runtime_get_status();
			m_BackendFrames = runtime_status.frames;
			m_BackendLastError = runtime_status.last_error;
			m_BackendLastPC = runtime_status.last_pc;
			BlitBackendFrame(TRUE);
			/* Force a fresh pause-background snapshot from the just-loaded state. */
			m_PauseNeedsBackgroundRedraw = TRUE;
			m_PauseNeedsFullViewportClear = FALSE;
		}
	else
	{
		m_PauseNeedsBackgroundRedraw = TRUE;
		m_PauseNeedsFullViewportClear = FALSE;
	}
	m_PauseMenu.RequestRedraw();
	UpdateSettingsSaveTelemetry(44u, file_size > 999u ? 999u : file_size, 0u);
	CString line;
	line.Format("Load State OK: %u bytes de %s", file_size, kStatePath);
	m_Logger.Write(FromKernel, LogNotice, line);
#endif
}

void CComboKernel::HandleMenuAction(TComboMenuAction action)
{
	switch (action)
	{
	case ComboMenuActionCartridgeA:
	case ComboMenuActionCartridgeB:
#if !MSXBARE_FEAT_LOAD_ROM
		m_Logger.Write(FromKernel, LogNotice, "Load ROM indisponivel neste build");
		break;
#else
	#if MSXBARE_ENABLE_FMSX
		{
			unsigned browser_slot = 0u;
			char browser_path[192];
			browser_path[0] = '\0';
			if (m_PauseMenu.ConsumePendingRomBrowserOpen(&browser_slot, browser_path, sizeof(browser_path)))
			{
				m_PauseMenu.OpenFileBrowser((unsigned) ComboFileBrowserModeRom, browser_slot, browser_path);
				UpdateLoadDiagTelemetry(2103u); /* ROM browser open deferred to main loop */
				break;
			}
		}
		if (m_BackendReady)
		{
			unsigned slot_index = 0u;
			char rom_path[192];
			rom_path[0] = '\0';
			if (m_PauseMenu.ConsumePendingRomSelection(&slot_index, rom_path, sizeof(rom_path)))
			{
				UpdateLoadDiagTelemetry(2001u); /* menu consumed selection */
				if (slot_index > 1u)
				{
					slot_index = (action == ComboMenuActionCartridgeB) ? 1u : 0u;
				}
				if (slot_index == 1u && m_SccDualCartEnabled)
				{
					UpdateLoadDiagTelemetry(9008u); /* slot B reserved by Konami SCC+ DUAL */
					m_Logger.Write(FromKernel, LogWarning, "Load ROM bloqueado: SLOT2 reservado por Konami SCC+ DUAL");
					break;
				}
				if (!backend_runtime_set_cartridge_path(slot_index, rom_path))
				{
					UpdateLoadDiagTelemetry(9001u); /* set_cartridge_path failed */
					m_Logger.Write(FromKernel, LogWarning, "Load ROM falhou: caminho invalido");
					break;
				}
				UpdateLoadDiagTelemetry(2002u); /* path set */
				if (rom_path[0] == '\0')
				{
					if (backend_runtime_unload_cartridge(slot_index))
					{
						UpdateLoadDiagTelemetry(2005u); /* unload cart ok */
						m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled, backend_runtime_get_scc_dual_cart_available());
						CString line;
						line.Format("Unload ROM: SLOT%u", slot_index + 1u);
						m_Logger.Write(FromKernel, LogNotice, line);
					}
					else
					{
						UpdateLoadDiagTelemetry(9007u); /* unload cart fail */
						m_Logger.Write(FromKernel, LogWarning, "Unload ROM falhou");
					}
					break;
				}

					const boolean load_ok = PerformMenuHardReset(2003u, 2004u, 9004u);
					if (load_ok)
					{
					CString line;
					line.Format("Load ROM: SLOT%u <= %s", slot_index + 1u, rom_path);
					m_Logger.Write(FromKernel, LogNotice, line);
				}
					else
					{
						m_Logger.Write(FromKernel, LogWarning, "Load ROM falhou: hard reset");
					}
			}
		}
	#endif
		break;
#endif

	case ComboMenuActionDiskDriveA:
	case ComboMenuActionDiskDriveB:
#if !MSXBARE_FEAT_LOAD_DISK
		m_Logger.Write(FromKernel, LogNotice, "Load Disk indisponivel neste build");
		break;
#else
	#if MSXBARE_ENABLE_FMSX
		{
			unsigned browser_drive = 0u;
			char browser_path[192];
			browser_path[0] = '\0';
			if (m_PauseMenu.ConsumePendingDiskBrowserOpen(&browser_drive, browser_path, sizeof(browser_path)))
			{
				m_PauseMenu.OpenFileBrowser((unsigned) ComboFileBrowserModeDisk, browser_drive, browser_path);
				UpdateLoadDiagTelemetry(3103u); /* DSK browser open deferred to main loop */
				break;
			}
		}
		if (m_BackendReady)
		{
			unsigned drive_index = 0u;
			char disk_path[192];
			disk_path[0] = '\0';
			if (m_PauseMenu.ConsumePendingDiskSelection(&drive_index, disk_path, sizeof(disk_path)))
			{
				UpdateLoadDiagTelemetry(3001u); /* menu consumed disk selection */
				if (drive_index > 1u)
				{
					drive_index = (action == ComboMenuActionDiskDriveB) ? 1u : 0u;
				}
				if (disk_path[0] == '\0')
				{
					UpdateLoadDiagTelemetry(3002u); /* unload requested */
					if (backend_runtime_unload_disk(drive_index))
					{
						UpdateLoadDiagTelemetry(3005u); /* unload disk ok */
						CString line;
						line.Format("Unload DSK: DRIVE%u", drive_index + 1u);
						m_Logger.Write(FromKernel, LogNotice, line);
					}
					else
					{
						UpdateLoadDiagTelemetry(9008u); /* unload disk fail */
						m_Logger.Write(FromKernel, LogWarning, "Unload DSK falhou");
					}
					break;
				}
				UpdateLoadDiagTelemetry(3002u); /* load requested */
				const boolean load_ok = backend_runtime_media_load_disk(drive_index, disk_path);
				if (load_ok)
				{
					UpdateLoadDiagTelemetry(3004u); /* hot swap ok */
					CString line;
					line.Format("Load DSK: DRIVE%u <= %s", drive_index + 1u, disk_path);
					m_Logger.Write(FromKernel, LogNotice, line);
				}
				else
				{
					UpdateLoadDiagTelemetry(9006u); /* hot swap failed */
					m_Logger.Write(FromKernel, LogWarning, "Load DSK falhou: hot swap");
				}
			}
		}
	#endif
		break;
#endif

	case ComboMenuActionGameMaster:
#if !MSXBARE_ENABLE_FMSX
		m_Logger.Write(FromKernel, LogNotice, "Game Codes indisponivel neste build");
		break;
#else
		{
			backend_cheat_catalog_reset(&m_GameMasterCatalog);
			m_PauseMenu.OpenGameMaster(&m_GameMasterCatalog, (unsigned) GameMasterLoadOk, 0u);
			m_Logger.Write(FromKernel, LogNotice, "Game Codes aberto: SD:/cheats");
		}
		break;
#endif

	case ComboMenuActionApplyGameMasterCheat:
#if !MSXBARE_ENABLE_FMSX
		break;
#else
		if (m_BackendReady)
		{
			unsigned game_index = 0u;
			unsigned cheat_index = 0u;
			boolean has_value_override = FALSE;
			uint16_t value_override = 0u;
			if (m_PauseMenu.ConsumePendingGameMasterCheat(&game_index, &cheat_index, &has_value_override, &value_override)
				&& game_index < (unsigned) m_GameMasterCatalog.game_count
				&& cheat_index < (unsigned) m_GameMasterCatalog.cheat_count)
			{
				const BackendCheatGame *game = &m_GameMasterCatalog.games[game_index];
				const BackendCheat *cheat = &m_GameMasterCatalog.cheats[cheat_index];
				boolean applied = FALSE;
				CString line;

				if (cheat_index >= (unsigned) game->cheat_first
					&& cheat_index < (unsigned) game->cheat_first + (unsigned) game->cheat_count
					&& cheat->poke_count > 0u
					&& cheat->poke_first + cheat->poke_count <= (unsigned) m_GameMasterCatalog.poke_count)
				{
					const boolean was_active = backend_runtime_is_game_master_cheat_active(
						&m_GameMasterCatalog.pokes[cheat->poke_first],
						(unsigned) cheat->poke_count);
					line.Format("GM APPLY begin game=%s cheat=%s pokes=%u",
					            game->title,
					            cheat->title,
					            (unsigned) cheat->poke_count);
					m_Logger.Write(FromKernel, LogNotice, line);

					for (unsigned i = 0u; i < (unsigned) cheat->poke_count; ++i)
					{
						const BackendCheatPoke *poke = &m_GameMasterCatalog.pokes[cheat->poke_first + i];
						if (poke->size_bits == 16u)
						{
							uint16_t before16 = 0u;
							(void) backend_runtime_peek16(poke->address, &before16);
							line.Format("GM APPLY pre  A:%04X S:%u V:%04X R:%04X",
							            (unsigned) poke->address,
							            (unsigned) poke->size_bits,
							            (unsigned) poke->value,
							            (unsigned) before16);
						}
						else
						{
							uint8_t before8 = 0u;
							(void) backend_runtime_peek8(poke->address, &before8);
							line.Format("GM APPLY pre  A:%04X S:%u V:%02X R:%02X",
							            (unsigned) poke->address,
							            (unsigned) poke->size_bits,
							            (unsigned) (poke->value & 0x00FFu),
							            (unsigned) before8);
						}
						m_Logger.Write(FromKernel, LogNotice, line);
					}

					if (has_value_override)
					{
						line.Format("GM APPLY set  game=%s cheat=%s value=%u",
						            game->title,
						            cheat->title,
						            (unsigned) value_override);
						m_Logger.Write(FromKernel, LogNotice, line);
						applied = backend_runtime_set_game_master_cheat_value(
							&m_GameMasterCatalog.pokes[cheat->poke_first],
							(unsigned) cheat->poke_count,
							value_override);
					}
					else
					{
						applied = backend_runtime_set_game_master_cheat_enabled(
							&m_GameMasterCatalog.pokes[cheat->poke_first],
							(unsigned) cheat->poke_count,
							was_active ? FALSE : TRUE);
					}

					for (unsigned i = 0u; i < (unsigned) cheat->poke_count; ++i)
					{
						const BackendCheatPoke *poke = &m_GameMasterCatalog.pokes[cheat->poke_first + i];
						if (poke->size_bits == 16u)
						{
							uint16_t after16 = 0u;
							(void) backend_runtime_peek16(poke->address, &after16);
							line.Format("GM APPLY post A:%04X S:%u V:%04X R:%04X",
							            (unsigned) poke->address,
							            (unsigned) poke->size_bits,
							            (unsigned) poke->value,
							            (unsigned) after16);
						}
						else
						{
							uint8_t after8 = 0u;
							(void) backend_runtime_peek8(poke->address, &after8);
							line.Format("GM APPLY post A:%04X S:%u V:%02X R:%02X",
							            (unsigned) poke->address,
							            (unsigned) poke->size_bits,
							            (unsigned) (poke->value & 0x00FFu),
							            (unsigned) after8);
						}
						m_Logger.Write(FromKernel, LogNotice, line);
					}
				}

				line.Format("Game Codes: %s [%s]",
				            cheat->title,
				            applied ? "toggled" : "failed");
				m_Logger.Write(FromKernel, applied ? LogNotice : LogWarning, line);
			}
		}
		break;
#endif

	case ComboMenuActionMsxBasic:
	#if MSXBARE_ENABLE_FMSX
		if (m_BackendReady)
		{
			ExitPauseForBackendAction();
			if (backend_runtime_reboot_basic())
			{
				ResetEmulationRuntimeState();
				m_Logger.Write(FromKernel, LogNotice, "Menu: reboot to MSX BASIC");
			}
			else
			{
				m_Logger.Write(FromKernel, LogWarning, "Menu: failed to reboot to MSX BASIC");
			}
		}
	#endif
		break;

	case ComboMenuActionReset:
	#if MSXBARE_ENABLE_FMSX
		if (m_BackendReady)
		{
			ExitPauseForBackendAction();
			const boolean reset_ok = PerformMenuHardReset(3501u, 3502u, 9502u);
			if (reset_ok)
			{
				m_Logger.Write(FromKernel, LogNotice, "Menu: hard reset emulator");
			}
			else
			{
				m_Logger.Write(FromKernel, LogWarning, "Menu: hard reset failed");
			}
		}
	#endif
		break;

	case ComboMenuActionOverscanChanged:
		m_OverscanPercent = m_PauseMenu.GetScalePercent();
		m_ScaleMaxFitEnabled = FALSE;
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		{
			const unsigned effective_scale = ComputeEffectiveViewportScalePercent(
				m_OverscanPercent,
				ComputeViewportUiMaxScalePercent(m_Screen.GetHeight()),
				m_Screen.GetHeight(),
				m_DebugOverlayMode);
			backend_runtime_set_overscan(EffectiveOverscanEnabled(effective_scale));
		}
		/* Scale changes can shrink/grow viewport; force deterministic full redraw + fresh snapshot. */
		if (m_EmulationPaused && m_BackendReady)
		{
			m_PauseNeedsBackgroundRedraw = TRUE;
			m_PauseNeedsFullViewportClear = TRUE;
		}
		m_ForceViewportFullClearNextFrame = TRUE;
	#endif
		{
			CString line;
			if (ScalePercentIsNone(m_OverscanPercent))
			{
				line.Format("Settings: Scale 1x");
			}
			else
			{
				line.Format("Settings: Scale %ux", ScaleFactorFromPercent(m_OverscanPercent));
			}
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleResolution:
		m_ResolutionMode = (m_ResolutionMode >= kResolutionMode768) ? kResolutionModeAuto : (m_ResolutionMode + 1u);
		m_PauseMenu.SetResolutionMode(m_ResolutionMode);
		RefreshSettingsUiAfterAction();
		break;

	case ComboMenuActionCycleResolutionPrev:
		m_ResolutionMode = (m_ResolutionMode == kResolutionModeAuto) ? kResolutionMode768 : (m_ResolutionMode - 1u);
		m_PauseMenu.SetResolutionMode(m_ResolutionMode);
		RefreshSettingsUiAfterAction();
		break;

	case ComboMenuActionCycleLanguage:
		m_Language = (m_Language >= ComboLanguageES) ? ComboLanguagePT : (m_Language + 1u);
		m_PauseMenu.SetLanguage(m_Language);
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Language %s", combo_locale_language_code(m_Language));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleLanguagePrev:
		m_Language = (m_Language == ComboLanguagePT) ? ComboLanguageES : (m_Language - 1u);
		m_PauseMenu.SetLanguage(m_Language);
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Language %s", combo_locale_language_code(m_Language));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleScanlines:
		m_ScanlineMode = (m_ScanlineMode == kScanlineModeOff) ? kScanlineModeLcd : kScanlineModeOff;
		m_PauseMenu.SetScanlineMode(m_ScanlineMode);
		RefreshSettingsUiAfterAction();
		if (m_ScanlineMode == kScanlineModeOff)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines OFF");
		}
		else
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines ON");
		}
		break;

	case ComboMenuActionCycleScanlinesPrev:
		m_ScanlineMode = (m_ScanlineMode == kScanlineModeOff) ? kScanlineModeLcd : kScanlineModeOff;
		m_PauseMenu.SetScanlineMode(m_ScanlineMode);
		RefreshSettingsUiAfterAction();
		if (m_ScanlineMode == kScanlineModeOff)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines OFF");
		}
		else
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines ON");
		}
		break;

	case ComboMenuActionCycleRefreshRate:
#if !MSXBARE_ENABLE_DEBUG_OVERLAY
		m_Logger.Write(FromKernel, LogNotice, "Settings: Refresh indisponivel neste build");
		break;
#else
		m_RefreshRateHz = (m_RefreshRateHz == 50u) ? 60u : 50u;
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_debug_force_refresh_hz(m_RefreshRateHz);
		m_RefreshRateHz = ClampRefreshRateHz(backend_runtime_get_refresh_hz());
	#endif
		m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
		m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
		m_FramePacingResetPending = TRUE;
		RefreshSettingsUiAfterAction();
		m_Logger.Write(FromKernel, LogNotice, m_RefreshRateHz == 50u ? "Settings: Refresh PAL" : "Settings: Refresh NTSC");
		break;
#endif

	case ComboMenuActionCycleRefreshRatePrev:
#if !MSXBARE_ENABLE_DEBUG_OVERLAY
		m_Logger.Write(FromKernel, LogNotice, "Settings: Refresh indisponivel neste build");
		break;
#else
		m_RefreshRateHz = (m_RefreshRateHz == 50u) ? 60u : 50u;
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_debug_force_refresh_hz(m_RefreshRateHz);
		m_RefreshRateHz = ClampRefreshRateHz(backend_runtime_get_refresh_hz());
	#endif
		m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
		m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
		m_FramePacingResetPending = TRUE;
		RefreshSettingsUiAfterAction();
		m_Logger.Write(FromKernel, LogNotice, m_RefreshRateHz == 50u ? "Settings: Refresh PAL" : "Settings: Refresh NTSC");
		break;
#endif

	case ComboMenuActionToggleDiskRom:
#if !MSXBARE_FEAT_DISK_ROM
		m_Logger.Write(FromKernel, LogNotice, "Disk ROM indisponivel neste build");
		break;
#else
		m_DiskRomEnabled = m_DiskRomEnabled ? FALSE : TRUE;
		m_PauseMenu.SetDiskRomEnabled(m_DiskRomEnabled);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	#endif
		m_Logger.Write(FromKernel, LogNotice, m_DiskRomEnabled ? "Settings: Disk ROM ON" : "Settings: Disk ROM OFF");
		break;
#endif

	case ComboMenuActionToggleKanjiRom:
#if MSXBARE_ENABLE_FMSX
		if (!backend_runtime_get_kanji_rom_available())
		{
			SyncKanjiRomStateFromRuntime();
			RefreshSettingsUiAfterAction();
			m_Logger.Write(FromKernel, LogNotice, "Settings: Kanji ROM indisponivel");
			break;
		}
#endif
		m_KanjiRomEnabled = m_KanjiRomEnabled ? FALSE : TRUE;
		RefreshSettingsUiAfterAction();
#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
		SyncKanjiRomStateFromRuntime();
#else
		m_PauseMenu.SetKanjiRomEnabled(m_KanjiRomEnabled);
		m_PauseMenu.SetKanjiRomAvailable(m_KanjiRomAvailable);
#endif
		m_Logger.Write(FromKernel, LogNotice, m_KanjiRomEnabled ? "Settings: Kanji ROM ON" : "Settings: Kanji ROM OFF");
		break;

	case ComboMenuActionCycleBootMode:
#if MSXBARE_ONE_ROM_MODE || MSXBARE_BOOT_MODE_LOCKED
		m_BootMode = kBootModeGame;
#if MSXBARE_BOOT_MODE_LOCKED && !MSXBARE_ONE_ROM_MODE
		m_BootMode = (MSXBARE_BOOT_MODE_DEFAULT_ENUM <= kBootModeGame) ? MSXBARE_BOOT_MODE_DEFAULT_ENUM : kBootModeNorm;
#endif
		m_PauseMenu.SetBootMode(m_BootMode);
		RefreshSettingsUiAfterAction();
#if MSXBARE_ONE_ROM_MODE
		m_Logger.Write(FromKernel, LogNotice, "Settings: Boot Mode fixo em GAME (One ROM Mode)");
#else
		{
			CString line;
			line.Format("Settings: Boot Mode fixo em %s (build)", BootModeLabelFromMode(m_BootMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
#endif
		break;
#else
		m_BootMode = (m_BootMode + 1u) % 3u;
		m_PauseMenu.SetBootMode(m_BootMode);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_boot_mode(m_BootMode);
	#endif
		{
			CString line;
			line.Format("Settings: Boot Mode %s", BootModeLabelFromMode(m_BootMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;
#endif

	case ComboMenuActionCycleBootModePrev:
#if MSXBARE_ONE_ROM_MODE || MSXBARE_BOOT_MODE_LOCKED
		m_BootMode = kBootModeGame;
#if MSXBARE_BOOT_MODE_LOCKED && !MSXBARE_ONE_ROM_MODE
		m_BootMode = (MSXBARE_BOOT_MODE_DEFAULT_ENUM <= kBootModeGame) ? MSXBARE_BOOT_MODE_DEFAULT_ENUM : kBootModeNorm;
#endif
		m_PauseMenu.SetBootMode(m_BootMode);
		RefreshSettingsUiAfterAction();
#if MSXBARE_ONE_ROM_MODE
		m_Logger.Write(FromKernel, LogNotice, "Settings: Boot Mode fixo em GAME (One ROM Mode)");
#else
		{
			CString line;
			line.Format("Settings: Boot Mode fixo em %s (build)", BootModeLabelFromMode(m_BootMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
#endif
		break;
#else
		m_BootMode = (m_BootMode == 0u) ? 2u : (m_BootMode - 1u);
		m_PauseMenu.SetBootMode(m_BootMode);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_boot_mode(m_BootMode);
	#endif
		{
			CString line;
			line.Format("Settings: Boot Mode %s", BootModeLabelFromMode(m_BootMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;
#endif

	case ComboMenuActionCycleMachine:
		{
			m_MachineProfile = CycleMachineProfileForBuild(m_MachineProfile, FALSE);
		}
		m_PauseMenu.SetMachineProfile(m_MachineProfile);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		ApplyRuntimeSettingsToBackend();
	#endif
		{
			CString line;
			line.Format("Settings: Machine %s", MachineLabelFromProfile(m_MachineProfile));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleMachinePrev:
		{
			m_MachineProfile = CycleMachineProfileForBuild(m_MachineProfile, TRUE);
		}
		m_PauseMenu.SetMachineProfile(m_MachineProfile);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		ApplyRuntimeSettingsToBackend();
	#endif
		{
			CString line;
			line.Format("Settings: Machine %s", MachineLabelFromProfile(m_MachineProfile));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleRamMapper:
		if (IsMsx2FamilyProfile(m_MachineProfile))
		{
			m_RamMapperKb = CycleRamMapperKb(m_RamMapperKb, FALSE);
			m_PauseMenu.SetRamMapperKb(m_RamMapperKb);
			RefreshSettingsUiAfterAction();
		#if MSXBARE_ENABLE_FMSX
			backend_runtime_set_rammapper_kb(m_RamMapperKb);
		#endif
		}
		break;

	case ComboMenuActionCycleRamMapperPrev:
		if (IsMsx2FamilyProfile(m_MachineProfile))
		{
			m_RamMapperKb = CycleRamMapperKb(m_RamMapperKb, TRUE);
			m_PauseMenu.SetRamMapperKb(m_RamMapperKb);
			RefreshSettingsUiAfterAction();
		#if MSXBARE_ENABLE_FMSX
			backend_runtime_set_rammapper_kb(m_RamMapperKb);
		#endif
		}
		break;

	case ComboMenuActionCycleMegaRam:
#if !MSXBARE_FEAT_MEGARAM
		m_Logger.Write(FromKernel, LogNotice, "MegaRAM indisponivel neste build");
		break;
#else
		m_MegaRamKb = CycleMegaRamKb(m_MegaRamKb, FALSE);
		m_PauseMenu.SetMegaRamKb(m_MegaRamKb);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_megaram_kb(m_MegaRamKb);
	#endif
		break;
#endif

	case ComboMenuActionCycleMegaRamPrev:
#if !MSXBARE_FEAT_MEGARAM
		m_Logger.Write(FromKernel, LogNotice, "MegaRAM indisponivel neste build");
		break;
#else
		m_MegaRamKb = CycleMegaRamKb(m_MegaRamKb, TRUE);
		m_PauseMenu.SetMegaRamKb(m_MegaRamKb);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_megaram_kb(m_MegaRamKb);
	#endif
		break;
#endif

	case ComboMenuActionCycleZ80Turbo:
		m_Z80TurboMode = (m_Z80TurboMode + 1u) % 3u;
		m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	#endif
		{
			CString line;
			line.Format("Settings: Z80 Turbo %u%%", Z80TurboPercentFromMode(m_Z80TurboMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleZ80TurboPrev:
		m_Z80TurboMode = (m_Z80TurboMode == 0u) ? 2u : (m_Z80TurboMode - 1u);
		m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	#endif
		{
			CString line;
			line.Format("Settings: Z80 Turbo %u%%", Z80TurboPercentFromMode(m_Z80TurboMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleRensha:
		m_RenshaMode = (m_RenshaMode >= 3u) ? 0u : (m_RenshaMode + 1u);
		m_RenshaPhase = 0u;
		m_RenshaFireAHeld = FALSE;
		m_PauseMenu.SetRenshaMode(m_RenshaMode);
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Rensha %u", m_RenshaMode);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleRenshaPrev:
		m_RenshaMode = (m_RenshaMode == 0u) ? 3u : (m_RenshaMode - 1u);
		m_RenshaPhase = 0u;
		m_RenshaFireAHeld = FALSE;
		m_PauseMenu.SetRenshaMode(m_RenshaMode);
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Rensha %u", m_RenshaMode);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionApplyJoystickMap:
	{
		u16 joy_codes[CUsbHidGamepad::MapSlotCount];
		m_PauseMenu.GetJoystickMapCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
		m_UsbGamepad.SetMappingCodes(joy_codes, CUsbHidGamepad::MapSlotCount, TRUE);
		m_PauseMenu.SetJoystickMapCodes(joy_codes, CUsbHidGamepad::MapSlotCount);
		RefreshSettingsUiAfterAction();
		m_Logger.Write(FromKernel, LogNotice, "Settings: JOYPAD MAPPING updated");
		break;
	}

	case ComboMenuActionCycleOverlay:
	#if MSXBARE_ENABLE_DEBUG_OVERLAY
		SetDebugOverlayMode(NextDebugOverlayMode(m_DebugOverlayMode));
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Debugger %s", DebugOverlayModeLogLabel(m_DebugOverlayMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
	#else
		m_Logger.Write(FromKernel, LogNotice, "Settings: Debugger indisponivel neste build");
	#endif
		break;

	case ComboMenuActionCycleOverlayPrev:
	#if MSXBARE_ENABLE_DEBUG_OVERLAY
		SetDebugOverlayMode(PrevDebugOverlayMode(m_DebugOverlayMode));
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Debugger %s", DebugOverlayModeLogLabel(m_DebugOverlayMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
	#else
		m_Logger.Write(FromKernel, LogNotice, "Settings: Debugger indisponivel neste build");
	#endif
		break;

	case ComboMenuActionAudioGainChanged:
		m_AudioOutputGainPct = m_PauseMenu.GetAudioGainPercent();
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Audio gain %u (%u%%)",
				AudioGainUiLevelFromPercent(m_AudioOutputGainPct),
				m_AudioOutputGainPct);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionToggleSccCart:
#if !MSXBARE_FEAT_SCC
		m_Logger.Write(FromKernel, LogNotice, "SCC indisponivel neste build");
		break;
#else
	{
		boolean dual_available = TRUE;
	#if MSXBARE_ENABLE_FMSX
		dual_available = backend_runtime_get_scc_dual_cart_available();
	#endif
		if (!m_SccCartEnabled)
		{
			m_SccCartEnabled = TRUE;
			m_SccDualCartEnabled = FALSE;
		}
		else if (!m_SccDualCartEnabled && dual_available)
		{
			m_SccCartEnabled = TRUE;
			m_SccDualCartEnabled = TRUE;
		}
		else
		{
			m_SccCartEnabled = FALSE;
			m_SccDualCartEnabled = FALSE;
		}
		m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
		m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled, dual_available);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_scc_plus_enabled(m_SccCartEnabled);
		if (!backend_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
		{
			m_SccDualCartEnabled = FALSE;
		}
		m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled, backend_runtime_get_scc_dual_cart_available());
	#endif
		if (!m_SccCartEnabled)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Konami SCC+ OFF");
		}
		else if (m_SccDualCartEnabled)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Konami SCC+ DUAL");
		}
		else
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Konami SCC+ ON");
		}
		break;
	}
#endif

	case ComboMenuActionToggleFmMusic:
#if !MSXBARE_FEAT_FMPAC
		m_Logger.Write(FromKernel, LogNotice, "FM-PAC indisponivel neste build");
		break;
#else
		m_FmMusicEnabled = m_FmMusicEnabled ? FALSE : TRUE;
		m_PauseMenu.SetFmMusicEnabled(m_FmMusicEnabled);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		backend_runtime_set_fm_music_enabled(m_FmMusicEnabled);
	#endif
		m_Logger.Write(FromKernel, LogNotice, m_FmMusicEnabled ? "Settings: FM Music ON" : "Settings: FM Music OFF");
		break;
#endif

	case ComboMenuActionSaveState:
		ExitPauseForBackendAction();
		RefreshSettingsUiAfterAction();
		m_StateSavePending = TRUE;
		UpdateSettingsSaveTelemetry(31u, 0u, 0u);
		m_Logger.Write(FromKernel, LogNotice, "Save State queued");
		break;

	case ComboMenuActionLoadState:
		ExitPauseForBackendAction();
		RefreshSettingsUiAfterAction();
		m_StateLoadPending = TRUE;
		UpdateSettingsSaveTelemetry(41u, 0u, 0u);
		m_Logger.Write(FromKernel, LogNotice, "Load State queued");
		break;

	case ComboMenuActionSaveSettings:
		RefreshSettingsUiAfterAction();
		m_SettingsSavePending = TRUE;
		UpdateSettingsSaveTelemetry(8u, 0u, 0u); /* queued */
		m_Logger.Write(FromKernel, LogNotice, "Settings save queued");
		break;

	default:
		break;
	}
}

void CComboKernel::SetDebugOverlayMode(unsigned mode)
{
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	const unsigned old_mode = ClampDebugOverlayMode(m_DebugOverlayMode);
	const unsigned new_mode = ClampDebugOverlayMode(mode);
	m_DebugOverlayMode = new_mode;
	if (old_mode != new_mode)
	{
		ClearPresentationSurfaces();
		if (m_ScreenReady)
		{
			const unsigned screen_width = m_Screen.GetWidth();
			const unsigned screen_height = m_Screen.GetHeight();
			memset(m_DebugOverlayLineLengths, 0, sizeof(m_DebugOverlayLineLengths));
			WriteScreenText("\x1b[2J\x1b[H\x1b[?25l");
			if (screen_width > 0u && screen_height > 0u)
			{
				m_Screen.MarkDirtyRect(0u, 0u, screen_width, screen_height);
				(void) m_Screen.PresentIfDirty(m_DCacheEnabled, TRUE);
			}
		}
		m_PauseMenu.InvalidateViewportSnapshot();
		if (m_EmulationPaused && m_BackendReady)
		{
			m_PauseNeedsBackgroundRedraw = TRUE;
			m_PauseNeedsFullViewportClear = TRUE;
		}
		m_ForceViewportFullClearNextFrame = TRUE;
	}
	m_PauseMenu.SetOverlayMode(m_DebugOverlayMode, TRUE);
	m_PauseMenu.RequestRedraw();
#if MSXBARE_ENABLE_FMSX
	if (m_BackendReady)
	{
		const unsigned effective_scale = ComputeEffectiveViewportScalePercent(
			m_OverscanPercent,
			ComputeViewportUiMaxScalePercent(m_Screen.GetHeight()),
			m_Screen.GetHeight(),
			m_DebugOverlayMode);
		backend_runtime_set_overscan(EffectiveOverscanEnabled(effective_scale));
	}
#endif
	if (m_ScreenReady && m_DebugOverlayUnlocked)
	{
		ClearDebugOverlay();
	}
#else
	(void) mode;
#endif
}

void CComboKernel::SetUartTelemetryEnabled(boolean enabled)
{
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	m_UartTelemetryEnabled = enabled ? TRUE : FALSE;
#else
	(void) enabled;
	m_UartTelemetryEnabled = FALSE;
#endif
	ResetUartPerfTelemetry();
#if MSXBARE_ENABLE_FMSX
	/* UART perf telemetry is intentionally quiesced in this phase. */
	backend_runtime_set_frame_perf_telemetry_enabled(FALSE);
	backend_runtime_reset_audio_mix_debug_window();
#endif
}

void CComboKernel::ClearDebugOverlay(void)
{
#if !MSXBARE_ENABLE_DEBUG_OVERLAY
	return;
#else
	if (!m_ScreenReady)
	{
		return;
	}

	for (unsigned row = 1u; row <= 20u; ++row)
	{
		WriteDebugOverlayLine(row, 0);
	}
	WriteScreenText("\x1b[0m");
#endif
}

void CComboKernel::WriteDebugOverlayLine(unsigned row, const char *text)
{
#if !MSXBARE_ENABLE_DEBUG_OVERLAY
	(void) row;
	(void) text;
	return;
#else
	if (!m_ScreenReady || row == 0u || row > 20u)
	{
		return;
	}

	const unsigned index = row - 1u;
	const unsigned old_len = m_DebugOverlayLineLengths[index];
	const unsigned new_len = text != 0 ? (unsigned) strlen(text) : 0u;

	if (old_len > 0u)
	{
		CString clear;
		clear.Format("\x1b[97m\x1b[49m\x1b[%u;1H%*s", row, (int) old_len, "");
		WriteScreenText(clear);
	}

	if (new_len > 0u)
	{
		CString line;
		line.Format("\x1b[97m\x1b[49m\x1b[%u;1H%s", row, text);
		WriteScreenText(line);
	}

	m_DebugOverlayLineLengths[index] = new_len;
#endif
}

void CComboKernel::WriteScreenText(const char *text)
{
	if (text == 0 || !m_ScreenReady)
	{
		return;
	}

	m_Screen.Write(text, strlen(text));
}

void CComboKernel::SystemThrottledHandler(TSystemThrottledState state, void *param)
{
	if (param == 0)
	{
		return;
	}

	((CComboKernel *) param)->HandleSystemThrottled(state);
}

void CComboKernel::HandleSystemThrottled(TSystemThrottledState state)
{
	CString line;
	line.Format("Throttle event: %s state=0x%08X",
		ThrottleStateLabel(state),
		(unsigned) state);
	m_Logger.Write(FromKernel, LogWarning, line);
	LogCpuClockStatus("THR");
}

void CComboKernel::LogCpuClockStatus(const char *phase)
{
	const unsigned arm_hz = m_CPUThrottle.GetClockRate();
	const unsigned core_hz = CMachineInfo::Get()->GetClockRate(CLOCK_ID_CORE);
	const unsigned temp_c = m_CPUThrottle.GetTemperature();
	const unsigned min_hz = m_CPUThrottle.GetMinClockRate();
	const unsigned max_hz = m_CPUThrottle.GetMaxClockRate();
	CBcmPropertyTags tags;
	TPropertyTagSimple throttled;
	throttled.nValue = 0u;
	const boolean throttled_ok = tags.GetTag(PROPTAG_GET_THROTTLED, &throttled, sizeof throttled, 4);

	CString line;
	line.Format("CLK %s ARM:%u CORE:%u TEMP:%u DYN:%u RNG:%u-%u THR:%08X",
		phase != 0 ? phase : "-",
		arm_hz / 1000000u,
		core_hz / 1000000u,
		temp_c,
		m_CPUThrottle.IsDynamic() ? 1u : 0u,
		min_hz / 1000000u,
		max_hz / 1000000u,
		throttled_ok ? throttled.nValue : 0u);
	m_Logger.Write(FromKernel, LogNotice, line);
}

void CComboKernel::BootTrace(const char *tag)
{
	if (kBootQuiet)
	{
		return;
	}

	if (tag == 0)
	{
		return;
	}

	CString line;
	line.Format("BT:%s", tag);
	m_Logger.Write(FromKernel, LogNotice, line);
}

void CComboKernel::PushKeyboardStateToRuntime(boolean rensha_fire_on)
{
#if MSXBARE_ENABLE_FMSX
	boolean pushed_report = FALSE;
	u8 modifiers = 0u;
	unsigned char raw_keys[6];
	unsigned char pushed_raw[6];

	while (m_UsbKeyboard.ConsumeForRuntime(&modifiers, raw_keys))
	{
		m_RuntimeKeyboardModifiers = modifiers;
		for (unsigned i = 0u; i < 6u; ++i)
		{
			m_RuntimeKeyboardRawKeys[i] = raw_keys[i];
			pushed_raw[i] = raw_keys[i];
		}

		if (!rensha_fire_on)
		{
			for (unsigned i = 0u; i < 6u; ++i)
			{
				if (pushed_raw[i] == 0x2Cu) /* HID SPACE */
				{
					pushed_raw[i] = 0u;
				}
			}
		}

		backend_runtime_input_push_keyboard(modifiers, pushed_raw);
		pushed_report = TRUE;
	}

	if (!pushed_report)
	{
		for (unsigned i = 0u; i < 6u; ++i)
		{
			pushed_raw[i] = m_RuntimeKeyboardRawKeys[i];
		}

		if (!rensha_fire_on)
		{
			for (unsigned i = 0u; i < 6u; ++i)
			{
				if (pushed_raw[i] == 0x2Cu) /* HID SPACE */
				{
					pushed_raw[i] = 0u;
				}
			}
		}

		backend_runtime_input_push_keyboard(m_RuntimeKeyboardModifiers, pushed_raw);
	}
#else
	(void) rensha_fire_on;
#endif
}

u8 CComboKernel::ResolveRuntimeJoystickBits(void) const
{
	u8 bits = (u8) (m_JoyBridgeBits | m_UsbGamepad.GetBridgeBits());

	if ((bits & (kJoyBridgeLeft | kJoyBridgeRight)) == (kJoyBridgeLeft | kJoyBridgeRight))
	{
		bits &= (u8) ~(kJoyBridgeLeft | kJoyBridgeRight);
	}
	if ((bits & (kJoyBridgeUp | kJoyBridgeDown)) == (kJoyBridgeUp | kJoyBridgeDown))
	{
		bits &= (u8) ~(kJoyBridgeUp | kJoyBridgeDown);
	}

	return bits;
}

void CComboKernel::UpdateJoystickFromRaw(unsigned char modifiers, const unsigned char raw_keys[6])
{
	m_RenshaSpaceHeld = FALSE;
	if (raw_keys != 0)
	{
		for (unsigned i = 0u; i < 6u; ++i)
		{
			if (raw_keys[i] == 0x2Cu) /* SPACE */
			{
				m_RenshaSpaceHeld = TRUE;
				break;
			}
		}
	}

	const u64 now_us = CTimer::GetClockTicks64();
	boolean same_report = (m_LastKeyboardModifiers == modifiers) ? TRUE : FALSE;
	for (unsigned i = 0u; same_report && i < 6u; ++i)
	{
		if (m_LastKeyboardRawKeys[i] != raw_keys[i])
		{
			same_report = FALSE;
		}
	}
	if (same_report)
	{
		if (!m_EmulationPaused)
		{
			return;
		}
		/* Guard against over-fast repeats when raw callback and frame poll both fire. */
		if (m_LastMenuInputPollUs != 0u && (now_us - m_LastMenuInputPollUs) < 12000ull)
		{
			return;
		}
	}

	TComboKeyboardInputState key_state;
	ComboDecodeKeyboardRaw(modifiers, raw_keys, &key_state);
	const u8 menu_joy_bits = m_UsbGamepad.GetMenuBits();
	if ((menu_joy_bits & CUsbHidGamepad::MenuBitPause) != 0u)
	{
		key_state.pause_pressed = TRUE;
	}
	if (m_EmulationPaused && !m_PauseMenu.IsCapturingJoystickMap())
	{
		if ((menu_joy_bits & CUsbHidGamepad::MenuBitUp) != 0u)
		{
			key_state.menu_up_pressed = TRUE;
		}
		if ((menu_joy_bits & CUsbHidGamepad::MenuBitDown) != 0u)
		{
			key_state.menu_down_pressed = TRUE;
		}
		if ((menu_joy_bits & CUsbHidGamepad::MenuBitLeft) != 0u)
		{
			key_state.menu_left_pressed = TRUE;
		}
		if ((menu_joy_bits & CUsbHidGamepad::MenuBitRight) != 0u)
		{
			key_state.menu_right_pressed = TRUE;
		}
		if ((menu_joy_bits & CUsbHidGamepad::MenuBitSelect) != 0u)
		{
			key_state.menu_enter_pressed = TRUE;
		}
		if ((menu_joy_bits & CUsbHidGamepad::MenuBitBack) != 0u)
		{
			key_state.menu_back_pressed = TRUE;
		}
	}
	if (same_report)
	{
		/* While paused, keep polling so joystick mapping can capture without a fresh keyboard edge. */
	}

	if (key_state.f1_pressed && !m_LastF12Pressed)
	{
		#if MSXBARE_ENABLE_DEBUG_OVERLAY
		SetDebugOverlayMode(NextDebugOverlayMode(m_DebugOverlayMode));
		{
			CString line;
			line.Format("Overlay %s", DebugOverlayModeLogLabel(m_DebugOverlayMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		#endif
	}
	m_LastF12Pressed = key_state.f1_pressed;

	const boolean f6_edge = (key_state.f6_pressed && !m_LastF6Pressed) ? TRUE : FALSE;
	const boolean f7_edge = (key_state.f7_pressed && !m_LastF7Pressed) ? TRUE : FALSE;
	const boolean f8_edge = (key_state.f8_pressed && !m_LastF8Pressed) ? TRUE : FALSE;
	const boolean fm_gain_up_edge = (key_state.debug_fm_gain_up_pressed && !m_LastFmGainUpPressed) ? TRUE : FALSE;
	const boolean fm_gain_down_edge = (key_state.debug_fm_gain_down_pressed && !m_LastFmGainDownPressed) ? TRUE : FALSE;
	if (f6_edge)
	{
		const boolean muted = backend_runtime_get_audio_layer_muted(1u) ? FALSE : TRUE;
		backend_runtime_set_audio_layer_muted(1u, muted);
	}
	if (f7_edge)
	{
		const boolean muted = backend_runtime_get_audio_layer_muted(2u) ? FALSE : TRUE;
		backend_runtime_set_audio_layer_muted(2u, muted);
	}
	if (f8_edge)
	{
		const boolean muted = backend_runtime_get_audio_layer_muted(3u) ? FALSE : TRUE;
		backend_runtime_set_audio_layer_muted(3u, muted);
	}
	if (fm_gain_up_edge)
	{
		if (m_FmLayerGainPct < 100u)
		{
			m_FmLayerGainPct += 5u;
			if (m_FmLayerGainPct > 100u) m_FmLayerGainPct = 100u;
			backend_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
		}
	}
	if (fm_gain_down_edge)
	{
		if (m_FmLayerGainPct > 0u)
		{
			m_FmLayerGainPct = (m_FmLayerGainPct >= 5u) ? (m_FmLayerGainPct - 5u) : 0u;
			backend_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
		}
	}

	const boolean pause_edge = (key_state.pause_pressed && !m_LastPausePressed) ? TRUE : FALSE;
	const boolean esc_resume_edge =
		(key_state.menu_back_pressed && !m_LastMenuBackPressed && m_EmulationPaused && !m_PauseMenu.IsInSettings()) ? TRUE : FALSE;
	boolean pause_toggled = FALSE;
	if (pause_edge || esc_resume_edge)
	{
		if (m_LastPauseToggleUs == 0u || (now_us - m_LastPauseToggleUs) >= 200000ull)
		{
			m_EmulationPaused = m_EmulationPaused ? FALSE : TRUE;
			if (!m_EmulationPaused)
			{
				m_PauseNeedsBackgroundRedraw = FALSE;
				m_PauseNeedsFullViewportClear = FALSE;
				m_PauseRenderSuppressed = TRUE;
			}
			else
			{
				/* Reset only on pause-enter to avoid one-frame root-layout flash on pause-exit. */
				m_PauseMenu.Reset();
				m_LastPauseWasInSettings = FALSE;
				m_PauseNeedsBackgroundRedraw = TRUE;
				m_PauseNeedsFullViewportClear = FALSE;
				m_PauseRenderSuppressed = FALSE;
			}
			m_Logger.Write(FromKernel, LogNotice, m_EmulationPaused ? "Emulation PAUSED" : "Emulation RESUMED");
			m_LastPauseToggleUs = now_us;
			pause_toggled = TRUE;
		}
	}
	m_LastPausePressed = key_state.pause_pressed;
	m_LastMenuBackPressed = key_state.menu_back_pressed;
	if (pause_toggled)
	{
		/* Do not process menu navigation on the same edge that toggles pause state. */
		m_JoyBridgeBits = key_state.bridge_bits;
		m_JoyMappedBits = (u8) (~key_state.bridge_bits) & ComboKeyboardJoyMask();
		m_LastMenuInputPollUs = now_us;
		m_LastKeyboardModifiers = modifiers;
		for (unsigned i = 0u; i < 6u; ++i)
		{
			m_LastKeyboardRawKeys[i] = raw_keys[i];
		}
		m_LastF6Pressed = key_state.f6_pressed;
		m_LastF7Pressed = key_state.f7_pressed;
		m_LastF8Pressed = key_state.f8_pressed;
		m_LastFmGainUpPressed = key_state.debug_fm_gain_up_pressed;
		m_LastFmGainDownPressed = key_state.debug_fm_gain_down_pressed;
		return;
	}

#if MSXBARE_ENABLE_FMSX
	if (m_EmulationPaused && m_BackendReady)
	{
		const unsigned max_scale = ComputeViewportUiMaxScalePercent(m_Screen.GetHeight());
		m_PauseMenu.SetMaxScalePercent(max_scale);
		m_ScaleMaxFitEnabled = FALSE;
		if (!ScalePercentIsNone(m_OverscanPercent)
			&& m_OverscanPercent > max_scale)
		{
			m_OverscanPercent = max_scale;
			m_PauseMenu.SetScalePercent(m_OverscanPercent);
			m_ForceViewportFullClearNextFrame = TRUE;
		}
	}
#endif

	const TComboMenuAction menu_action = m_PauseMenu.ProcessInput(
		m_EmulationPaused,
		key_state.menu_up_pressed,
		key_state.menu_down_pressed,
		key_state.menu_page_up_pressed,
		key_state.menu_page_down_pressed,
		key_state.menu_left_pressed,
		key_state.menu_right_pressed,
		key_state.menu_enter_pressed,
		key_state.menu_back_pressed,
		key_state.menu_delete_pressed,
		(!same_report ? key_state.menu_jump_letter : '\0'),
		m_UsbGamepad.GetActiveControlCode());
	const boolean now_in_settings = m_PauseMenu.IsInSettings() ? TRUE : FALSE;
	if (m_EmulationPaused && now_in_settings && !m_LastPauseWasInSettings)
	{
		/* Must run in main loop context (never from keyboard callback). */
		m_ResolutionModeLoadPending = TRUE;
	}
	m_LastPauseWasInSettings = now_in_settings;
	const boolean defer_heavy_action =
		(menu_action == ComboMenuActionCartridgeA)
		|| (menu_action == ComboMenuActionCartridgeB)
		|| (menu_action == ComboMenuActionDiskDriveA)
		|| (menu_action == ComboMenuActionDiskDriveB)
		|| (menu_action == ComboMenuActionReset)
		|| (menu_action == ComboMenuActionMsxBasic);
	if (menu_action == ComboMenuActionCartridgeA || menu_action == ComboMenuActionCartridgeB)
	{
		UpdateLoadDiagTelemetry(1991u); /* menu action propagated to kernel */
	}
	else if (menu_action == ComboMenuActionDiskDriveA || menu_action == ComboMenuActionDiskDriveB)
	{
		UpdateLoadDiagTelemetry(2991u); /* disk menu action propagated to kernel */
	}
	const boolean video_affecting_action =
		(menu_action == ComboMenuActionOverscanChanged)
		|| (menu_action == ComboMenuActionCycleScanlines)
		|| (menu_action == ComboMenuActionCycleScanlinesPrev);
	if (m_PauseMenu.ConsumeBackgroundRestoreRequest())
	{
		/* Only viewport-affecting settings trigger fresh snapshot recapture. */
		if (m_EmulationPaused && m_BackendReady && video_affecting_action)
		{
			m_PauseNeedsBackgroundRedraw = TRUE;
			m_PauseNeedsFullViewportClear = TRUE;
		}
		m_PauseMenu.RequestRedraw();
	}
	if (defer_heavy_action)
	{
		/* Heavy media load path runs in main loop to avoid USB callback hard-locks. */
		if (menu_action == ComboMenuActionReset || menu_action == ComboMenuActionMsxBasic)
		{
			/* High-priority actions must not be blocked by stale deferred browser ops. */
			m_PendingMenuAction = (unsigned) menu_action;
		}
		else if (m_PendingMenuAction == (unsigned) ComboMenuActionNone)
		{
			m_PendingMenuAction = (unsigned) menu_action;
		}
	}
	else
	{
		/* Keep settings toggles/cycles immediate so state never gets stale/overwritten. */
		HandleMenuAction(menu_action);
	}

	const boolean menu_key_pressed =
		key_state.menu_up_pressed
		|| key_state.menu_down_pressed
		|| key_state.menu_left_pressed
		|| key_state.menu_right_pressed
		|| key_state.menu_page_up_pressed
		|| key_state.menu_page_down_pressed
		|| key_state.menu_enter_pressed
		|| key_state.menu_delete_pressed
		|| (key_state.menu_jump_letter >= 'A' && key_state.menu_jump_letter <= 'Z');
	const boolean directional_key_pressed =
		key_state.menu_up_pressed
		|| key_state.menu_down_pressed
		|| key_state.menu_left_pressed
		|| key_state.menu_right_pressed;
	const boolean menu_key_event = (menu_key_pressed && !same_report) ? TRUE : FALSE;
	if (m_EmulationPaused && m_BackendReady
		&& (video_affecting_action || directional_key_pressed))
	{
		m_PauseNeedsBackgroundRedraw = TRUE;
		/* Full clear only for video parameter changes; directional keys need fresh snapshot but no full clear. */
		m_PauseNeedsFullViewportClear = video_affecting_action ? TRUE : FALSE;
		m_PauseMenu.RequestRedraw();
	}
	else if (m_EmulationPaused && (menu_key_event || menu_action != ComboMenuActionNone))
	{
		/* For non-video actions, reuse current snapshot and redraw only the menu. */
		m_PauseMenu.RequestRedraw();
	}

	m_JoyBridgeBits = key_state.bridge_bits;
	m_JoyMappedBits = (u8) (~key_state.bridge_bits) & ComboKeyboardJoyMask();
	m_LastMenuInputPollUs = now_us;
	m_LastKeyboardModifiers = modifiers;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		m_LastKeyboardRawKeys[i] = raw_keys[i];
	}
	m_LastF6Pressed = key_state.f6_pressed;
	m_LastF7Pressed = key_state.f7_pressed;
	m_LastF8Pressed = key_state.f8_pressed;
	m_LastFmGainUpPressed = key_state.debug_fm_gain_up_pressed;
	m_LastFmGainDownPressed = key_state.debug_fm_gain_down_pressed;
}
