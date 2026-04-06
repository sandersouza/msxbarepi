#include "kernel.h"
#include "keyboard_input.h"
#include "combo_locale.h"
#include "viewport_screenshot.h"
#include "emulator_backend.h"
#include "gamemaster_catalog.h"
#include "machine_profile_catalog.h"
#if MSXBARE_ENABLE_FMSX
#include "fmsx_runtime.h"
#include "fmsx_initramfs.h"
#endif

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

static CSerialDevice *g_fmsx_uart_trace_serial = 0;

extern "C" void msxbare_uart_write(const char *text)
{
	if (g_fmsx_uart_trace_serial == 0 || text == 0 || text[0] == '\0')
	{
		return;
	}

	g_fmsx_uart_trace_serial->Write(text, strlen(text));
}

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
static const unsigned kScanlineModeCrt = 2u;
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
static const unsigned kZ80TurboModeSlo = 3u;
static const u8 kJoyBridgeFireA = (u8) (1u << 4);
static const boolean kBootQuiet = TRUE;
/* Rensha modes are expressed in pulses per 10 frames (0.5, 1.0, 1.5). */
static const unsigned kRenshaRateDen = 20u; /* 1/20 pulse per frame unit */
static const unsigned kRgb565LutSize = 65536u;

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

static unsigned ComputePixelScaleMaxPercent(unsigned screen_w, unsigned screen_h,
								unsigned src_w, unsigned src_h)
{
	if (screen_w == 0u || screen_h == 0u || src_w == 0u || src_h == 0u)
	{
		return kScalePercentMin;
	}

	const unsigned max_x = (screen_w * 100u) / src_w;
	const unsigned max_y = (screen_h * 100u) / src_h;
	unsigned max_pct = UMin(max_x, max_y);
	max_pct = (max_pct / kScalePercentStep) * kScalePercentStep;
	if (max_pct < kScalePercentMin) max_pct = kScalePercentMin;
	if (max_pct > kScalePercentHardMax) max_pct = kScalePercentHardMax;
	return max_pct;
}

static unsigned ComputeLogicalSourceWidth(unsigned src_w)
{
	/* MSX hi-res modes (e.g. 512-wide) use narrow pixels on CRT. Use logical width for viewport sizing. */
	return (src_w >= 512u) ? (src_w / 2u) : src_w;
}

static unsigned NormalizeViewportSourceHeight(unsigned src_h)
{
	if (src_h == 0u)
	{
		return 0u;
	}

	if (src_h <= 243u) return 243u;
	if (src_h <= 256u) return 256u;
	if (src_h <= 486u) return 486u;
	if (src_h <= 512u) return 512u;
	return src_h;
}

static unsigned ComputeScaleMaxPercentForCurrentFrame(unsigned screen_w, unsigned screen_h)
{
	const u16 *src_pixels = 0;
	unsigned src_w = 0u;
	unsigned src_h = 0u;
	(void) emulator_backend_video_frame(&src_pixels, &src_w, &src_h);
	(void) src_pixels;

	/*
	 * Boot/game-gate may temporarily hide video frames (width/height = 0).
	 * In that case, keep persisted Scale valid using a stable MSX baseline.
	 */
	if (src_w == 0u || src_h == 0u)
	{
		src_w = 256u;
		src_h = 192u;
	}

	src_h = NormalizeViewportSourceHeight(src_h);
	const unsigned logical_src_w = ComputeLogicalSourceWidth(src_w);
	return ComputePixelScaleMaxPercent(screen_w, screen_h, logical_src_w, src_h);
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
	case kZ80TurboModeSlo:
		return 50u;   /* 1.789772MHz over 3.579545MHz base */
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
	return machine_profile_label(profile);
}

static boolean IsMsx2FamilyProfile(unsigned profile)
{
	return machine_profile_is_msx2_family(profile);
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
	const unsigned count = machine_profile_count();
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
	profile = machine_profile_clamp(profile);
	if (IsMachineProfileSupportedByBuild(profile))
	{
		return profile;
	}
	return FirstSupportedMachineProfile();
}

static unsigned CycleMachineProfileForBuild(unsigned current, boolean reverse)
{
	const unsigned count = machine_profile_count();
	if (count == 0u)
	{
		return 0u;
	}
	current = machine_profile_clamp(current);
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


static u16 *s_DimLut85 = 0;
static boolean s_DimLut85Ready = FALSE;
static const u16 kCrtBlackLift565 = 0x1082u;

static u16 ApplyCrtBlackLevel565(u16 sample)
{
	return sample == 0u ? kCrtBlackLift565 : sample;
}

static const u16 *EnsureCrtDimLutReady(void)
{
	if (s_DimLut85Ready && s_DimLut85 != 0)
	{
		return s_DimLut85;
	}

	if (s_DimLut85 == 0)
	{
		s_DimLut85 = new u16[kRgb565LutSize];
	}

	if (s_DimLut85 == 0)
	{
		return 0;
	}

	for (unsigned sample = 0; sample < kRgb565LutSize; ++sample)
	{
		const u16 rgb = ApplyCrtBlackLevel565((u16) sample);
		const unsigned r = (rgb >> 11) & 0x1Fu;
		const unsigned g = (rgb >> 5) & 0x3Fu;
		const unsigned b = rgb & 0x1Fu;
		const unsigned r85 = (r * 85u) / 100u;
		const unsigned g85 = (g * 85u) / 100u;
		const unsigned b85 = (b * 85u) / 100u;
		s_DimLut85[sample] = (u16) ((r85 << 11) | (g85 << 5) | b85);
	}

	s_DimLut85Ready = TRUE;
	return s_DimLut85;
}

static void BlitMappedLineRgb565(u16 *dst_line,
					 const u16 *src_line,
					 const u16 *xmap,
					 unsigned dst_width,
					 unsigned src_x0,
					 unsigned dim_mode,
					 const u16 *dim_lut,
					 boolean crt_black_lift)
{
	if (dst_line == 0 || src_line == 0 || xmap == 0 || dst_width == 0u)
	{
		return;
	}

	unsigned x = 0u;

	/* Align to 32-bit stores when possible (2 pixels per write). */
	if ((((uintptr) dst_line) & 0x2u) != 0u)
	{
		u16 sample = src_line[src_x0 + xmap[0]];
		if (crt_black_lift)
		{
			sample = ApplyCrtBlackLevel565(sample);
		}
		if (dim_mode == 1u)
		{
			sample = (u16) ((sample & 0xF7DEu) >> 1);
		}
		else if (dim_mode == 2u && dim_lut != 0)
		{
			sample = dim_lut[sample];
		}
		dst_line[0] = sample;
		x = 1u;
	}

	for (; x + 1u < dst_width; x += 2u)
	{
		u16 s0 = src_line[src_x0 + xmap[x]];
		u16 s1 = src_line[src_x0 + xmap[x + 1u]];
		if (crt_black_lift)
		{
			s0 = ApplyCrtBlackLevel565(s0);
			s1 = ApplyCrtBlackLevel565(s1);
		}
		if (dim_mode == 1u)
		{
			u32 packed = (u32) s0 | ((u32) s1 << 16);
			packed = (packed & 0xF7DEF7DEu) >> 1;
			*(u32 *) (void *) (dst_line + x) = packed;
			continue;
		}
		else if (dim_mode == 2u)
		{
			s0 = dim_lut[s0];
			s1 = dim_lut[s1];
		}
		*(u32 *) (void *) (dst_line + x) = (u32) s0 | ((u32) s1 << 16);
	}

	if (x < dst_width)
	{
		u16 sample = src_line[src_x0 + xmap[x]];
		if (crt_black_lift)
		{
			sample = ApplyCrtBlackLevel565(sample);
		}
		if (dim_mode == 1u)
		{
			sample = (u16) ((sample & 0xF7DEu) >> 1);
		}
		else if (dim_mode == 2u && dim_lut != 0)
		{
			sample = dim_lut[sample];
		}
		dst_line[x] = sample;
	}
}

static void BlitMappedLineRgb565NoDim(u16 *dst_line,
						  const u16 *src_line,
						  const u16 *xmap,
						  unsigned dst_width,
						  unsigned src_x0,
						  boolean crt_black_lift)
{
	if (dst_line == 0 || src_line == 0 || xmap == 0 || dst_width == 0u)
	{
		return;
	}

	unsigned x = 0u;

	/* Align to 32-bit stores when possible (2 pixels per write). */
	if ((((uintptr) dst_line) & 0x2u) != 0u)
	{
		u16 sample = src_line[src_x0 + xmap[0]];
		dst_line[0] = crt_black_lift ? ApplyCrtBlackLevel565(sample) : sample;
		x = 1u;
	}

	for (; x + 1u < dst_width; x += 2u)
	{
		u16 s0 = src_line[src_x0 + xmap[x]];
		u16 s1 = src_line[src_x0 + xmap[x + 1u]];
		if (crt_black_lift)
		{
			s0 = ApplyCrtBlackLevel565(s0);
			s1 = ApplyCrtBlackLevel565(s1);
		}
		*(u32 *) (void *) (dst_line + x) = (u32) s0 | ((u32) s1 << 16);
	}

	if (x < dst_width)
	{
		u16 sample = src_line[src_x0 + xmap[x]];
		dst_line[x] = crt_black_lift ? ApplyCrtBlackLevel565(sample) : sample;
	}
}

static boolean IsCrtDimmedHalfRow(unsigned dst_y,
						 unsigned src_y,
						 unsigned src_h,
						 unsigned dst_h)
{
	if (src_h == 0u || dst_h == 0u)
	{
		return FALSE;
	}

	const u64 start_num = (u64) src_y * (u64) dst_h;
	const u64 end_num = (u64) (src_y + 1u) * (u64) dst_h;
	const unsigned group_start = (unsigned) ((start_num + (u64) src_h - 1ull) / (u64) src_h);
	const unsigned group_end = (unsigned) ((end_num + (u64) src_h - 1ull) / (u64) src_h);
	const unsigned group_len = (group_end > group_start) ? (group_end - group_start) : 0u;

	if (group_len <= 1u || dst_y < group_start || dst_y >= group_end)
	{
		return FALSE;
	}

	const unsigned dark_start = (group_len + 1u) / 2u;
	return (dst_y - group_start) >= dark_start;
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

static void FillRectScreen(CScreenDevice *screen,
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
	m_DebugOverlayEnabled(MSXBARE_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE),
	m_DebugOverlayUnlocked(TRUE),
	m_ScreenReady(FALSE),
	m_EmulationPaused(FALSE),
	m_LastF12Pressed(FALSE),
	m_LastF6Pressed(FALSE),
	m_LastF7Pressed(FALSE),
	m_LastF8Pressed(FALSE),
	m_LastF10Pressed(FALSE),
	m_LastFmGainUpPressed(FALSE),
	m_LastFmGainDownPressed(FALSE),
	m_LastPauseWasInSettings(FALSE),
	m_LastPausePressed(FALSE),
	m_LastMenuBackPressed(FALSE),
	m_PauseNeedsBackgroundRedraw(FALSE),
	m_PauseNeedsFullViewportClear(FALSE),
	m_ForceViewportFullClearNextFrame(FALSE),
	m_PauseRenderSuppressed(FALSE),
	m_FmsxEnabled(TRUE),
	m_FmsxReady(FALSE),
	m_EmulatorBackendName("fmsx"),
	m_BackendInitFailCode(0u),
	m_FmsxFrames(0),
	m_FmsxLastError(0),
	m_FmsxLastPC(-1),
	m_FmsxPcRepeatCount(0),
	m_FmsxPcLoopLogged(FALSE),
	m_FmsxVideoSeq(0),
	m_FmsxVdpTraceSeq(0u),
	m_FmsxVdpTraceDropped(0u),
	m_FmsxSccTraceSeq(0u),
	m_FmsxSccTraceDropped(0u),
	m_FmsxAudioPortTraceSeq(0u),
	m_FmsxAudioPortTraceDropped(0u),
	m_FmsxKmgTraceSeq(0u),
	m_FmsxKmgTraceDropped(0u),
	m_LastAudioQueueLogUs(0),
	m_LastVideoPacingLogUs(0),
	m_FmsxFpsWindowStartUs(0),
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
	m_FmsxFpsWindowStartFrames(0),
	m_FmsxFpsX10(0),
	m_FramePacingErrAvgUs(0u),
	m_FramePacingErrMaxUs(0u),
	m_FmsxBlankFrames(0),
	m_InitramfsFiles(0),
	m_FmsxBoxX(0),
	m_FmsxBoxY(0),
	m_FmsxBoxW(0),
	m_FmsxBoxH(0),
	m_BlitMapSrcW(0),
	m_BlitMapSrcH(0),
	m_BlitMapDstW(0),
	m_BlitMapDstH(0),
	m_BlitMapValid(FALSE),
	m_GameMasterCatalog{{0}},
	m_OverscanPercent(250u),
	m_Language(ComboLanguagePT),
	m_ResolutionMode(kResolutionModeAuto),
	m_WidescreenEnabled(FALSE),
	m_ScanlineMode(kScanlineModeOff),
	m_RefreshRateHz(60u),
	m_DiskRomEnabled(MSXBARE_FEAT_DISK_ROM ? TRUE : FALSE),
	m_BootMode((MSXBARE_BOOT_MODE_DEFAULT_ENUM <= 2u) ? MSXBARE_BOOT_MODE_DEFAULT_ENUM : kBootModeNorm),
	m_MachineProfile(machine_profile_default()->id),
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
	m_FmsxFallbackPattern(FALSE),
	m_TestToneEnabled(FALSE),
	m_MmuEnabled(FALSE),
	m_DCacheEnabled(FALSE),
	m_ICacheEnabled(FALSE),
	m_SettingsStorageReady(FALSE),
	m_UartTelemetryEnabled(MSXBARE_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE),
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
	m_BootToFmsxMs(0u),
	m_StateIoBuffer(0),
	m_StateIoBufferCapacity(0u),
	m_FmsxPresentBuffer(0),
	m_FmsxPresentBufferPixels(0u)
{
	s_Instance = this;
	m_ActLED.Blink(5);
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
	if (m_FmsxPresentBuffer != 0)
	{
		delete[] m_FmsxPresentBuffer;
		m_FmsxPresentBuffer = 0;
		m_FmsxPresentBufferPixels = 0u;
	}
	g_fmsx_uart_trace_serial = 0;
	s_Instance = 0;
}

boolean CComboKernel::Initialize(void)
{
	boolean ok = TRUE;

	if (ok)
	{
		CDevice *target = &m_NullLog;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
		ok = m_Serial.Initialize(115200);
		if (ok)
		{
			BootTrace("I2");
			g_fmsx_uart_trace_serial = &m_Serial;
			target = &m_Serial;
		}
#endif
		ok = m_Logger.Initialize(target);
		if (ok)
		{
			BootPhase(m_Logger, "BT0", "UART + Logger... OK");
		}
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
	if (ok)
	{
		if (!m_EMMC.Initialize())
		{
			BootPhaseWarn(m_Logger, "BT2", "SD/eMMC driver... FAIL");
			m_Logger.Write(FromKernel, LogWarning, "SD storage init failed; settings persistence disabled");
		}
		else
		{
			m_SettingsStorageReady = TRUE;
			BootPhase(m_Logger, "BT2", "SD/eMMC driver... OK");
		}
	}

	return ok;
}

TComboShutdownMode CComboKernel::Run(void)
{
	if (!kBootQuiet)
	{
		BootTrace("R0");
	}
	m_BootStartUs = CTimer::GetClockTicks64();
	m_BootToFmsxMs = 0u;
	m_Logger.Write(FromKernel, LogNotice, "Compile time: " __DATE__ " " __TIME__);
	m_Logger.Write(FromKernel, LogNotice, "Combo standalone: HDMI audio + USB keyboard");
	u64 sctlr_el1 = 0;
	asm volatile ("mrs %0, sctlr_el1" : "=r" (sctlr_el1));
	m_MmuEnabled = (sctlr_el1 & (1u << 0)) ? TRUE : FALSE;
	m_DCacheEnabled = (sctlr_el1 & (1u << 2)) ? TRUE : FALSE;
	m_ICacheEnabled = (sctlr_el1 & (1u << 12)) ? TRUE : FALSE;
	CString mem_line;
	mem_line.Format("MMU/Caches M:%u C:%u I:%u", m_MmuEnabled ? 1u : 0u, m_DCacheEnabled ? 1u : 0u, m_ICacheEnabled ? 1u : 0u);
	m_Logger.Write(FromKernel, LogNotice, mem_line);
	{
		const EmulatorBackendInfo backend_info = emulator_backend_get_info();
		m_EmulatorBackendName = backend_info.active_backend_name;
		m_BackendInitFailCode = (backend_info.init_error_code > 0) ? (unsigned) backend_info.init_error_code : 0u;
		CString backend_line;
		backend_line.Format("Emulator backend: %s", m_EmulatorBackendName != 0 ? m_EmulatorBackendName : "unknown");
		m_Logger.Write(FromKernel, LogNotice, backend_line);
	}
	const boolean backend_is_fmsx = (emulator_backend_selected_kind() == EMULATOR_BACKEND_KIND_FMSX) ? TRUE : FALSE;
	const boolean fmsx_audio_enabled = m_FmsxEnabled ? TRUE : FALSE;
	if (!(m_TestToneEnabled || fmsx_audio_enabled))
	{
		m_Logger.Write(FromKernel, LogNotice, "Audio OFF");
	}
	else
	{
		m_Logger.Write(FromKernel, LogNotice, "Audio init deferred until first emulator frames");
	}

	if (m_SettingsStorageReady)
	{
		/* Must be applied before fMSX init so boot/runtime settings take effect on first boot. */
		if (f_mount(&m_SettingsFileSystem, kSettingsDrive, 1) == FR_OK)
		{
			BootPhase(m_Logger, "BT3", "FATFS mount... OK");
			LoadSettingsFromStorage();
		}
		else
		{
			m_SettingsStorageReady = FALSE;
			BootPhaseWarn(m_Logger, "BT3", "FATFS mount... FAIL");
			m_Logger.Write(FromKernel, LogWarning, "Settings mount failed on SD:; persistence disabled");
		}
	}
	else
	{
		BootPhaseWarn(m_Logger, "BT3", "FATFS mount... SKIP");
	}
	NormalizeSettingsForBuild();
	BootPhase(m_Logger, "BT5", "Normalize settings... OK");
#if MSXBARE_ENABLE_FMSX
	if (m_FmsxEnabled)
	{
		if (!kBootQuiet)
		{
			BootTrace("R1");
		}
		unsigned mounted_files = 0;
		mounted_files = fmsx_initramfs_mount_boot_minimal();
		{
			const unsigned later_files = fmsx_initramfs_mount_remaining();
			mounted_files += later_files;
			m_InitramfsDeferredMountPending = FALSE;
		}
		if (!kBootQuiet)
		{
			BootTrace("R2");
		}
		m_InitramfsFiles = mounted_files;
		CString initramfs_line;
		initramfs_line.Format("initramfs files: %u", mounted_files);
		m_Logger.Write(FromKernel, LogNotice, initramfs_line);
		BootPhase(m_Logger, "BT6", "initramfs... OK");

		if (!kBootQuiet)
		{
			BootTrace("R3");
		}
		if (backend_is_fmsx)
		{
			m_RefreshRateHz = ClampRefreshRateHz(m_RefreshRateHz);
			fmsx_runtime_set_refresh_hz(m_RefreshRateHz);
			fmsx_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
			fmsx_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
			fmsx_runtime_set_boot_mode(m_BootMode);
			fmsx_runtime_set_model_profile(m_MachineProfile);
			fmsx_runtime_set_rammapper_kb(m_RamMapperKb);
			fmsx_runtime_set_megaram_kb(m_MegaRamKb);
			fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
			fmsx_runtime_set_fm_music_enabled(m_FmMusicEnabled);
			fmsx_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
			fmsx_runtime_set_scc_plus_enabled(m_SccCartEnabled);
			if (!fmsx_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
			{
				m_SccDualCartEnabled = FALSE;
			}
		}
		BootPhase(m_Logger, "BT7", "runtime config... OK");
		m_Logger.Write(FromKernel, LogNotice, "Boot step: init screen");
		if (!m_Screen.Initialize())
		{
			BootPhaseWarn(m_Logger, "BT8", "screen... FAIL");
			m_Logger.Write(FromKernel, LogPanic, "Screen init failed");
			return ComboShutdownHalt;
		}
		m_Logger.Write(FromKernel, LogNotice, "Screen ready");
		m_Logger.Write(FromKernel, LogNotice, "Boot step: screen OK");
		BootPhase(m_Logger, "BT8", "screen... OK");
		m_ScreenReady = TRUE;
		m_FmsxReady = emulator_backend_init();
		{
			const EmulatorBackendInfo backend_info = emulator_backend_get_info();
			m_EmulatorBackendName = backend_info.active_backend_name;
			m_BackendInitFailCode = (backend_info.init_error_code > 0) ? (unsigned) backend_info.init_error_code : 0u;
		}
		{
			const u64 boot_elapsed_us = CTimer::GetClockTicks64() - m_BootStartUs;
			m_BootToFmsxMs = (unsigned) (boot_elapsed_us / 1000u);
		}
		if (!m_FmsxReady)
		{
			m_FmsxLastError = (int) (m_BackendInitFailCode != 0u ? m_BackendInitFailCode : 1u);
			if (!kBootQuiet)
			{
				BootTrace("R4E");
			}
			CString line;
			line.Format("%s bootstrap failed (init code=%u)",
				m_EmulatorBackendName != 0 ? m_EmulatorBackendName : "backend",
				m_BackendInitFailCode);
			m_Logger.Write(FromKernel, LogWarning, line);
			BootPhaseWarn(m_Logger, "BT9", "emulator backend... FAIL");
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
			BootPhase(m_Logger, "BT9", "emulator backend... OK");

			/* Defensive restore exists only on fMSX path for now. */
				if (backend_is_fmsx)
				{
#if MSXBARE_FEAT_LOAD_DISK
					for (unsigned drive = 0u; drive < 2u; ++drive)
					{
						const char *persisted_path = fmsx_runtime_get_disk_path(drive);
					const char *mounted_name = fmsx_runtime_get_disk_name(drive);
					if (persisted_path != 0 && persisted_path[0] != '\0'
					 && (mounted_name == 0 || mounted_name[0] == '\0'))
					{
						if (fmsx_runtime_load_disk(drive, persisted_path))
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
	if (MSXBARE_ENABLE_DEBUG_OVERLAY && m_DebugOverlayUnlocked && m_DebugOverlayEnabled)
	{
		if (!kBootQuiet)
		{
			WriteScreenText("\x1b[2J\x1b[H\x1b[?25l");
		}
	}
	else
	{
		WriteScreenText("\x1b[?25l");
	}
	BootPhase(m_Logger, "BT10", "debug overlay... READY");
	m_Logger.Write(FromKernel, LogNotice, "Overlay: F11 | Pause: F12 | UART: F10");
#if MSXBARE_ENABLE_FMSX
	if (m_FmsxReady && backend_is_fmsx)
	{
		m_FmLayerGainPct = fmsx_runtime_get_fm_layer_gain_pct();
	}
#endif
	m_PauseMenu.SetScalePercent(m_OverscanPercent);
	m_PauseMenu.SetLanguage(m_Language);
	m_PauseMenu.SetResolutionMode(m_ResolutionMode);
	m_PauseMenu.SetWidescreenEnabled(m_WidescreenEnabled);
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
	m_PauseMenu.SetFmMusicEnabled(m_FmMusicEnabled);
	m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
	m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled,
	#if MSXBARE_ENABLE_FMSX
		fmsx_runtime_get_scc_dual_cart_available()
	#else
		FALSE
	#endif
	);
	m_PauseMenu.SetOverlayEnabled(
		MSXBARE_ENABLE_DEBUG_OVERLAY ? m_DebugOverlayEnabled : FALSE,
		MSXBARE_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE);
	m_PauseMenu.SetAudioGainPercent(m_AudioOutputGainPct);
	{
		const unsigned max_scale = ComputeScaleMaxPercentForCurrentFrame(m_Screen.GetWidth(), m_Screen.GetHeight());
		m_PauseMenu.SetMaxScalePercent(max_scale);
		m_OverscanPercent = ClampScalePercent(m_OverscanPercent, max_scale);
		m_PauseMenu.SetScalePercent(m_OverscanPercent);
	}
	SetUartTelemetryEnabled(m_UartTelemetryEnabled);
	#if MSXBARE_ENABLE_FMSX
		m_Logger.Write(FromKernel, LogNotice, "Boot step: apply runtime");
		ApplyRuntimeSettingsToFmsx();
		m_Logger.Write(FromKernel, LogNotice, "Boot step: runtime OK");
		if (!m_UsbReady)
		{
			m_Logger.Write(FromKernel, LogNotice, "Boot step: init USB");
			if (m_USBHCI.Initialize())
			{
				m_UsbReady = TRUE;
				m_Logger.Write(FromKernel, LogNotice, "USB host ready");
				m_Logger.Write(FromKernel, LogNotice, "Attach USB keyboard and type");
				BootPhase(m_Logger, "BT11", "USB Host... OK");
			}
			else
			{
				m_Logger.Write(FromKernel, LogWarning, "USB host init failed; retrying");
				m_UsbInitRetryTick = 300u;
				BootPhaseWarn(m_Logger, "BT11", "USB Host... RETRY");
			}
		}
		/* Force first visible frame to use current viewport policy (avoid transient wide boot frame). */
		if (m_FmsxReady)
		{
			m_Logger.Write(FromKernel, LogNotice, "Boot step: first blit");
			BlitFmsxFrame(TRUE);
			m_Logger.Write(FromKernel, LogNotice, "Boot step: blit OK");
		}
	#endif

	m_Logger.Write(FromKernel, LogNotice, "Boot step: main loop");
	BootPhase(m_Logger, "BT12", "main loop... OK");
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
		if (!m_AudioInitAttempted && (m_TestToneEnabled || fmsx_audio_enabled))
		{
			if (m_TestToneEnabled || !m_FmsxEnabled || !m_FmsxReady || m_FmsxFrames >= 2u)
			{
				InitializeAudioOutput(fmsx_audio_enabled);
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
					m_Logger.Write(FromKernel, LogNotice, "Attach USB keyboard and type");
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
			(void) m_UsbKeyboard.AttachIfAvailable(m_DeviceNameService, m_Logger, KeyPressedHandler);
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
			m_LastF10Pressed = FALSE;
			m_LastFmGainUpPressed = FALSE;
			m_LastFmGainDownPressed = FALSE;
	#if MSXBARE_ENABLE_FMSX
			if (m_FmsxReady)
			{
				static const unsigned char kEmptyKeyboard[6] = {0u, 0u, 0u, 0u, 0u, 0u};
				emulator_backend_input_push_keyboard(0u, kEmptyKeyboard);
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
		if (MSXBARE_ENABLE_DEBUG_OVERLAY && !m_DebugOverlayUnlocked && m_FmsxReady)
		{
			const unsigned load_diag = fmsx_runtime_get_load_diag();
			/* Unlock debug only after StartMSX() has completed in runtime init path. */
			if (load_diag >= 2102u && load_diag < 9000u)
			{
				m_DebugOverlayUnlocked = TRUE;
				m_PauseMenu.SetOverlayEnabled(m_DebugOverlayEnabled, TRUE);
				m_PauseMenu.RequestRedraw();
				m_Logger.Write(FromKernel, LogNotice, "Debug overlay unlocked (post-StartMSX)");
			}
		}

		/* Hybrid wait: coarse sleep first, then short busy delay for tighter frame deadline. */
		if (m_FmsxReady && !m_EmulationPaused)
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
		if (m_FmsxReady && !m_EmulationPaused)
		{
			now_us = CTimer::GetClockTicks64();
			boolean stepped_fmsx = FALSE;
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
				u8 joy_bits_runtime = m_JoyBridgeBits;
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
				emulator_backend_input_push_joystick(joy_bits_runtime);
				const u64 step_start_us = uart_perf_enabled ? CTimer::GetClockTicks64() : 0u;
				if (emulator_backend_step_frame())
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
					stepped_fmsx = TRUE;
					const EmulatorBackendRuntimeStatus runtime_status = emulator_backend_get_status();
					m_FmsxFrames = runtime_status.frames;
					m_FmsxLastError = runtime_status.last_error;
					SyncRefreshRateStateFromRuntime();

					if (m_FmsxFpsWindowStartUs == 0u)
					{
						m_FmsxFpsWindowStartUs = now_us;
						m_FmsxFpsWindowStartFrames = m_FmsxFrames;
					}
					else if (now_us > m_FmsxFpsWindowStartUs)
					{
						const u64 elapsed_us = now_us - m_FmsxFpsWindowStartUs;
						if (elapsed_us >= 1000000ull)
						{
							const unsigned long elapsed_frames = m_FmsxFrames - m_FmsxFpsWindowStartFrames;
							m_FmsxFpsX10 = (unsigned) (((u64) elapsed_frames * 10000000ull) / elapsed_us);
							m_FmsxFpsWindowStartUs = now_us;
							m_FmsxFpsWindowStartFrames = m_FmsxFrames;
							m_FramePacingErrMaxUs = 0u;
						}
					}

					if (runtime_status.last_pc == m_FmsxLastPC)
					{
						if (m_FmsxPcRepeatCount < 999999u)
						{
							m_FmsxPcRepeatCount++;
						}
					}
					else
					{
						m_FmsxLastPC = runtime_status.last_pc;
						m_FmsxPcRepeatCount = 0;
						m_FmsxPcLoopLogged = FALSE;
					}

					if (!m_FmsxPcLoopLogged && m_FmsxPcRepeatCount >= 1200u)
					{
						CString loop_line;
						loop_line.Format("fMSX PC loop? PC=%04X repeat=%u", (unsigned) (m_FmsxLastPC & 0xFFFF), m_FmsxPcRepeatCount);
						m_Logger.Write(FromKernel, LogWarning, loop_line);
						m_FmsxPcLoopLogged = TRUE;
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

			if (stepped_fmsx)
			{
				const boolean force_viewport_clear = m_ForceViewportFullClearNextFrame;
				m_ForceViewportFullClearNextFrame = FALSE;
				const u64 blit_start_us = uart_perf_enabled ? CTimer::GetClockTicks64() : 0u;
				BlitFmsxFrame(force_viewport_clear ? TRUE : FALSE);
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
		if (m_FmsxReady && m_EmulationPaused && m_PauseNeedsBackgroundRedraw)
		{
			const boolean full_viewport_clear =
				(m_PauseNeedsFullViewportClear || m_ForceViewportFullClearNextFrame) ? TRUE : FALSE;
			m_PauseNeedsBackgroundRedraw = FALSE;
			m_PauseNeedsFullViewportClear = FALSE;
			m_ForceViewportFullClearNextFrame = FALSE;
			if (full_viewport_clear)
			{
				BlitFmsxFrame(TRUE);
			}
			const u16 *src_pixels = 0;
			unsigned src_w = 0u;
			unsigned src_h = 0u;
			(void) emulator_backend_video_frame(&src_pixels, &src_w, &src_h);
			if (src_pixels != 0 && src_w > 0u && src_h > 0u)
			{
				ResolveViewportBox(src_w, src_h, &m_FmsxBoxX, &m_FmsxBoxY, &m_FmsxBoxW, &m_FmsxBoxH);
			}
			const unsigned snap_x = (m_FmsxBoxW > 0u) ? m_FmsxBoxX : 0u;
			const unsigned snap_y = (m_FmsxBoxH > 0u) ? m_FmsxBoxY : 0u;
			const unsigned snap_w = (m_FmsxBoxW > 0u) ? m_FmsxBoxW : m_Screen.GetWidth();
			const unsigned snap_h = (m_FmsxBoxH > 0u) ? m_FmsxBoxH : m_Screen.GetHeight();
			(void) combo_viewport_screenshot_capture_from_emulator(src_pixels, src_w, src_h, snap_x, snap_y, snap_w, snap_h, m_ScanlineMode);
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
		if (MSXBARE_ENABLE_DEBUG_OVERLAY && m_DebugOverlayUnlocked && m_DebugOverlayEnabled)
		{
			now_us = CTimer::GetClockTicks64();
			if (m_LastOverlayUs == 0u || now_us - m_LastOverlayUs >= kDebugOverlayIntervalUs)
			{
				DrawDebugOverlay(tick);
				m_LastOverlayUs = now_us;
			}
		}
		{
			char slot1_name[17];
			char slot2_name[17];
			char drive1_name[17];
			char drive2_name[17];
		#if MSXBARE_ENABLE_FMSX
			const char *slot1_src = m_FmsxReady ? fmsx_runtime_get_cartridge_name(0u) : 0;
			const char *slot2_src = m_FmsxReady ? fmsx_runtime_get_cartridge_name(1u) : 0;
			const char *drive1_src = m_FmsxReady ? fmsx_runtime_get_disk_name(0u) : 0;
			const char *drive2_src = m_FmsxReady ? fmsx_runtime_get_disk_name(1u) : 0;
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
		const unsigned menu_anchor_x = (m_FmsxBoxW > 0u) ? m_FmsxBoxX : 0u;
		const unsigned menu_anchor_y = (m_FmsxBoxH > 0u) ? m_FmsxBoxY : 0u;
		const unsigned menu_anchor_w = (m_FmsxBoxW > 0u) ? m_FmsxBoxW : m_Screen.GetWidth();
		const unsigned menu_anchor_h = (m_FmsxBoxH > 0u) ? m_FmsxBoxH : m_Screen.GetHeight();
		if (!(m_PauseRenderSuppressed && !m_EmulationPaused))
		{
			m_PauseMenu.Render(m_EmulationPaused, &m_GfxText,
				m_Screen.GetWidth(), m_Screen.GetHeight(),
				menu_anchor_x, menu_anchor_y, menu_anchor_w, menu_anchor_h);
		}
		m_Screen.Rotor(0, tick);
		m_Scheduler.Yield();
	}

	return ComboShutdownHalt;
}

void CComboKernel::InitializeAudioOutput(boolean fmsx_audio_enabled)
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
	else if (fmsx_audio_enabled)
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
		else
		{
			int16_t mono[kFramesPerBatch];
			const unsigned got = emulator_backend_audio_pull(mono, write_frames);
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
	fmsx_runtime_set_boot_mode(m_BootMode);
	fmsx_runtime_set_model_profile(m_MachineProfile);
	const boolean reset_ok = emulator_backend_reset();
	if (reset_ok)
	{
		UpdateLoadDiagTelemetry(success_diag);
		ResetEmulationRuntimeState();
		ApplyRuntimeSettingsToFmsx();
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
#if !MSXBARE_ENABLE_FMSX || !MSXBARE_ENABLE_DEBUG_OVERLAY
	return;
#else
	if (!m_UartTelemetryEnabled || m_Sound == 0)
	{
		return;
	}

	const u64 now_us = CTimer::GetClockTicks64();
	if (m_LastAudioQueueLogUs != 0u && (now_us - m_LastAudioQueueLogUs) < kUartPerfLogIntervalUs)
	{
		return;
	}

	TFmsxAudioStats audio_stats = {0};
	fmsx_audio_get_stats(&audio_stats);
	const unsigned queue_size = m_Sound->GetQueueSizeFrames();
	const unsigned queue_avail = m_Sound->GetQueueFramesAvail();
	const unsigned queue_min = (m_UartAudioQueueAvailMin == 0xFFFFFFFFu) ? queue_avail : m_UartAudioQueueAvailMin;

	CString line;
	line.Format("AUDQ Q:%u/%u/%u L:%u R:%u/%u P:%u/%u D:%u T:%u U:%u/%u A:%u/%u",
		queue_avail > 9999u ? 9999u : queue_avail,
		queue_min > 9999u ? 9999u : queue_min,
		queue_size > 9999u ? 9999u : queue_size,
		m_UartAudioLowWaterHits > 999u ? 999u : m_UartAudioLowWaterHits,
		audio_stats.ring_level > 9999u ? 9999u : audio_stats.ring_level,
		audio_stats.ring_peak > 9999u ? 9999u : audio_stats.ring_peak,
		audio_stats.last_pull_returned > 9999u ? 9999u : audio_stats.last_pull_returned,
		audio_stats.last_pull_requested > 9999u ? 9999u : audio_stats.last_pull_requested,
		audio_stats.drop_count > 999u ? 999u : audio_stats.drop_count,
		audio_stats.trim_samples > 9999u ? 9999u : audio_stats.trim_samples,
		audio_stats.short_pulls > 999u ? 999u : audio_stats.short_pulls,
		audio_stats.underrun_samples > 9999u ? 9999u : audio_stats.underrun_samples,
		m_UartAudioRefillUsLast > 9999u ? 9999u : m_UartAudioRefillUsLast,
		m_UartAudioRefillUsPeak > 9999u ? 9999u : m_UartAudioRefillUsPeak);
	m_Logger.Write(FromKernel, LogNotice, line);

	m_LastAudioQueueLogUs = now_us;
	m_UartAudioQueueAvailMin = 0xFFFFFFFFu;
	m_UartAudioLowWaterHits = 0u;
	m_UartAudioRefillUsPeak = 0u;
#endif
}

void CComboKernel::LogVideoPacingUart(void)
{
#if !MSXBARE_ENABLE_FMSX || !MSXBARE_ENABLE_DEBUG_OVERLAY
	return;
#else
	if (!m_UartTelemetryEnabled)
	{
		return;
	}

	const u64 now_us = CTimer::GetClockTicks64();
	if (m_LastVideoPacingLogUs != 0u && (now_us - m_LastVideoPacingLogUs) < kUartPerfLogIntervalUs)
	{
		return;
	}

	CString line;
	line.Format("VIDP F:%u.%u C:%u/%u X:%u L:%u/%u P:%u/%u S:%u/%u B:%u/%u",
		(m_FmsxFpsX10 / 10u) > 99u ? 99u : (m_FmsxFpsX10 / 10u),
		m_FmsxFpsX10 % 10u,
		m_UartVideoCatchupLast > 99u ? 99u : m_UartVideoCatchupLast,
		m_UartVideoCatchupPeak > 99u ? 99u : m_UartVideoCatchupPeak,
		m_UartVideoCatchupCapCount > 999u ? 999u : m_UartVideoCatchupCapCount,
		m_UartVideoLateUsLast > 9999u ? 9999u : m_UartVideoLateUsLast,
		m_UartVideoLateUsPeak > 9999u ? 9999u : m_UartVideoLateUsPeak,
		m_FramePacingErrAvgUs > 9999u ? 9999u : m_FramePacingErrAvgUs,
		m_FramePacingErrMaxUs > 9999u ? 9999u : m_FramePacingErrMaxUs,
		m_UartVideoStepUsLast > 9999u ? 9999u : m_UartVideoStepUsLast,
		m_UartVideoStepUsPeak > 9999u ? 9999u : m_UartVideoStepUsPeak,
		m_UartVideoBlitUsLast > 9999u ? 9999u : m_UartVideoBlitUsLast,
		m_UartVideoBlitUsPeak > 9999u ? 9999u : m_UartVideoBlitUsPeak);
	m_Logger.Write(FromKernel, LogNotice, line);
	LogCpuClockStatus("F10");

	if (emulator_backend_selected_kind() == EMULATOR_BACKEND_KIND_FMSX)
	{
		TFmsxFramePerfStats frame_perf = {0};
		fmsx_runtime_get_frame_perf_stats(&frame_perf);
		line.Format("VRTM ST:%u FR:%u SL:%u/%u Z:%u/%u A:%u/%u N:%u/%u M:%u",
			frame_perf.last_steps > 99u ? 99u : frame_perf.last_steps,
			frame_perf.last_frames_done > 99u ? 99u : frame_perf.last_frames_done,
			frame_perf.last_slices > 9999u ? 9999u : frame_perf.last_slices,
			frame_perf.peak_slices > 9999u ? 9999u : frame_perf.peak_slices,
			frame_perf.last_z80_us > 9999u ? 9999u : frame_perf.last_z80_us,
			frame_perf.peak_z80_us > 9999u ? 9999u : frame_perf.peak_z80_us,
			frame_perf.last_audio_us > 9999u ? 9999u : frame_perf.last_audio_us,
			frame_perf.peak_audio_us > 9999u ? 9999u : frame_perf.peak_audio_us,
			frame_perf.last_audio_samples > 9999u ? 9999u : frame_perf.last_audio_samples,
			frame_perf.peak_audio_samples > 9999u ? 9999u : frame_perf.peak_audio_samples,
			frame_perf.frame_miss_count > 999u ? 999u : frame_perf.frame_miss_count);
		m_Logger.Write(FromKernel, LogNotice, line);
		fmsx_runtime_reset_frame_perf_stats_window();
	}

	m_LastVideoPacingLogUs = now_us;
	m_UartVideoCatchupPeak = 0u;
	m_UartVideoCatchupCapCount = 0u;
	m_UartVideoLateUsPeak = 0u;
	m_UartVideoStepUsPeak = 0u;
	m_UartVideoBlitUsPeak = 0u;
#endif
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

	TFmsxVDPTraceView trace_view = { 0, 0u, 0u, 0u, 0u };
	auto event_tag = [](unsigned event_type) -> const char *
	{
		switch (event_type)
		{
		case FMSX_VDP_EVENT_IE0_FIRE:      return "I0";
		case FMSX_VDP_EVENT_IE1_ARM:       return "I1A";
		case FMSX_VDP_EVENT_IE1_FIRE:      return "I1F";
		case FMSX_VDP_EVENT_R19_WRITE:     return "R19";
		case FMSX_VDP_EVENT_R23_WRITE:     return "R23";
		case FMSX_VDP_EVENT_S1_READ:       return "S1";
		case FMSX_VDP_EVENT_S2_READ:       return "S2";
		case FMSX_VDP_EVENT_CMD_START:     return "CS";
		case FMSX_VDP_EVENT_CMD_END:       return "CE";
		case FMSX_VDP_EVENT_PORT98_WRITE:  return "98W";
		case FMSX_VDP_EVENT_PORT99_ADDR:   return "99A";
		case FMSX_VDP_EVENT_PORT99_REG:    return "99R";
		default:                           return "--";
		}
	};
	auto trace_window_tag = [](unsigned window) -> const char *
	{
		switch (window)
		{
		case FMSX_VDP_TRACE_TITLE:       return "TI";
		case FMSX_VDP_TRACE_SAVE_SELECT: return "SV";
		case FMSX_VDP_TRACE_STARDATE:    return "SD";
		case FMSX_VDP_TRACE_KMG:         return "KG";
		default:                         return "--";
		}
	};

	fmsx_runtime_get_vdp_trace_view(&trace_view);
	if (trace_view.dropped != m_FmsxVdpTraceDropped)
	{
		CString drop_line;
		drop_line.Format("VDP DROP count=%u", trace_view.dropped);
		m_Logger.Write(FromKernel, LogWarning, drop_line);
		m_FmsxVdpTraceDropped = trace_view.dropped;
	}
	if (trace_view.events == 0 || trace_view.count == 0u || trace_view.capacity == 0u)
	{
		return;
	}

	const unsigned start =
		(trace_view.head + trace_view.capacity - trace_view.count) % trace_view.capacity;
	for (unsigned i = 0u; i < trace_view.count; ++i)
	{
		const TFmsxVDPTraceEvent &event = trace_view.events[(start + i) % trace_view.capacity];
		if (event.seq <= m_FmsxVdpTraceSeq)
		{
			continue;
		}
		if (event.capture_window == FMSX_VDP_TRACE_NONE)
		{
			m_FmsxVdpTraceSeq = event.seq;
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
		m_FmsxVdpTraceSeq = event.seq;
	}
#endif
}

void CComboKernel::LogSccTraceUart(void)
{
#if !MSXBARE_ENABLE_FMSX || !MSXBARE_ENABLE_DEBUG_OVERLAY || !FMSX_SMANBOW_AUDIO_TRACE_ENABLED
	return;
#else
	if (!m_UartTelemetryEnabled)
	{
		return;
	}

	TFmsxSCCTraceView trace_view = { 0, 0u, 0u, 0u, 0u };
	const unsigned kind_none = (unsigned) FMSX_SCC_TRACE_NONE;
	auto kind_tag = [](unsigned kind) -> const char *
	{
		switch (kind)
		{
		case FMSX_SCC_TRACE_WAVE:   return "W";
		case FMSX_SCC_TRACE_FREQ:   return "F";
		case FMSX_SCC_TRACE_VOLUME: return "V";
		case FMSX_SCC_TRACE_ENABLE: return "E";
		case FMSX_SCC_TRACE_DEFORM: return "D";
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
		case FMSX_VDP_TRACE_TITLE:       return "TI";
		case FMSX_VDP_TRACE_SAVE_SELECT: return "SV";
		case FMSX_VDP_TRACE_STARDATE:    return "SD";
		default:                         return "--";
		}
	};

	fmsx_runtime_get_scc_trace_view(&trace_view);
	if (trace_view.dropped != m_FmsxSccTraceDropped)
	{
		CString drop_line;
		drop_line.Format("SCC DROP count=%u", trace_view.dropped);
		m_Logger.Write(FromKernel, LogWarning, drop_line);
		m_FmsxSccTraceDropped = trace_view.dropped;
	}
	if (trace_view.events == 0 || trace_view.count == 0u || trace_view.capacity == 0u)
	{
		return;
	}

	const unsigned start =
		(trace_view.head + trace_view.capacity - trace_view.count) % trace_view.capacity;
	for (unsigned i = 0u; i < trace_view.count; ++i)
	{
		const TFmsxSCCTraceEvent &event = trace_view.events[(start + i) % trace_view.capacity];
		if (event.seq <= m_FmsxSccTraceSeq)
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
		m_FmsxSccTraceSeq = event.seq;
	}
#endif
}

void CComboKernel::LogAudioPortTraceUart(void)
{
#if !MSXBARE_ENABLE_FMSX || !MSXBARE_ENABLE_DEBUG_OVERLAY || !FMSX_SMANBOW_AUDIO_TRACE_ENABLED
	return;
#else
	if (!m_UartTelemetryEnabled)
	{
		return;
	}

	TFmsxAudioPortTraceView trace_view = { 0, 0u, 0u, 0u, 0u };
	auto chip_tag = [](unsigned chip) -> const char *
	{
		switch (chip)
		{
		case FMSX_AUDIO_PORT_TRACE_PSG: return "PSG";
		case FMSX_AUDIO_PORT_TRACE_FM:  return "FM";
		default:                        return "--";
		}
	};
	auto op_tag = [](unsigned op) -> const char *
	{
		switch (op)
		{
		case FMSX_AUDIO_PORT_TRACE_CTRL: return "C";
		case FMSX_AUDIO_PORT_TRACE_DATA: return "D";
		default:                         return "-";
		}
	};
	auto trace_window_tag = [](unsigned window) -> const char *
	{
		switch (window)
		{
		case FMSX_VDP_TRACE_TITLE:       return "TI";
		case FMSX_VDP_TRACE_SAVE_SELECT: return "SV";
		case FMSX_VDP_TRACE_STARDATE:    return "SD";
		default:                         return "--";
		}
	};

	fmsx_runtime_get_audio_port_trace_view(&trace_view);
	if (trace_view.dropped != m_FmsxAudioPortTraceDropped)
	{
		CString drop_line;
		drop_line.Format("AUD DROP count=%u", trace_view.dropped);
		m_Logger.Write(FromKernel, LogWarning, drop_line);
		m_FmsxAudioPortTraceDropped = trace_view.dropped;
	}
	if (trace_view.events == 0 || trace_view.count == 0u || trace_view.capacity == 0u)
	{
		return;
	}

	const unsigned start =
		(trace_view.head + trace_view.capacity - trace_view.count) % trace_view.capacity;
	for (unsigned i = 0u; i < trace_view.count; ++i)
	{
		const TFmsxAudioPortTraceEvent &event =
			trace_view.events[(start + i) % trace_view.capacity];
		if (event.seq <= m_FmsxAudioPortTraceSeq)
		{
			continue;
		}

		CString line;
		line.Format("AUD EVT #%lu Q=%u W=%s C=%s O=%s R=%02X N=%u V=%02X/%02X PC=%04X",
			(unsigned long) event.seq,
			(unsigned) event.session,
			trace_window_tag((unsigned) event.capture_window),
			chip_tag((unsigned) event.chip),
			op_tag((unsigned) event.op),
			(unsigned) event.reg,
			(unsigned) event.count,
			(unsigned) event.value_first,
			(unsigned) event.value_last,
			(unsigned) event.pc);
		m_Logger.Write(FromKernel, LogNotice, line);
		m_FmsxAudioPortTraceSeq = event.seq;
	}
#endif
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

	TFmsxKmgTraceView trace_view = { 0, 0u, 0u, 0u, 0u };

	fmsx_runtime_get_kmg_trace_view(&trace_view);
	if (trace_view.dropped != m_FmsxKmgTraceDropped)
	{
		CString drop_line;
		drop_line.Format("KMG DROP count=%u", trace_view.dropped);
		m_Logger.Write(FromKernel, LogWarning, drop_line);
		m_FmsxKmgTraceDropped = trace_view.dropped;
	}
	if (trace_view.events == 0 || trace_view.count == 0u || trace_view.capacity == 0u)
	{
		return;
	}

	const unsigned start =
		(trace_view.head + trace_view.capacity - trace_view.count) % trace_view.capacity;
	for (unsigned i = 0u; i < trace_view.count; ++i)
	{
		const TFmsxKmgTraceEvent &event = trace_view.events[(start + i) % trace_view.capacity];
		if (event.seq <= m_FmsxKmgTraceSeq)
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
		m_FmsxKmgTraceSeq = event.seq;
	}
#endif
}

void CComboKernel::DrawDebugOverlay(unsigned tick)
{
	CString line;
	TFmsxAudioStats audio_stats = { 0 };
	TFmsxTimingDebug timing_stats = { 0 };
	auto trace_event_tag = [](unsigned event_type) -> const char *
	{
		switch (event_type)
		{
		case FMSX_VDP_EVENT_IE0_FIRE:  return "I0";
		case FMSX_VDP_EVENT_IE1_ARM:   return "I1A";
		case FMSX_VDP_EVENT_IE1_FIRE:  return "I1F";
		case FMSX_VDP_EVENT_R19_WRITE: return "R19";
		case FMSX_VDP_EVENT_R23_WRITE: return "R23";
		case FMSX_VDP_EVENT_S1_READ:   return "S1";
		case FMSX_VDP_EVENT_S2_READ:   return "S2";
		case FMSX_VDP_EVENT_CMD_START: return "CS";
		case FMSX_VDP_EVENT_CMD_END:   return "CE";
		case FMSX_VDP_EVENT_PORT98_WRITE: return "98W";
		case FMSX_VDP_EVENT_PORT99_ADDR:  return "99A";
		case FMSX_VDP_EVENT_PORT99_REG:   return "99R";
		default:                       return "--";
		}
	};
	auto trace_window_tag = [](unsigned window) -> const char *
	{
		switch (window)
		{
		case FMSX_VDP_TRACE_TITLE:       return "TI";
		case FMSX_VDP_TRACE_SAVE_SELECT: return "SV";
		case FMSX_VDP_TRACE_STARDATE:    return "SD";
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
	fmsx_audio_get_stats(&audio_stats);
	fmsx_runtime_get_timing_debug(&timing_stats);
	load_diag = fmsx_runtime_get_load_diag();
	active_boot_mode = fmsx_runtime_get_active_boot_mode();
	active_model_profile = fmsx_runtime_get_active_model_profile();
#endif

	const unsigned os_tick = tick % 1000u;
	const unsigned build_hash16 = BuildHash16();
	line.Format("\x1b[97m\x1b[49m\x1b[1;1HTXTDBG BUILD:%04X OS:%03u M:%u C:%u I:%u PAU:%u BK:%.7s R:%u K:%u S:%u H:%u/%u LD:%04u BT:%04u",
		build_hash16 & 0xFFFFu,
		os_tick,
		m_MmuEnabled ? 1u : 0u,
		m_DCacheEnabled ? 1u : 0u,
		m_ICacheEnabled ? 1u : 0u,
		m_EmulationPaused ? 1u : 0u,
		backend_name,
		m_FmsxReady ? 1u : 0u,
		m_UsbKeyboard.IsAttached() ? 1u : 0u,
		m_Sound != 0 && m_Sound->IsActive() ? 1u : 0u,
		m_SoundStartAttempts > 99u ? 99u : m_SoundStartAttempts,
		m_SoundStartFailures > 99u ? 99u : m_SoundStartFailures,
		load_diag > 9999u ? 9999u : load_diag,
		m_BootToFmsxMs > 9999u ? 9999u : m_BootToFmsxMs);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[2;1HAUD1 Q:%06u E:%06u O:%05u T:%05u U:%04u/%04u B:%04u/%04u P:%04u/%04u R:%04u/%04u V:%02u.%u",
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
		(m_FmsxFpsX10 / 10u) > 99u ? 99u : (m_FmsxFpsX10 / 10u),
		m_FmsxFpsX10 % 10u);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[3;1HSYS BJ:%02X MJ:%02X F:%06lu PC:%04X R:%04u L:%04u D:%03u/%04u JP:%03u/%03u SV:%02u C:%03u A:%04u CA:%u CB:%u BM:%u MP:%u RM:%4u MR:%4u IN:%03u",
		(unsigned) m_JoyBridgeBits,
		(unsigned) m_JoyMappedBits,
		m_FmsxFrames,
		(unsigned) (m_FmsxLastPC & 0xFFFF),
		m_FmsxPcRepeatCount > 9999u ? 9999u : m_FmsxPcRepeatCount,
		audio_stats.ring_level > 9999u ? 9999u : audio_stats.ring_level,
		audio_stats.last_trim_samples > 999u ? 999u : audio_stats.last_trim_samples,
		audio_stats.drop_count > 9999u ? 9999u : audio_stats.drop_count,
		m_FramePacingErrAvgUs > 999u ? 999u : m_FramePacingErrAvgUs,
		m_FramePacingErrMaxUs > 999u ? 999u : m_FramePacingErrMaxUs,
		m_SettingsSaveStage > 99u ? 99u : m_SettingsSaveStage,
		m_SettingsSaveCode > 999u ? 999u : m_SettingsSaveCode,
		m_SettingsSaveAux > 9999u ? 9999u : m_SettingsSaveAux,
		(fmsx_runtime_get_cartridge_name(0u) != 0) ? 1u : 0u,
		(fmsx_runtime_get_cartridge_name(1u) != 0) ? 1u : 0u,
		active_boot_mode > 9u ? 9u : active_boot_mode,
		active_model_profile > 9u ? 9u : active_model_profile,
		fmsx_runtime_get_rammapper_kb(),
		fmsx_runtime_get_megaram_kb(),
		m_InitramfsFiles > 999u ? 999u : m_InitramfsFiles);
	WriteScreenText(line);

	m_FmLayerGainPct = fmsx_runtime_get_fm_layer_gain_pct();
	line.Format("\x1b[97m\x1b[49m\x1b[4;1HAC1 FM:%u/%u FG:%03u SCC:%u/%u AG:%u AE:%03u L1:%u L2:%u L3:%u P7:%02X MS:%05X",
		m_FmMusicEnabled ? 1u : 0u,
		fmsx_runtime_get_audio_layer_muted(2u) ? 0u : 1u,
		m_FmLayerGainPct > 999u ? 999u : m_FmLayerGainPct,
		m_SccCartEnabled ? 1u : 0u,
		fmsx_runtime_get_audio_layer_muted(3u) ? 0u : 1u,
		AudioGainUiLevelFromPercent(m_AudioOutputGainPct),
		AudioGainEffectivePct(m_AudioOutputGainPct) > 999u ? 999u : AudioGainEffectivePct(m_AudioOutputGainPct),
		fmsx_runtime_get_audio_layer_muted(1u) ? 1u : 0u,
		fmsx_runtime_get_audio_layer_muted(2u) ? 1u : 0u,
		fmsx_runtime_get_audio_layer_muted(3u) ? 1u : 0u,
		fmsx_runtime_get_psg_mixer_reg7() & 0xFFu,
		fmsx_runtime_get_master_switch() & 0xFFFFFu);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[5;1HTM HP:%05u VP:%05u IP:%05u SL:%03u %s L212:%u T:%03u%% | SM:%02u R2:%02X R25:%02X R26:%02X R27:%02X HS:%03u MP:%u DP:%u EP:%u I1:%u F1:%u",
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
	WriteScreenText(line);

		line.Format("\x1b[97m\x1b[49m\x1b[6;1HTM C:%X CE:%u TR:%u CS:%03u CP:%03u KB:%u/%u/%u/%u P1:%u-%u D:%u/%u S:%u | I1:%03u/%03u IA:%03u IH:%03u KJ:%u KR:%03u KW:%03u R1:%02X R7:%02X SO:%u",
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
		WriteScreenText(line);

		line.Format("\x1b[97m\x1b[49m\x1b[7;1HTM I0:%u S0:%u HR:%u VR:%u LP:%u TL:%03u TD:%+04d EO:%u RP:%u | KQ:%03u/%03u KD:%03u KC:%03u/%03u/%03u KR:%03u KP:%03u",
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
		WriteScreenText(line);

		line.Format("\x1b[97m\x1b[49m\x1b[8;1HTM 6A 9:%04u 15:%04u 18:%04u 19:%04u 25:%04u 26:%04u 27:%04u | 6B EV:%s W:%s P9:%04X SL:%03u LP:%u B:%03u/%03u R1:%02X S2:%02X SR:%X/%02X 99:%c/%u/%X/%02X/%02X",
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
		WriteScreenText(line);

			line.Format("\x1b[97m\x1b[49m\x1b[9;1HTM 6C A8:%02X EW:%u C:%u T:%02X/%u B:%02X/%02X/%02X/%02X F:%s S:%u M:%u A:%04X O:%05X V:%02X/%02X | 6D R17:%02X 9B:%02X>%02X>%02X V:%02X S:%02X/%02X P9:%04u",
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
			WriteScreenText(line);

		WriteScreenText("\x1b[0m");
	}

void CComboKernel::ComputeViewportBox(unsigned src_width, unsigned src_height,
									unsigned *out_x, unsigned *out_y,
									unsigned *out_w, unsigned *out_h) const
{
	unsigned box_x = 0u;
	unsigned box_y = 0u;
	unsigned box_w = m_Screen.GetWidth();
	unsigned box_h = m_Screen.GetHeight();
	const unsigned screen_width = m_Screen.GetWidth();
	const unsigned screen_height = m_Screen.GetHeight();
	unsigned layout_src_height = NormalizeViewportSourceHeight(src_height);

	if (screen_width > 0u && screen_height > 0u)
	{
		unsigned dst_width = screen_width;
		unsigned dst_height = screen_height;
		if (src_width > 0u && layout_src_height > 0u)
		{
			const unsigned ar_num = m_WidescreenEnabled ? 16u : 4u;
			const unsigned ar_den = m_WidescreenEnabled ? 9u : 3u;
			const unsigned logical_src_w = ComputeLogicalSourceWidth(src_width);
			const unsigned max_scale_percent =
				ComputePixelScaleMaxPercent(screen_width, screen_height, logical_src_w, layout_src_height);
			unsigned scale_percent = m_OverscanPercent;
			if (!ScalePercentIsNone(scale_percent) && scale_percent < kScalePercentMin) scale_percent = kScalePercentMin;
			if (scale_percent > max_scale_percent) scale_percent = max_scale_percent;
			dst_height = (unsigned) (((u64) layout_src_height * (u64) scale_percent) / 100u);
			if (dst_height == 0u) dst_height = 1u;
			if (dst_height > screen_height) dst_height = screen_height;

			/* Keep default geometry in 4:3. Only use 16:9 when widescreen is explicitly enabled. */
			dst_width = (unsigned) (((u64) dst_height * (u64) ar_num) / (u64) ar_den);
			if (dst_width == 0u) dst_width = 1u;
			if (dst_width > screen_width)
			{
				dst_width = screen_width;
				dst_height = (unsigned) (((u64) dst_width * (u64) ar_den) / (u64) ar_num);
			}
		}

		if (dst_width == 0u) dst_width = 1u;
		if (dst_height == 0u) dst_height = 1u;
		if (dst_width > screen_width) dst_width = screen_width;
		if (dst_height > screen_height) dst_height = screen_height;
		box_x = (screen_width > dst_width) ? ((screen_width - dst_width) / 2u) : 0u;
		box_y = (screen_height > dst_height) ? ((screen_height - dst_height) / 2u) : 0u;
		box_w = dst_width;
		box_h = dst_height;
	}

	if (out_x != 0) *out_x = box_x;
	if (out_y != 0) *out_y = box_y;
	if (out_w != 0) *out_w = box_w;
	if (out_h != 0) *out_h = box_h;
}

void CComboKernel::ResolveViewportBox(unsigned src_width, unsigned src_height,
									unsigned *out_x, unsigned *out_y,
									unsigned *out_w, unsigned *out_h)
{
	ComputeViewportBox(src_width, src_height, out_x, out_y, out_w, out_h);
}

void CComboKernel::BlitFmsxFrame(boolean force_redraw)
{
#if MSXBARE_ENABLE_FMSX
	const u16 *pixels = 0;
	unsigned width = 0;
	unsigned height = 0;
	const unsigned sequence = emulator_backend_video_frame(&pixels, &width, &height);

	if ((!force_redraw && sequence == m_FmsxVideoSeq) || pixels == 0 || width == 0 || height == 0)
	{
		return;
	}

	m_FmsxVideoSeq = sequence;

	const unsigned screen_width = m_Screen.GetWidth();
	const unsigned screen_height = m_Screen.GetHeight();
	unsigned src_x0 = 0u;
	unsigned src_y0 = 0u;
	unsigned src_w = width;
	unsigned src_h = height;
	unsigned dst_width = 0u;
	unsigned dst_height = 0u;

	const unsigned scanline_mode = (m_ScanlineMode > kScanlineModeCrt) ? kScanlineModeCrt : m_ScanlineMode;
	const u16 *crt_dim_lut = (scanline_mode == kScanlineModeCrt) ? EnsureCrtDimLutReady() : 0;
	unsigned offset_x = 0u;
	unsigned offset_y = 0u;
	ResolveViewportBox(width, height, &offset_x, &offset_y, &dst_width, &dst_height);
	const unsigned old_box_x = m_FmsxBoxX;
	const unsigned old_box_y = m_FmsxBoxY;
	const unsigned old_box_w = m_FmsxBoxW;
	const unsigned old_box_h = m_FmsxBoxH;
	const boolean box_changed = (old_box_x != offset_x)
						  || (old_box_y != offset_y)
						  || (old_box_w != dst_width)
						  || (old_box_h != dst_height);
	m_FmsxBoxX = offset_x;
	m_FmsxBoxY = offset_y;
	m_FmsxBoxW = dst_width;
	m_FmsxBoxH = dst_height;
	m_FmsxFallbackPattern = FALSE;

	CBcmFrameBuffer *frame_buffer = m_Screen.GetFrameBuffer();
	if (frame_buffer != 0 && frame_buffer->GetDepth() == 16)
	{
		u16 *dst_base = (u16 *) (uintptr) frame_buffer->GetBuffer();
		const unsigned pitch_pixels = frame_buffer->GetPitch() / sizeof(u16);
		const unsigned scanline_mode = (m_ScanlineMode > kScanlineModeCrt) ? kScanlineModeCrt : m_ScanlineMode;
		const boolean use_present_area = EnsureFmsxPresentBuffer(dst_width * dst_height);
		u16 *present_base = use_present_area ? m_FmsxPresentBuffer : dst_base;
		const unsigned present_pitch_pixels = use_present_area ? dst_width : pitch_pixels;
		if (force_redraw)
		{
			/* Full clear on forced redraw to avoid capturing stale menu pixels into snapshot. */
			FillRect565(dst_base, pitch_pixels, screen_width, screen_height,
				0u, 0u, screen_width, screen_height, kLetterboxColor565);
			if (m_DCacheEnabled)
			{
				FlushDCacheRange(dst_base, screen_width * screen_height * (unsigned) sizeof(u16));
			}
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
				if (m_DCacheEnabled)
				{
					u16 *flush_start = dst_base + (old_box_y * pitch_pixels) + old_box_x;
					const unsigned flush_pixels = ((old_box_h - 1u) * pitch_pixels) + old_box_w;
					FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
				}
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

				if (m_DCacheEnabled)
				{
					if (top_h > 0u)
					{
						u16 *flush_start = dst_base + (old_box_y * pitch_pixels) + old_box_x;
						const unsigned flush_pixels = ((top_h - 1u) * pitch_pixels) + old_box_w;
						FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
					}
					if (bottom_h > 0u)
					{
						u16 *flush_start = dst_base + (iy1 * pitch_pixels) + old_box_x;
						const unsigned flush_pixels = ((bottom_h - 1u) * pitch_pixels) + old_box_w;
						FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
					}
					if (left_w > 0u && mid_h > 0u)
					{
						u16 *flush_start = dst_base + (iy0 * pitch_pixels) + old_box_x;
						const unsigned flush_pixels = ((mid_h - 1u) * pitch_pixels) + left_w;
						FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
					}
					if (right_w > 0u && mid_h > 0u)
					{
						u16 *flush_start = dst_base + (iy0 * pitch_pixels) + ix1;
						const unsigned flush_pixels = ((mid_h - 1u) * pitch_pixels) + right_w;
						FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
					}
				}
			}
		}
		const boolean can_use_maps = (dst_width <= kBlitMapMaxAxis) && (dst_height <= kBlitMapMaxAxis);
		if (can_use_maps)
		{
			if (!m_BlitMapValid
			 || m_BlitMapSrcW != src_w
			 || m_BlitMapSrcH != src_h
			 || m_BlitMapDstW != dst_width
			 || m_BlitMapDstH != dst_height)
			{
				for (unsigned x = 0; x < dst_width; ++x)
				{
					m_BlitXMap[x] = (u16) (((u64) x * (u64) src_w) / (u64) dst_width);
				}
				for (unsigned y = 0; y < dst_height; ++y)
				{
					m_BlitYMap[y] = (u16) (((u64) y * (u64) src_h) / (u64) dst_height);
				}
				m_BlitMapSrcW = src_w;
				m_BlitMapSrcH = src_h;
				m_BlitMapDstW = dst_width;
				m_BlitMapDstH = dst_height;
				m_BlitMapValid = TRUE;
			}

			unsigned crt_cached_src_y = 0xFFFFFFFFu;
			u16 crt_dim_line_cache[kBlitMapMaxAxis];
			for (unsigned y = 0; y < dst_height; ++y)
			{
				const unsigned src_rel_y = m_BlitYMap[y];
				const unsigned src_y = src_y0 + src_rel_y;
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = present_base + (y * present_pitch_pixels);
				const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
				const boolean dark_crt =
					(scanline_mode == kScanlineModeCrt)
					&& crt_dim_lut != 0
					&& IsCrtDimmedHalfRow(y, src_rel_y, src_h, dst_height);
				const unsigned dim_mode = dark_lcd ? 1u : (dark_crt ? 2u : 0u);
				if (dark_crt && src_w <= kBlitMapMaxAxis)
				{
					if (src_y != crt_cached_src_y)
					{
						for (unsigned sx = 0; sx < src_w; ++sx)
						{
							crt_dim_line_cache[sx] = crt_dim_lut[src_line[src_x0 + sx]];
						}
						crt_cached_src_y = src_y;
					}
					BlitMappedLineRgb565NoDim(dst_line, crt_dim_line_cache, m_BlitXMap, dst_width, 0u, FALSE);
					continue;
				}
				if (dim_mode == 0u)
				{
					BlitMappedLineRgb565NoDim(dst_line, src_line, m_BlitXMap, dst_width, src_x0,
						(scanline_mode == kScanlineModeCrt) ? TRUE : FALSE);
				}
				else
				{
					const u16 *dim_lut = (dim_mode == 2u) ? crt_dim_lut : 0;
					BlitMappedLineRgb565(dst_line, src_line, m_BlitXMap, dst_width, src_x0, dim_mode, dim_lut,
						(dim_mode == 2u) ? TRUE : FALSE);
				}
			}
		}
		else
		{
			unsigned crt_cached_src_y = 0xFFFFFFFFu;
			u16 crt_dim_line_cache[kBlitMapMaxAxis];
			for (unsigned y = 0; y < dst_height; ++y)
			{
				const unsigned src_rel_y = (unsigned) (((u64) y * (u64) src_h) / (u64) dst_height);
				const unsigned src_y = src_y0 + src_rel_y;
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = present_base + (y * present_pitch_pixels);
				const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
				const boolean dark_crt =
					(scanline_mode == kScanlineModeCrt)
					&& crt_dim_lut != 0
					&& IsCrtDimmedHalfRow(y, src_rel_y, src_h, dst_height);
				if (dark_lcd)
				{
					for (unsigned x = 0; x < dst_width; ++x)
					{
						const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
						dst_line[x] = (u16) ((src_line[src_x] & 0xF7DEu) >> 1);
					}
				}
				else if (dark_crt)
				{
					if (src_w <= kBlitMapMaxAxis)
					{
						if (src_y != crt_cached_src_y)
						{
							for (unsigned sx = 0; sx < src_w; ++sx)
							{
								crt_dim_line_cache[sx] = crt_dim_lut[src_line[src_x0 + sx]];
							}
							crt_cached_src_y = src_y;
						}
						for (unsigned x = 0; x < dst_width; ++x)
						{
							const unsigned src_x = (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
							dst_line[x] = crt_dim_line_cache[src_x];
						}
					}
					else
					{
						for (unsigned x = 0; x < dst_width; ++x)
						{
							const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
							dst_line[x] = crt_dim_lut[src_line[src_x]];
						}
					}
				}
				else
				{
					for (unsigned x = 0; x < dst_width; ++x)
					{
						const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
						dst_line[x] = (scanline_mode == kScanlineModeCrt)
							? ApplyCrtBlackLevel565(src_line[src_x])
							: src_line[src_x];
					}
				}
			}
			m_BlitMapValid = FALSE;
		}

		if (use_present_area)
		{
			CDisplay::TArea area { offset_x, offset_x + dst_width - 1u, offset_y, offset_y + dst_height - 1u };
			if (m_DCacheEnabled)
			{
				const unsigned flush_pixels = dst_width * dst_height;
				FlushDCacheRange(present_base, flush_pixels * (unsigned) sizeof(u16));
			}
			(void) frame_buffer->WaitForVerticalSync();
			frame_buffer->SetArea(area, present_base);
		}
		else if (m_DCacheEnabled)
		{
			u16 *flush_start = dst_base + (offset_y * pitch_pixels) + offset_x;
			const unsigned flush_pixels = ((dst_height - 1u) * pitch_pixels) + dst_width;
			FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
		}
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
		const boolean dark_crt =
			(scanline_mode == kScanlineModeCrt)
			&& crt_dim_lut != 0
			&& IsCrtDimmedHalfRow(y, src_rel_y, src_h, dst_height);
		for (unsigned x = 0; x < dst_width; ++x)
		{
			const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
			u16 sample = line[src_x];
			if (scanline_mode == kScanlineModeCrt)
			{
				sample = ApplyCrtBlackLevel565(sample);
			}
			if (dark_lcd)
			{
				sample = (u16) ((sample & 0xF7DEu) >> 1);
			}
			else if (dark_crt)
			{
				sample = crt_dim_lut[sample];
			}
			m_Screen.SetPixel(offset_x + x, offset_y + y, (TScreenColor) sample);
		}
	}

#endif
}

void CComboKernel::ResetEmulationRuntimeState(void)
{
	m_FmsxFrames = 0;
	m_FmsxLastPC = -1;
	m_FmsxPcRepeatCount = 0;
	m_FmsxPcLoopLogged = FALSE;
	m_FmsxVdpTraceSeq = 0u;
	m_FmsxVdpTraceDropped = 0u;
	m_FmsxSccTraceSeq = 0u;
	m_FmsxSccTraceDropped = 0u;
	m_FmsxAudioPortTraceSeq = 0u;
	m_FmsxAudioPortTraceDropped = 0u;
	m_FmsxKmgTraceSeq = 0u;
	m_FmsxKmgTraceDropped = 0u;
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
		emulator_backend_input_push_keyboard(0u, kEmptyKeyboard);
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

void CComboKernel::ApplyRuntimeSettingsToFmsx(void)
{
#if MSXBARE_ENABLE_FMSX
	if (!m_FmsxReady)
	{
		return;
	}
	if (emulator_backend_selected_kind() != EMULATOR_BACKEND_KIND_FMSX)
	{
		return;
	}
	fmsx_runtime_set_overscan(m_OverscanPercent > kScalePercentMin ? TRUE : FALSE);
	fmsx_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	fmsx_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
	fmsx_runtime_set_boot_mode(m_BootMode);
	fmsx_runtime_set_model_profile(m_MachineProfile);
	fmsx_runtime_set_rammapper_kb(m_RamMapperKb);
	fmsx_runtime_set_megaram_kb(m_MegaRamKb);
	fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	fmsx_runtime_set_fm_music_enabled(m_FmMusicEnabled);
	fmsx_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
	fmsx_runtime_set_scc_plus_enabled(m_SccCartEnabled);
	if (!fmsx_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
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
	if (!m_FmsxReady || emulator_backend_selected_kind() != EMULATOR_BACKEND_KIND_FMSX)
	{
		return;
	}

	const unsigned runtime_refresh_hz = ClampRefreshRateHz(fmsx_runtime_get_refresh_hz());
	const u64 runtime_frame_interval_us = fmsx_runtime_get_frame_interval_us_exact();

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
	if (!m_FmsxReady || emulator_backend_selected_kind() != EMULATOR_BACKEND_KIND_FMSX)
	{
		m_KanjiRomAvailable = FALSE;
		m_PauseMenu.SetKanjiRomEnabled(m_KanjiRomEnabled);
		m_PauseMenu.SetKanjiRomAvailable(m_KanjiRomAvailable);
		return;
	}
	m_KanjiRomAvailable = fmsx_runtime_get_kanji_rom_available();
	m_KanjiRomEnabled = fmsx_runtime_get_kanji_rom_enabled();
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
	if (m_ScreenReady && m_DebugOverlayUnlocked && m_DebugOverlayEnabled)
	{
		DrawDebugOverlay((unsigned) (m_FmsxFrames & 0xFFFFFFFFu));
	}
#endif
}

void CComboKernel::UpdateLoadDiagTelemetry(unsigned stage)
{
#if MSXBARE_ENABLE_FMSX
	fmsx_runtime_set_load_diag(stage);
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	if (m_ScreenReady && m_DebugOverlayUnlocked && m_DebugOverlayEnabled)
	{
		DrawDebugOverlay((unsigned) (m_FmsxFrames & 0xFFFFFFFFu));
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
		BootPhaseWarn(m_Logger, "BT4", "msxbarepi.cfg... DEFAULTS");
		m_Logger.Write(FromKernel, LogNotice, "Settings file not found; using defaults");
		return;
	}
	if (stat_result != FR_OK)
	{
		UpdateLoadDiagTelemetry(5190u + (ClampFatFsCode(stat_result) % 10u)); /* CFG stat fail */
		LogSdOpResult(m_Logger, "CFG:STAT", stat_result, settings_path, TRUE);
		BootPhaseWarn(m_Logger, "BT4", "msxbarepi.cfg... FALLBACK");
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
		BootPhaseWarn(m_Logger, "BT4", "msxbarepi.cfg... FALLBACK");
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
		BootPhaseWarn(m_Logger, "BT4", "msxbarepi.cfg... FALLBACK");
		m_Logger.Write(FromKernel, LogWarning, "Settings read failed; using defaults");
		return;
	}
	UpdateLoadDiagTelemetry(5302u); /* CFG read ok */
	buffer[bytes_read] = '\0';

	/* Corruption guard: only parse files written by SaveSettingsToStorage(). */
	if (strstr(buffer, "#END") == 0)
	{
		BootPhaseWarn(m_Logger, "BT4", "msxbarepi.cfg... FALLBACK");
		m_Logger.Write(FromKernel, LogWarning, "Settings file invalid/corrupt; using defaults");
		return;
	}

	boolean has_cfg_carta = FALSE;
	boolean has_cfg_cartb = FALSE;
	boolean has_cfg_diska = FALSE;
	boolean has_cfg_diskb = FALSE;
	boolean has_scc_plus = FALSE;
	char cfg_carta_path[192];
	char cfg_cartb_path[192];
	char cfg_diska_path[192];
	char cfg_diskb_path[192];
	cfg_carta_path[0] = '\0';
	cfg_cartb_path[0] = '\0';
	cfg_diska_path[0] = '\0';
	cfg_diskb_path[0] = '\0';

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
					if (clamped != kScalePercentNone && clamped < kScalePercentMin) clamped = kScalePercentMin;
					if (clamped > kScalePercentHardMax) clamped = kScalePercentHardMax;
				m_OverscanPercent = (clamped == kScalePercentNone)
					? kScalePercentNone
					: ((clamped / kScalePercentStep) * kScalePercentStep);
			}
			else if (SettingsKeyEquals(line, key_len, "overscan"))
			{
				/* Legacy migration: overscan 0..100 -> scale 250..450 (steps of 50). */
				const unsigned legacy = value > 100u ? 100u : value;
				unsigned migrated = kScalePercentMin + ((legacy / 25u) * kScalePercentStep);
				if (migrated > kScalePercentHardMax) migrated = kScalePercentHardMax;
				m_OverscanPercent = migrated;
			}
			else if (SettingsKeyEquals(line, key_len, "widescreen"))
			{
				m_WidescreenEnabled = value ? TRUE : FALSE;
			}
			else if (SettingsKeyEquals(line, key_len, "language"))
			{
				m_Language = combo_locale_clamp_language(value);
			}
			else if (SettingsKeyEquals(line, key_len, "scanline"))
			{
				m_ScanlineMode = value > 2u ? 2u : value;
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
				m_DebugOverlayEnabled = value ? TRUE : FALSE;
#else
				(void) value;
				m_DebugOverlayEnabled = FALSE;
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

	m_RefreshRateHz = ClampRefreshRateHz(m_RefreshRateHz);
	m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
	m_PauseMenu.SetScalePercent(m_OverscanPercent);
	m_PauseMenu.SetLanguage(m_Language);
	m_PauseMenu.SetResolutionMode(m_ResolutionMode);
	m_PauseMenu.SetWidescreenEnabled(m_WidescreenEnabled);
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
	m_PauseMenu.SetFmMusicEnabled(m_FmMusicEnabled);
	m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
	m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled,
		has_cfg_cartb && cfg_cartb_path[0] ? FALSE : TRUE);
	m_PauseMenu.SetOverlayEnabled(
		MSXBARE_ENABLE_DEBUG_OVERLAY ? m_DebugOverlayEnabled : FALSE,
		MSXBARE_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE);
	m_PauseMenu.SetDebugLogEnabled(m_UartTelemetryEnabled);
	m_PauseMenu.SetAudioGainPercent(m_AudioOutputGainPct);
	{
		const unsigned max_scale = ComputeScaleMaxPercentForCurrentFrame(m_Screen.GetWidth(), m_Screen.GetHeight());
		m_PauseMenu.SetMaxScalePercent(max_scale);
		m_OverscanPercent = ClampScalePercent(m_OverscanPercent, max_scale);
		m_PauseMenu.SetScalePercent(m_OverscanPercent);
	}
#if MSXBARE_ENABLE_FMSX
	fmsx_runtime_set_overscan(m_OverscanPercent > kScalePercentMin ? TRUE : FALSE);
	fmsx_runtime_set_refresh_hz(m_RefreshRateHz);
	fmsx_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	fmsx_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
	fmsx_runtime_set_boot_mode(m_BootMode);
	fmsx_runtime_set_model_profile(m_MachineProfile);
	fmsx_runtime_set_rammapper_kb(m_RamMapperKb);
	fmsx_runtime_set_megaram_kb(m_MegaRamKb);
	fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	fmsx_runtime_set_fm_music_enabled(m_FmMusicEnabled);
	fmsx_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
	fmsx_runtime_set_scc_plus_enabled(m_SccCartEnabled);
#if MSXBARE_FEAT_LOAD_ROM
		if (has_cfg_carta) (void) fmsx_runtime_set_cartridge_path(0u, cfg_carta_path[0] ? cfg_carta_path : 0);
		if (has_cfg_cartb) (void) fmsx_runtime_set_cartridge_path(1u, cfg_cartb_path[0] ? cfg_cartb_path : 0);
#else
		(void) has_cfg_carta;
		(void) has_cfg_cartb;
#endif
#if MSXBARE_FEAT_LOAD_DISK
		if (has_cfg_diska) (void) fmsx_runtime_set_disk_path(0u, cfg_diska_path[0] ? cfg_diska_path : 0);
		if (has_cfg_diskb) (void) fmsx_runtime_set_disk_path(1u, cfg_diskb_path[0] ? cfg_diskb_path : 0);
#else
		(void) has_cfg_diska;
		(void) has_cfg_diskb;
#endif
		if (!fmsx_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
		{
			m_SccDualCartEnabled = FALSE;
		}
		SyncKanjiRomStateFromRuntime();
		m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled, fmsx_runtime_get_scc_dual_cart_available());
	#endif

	CString line_log;
	line_log.Format("Settings loaded from %s", settings_path);
	m_Logger.Write(FromKernel, LogNotice, line_log);
	BootPhase(m_Logger, "BT4", "msxbarepi.cfg... OK");
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

		APPEND_LINE_FMT("scale=%u\n", m_OverscanPercent);
		APPEND_LINE_FMT("language=%u\n", m_Language);
		APPEND_LINE_FMT("resolution=%u\n", m_ResolutionMode);
		APPEND_LINE_FMT("widescreen=%u\n", m_WidescreenEnabled ? 1u : 0u);
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
	APPEND_LINE_FMT("fm_music=%u\n", m_FmMusicEnabled ? 1u : 0u);
	APPEND_LINE_FMT("scc_plus=%u\n", m_SccCartEnabled ? 1u : 0u);
	APPEND_LINE_FMT("scc_dual=%u\n", m_SccDualCartEnabled ? 1u : 0u);
	APPEND_LINE_FMT("debugger=%u\n", m_DebugOverlayEnabled ? 1u : 0u);
	APPEND_LINE_FMT("audio_gain=%u\n", m_AudioOutputGainPct > 100u ? 100u : m_AudioOutputGainPct);
	#if MSXBARE_ENABLE_FMSX
		APPEND_LINE_TEXT("cart_a_path", fmsx_runtime_get_cartridge_path(0u));
		APPEND_LINE_TEXT("cart_b_path", fmsx_runtime_get_cartridge_path(1u));
		APPEND_LINE_TEXT("disk_a_path", fmsx_runtime_get_disk_path(0u));
		APPEND_LINE_TEXT("disk_b_path", fmsx_runtime_get_disk_path(1u));
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

boolean CComboKernel::EnsureFmsxPresentBuffer(unsigned min_pixels)
{
	static const unsigned kPresentBufferMaxPixels = kBlitMapMaxAxis * kBlitMapMaxAxis;

	if (min_pixels == 0u || min_pixels > kPresentBufferMaxPixels)
	{
		return FALSE;
	}
	if (m_FmsxPresentBuffer != 0 && m_FmsxPresentBufferPixels >= min_pixels)
	{
		return TRUE;
	}

	u16 *new_buffer = new u16[min_pixels];
	if (new_buffer == 0)
	{
		return FALSE;
	}
	if (m_FmsxPresentBuffer != 0)
	{
		delete[] m_FmsxPresentBuffer;
	}
	m_FmsxPresentBuffer = new_buffer;
	m_FmsxPresentBufferPixels = min_pixels;
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
	if (!m_FmsxReady)
	{
		UpdateSettingsSaveTelemetry(93u, 2u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Save State falhou: runtime fMSX inativo");
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
		if (fmsx_runtime_save_state(m_StateIoBuffer, cap, &state_bytes) && state_bytes > 0u)
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
	if (!m_FmsxReady)
	{
		UpdateSettingsSaveTelemetry(94u, 2u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: runtime fMSX inativo");
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

	if (!fmsx_runtime_load_state(m_StateIoBuffer, file_size))
	{
		UpdateSettingsSaveTelemetry(94u, 10u, 0u);
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: arquivo invalido/corrompido");
		return;
	}

		PushKeyboardStateToRuntime(TRUE);
		emulator_backend_input_push_joystick(m_JoyBridgeBits);
		if (emulator_backend_step_frame())
		{
			const EmulatorBackendRuntimeStatus runtime_status = emulator_backend_get_status();
			m_FmsxFrames = runtime_status.frames;
			m_FmsxLastError = runtime_status.last_error;
			m_FmsxLastPC = runtime_status.last_pc;
			BlitFmsxFrame(TRUE);
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
		if (m_FmsxReady)
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
				if (!fmsx_runtime_set_cartridge_path(slot_index, rom_path))
				{
					UpdateLoadDiagTelemetry(9001u); /* set_cartridge_path failed */
					m_Logger.Write(FromKernel, LogWarning, "Load ROM falhou: caminho invalido");
					break;
				}
				UpdateLoadDiagTelemetry(2002u); /* path set */
				if (rom_path[0] == '\0')
				{
					if (fmsx_runtime_unload_cartridge(slot_index))
					{
						UpdateLoadDiagTelemetry(2005u); /* unload cart ok */
						m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled, fmsx_runtime_get_scc_dual_cart_available());
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
		if (m_FmsxReady)
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
					if (fmsx_runtime_unload_disk(drive_index))
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
				const boolean load_ok = fmsx_runtime_load_disk(drive_index, disk_path);
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
			game_master_catalog_reset(&m_GameMasterCatalog);
			m_PauseMenu.OpenGameMaster(&m_GameMasterCatalog, (unsigned) GameMasterLoadOk, 0u);
			m_Logger.Write(FromKernel, LogNotice, "Game Codes aberto: SD:/cheats");
		}
		break;
#endif

	case ComboMenuActionApplyGameMasterCheat:
#if !MSXBARE_ENABLE_FMSX
		break;
#else
		if (m_FmsxReady)
		{
			unsigned game_index = 0u;
			unsigned cheat_index = 0u;
			boolean has_value_override = FALSE;
			uint16_t value_override = 0u;
			if (m_PauseMenu.ConsumePendingGameMasterCheat(&game_index, &cheat_index, &has_value_override, &value_override)
				&& game_index < (unsigned) m_GameMasterCatalog.game_count
				&& cheat_index < (unsigned) m_GameMasterCatalog.cheat_count)
			{
				const TGameMasterGame *game = &m_GameMasterCatalog.games[game_index];
				const TGameMasterCheat *cheat = &m_GameMasterCatalog.cheats[cheat_index];
				boolean applied = FALSE;
				CString line;

				if (cheat_index >= (unsigned) game->cheat_first
					&& cheat_index < (unsigned) game->cheat_first + (unsigned) game->cheat_count
					&& cheat->poke_count > 0u
					&& cheat->poke_first + cheat->poke_count <= (unsigned) m_GameMasterCatalog.poke_count)
				{
					const boolean was_active = fmsx_runtime_is_game_master_cheat_active(
						&m_GameMasterCatalog.pokes[cheat->poke_first],
						(unsigned) cheat->poke_count);
					line.Format("GM APPLY begin game=%s cheat=%s pokes=%u",
					            game->title,
					            cheat->title,
					            (unsigned) cheat->poke_count);
					m_Logger.Write(FromKernel, LogNotice, line);

					for (unsigned i = 0u; i < (unsigned) cheat->poke_count; ++i)
					{
						const TGameMasterPoke *poke = &m_GameMasterCatalog.pokes[cheat->poke_first + i];
						if (poke->size_bits == 16u)
						{
							uint16_t before16 = 0u;
							(void) fmsx_runtime_peek16(poke->address, &before16);
							line.Format("GM APPLY pre  A:%04X S:%u V:%04X R:%04X",
							            (unsigned) poke->address,
							            (unsigned) poke->size_bits,
							            (unsigned) poke->value,
							            (unsigned) before16);
						}
						else
						{
							uint8_t before8 = 0u;
							(void) fmsx_runtime_peek8(poke->address, &before8);
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
						applied = fmsx_runtime_set_game_master_cheat_value(
							&m_GameMasterCatalog.pokes[cheat->poke_first],
							(unsigned) cheat->poke_count,
							value_override);
					}
					else
					{
						applied = fmsx_runtime_set_game_master_cheat_enabled(
							&m_GameMasterCatalog.pokes[cheat->poke_first],
							(unsigned) cheat->poke_count,
							was_active ? FALSE : TRUE);
					}

					for (unsigned i = 0u; i < (unsigned) cheat->poke_count; ++i)
					{
						const TGameMasterPoke *poke = &m_GameMasterCatalog.pokes[cheat->poke_first + i];
						if (poke->size_bits == 16u)
						{
							uint16_t after16 = 0u;
							(void) fmsx_runtime_peek16(poke->address, &after16);
							line.Format("GM APPLY post A:%04X S:%u V:%04X R:%04X",
							            (unsigned) poke->address,
							            (unsigned) poke->size_bits,
							            (unsigned) poke->value,
							            (unsigned) after16);
						}
						else
						{
							uint8_t after8 = 0u;
							(void) fmsx_runtime_peek8(poke->address, &after8);
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
		if (m_FmsxReady)
		{
			ExitPauseForBackendAction();
			if (fmsx_runtime_reboot_basic())
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
		if (m_FmsxReady)
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
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		fmsx_runtime_set_overscan(m_OverscanPercent > kScalePercentMin ? TRUE : FALSE);
		/* Scale changes can shrink/grow viewport; force deterministic full redraw + fresh snapshot. */
		if (m_EmulationPaused && m_FmsxReady)
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
				line.Format("Settings: Scale NONE");
			}
			else
			{
				line.Format("Settings: Scale %u.%ux", m_OverscanPercent / 100u, (m_OverscanPercent % 100u) / 10u);
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

	case ComboMenuActionToggleWidescreen:
		m_WidescreenEnabled = m_WidescreenEnabled ? FALSE : TRUE;
		m_PauseMenu.SetWidescreenEnabled(m_WidescreenEnabled);
		RefreshSettingsUiAfterAction();
		/* Widescreen ON/OFF changes viewport geometry; force full framebuffer clear on next blit. */
		m_ForceViewportFullClearNextFrame = TRUE;
		m_Logger.Write(FromKernel, LogNotice, m_WidescreenEnabled ? "Settings: Widescreen ON" : "Settings: Widescreen OFF");
		break;

	case ComboMenuActionCycleScanlines:
		m_ScanlineMode = (m_ScanlineMode + 1u) % 3u;
		m_PauseMenu.SetScanlineMode(m_ScanlineMode);
		RefreshSettingsUiAfterAction();
		if (m_ScanlineMode == kScanlineModeOff)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines DES");
		}
		else if (m_ScanlineMode == kScanlineModeLcd)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines LCD");
		}
		else
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines CRT");
		}
		break;

	case ComboMenuActionCycleScanlinesPrev:
		m_ScanlineMode = (m_ScanlineMode == 0u) ? 2u : (m_ScanlineMode - 1u);
		m_PauseMenu.SetScanlineMode(m_ScanlineMode);
		RefreshSettingsUiAfterAction();
		if (m_ScanlineMode == kScanlineModeOff)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines DES");
		}
		else if (m_ScanlineMode == kScanlineModeLcd)
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines LCD");
		}
		else
		{
			m_Logger.Write(FromKernel, LogNotice, "Settings: Scanlines CRT");
		}
		break;

	case ComboMenuActionCycleRefreshRate:
#if !MSXBARE_ENABLE_DEBUG_OVERLAY
		m_Logger.Write(FromKernel, LogNotice, "Settings: Refresh indisponivel neste build");
		break;
#else
		m_RefreshRateHz = (m_RefreshRateHz == 50u) ? 60u : 50u;
	#if MSXBARE_ENABLE_FMSX
		fmsx_runtime_debug_force_refresh_hz(m_RefreshRateHz);
		m_RefreshRateHz = ClampRefreshRateHz(fmsx_runtime_get_refresh_hz());
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
		fmsx_runtime_debug_force_refresh_hz(m_RefreshRateHz);
		m_RefreshRateHz = ClampRefreshRateHz(fmsx_runtime_get_refresh_hz());
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
		fmsx_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	#endif
		m_Logger.Write(FromKernel, LogNotice, m_DiskRomEnabled ? "Settings: Disk ROM ON" : "Settings: Disk ROM OFF");
		break;
#endif

	case ComboMenuActionToggleKanjiRom:
#if MSXBARE_ENABLE_FMSX
		if (!fmsx_runtime_get_kanji_rom_available())
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
		fmsx_runtime_set_kanji_rom_enabled(m_KanjiRomEnabled);
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
		fmsx_runtime_set_boot_mode(m_BootMode);
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
		fmsx_runtime_set_boot_mode(m_BootMode);
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
		ApplyRuntimeSettingsToFmsx();
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
		ApplyRuntimeSettingsToFmsx();
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
			fmsx_runtime_set_rammapper_kb(m_RamMapperKb);
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
			fmsx_runtime_set_rammapper_kb(m_RamMapperKb);
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
		fmsx_runtime_set_megaram_kb(m_MegaRamKb);
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
		fmsx_runtime_set_megaram_kb(m_MegaRamKb);
	#endif
		break;
#endif

	case ComboMenuActionCycleZ80Turbo:
		m_Z80TurboMode = (m_Z80TurboMode + 1u) % 4u;
		m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	#endif
		{
			CString line;
			line.Format("Settings: Z80 Turbo %u%%", Z80TurboPercentFromMode(m_Z80TurboMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleZ80TurboPrev:
		m_Z80TurboMode = (m_Z80TurboMode == 0u) ? 3u : (m_Z80TurboMode - 1u);
		m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
		RefreshSettingsUiAfterAction();
	#if MSXBARE_ENABLE_FMSX
		fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
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

	case ComboMenuActionToggleOverlay:
	#if MSXBARE_ENABLE_DEBUG_OVERLAY
		SetDebugOverlayEnabled(m_DebugOverlayEnabled ? FALSE : TRUE);
		RefreshSettingsUiAfterAction();
		m_Logger.Write(FromKernel, LogNotice, m_DebugOverlayEnabled ? "Settings: Debugger ON" : "Settings: Debugger OFF");
	#else
		m_Logger.Write(FromKernel, LogNotice, "Settings: Debugger indisponivel neste build");
	#endif
		break;

	case ComboMenuActionToggleDebugLog:
	#if MSXBARE_ENABLE_DEBUG_OVERLAY
		SetUartTelemetryEnabled(m_UartTelemetryEnabled ? FALSE : TRUE);
		m_Logger.Write(FromKernel, LogNotice,
			m_UartTelemetryEnabled ? "Settings: UART LOG ON" : "Settings: UART LOG OFF");
	#else
		m_Logger.Write(FromKernel, LogNotice, "Settings: UART LOG indisponivel neste build");
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
		dual_available = fmsx_runtime_get_scc_dual_cart_available();
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
		fmsx_runtime_set_scc_plus_enabled(m_SccCartEnabled);
		if (!fmsx_runtime_set_scc_dual_cart_enabled(m_SccDualCartEnabled))
		{
			m_SccDualCartEnabled = FALSE;
		}
		m_PauseMenu.SetSccDualCartState(m_SccDualCartEnabled, fmsx_runtime_get_scc_dual_cart_available());
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
		fmsx_runtime_set_fm_music_enabled(m_FmMusicEnabled);
	#endif
		m_Logger.Write(FromKernel, LogNotice, m_FmMusicEnabled ? "Settings: FM Music ON" : "Settings: FM Music OFF");
		break;
#endif

	case ComboMenuActionSaveState:
		RefreshSettingsUiAfterAction();
		m_StateSavePending = TRUE;
		UpdateSettingsSaveTelemetry(31u, 0u, 0u);
		m_Logger.Write(FromKernel, LogNotice, "Save State queued");
		break;

	case ComboMenuActionLoadState:
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

void CComboKernel::SetDebugOverlayEnabled(boolean enabled)
{
#if MSXBARE_ENABLE_DEBUG_OVERLAY
	const boolean was_enabled = m_DebugOverlayEnabled ? TRUE : FALSE;
	m_DebugOverlayEnabled = enabled ? TRUE : FALSE;
	if (!was_enabled && m_DebugOverlayEnabled)
	{
		m_OverscanPercent = kScalePercentNone;
		m_PauseMenu.SetScalePercent(m_OverscanPercent);
#if MSXBARE_ENABLE_FMSX
		fmsx_runtime_set_overscan(FALSE);
		if (m_EmulationPaused && m_FmsxReady)
		{
			m_PauseNeedsBackgroundRedraw = TRUE;
			m_PauseNeedsFullViewportClear = TRUE;
		}
		m_ForceViewportFullClearNextFrame = TRUE;
#endif
	}
	m_PauseMenu.SetOverlayEnabled(m_DebugOverlayEnabled, TRUE);
	m_PauseMenu.RequestRedraw();
	if (m_ScreenReady && m_DebugOverlayUnlocked && !m_DebugOverlayEnabled)
	{
		ClearDebugOverlay();
	}
#else
	(void) enabled;
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
	fmsx_runtime_set_frame_perf_telemetry_enabled(FALSE);
#endif
	m_PauseMenu.SetDebugLogEnabled(m_UartTelemetryEnabled);
	m_PauseMenu.RequestRedraw();
}

void CComboKernel::ClearDebugOverlay(void)
{
	if (!m_ScreenReady)
	{
		return;
	}

	WriteScreenText("\x1b[1;1H                                                                                                                                ");
	WriteScreenText("\x1b[2;1H                                                                                                                                ");
	WriteScreenText("\x1b[3;1H                                                                                                                                ");
	WriteScreenText("\x1b[4;1H                                                                                                                                ");
	WriteScreenText("\x1b[5;1H                                                                                                                                ");
	WriteScreenText("\x1b[6;1H                                                                                                                                ");
	WriteScreenText("\x1b[7;1H                                                                                                                                ");
	WriteScreenText("\x1b[8;1H                                                                                                                                ");
	WriteScreenText("\x1b[9;1H                                                                                                                                ");
	WriteScreenText("\x1b[10;1H                                                                                                                               ");
	WriteScreenText("\x1b[11;1H                                                                                                                               ");
	WriteScreenText("\x1b[12;1H                                                                                                                               ");
	WriteScreenText("\x1b[13;1H                                                                                                                               ");
	WriteScreenText("\x1b[14;1H                                                                                                                               ");
	WriteScreenText("\x1b[15;1H                                                                                                                               ");
	WriteScreenText("\x1b[16;1H                                                                                                                               ");
	WriteScreenText("\x1b[17;1H                                                                                                                               ");
	WriteScreenText("\x1b[18;1H                                                                                                                               ");
	WriteScreenText("\x1b[19;1H                                                                                                                               ");
	WriteScreenText("\x1b[20;1H                                                                                                                               ");
	WriteScreenText("\x1b[0m");
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

		emulator_backend_input_push_keyboard(modifiers, pushed_raw);
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

		emulator_backend_input_push_keyboard(m_RuntimeKeyboardModifiers, pushed_raw);
	}
#else
	(void) rensha_fire_on;
#endif
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
	if (same_report)
	{
		/* Auto-repeat only for navigation keys (arrows + page up/down). */
		const boolean allow_repeat =
			key_state.menu_up_pressed
			|| key_state.menu_down_pressed
			|| key_state.menu_left_pressed
			|| key_state.menu_right_pressed
			|| key_state.menu_page_up_pressed
			|| key_state.menu_page_down_pressed;
		if (!allow_repeat)
		{
			return;
		}
	}

	if (key_state.f1_pressed && !m_LastF12Pressed)
	{
		#if MSXBARE_ENABLE_DEBUG_OVERLAY
		SetDebugOverlayEnabled(m_DebugOverlayEnabled ? FALSE : TRUE);
		m_Logger.Write(FromKernel, LogNotice, m_DebugOverlayEnabled ? "Overlay ON" : "Overlay OFF");
		#endif
	}
	m_LastF12Pressed = key_state.f1_pressed;

	const boolean f6_edge = (key_state.f6_pressed && !m_LastF6Pressed) ? TRUE : FALSE;
	const boolean f7_edge = (key_state.f7_pressed && !m_LastF7Pressed) ? TRUE : FALSE;
	const boolean f8_edge = (key_state.f8_pressed && !m_LastF8Pressed) ? TRUE : FALSE;
	const boolean f10_edge = (key_state.f10_pressed && !m_LastF10Pressed) ? TRUE : FALSE;
	const boolean fm_gain_up_edge = (key_state.debug_fm_gain_up_pressed && !m_LastFmGainUpPressed) ? TRUE : FALSE;
	const boolean fm_gain_down_edge = (key_state.debug_fm_gain_down_pressed && !m_LastFmGainDownPressed) ? TRUE : FALSE;
	if (f6_edge)
	{
		const boolean muted = fmsx_runtime_get_audio_layer_muted(1u) ? FALSE : TRUE;
		fmsx_runtime_set_audio_layer_muted(1u, muted);
	}
	if (f7_edge)
	{
		const boolean muted = fmsx_runtime_get_audio_layer_muted(2u) ? FALSE : TRUE;
		fmsx_runtime_set_audio_layer_muted(2u, muted);
	}
	if (f8_edge)
	{
		const boolean muted = fmsx_runtime_get_audio_layer_muted(3u) ? FALSE : TRUE;
		fmsx_runtime_set_audio_layer_muted(3u, muted);
	}
	if (f10_edge)
	{
		SetUartTelemetryEnabled(m_UartTelemetryEnabled ? FALSE : TRUE);
		m_Logger.Write(FromKernel, LogNotice,
			m_UartTelemetryEnabled ? "UART telemetry ON (F10)" : "UART telemetry OFF (F10)");
	}
	if (fm_gain_up_edge)
	{
		if (m_FmLayerGainPct < 100u)
		{
			m_FmLayerGainPct += 5u;
			if (m_FmLayerGainPct > 100u) m_FmLayerGainPct = 100u;
			fmsx_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
		}
	}
	if (fm_gain_down_edge)
	{
		if (m_FmLayerGainPct > 0u)
		{
			m_FmLayerGainPct = (m_FmLayerGainPct >= 5u) ? (m_FmLayerGainPct - 5u) : 0u;
			fmsx_runtime_set_fm_layer_gain_pct(m_FmLayerGainPct);
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
		m_LastF10Pressed = key_state.f10_pressed;
		m_LastFmGainUpPressed = key_state.debug_fm_gain_up_pressed;
		m_LastFmGainDownPressed = key_state.debug_fm_gain_down_pressed;
		return;
	}

#if MSXBARE_ENABLE_FMSX
	if (m_EmulationPaused && m_FmsxReady)
	{
		const unsigned max_scale = ComputeScaleMaxPercentForCurrentFrame(m_Screen.GetWidth(), m_Screen.GetHeight());
		m_PauseMenu.SetMaxScalePercent(max_scale);
		if (!ScalePercentIsNone(m_OverscanPercent) && m_OverscanPercent > max_scale)
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
		(!same_report ? key_state.menu_jump_letter : '\0'));
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
		|| (menu_action == ComboMenuActionToggleWidescreen)
		|| (menu_action == ComboMenuActionCycleScanlines)
		|| (menu_action == ComboMenuActionCycleScanlinesPrev);
	if (m_PauseMenu.ConsumeBackgroundRestoreRequest())
	{
		/* Only viewport-affecting settings trigger fresh snapshot recapture. */
		if (m_EmulationPaused && m_FmsxReady && video_affecting_action)
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
	if (m_EmulationPaused && m_FmsxReady
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
	m_LastF10Pressed = key_state.f10_pressed;
	m_LastFmGainUpPressed = key_state.debug_fm_gain_up_pressed;
	m_LastFmGainDownPressed = key_state.debug_fm_gain_down_pressed;
}
