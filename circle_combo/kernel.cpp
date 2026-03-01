#include "kernel.h"
#include "keyboard_input.h"
#include "combo_locale.h"
#if COMBO_ENABLE_FMSX
#include "fmsx_runtime.h"
#include "fmsx_initramfs.h"
#endif

#include <circle/sound/hdmisoundbasedevice.h>
#include <circle/startup.h>
#include <circle/string.h>
#include <circle/synchronize.h>
#include <circle/util.h>
#include <assert.h>

static const char FromKernel[] = "combo";
static const unsigned kSampleRate = 48000;
static const unsigned kChunkSize = 384 * 10;
static const unsigned kQueueMs = 120;
/* 16667us caps cadence at <=60fps (1000000/60 truncated would run slightly >60). */
static const u64 kFrameInterval60Us = 16667ull;
static const u64 kFrameInterval50Us = 20000ull;
static const u64 kDebugOverlayIntervalUs = 200000ull;
static const u64 kFramePacingGuardUs = 300ull;
static const u64 kFramePacingSleepTargetUs = 1200ull;
static const u64 kFramePacingSpinThresholdUs = 80ull;
static const uintptr kDCacheLineSize = 64u;
static const u16 kLetterboxColor565 = 0x0000u;
static const unsigned kOverscanSafeScalePct = 92u;
static const unsigned kOverscanMaxScalePct = 100u;
static const unsigned kScanlineModeOff = 0u;
static const unsigned kScanlineModeLcd = 1u;
static const unsigned kScanlineModeCrt = 2u;
static const unsigned kBootModeNorm = 0u;
static const unsigned kBootModeFast = 1u;
static const unsigned kBootModeGame = 2u;
static const char kSettingsDrive[] = "SD:";
static const char kSettingsPath[] = "SD:/MSXBARE.CFG";
static const char kStateDirPath[] = "SD:/states";
static const char kStatePath[] = "SD:/states/slot-last.sav";
static const unsigned kStateBufferMaxBytes = 2u * 1024u * 1024u;
static const unsigned kZ80TurboModeDes = 0u;
static const unsigned kZ80TurboModePan = 1u;
static const unsigned kZ80TurboModeMax = 2u;
static const u8 kJoyBridgeFireA = (u8) (1u << 4);
static const unsigned char kHidKeySpace = 0x2Cu;
/* Rensha modes are expressed in pulses per 10 frames (0.5, 1.0, 1.5). */
static const unsigned kRenshaRateDen = 20u; /* 1/20 pulse per frame unit */
static const unsigned kRgb565LutSize = 65536u;

static unsigned UMax(unsigned a, unsigned b)
{
	return a > b ? a : b;
}

static unsigned UMin(unsigned a, unsigned b)
{
	return a < b ? a : b;
}

static u64 FrameIntervalFromRefreshHz(unsigned hz)
{
	return (hz == 50u) ? kFrameInterval50Us : kFrameInterval60Us;
}

static unsigned Z80TurboPercentFromMode(unsigned mode)
{
	switch (mode)
	{
	case kZ80TurboModePan:
		return 150u;  /* ~5.37MHz over 3.58MHz base */
	case kZ80TurboModeMax:
		return 224u;  /* ~8.00MHz over 3.58MHz base */
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

static u16 s_DimLutHalf[kRgb565LutSize];
static u16 s_DimLut85[kRgb565LutSize];
static boolean s_DimLutReady = FALSE;

static void EnsureDimLutReady(void)
{
	if (s_DimLutReady)
	{
		return;
	}

	for (unsigned sample = 0; sample < kRgb565LutSize; ++sample)
	{
		const u16 rgb = (u16) sample;
		s_DimLutHalf[sample] = (u16) ((rgb & 0xF7DEu) >> 1);

		const unsigned r = (rgb >> 11) & 0x1Fu;
		const unsigned g = (rgb >> 5) & 0x3Fu;
		const unsigned b = rgb & 0x1Fu;
		const unsigned r85 = (r * 85u) / 100u;
		const unsigned g85 = (g * 85u) / 100u;
		const unsigned b85 = (b * 85u) / 100u;
		s_DimLut85[sample] = (u16) ((r85 << 11) | (g85 << 5) | b85);
	}

	s_DimLutReady = TRUE;
}

static void BlitMappedLineRgb565(u16 *dst_line,
					 const u16 *src_line,
					 const u16 *xmap,
					 unsigned dst_width,
					 unsigned src_x0,
					 unsigned dim_mode,
					 const u16 *dim_lut)
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
						  unsigned src_x0)
{
	if (dst_line == 0 || src_line == 0 || xmap == 0 || dst_width == 0u)
	{
		return;
	}

	unsigned x = 0u;

	/* Align to 32-bit stores when possible (2 pixels per write). */
	if ((((uintptr) dst_line) & 0x2u) != 0u)
	{
		dst_line[0] = src_line[src_x0 + xmap[0]];
		x = 1u;
	}

	for (; x + 1u < dst_width; x += 2u)
	{
		const u16 s0 = src_line[src_x0 + xmap[x]];
		const u16 s1 = src_line[src_x0 + xmap[x + 1u]];
		*(u32 *) (void *) (dst_line + x) = (u32) s0 | ((u32) s1 << 16);
	}

	if (x < dst_width)
	{
		dst_line[x] = src_line[src_x0 + xmap[x]];
	}
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

#ifndef COMBO_DEBUG_OVERLAY_DEFAULT
#define COMBO_DEBUG_OVERLAY_DEFAULT 1
#endif

#ifndef COMBO_TEST_TONE_DEFAULT
#define COMBO_TEST_TONE_DEFAULT 0
#endif

#ifndef COMBO_INITRAMFS_MOUNT
#define COMBO_INITRAMFS_MOUNT 1
#endif

#ifndef COMBO_FMSX_AUDIO
#define COMBO_FMSX_AUDIO 1
#endif

#ifndef COMBO_FMSX_AUDIO_GAIN
#define COMBO_FMSX_AUDIO_GAIN 1
#endif

#ifndef COMBO_FMSX_AUDIO_GAIN_MAX
#define COMBO_FMSX_AUDIO_GAIN_MAX 8
#endif

#ifndef COMBO_FMSX_AUDIO_TARGET_PEAK
#define COMBO_FMSX_AUDIO_TARGET_PEAK 6000
#endif

#ifndef COMBO_FMSX_AUDIO_PROBE_TONE
#define COMBO_FMSX_AUDIO_PROBE_TONE 0
#endif

#ifndef COMBO_AUDIO_BOOT_TONE_MS
#define COMBO_AUDIO_BOOT_TONE_MS 0
#endif

#ifndef COMBO_AUDIO_BOOT_TONE_AMP
#define COMBO_AUDIO_BOOT_TONE_AMP 12000
#endif

#ifndef COMBO_BOOT_QUIET
#define COMBO_BOOT_QUIET 0
#endif

#ifndef COMBO_ENABLE_DEBUG_OVERLAY
#define COMBO_ENABLE_DEBUG_OVERLAY 1
#endif

#ifndef COMBO_ENABLE_SETTINGS_SAVE_EXPERIMENTAL
#define COMBO_ENABLE_SETTINGS_SAVE_EXPERIMENTAL 0
#endif

#ifndef COMBO_DEFER_USB_INIT_FRAMES
#define COMBO_DEFER_USB_INIT_FRAMES 90u
#endif

#ifndef COMBO_DEFER_SETTINGS_LOAD_FRAMES
#define COMBO_DEFER_SETTINGS_LOAD_FRAMES 0u
#endif

#ifndef COMBO_DEFER_INITRAMFS_FULL_MOUNT_FRAMES
#define COMBO_DEFER_INITRAMFS_FULL_MOUNT_FRAMES 120u
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
	m_Keyboard(0),
	m_KeyboardRemovedHandle(0),
	m_AudioPhase(0),
	m_AudioStep((u32)(((u64)440u << 32) / (u64)kSampleRate)),
	m_PlugAndPlayCount(0),
	m_KeyEventCount(0),
	m_LastKeyCode(0),
	m_AudioWriteOps(0),
	m_AudioDropOps(0),
	m_AudioPeak(0),
	m_LastAudioSample(0),
	m_SoundStartAttempts(0),
	m_SoundStartFailures(0),
	m_LastQueueAvail(0),
	m_LastQueueFree(0),
	m_AudioTargetPeakRuntime(COMBO_FMSX_AUDIO_TARGET_PEAK),
	m_AudioClipMaxRuntime(16000),
	m_AudioOutputGainPct(50),
	m_BootToneFramesRemaining(0),
	m_UsbInitRetryTick(0u),
	m_AudioInitAttempted(FALSE),
	m_UsbReady(FALSE),
	m_JoyBridgeBits(0),
	m_JoyMappedBits(ComboKeyboardJoyMask()),
	m_DebugOverlayEnabled((COMBO_ENABLE_DEBUG_OVERLAY && COMBO_DEBUG_OVERLAY_DEFAULT) ? TRUE : FALSE),
	m_EmulationPaused(FALSE),
	m_LastF12Pressed(FALSE),
	m_LastPausePressed(FALSE),
	m_PauseNeedsBackgroundRedraw(FALSE),
	m_FmsxEnabled(COMBO_ENABLE_FMSX ? TRUE : FALSE),
	m_FmsxReady(FALSE),
	m_FmsxFrames(0),
	m_FmsxLastError(0),
	m_FmsxLastPC(-1),
	m_FmsxPcRepeatCount(0),
	m_FmsxPcLoopLogged(FALSE),
	m_FmsxVideoSeq(0),
	m_FmsxFpsWindowStartUs(0),
	m_LastPauseToggleUs(0),
	m_LastOverlayUs(0),
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
	m_OverscanPercent(0u),
	m_Language(ComboLanguagePT),
	m_WidescreenEnabled(FALSE),
	m_ScanlineMode(kScanlineModeOff),
	m_RefreshRateHz(60u),
	m_DiskRomEnabled(TRUE),
	m_BootMode((COMBO_FMSX_BOOT_PROFILE > 2) ? kBootModeNorm : (unsigned) COMBO_FMSX_BOOT_PROFILE),
	m_Z80TurboMode(kZ80TurboModeDes),
	m_RenshaMode(0u),
	m_RenshaPhase(0u),
	m_LastKeyboardModifiers(0u),
	m_LastKeyboardRawKeys{0u, 0u, 0u, 0u, 0u, 0u},
	m_SccCartEnabled(TRUE),
	m_FrameIntervalUs(FrameIntervalFromRefreshHz(60u)),
	m_FramePacingResetPending(FALSE),
	m_FmsxFallbackPattern(FALSE),
	m_TestToneEnabled(COMBO_TEST_TONE_DEFAULT ? TRUE : FALSE),
	m_MmuEnabled(FALSE),
	m_DCacheEnabled(FALSE),
	m_ICacheEnabled(FALSE),
	m_SettingsStorageReady(FALSE),
	m_SettingsLoadPending(FALSE),
	m_InitramfsDeferredMountPending(FALSE),
	m_SettingsSavePending(FALSE),
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
	m_StateIoBufferCapacity(0u)
{
	s_Instance = this;
	m_ActLED.Blink(5);
}

CComboKernel::~CComboKernel(void)
{
	if (m_StateIoBuffer != 0)
	{
		delete[] m_StateIoBuffer;
		m_StateIoBuffer = 0;
		m_StateIoBufferCapacity = 0u;
	}
	s_Instance = 0;
}

boolean CComboKernel::Initialize(void)
{
	boolean ok = TRUE;

	if (ok)
	{
		ok = m_Screen.Initialize();
	}
	if (ok)
	{
		ok = m_Serial.Initialize(115200);
		if (ok)
		{
			BootTrace("I2");
		}
	}

	if (ok)
	{
		CDevice *target = &m_Serial;
		ok = m_Logger.Initialize(target);
	}

	if (ok) ok = m_Interrupt.Initialize();
	if (ok) ok = m_Timer.Initialize();
	if (ok)
	{
		if (!m_EMMC.Initialize())
		{
			m_Logger.Write(FromKernel, LogWarning, "SD storage init failed; settings persistence disabled");
		}
		else
		{
			m_SettingsStorageReady = TRUE;
		}
	}

	return ok;
}

TComboShutdownMode CComboKernel::Run(void)
{
	if (!COMBO_BOOT_QUIET)
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
	const boolean fmsx_audio_enabled = (m_FmsxEnabled && (COMBO_FMSX_AUDIO ? TRUE : FALSE));
	if (!(m_TestToneEnabled || fmsx_audio_enabled))
	{
		m_Logger.Write(FromKernel, LogNotice, "Audio OFF");
	}
	else
	{
		m_Logger.Write(FromKernel, LogNotice, "Audio init deferred until first fMSX frames");
	}

	m_Logger.Write(FromKernel, LogNotice, "USB init deferred for faster first frame");
	if (m_SettingsStorageReady)
	{
		/* Must be applied before fMSX init so boot/runtime settings take effect on first boot. */
		if (f_mount(&m_SettingsFileSystem, kSettingsDrive, 1) == FR_OK)
		{
			LoadSettingsFromStorage();
			combo_media_catalog_begin_scan();
			m_MediaCatalogStarted = TRUE;
			m_MediaCatalogSummaryLogged = FALSE;
			m_Logger.Write(FromKernel, LogNotice, "media scan started: SD:/roms + SD:/disks");
		}
		else
		{
			m_SettingsStorageReady = FALSE;
			m_Logger.Write(FromKernel, LogWarning, "Settings mount failed on SD:; persistence disabled");
		}
	}
#if COMBO_ENABLE_FMSX
	if (m_FmsxEnabled)
	{
		if (!COMBO_BOOT_QUIET)
		{
			BootTrace("R1");
		}
		unsigned mounted_files = 0;
		#if COMBO_INITRAMFS_MOUNT
		mounted_files = fmsx_initramfs_mount_boot_minimal();
		m_InitramfsDeferredMountPending = TRUE;
		#else
		m_Logger.Write(FromKernel, LogNotice, "initramfs mount: disabled by build flag");
		#endif
		if (!COMBO_BOOT_QUIET)
		{
			BootTrace("R2");
		}
		m_InitramfsFiles = mounted_files;
		CString initramfs_line;
		initramfs_line.Format("initramfs files: %u", mounted_files);
		m_Logger.Write(FromKernel, LogNotice, initramfs_line);

		if (!COMBO_BOOT_QUIET)
		{
			BootTrace("R3");
		}
		m_FmsxReady = fmsx_runtime_init();
		{
			const u64 boot_elapsed_us = CTimer::GetClockTicks64() - m_BootStartUs;
			m_BootToFmsxMs = (unsigned) (boot_elapsed_us / 1000u);
		}
		if (!m_FmsxReady)
		{
			m_FmsxLastError = 1;
			if (!COMBO_BOOT_QUIET)
			{
				BootTrace("R4E");
			}
			m_Logger.Write(FromKernel, LogWarning, "fMSX bootstrap failed (likely BIOS/ROM not available yet)");
		}
		else
		{
			if (!COMBO_BOOT_QUIET)
			{
				BootTrace("R4O");
			}
			m_Logger.Write(FromKernel, LogNotice, "fMSX bootstrap OK (frame-step)");
		}
	}
#endif
	if (COMBO_ENABLE_DEBUG_OVERLAY && m_DebugOverlayEnabled)
	{
		if (!COMBO_BOOT_QUIET)
		{
			WriteScreenText("\x1b[2J\x1b[H\x1b[?25l");
		}
	}
	else
	{
		WriteScreenText("\x1b[?25l");
	}
	m_Logger.Write(FromKernel, LogNotice, "Overlay toggle: F11 | Pause: F12");
	m_PauseMenu.SetOverscanPercent(m_OverscanPercent);
	m_PauseMenu.SetLanguage(m_Language);
	m_PauseMenu.SetWidescreenEnabled(m_WidescreenEnabled);
	m_PauseMenu.SetScanlineMode(m_ScanlineMode);
	m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
	m_PauseMenu.SetDiskRomEnabled(m_DiskRomEnabled);
	m_PauseMenu.SetBootMode(m_BootMode);
	m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
	m_PauseMenu.SetRenshaMode(m_RenshaMode);
	m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
	m_PauseMenu.SetOverlayEnabled(m_DebugOverlayEnabled, COMBO_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE);
	m_PauseMenu.SetAudioGainPercent(m_AudioOutputGainPct);
#if COMBO_ENABLE_FMSX
	ApplyRuntimeSettingsToFmsx();
#endif

	u64 next_frame_us = CTimer::GetClockTicks64();
	for (unsigned tick = 0; ; ++tick)
	{
		u64 now_us = CTimer::GetClockTicks64();
		if (m_FramePacingResetPending)
		{
			next_frame_us = now_us + m_FrameIntervalUs;
			m_FramePacingResetPending = FALSE;
		}
		if (!m_AudioInitAttempted && (m_TestToneEnabled || fmsx_audio_enabled))
		{
			if (m_TestToneEnabled || !m_FmsxEnabled || !m_FmsxReady || m_FmsxFrames >= 2u)
			{
				InitializeAudioOutput(fmsx_audio_enabled);
			}
		}
		if (m_SettingsLoadPending)
		{
			boolean should_load_settings = FALSE;
			if (m_FmsxEnabled && m_FmsxReady)
			{
				should_load_settings = (m_FmsxFrames >= COMBO_DEFER_SETTINGS_LOAD_FRAMES) ? TRUE : FALSE;
			}
			else if (tick >= COMBO_DEFER_SETTINGS_LOAD_FRAMES)
			{
				should_load_settings = TRUE;
			}
			if (should_load_settings)
			{
				m_SettingsLoadPending = FALSE;
				if (f_mount(&m_SettingsFileSystem, kSettingsDrive, 1) == FR_OK)
				{
					LoadSettingsFromStorage();
					if (!m_MediaCatalogStarted)
					{
						combo_media_catalog_begin_scan();
						m_MediaCatalogStarted = TRUE;
						m_MediaCatalogSummaryLogged = FALSE;
						m_Logger.Write(FromKernel, LogNotice, "media scan started: SD:/roms + SD:/disks");
					}
				}
				else
				{
					m_SettingsStorageReady = FALSE;
					m_Logger.Write(FromKernel, LogWarning, "Settings mount failed on SD:; persistence disabled");
				}
			}
		}
		if (m_InitramfsDeferredMountPending)
		{
			boolean should_full_mount = FALSE;
			if (m_FmsxEnabled && m_FmsxReady)
			{
				should_full_mount = (m_FmsxFrames >= COMBO_DEFER_INITRAMFS_FULL_MOUNT_FRAMES) ? TRUE : FALSE;
			}
			else if (tick >= COMBO_DEFER_INITRAMFS_FULL_MOUNT_FRAMES)
			{
				should_full_mount = TRUE;
			}
			if (should_full_mount)
			{
				const unsigned later_files = fmsx_initramfs_mount_remaining();
				m_InitramfsDeferredMountPending = FALSE;
				m_InitramfsFiles += later_files;
				CString initramfs_line;
				initramfs_line.Format("initramfs deferred files: +%u", later_files);
				m_Logger.Write(FromKernel, LogNotice, initramfs_line);
			}
		}
		if (m_MediaCatalogStarted && combo_media_catalog_is_scanning())
		{
			combo_media_catalog_scan_step(32u);
		}
		else if (m_MediaCatalogStarted && !m_MediaCatalogSummaryLogged)
		{
			m_MediaCatalogSummaryLogged = TRUE;
			CString media_line;
			media_line.Format("media scan done: total=%u rom=%u dsk=%u dir=%u file=%u err=%u drop=%u",
							 combo_media_catalog_entry_count(),
							 combo_media_catalog_rom_count(),
							 combo_media_catalog_disk_count(),
							 combo_media_catalog_dir_count(),
							 combo_media_catalog_file_count(),
							 combo_media_catalog_error_count(),
							 combo_media_catalog_dropped_count());
			m_Logger.Write(FromKernel, LogNotice, media_line);
		}
		if (!m_UsbReady)
		{
			boolean should_init_usb = FALSE;
			if (m_FmsxEnabled && m_FmsxReady)
			{
				should_init_usb = (m_FmsxFrames >= COMBO_DEFER_USB_INIT_FRAMES) ? TRUE : FALSE;
			}
			else if (tick >= COMBO_DEFER_USB_INIT_FRAMES)
			{
				should_init_usb = TRUE;
			}
			if (should_init_usb && tick >= m_UsbInitRetryTick)
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

		if (updated && m_Keyboard == 0)
		{
			m_Keyboard = (CUSBKeyboardDevice *) m_DeviceNameService.GetDevice("ukbd1", FALSE);
			if (m_Keyboard != 0)
			{
				m_KeyboardRemovedHandle = m_Keyboard->RegisterRemovedHandler(KeyboardRemovedHandler, this);
				m_Keyboard->RegisterKeyStatusHandlerRaw(KeyStatusRawHandler, TRUE, this);
				m_Keyboard->RegisterKeyPressedHandler(KeyPressedHandler);
				m_Logger.Write(FromKernel, LogNotice, "USB keyboard attached");
			}
		}

		if (m_Keyboard != 0)
		{
			m_Keyboard->UpdateLEDs();
		}

		if (m_SettingsSavePending)
		{
			m_SettingsSavePending = FALSE;
			SaveSettingsToStorage();
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

		#if COMBO_ENABLE_FMSX
		if (m_FmsxReady && !m_EmulationPaused)
		{
			now_us = CTimer::GetClockTicks64();
			boolean stepped_fmsx = FALSE;
			unsigned catchup_steps = 0;
			const unsigned max_catchup_steps = 2u;
			while (now_us >= next_frame_us && catchup_steps < max_catchup_steps)
			{
				const unsigned pacing_err_us = (unsigned) ((now_us - next_frame_us) > 999u ? 999u : (now_us - next_frame_us));
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
				if (rate_num > 0u && (joy_bits_runtime & kJoyBridgeFireA))
				{
					m_RenshaPhase += rate_num;
					if (m_RenshaPhase >= kRenshaRateDen)
					{
						m_RenshaPhase -= kRenshaRateDen;
					}
					else
					{
						rensha_fire_on = FALSE;
						joy_bits_runtime &= (u8) ~kJoyBridgeFireA;
					}
				}
				else
				{
					m_RenshaPhase = 0u;
				}
				PushKeyboardStateToRuntime(rensha_fire_on);
				fmsx_runtime_set_joystick_bits(joy_bits_runtime);
				if (fmsx_runtime_step_frame())
				{
					stepped_fmsx = TRUE;
					const TFmsxRuntimeStatus runtime_status = fmsx_runtime_get_status();
					m_FmsxFrames = runtime_status.frames;
					m_FmsxLastError = runtime_status.last_error;

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

			if (stepped_fmsx)
			{
				BlitFmsxFrame(FALSE);
			}

			if (now_us > next_frame_us + (m_FrameIntervalUs * 12ull))
			{
				next_frame_us = now_us - (m_FrameIntervalUs * 2ull);
			}
		}
		#endif

		#if COMBO_ENABLE_FMSX
		if (m_FmsxReady && m_EmulationPaused && m_PauseNeedsBackgroundRedraw)
		{
			BlitFmsxFrame(TRUE);
			m_PauseNeedsBackgroundRedraw = FALSE;
			m_PauseMenu.RequestRedraw();
		}
		#endif

		if (m_Sound != 0)
		{
			RefillAudioQueue();
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
		if (COMBO_ENABLE_DEBUG_OVERLAY && m_DebugOverlayEnabled)
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
		#if COMBO_ENABLE_FMSX
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
		m_PauseMenu.Render(m_EmulationPaused, &m_GfxText,
			m_Screen.GetWidth(), m_Screen.GetHeight(),
			m_FmsxBoxX, m_FmsxBoxY, m_FmsxBoxW, m_FmsxBoxH);
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
		if (COMBO_AUDIO_BOOT_TONE_MS > 0)
		{
			m_BootToneFramesRemaining = (kSampleRate * COMBO_AUDIO_BOOT_TONE_MS) / 1000u;
			CString tone_line;
			tone_line.Format("Boot probe tone: %ums", COMBO_AUDIO_BOOT_TONE_MS);
			m_Logger.Write(FromKernel, LogNotice, tone_line);
		}
		m_Logger.Write(FromKernel, LogNotice, "fMSX audio ON (HDMI)");
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
			const unsigned got = fmsx_audio_pull_samples(mono, write_frames);
			const boolean boot_probe_active = m_BootToneFramesRemaining > 0u;
			unsigned src_peak = 0;
			unsigned peak = 0;
			unsigned gain = COMBO_FMSX_AUDIO_GAIN;
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
			if (gain > COMBO_FMSX_AUDIO_GAIN_MAX)
			{
				gain = COMBO_FMSX_AUDIO_GAIN_MAX;
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
					const int probe = (m_AudioPhase & 0x80000000u) ? COMBO_AUDIO_BOOT_TONE_AMP : -COMBO_AUDIO_BOOT_TONE_AMP;
					sample32 += probe;
					m_BootToneFramesRemaining--;
				}
				else
				{
				#if COMBO_FMSX_AUDIO_PROBE_TONE
					m_AudioPhase += m_AudioStep;
					const int probe = (m_AudioPhase & 0x80000000u) ? 2400 : -2400;
					sample32 += probe;
				#endif
				}
				const int clip_max = (int) m_AudioClipMaxRuntime;
				if (sample32 > clip_max) sample32 = clip_max;
				if (sample32 < -clip_max) sample32 = -clip_max;
				sample32 = (sample32 * (int) m_AudioOutputGainPct) / 100;
				if (m_AudioOutputGainPct == 0u)
				{
					sample32 = 0;
				}
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

void CComboKernel::KeyboardRemovedHandler(CDevice *device, void *context)
{
	(void) device;
	CComboKernel *self = (CComboKernel *) context;
	if (self != 0)
	{
		self->m_Keyboard = 0;
		self->m_KeyboardRemovedHandle = 0;
		self->m_Logger.Write(FromKernel, LogNotice, "USB keyboard removed");
	}
}

void CComboKernel::DrawDebugOverlay(unsigned tick)
{
	CString line;
	TFmsxAudioStats audio_stats = { 0, 0, 0, 0, 0 };
	TFmsxKeyboardDebug kbd_stats = { 0, 0 };
	unsigned load_diag = 0u;
#if COMBO_ENABLE_FMSX
	fmsx_audio_get_stats(&audio_stats);
	fmsx_keyboard_get_debug(&kbd_stats);
	load_diag = fmsx_runtime_get_load_diag();
#endif

	line.Format("\x1b[97m\x1b[49m\x1b[1;1HTXTDBG OS:%02u M:%u C:%u I:%u PAU:%u      ", tick & 0xFFu, m_MmuEnabled ? 1u : 0u, m_DCacheEnabled ? 1u : 0u, m_ICacheEnabled ? 1u : 0u, m_EmulationPaused ? 1u : 0u);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[2;1HCI R:%u F:%u K:%u S:%u H:%u/%u P:%05u ",
		m_LastQueueAvail,
		m_LastQueueFree,
		m_Keyboard != 0 ? 1u : 0u,
		m_Sound != 0 && m_Sound->IsActive() ? 1u : 0u,
		m_SoundStartAttempts > 99u ? 99u : m_SoundStartAttempts,
		m_SoundStartFailures > 99u ? 99u : m_SoundStartFailures,
		tick);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[3;1HEV1 Q:%06u E:%06u A:%04u/%04u S:%04u        ",
		m_AudioWriteOps,
		m_AudioDropOps,
		audio_stats.samples_written % 10000u,
		audio_stats.samples_pulled % 10000u,
		audio_stats.source_peak > 9999u ? 9999u : audio_stats.source_peak);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[4;1HEV2 P:%04u C:%05u G:%03u V:%02u.%u KH:%02X KM:%02X ",
		m_AudioPeak > 9999u ? 9999u : m_AudioPeak,
		m_AudioClipMaxRuntime > 99999u ? 99999u : m_AudioClipMaxRuntime,
		m_AudioOutputGainPct > 999u ? 999u : m_AudioOutputGainPct,
		(m_FmsxFpsX10 / 10u) > 99u ? 99u : (m_FmsxFpsX10 / 10u),
		m_FmsxFpsX10 % 10u,
		kbd_stats.last_hid & 0xFFu,
		kbd_stats.last_msx & 0xFFu);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[5;1HJY1 BJ:%02X MJ:%02X R:%u E:%d I:%03u          ",
		(unsigned) m_JoyBridgeBits,
		(unsigned) m_JoyMappedBits,
		m_FmsxReady ? 1u : 0u,
		m_FmsxLastError,
		m_InitramfsFiles);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[6;1HJY2 F:%06lu PC:%04X R:%04u L:%04u JP:%03u/%03u      ",
		m_FmsxFrames,
		(unsigned) (m_FmsxLastPC & 0xFFFF),
		m_FmsxPcRepeatCount > 9999u ? 9999u : m_FmsxPcRepeatCount,
		audio_stats.ring_level > 9999u ? 9999u : audio_stats.ring_level,
		m_FramePacingErrAvgUs > 999u ? 999u : m_FramePacingErrAvgUs,
		m_FramePacingErrMaxUs > 999u ? 999u : m_FramePacingErrMaxUs);
	WriteScreenText(line);

	line.Format("\x1b[97m\x1b[49m\x1b[7;1HSD SV:%02u C:%03u A:%04u LD:%04u BT:%04u        ",
		m_SettingsSaveStage > 99u ? 99u : m_SettingsSaveStage,
		m_SettingsSaveCode > 999u ? 999u : m_SettingsSaveCode,
		m_SettingsSaveAux > 9999u ? 9999u : m_SettingsSaveAux,
		load_diag > 9999u ? 9999u : load_diag,
		m_BootToFmsxMs > 9999u ? 9999u : m_BootToFmsxMs);
	WriteScreenText(line);

	WriteScreenText("\x1b[0m");
}

void CComboKernel::BlitFmsxFrame(boolean force_redraw)
{
#if COMBO_ENABLE_FMSX
	EnsureDimLutReady();

	const u16 *pixels = 0;
	unsigned width = 0;
	unsigned height = 0;
	const unsigned sequence = fmsx_runtime_get_video_frame(&pixels, &width, &height);

	if ((!force_redraw && sequence == m_FmsxVideoSeq) || pixels == 0 || width == 0 || height == 0)
	{
		return;
	}

	m_FmsxVideoSeq = sequence;

	const unsigned screen_width = m_Screen.GetWidth();
	const unsigned screen_height = m_Screen.GetHeight();
	const unsigned overscan_percent = (m_OverscanPercent > 100u) ? 100u : m_OverscanPercent;
	const unsigned overscan_scale_pct =
		kOverscanSafeScalePct + (((kOverscanMaxScalePct - kOverscanSafeScalePct) * overscan_percent) / 100u);
	const unsigned view_w = (screen_width * overscan_scale_pct) / 100u;
	const unsigned view_h = (screen_height * overscan_scale_pct) / 100u;
	const unsigned view_x0 = (screen_width > view_w) ? ((screen_width - view_w) / 2u) : 0u;
	const unsigned view_y0 = (screen_height > view_h) ? ((screen_height - view_h) / 2u) : 0u;
	unsigned src_x0 = 0u;
	unsigned src_y0 = 0u;
	unsigned src_w = width;
	unsigned src_h = height;
	unsigned dst_width = view_w;
	unsigned dst_height = view_h;

	/* Overscan scales the viewport. Widescreen mode stretches to fill (intentional aspect break). */
	if (m_WidescreenEnabled)
	{
		dst_width = view_w;
		dst_height = view_h;
	}
	else if ((u64) view_w * (u64) height <= (u64) view_h * (u64) width)
	{
		dst_width = view_w;
		dst_height = (unsigned) (((u64) view_w * (u64) height) / (u64) width);
	}
	else
	{
		dst_height = view_h;
		dst_width = (unsigned) (((u64) view_h * (u64) width) / (u64) height);
	}
	if (dst_width == 0u) dst_width = 1u;
	if (dst_height == 0u) dst_height = 1u;
	const unsigned offset_x = view_x0 + (view_w > dst_width ? (view_w - dst_width) / 2u : 0u);
	const unsigned offset_y = view_y0 + (view_h > dst_height ? (view_h - dst_height) / 2u : 0u);
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
				const unsigned src_y = src_y0 + m_BlitYMap[y];
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = dst_base + ((offset_y + y) * pitch_pixels) + offset_x;
				const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
				const boolean dark_crt = (scanline_mode == kScanlineModeCrt) && ((src_y & 1u) != 0u);
				const unsigned dim_mode = dark_lcd ? 1u : (dark_crt ? 2u : 0u);
				if (dark_crt && src_w <= kBlitMapMaxAxis)
				{
					if (src_y != crt_cached_src_y)
					{
						for (unsigned sx = 0; sx < src_w; ++sx)
						{
							crt_dim_line_cache[sx] = s_DimLut85[src_line[src_x0 + sx]];
						}
						crt_cached_src_y = src_y;
					}
					BlitMappedLineRgb565NoDim(dst_line, crt_dim_line_cache, m_BlitXMap, dst_width, 0u);
					continue;
				}
				if (dim_mode == 0u)
				{
					BlitMappedLineRgb565NoDim(dst_line, src_line, m_BlitXMap, dst_width, src_x0);
				}
				else
				{
					const u16 *dim_lut = (dim_mode == 2u) ? s_DimLut85 : 0;
					BlitMappedLineRgb565(dst_line, src_line, m_BlitXMap, dst_width, src_x0, dim_mode, dim_lut);
				}
			}
		}
		else
		{
			unsigned crt_cached_src_y = 0xFFFFFFFFu;
			u16 crt_dim_line_cache[kBlitMapMaxAxis];
			for (unsigned y = 0; y < dst_height; ++y)
			{
				const unsigned src_y = src_y0 + (unsigned) (((u64) y * (u64) src_h) / (u64) dst_height);
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = dst_base + ((offset_y + y) * pitch_pixels) + offset_x;
				const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
				const boolean dark_crt = (scanline_mode == kScanlineModeCrt) && ((src_y & 1u) != 0u);
				const u16 *dim_lut = dark_lcd ? s_DimLutHalf : (dark_crt ? s_DimLut85 : 0);
				if (dark_lcd)
				{
					for (unsigned x = 0; x < dst_width; ++x)
					{
						const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
						dst_line[x] = dim_lut[src_line[src_x]];
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
								crt_dim_line_cache[sx] = dim_lut[src_line[src_x0 + sx]];
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
							dst_line[x] = dim_lut[src_line[src_x]];
						}
					}
				}
				else
				{
					for (unsigned x = 0; x < dst_width; ++x)
					{
						const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
						dst_line[x] = src_line[src_x];
					}
				}
			}
			m_BlitMapValid = FALSE;
		}

		if (m_DCacheEnabled)
		{
			u16 *flush_start = dst_base + (offset_y * pitch_pixels) + offset_x;
			const unsigned flush_pixels = ((dst_height - 1u) * pitch_pixels) + dst_width;
			FlushDCacheRange(flush_start, flush_pixels * (unsigned) sizeof(u16));
		}
		return;
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
		const unsigned src_y = src_y0 + (unsigned) (((u64) y * (u64) src_h) / (u64) dst_height);
		const u16 *line = pixels + (src_y * width);
		const unsigned scanline_mode = (m_ScanlineMode > kScanlineModeCrt) ? kScanlineModeCrt : m_ScanlineMode;
		const boolean dark_lcd = (scanline_mode == kScanlineModeLcd) && ((y & 1u) != 0u);
		const boolean dark_crt = (scanline_mode == kScanlineModeCrt) && ((src_y & 1u) != 0u);
		const u16 *dim_lut = dark_lcd ? s_DimLutHalf : (dark_crt ? s_DimLut85 : 0);
		for (unsigned x = 0; x < dst_width; ++x)
		{
			const unsigned src_x = src_x0 + (unsigned) (((u64) x * (u64) src_w) / (u64) dst_width);
			u16 sample = line[src_x];
			if (dim_lut != 0)
			{
				sample = dim_lut[sample];
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
	m_EmulationPaused = FALSE;
	m_PauseMenu.Reset();
}

void CComboKernel::RefreshSettingsUiAfterAction(void)
{
	m_PauseMenu.RequestRedraw();
	if (m_EmulationPaused)
	{
		m_PauseNeedsBackgroundRedraw = TRUE;
	}
}

void CComboKernel::ApplyRuntimeSettingsToFmsx(void)
{
#if COMBO_ENABLE_FMSX
	if (!m_FmsxReady)
	{
		return;
	}
	fmsx_runtime_set_overscan(m_OverscanPercent > 0u ? TRUE : FALSE);
	fmsx_runtime_set_refresh_hz(m_RefreshRateHz);
	fmsx_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	fmsx_runtime_set_boot_mode(m_BootMode);
	fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	fmsx_runtime_set_scc_cart_enabled(m_SccCartEnabled);
#endif
}

void CComboKernel::UpdateSettingsSaveTelemetry(unsigned stage, unsigned code, unsigned aux)
{
	m_SettingsSaveStage = stage;
	m_SettingsSaveCode = code;
	m_SettingsSaveAux = aux;
#if COMBO_ENABLE_DEBUG_OVERLAY
	if (m_DebugOverlayEnabled)
	{
		DrawDebugOverlay((unsigned) (m_FmsxFrames & 0xFFFFFFFFu));
	}
#endif
}

void CComboKernel::UpdateLoadDiagTelemetry(unsigned stage)
{
#if COMBO_ENABLE_FMSX
	fmsx_runtime_set_load_diag(stage);
#if COMBO_ENABLE_DEBUG_OVERLAY
	if (m_DebugOverlayEnabled)
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

	FILINFO file_info;
	const FRESULT stat_result = f_stat(kSettingsPath, &file_info);
	if (stat_result == FR_NO_FILE)
	{
		m_Logger.Write(FromKernel, LogNotice, "Settings file not found; using defaults");
		return;
	}
	if (stat_result != FR_OK)
	{
		m_Logger.Write(FromKernel, LogWarning, "Settings stat failed; using defaults");
		return;
	}

	FIL file;
	const FRESULT open_result = f_open(&file, kSettingsPath, FA_READ);
	if (open_result != FR_OK)
	{
		m_Logger.Write(FromKernel, LogWarning, "Settings open failed; using defaults");
		return;
	}

	char buffer[512];
	UINT bytes_read = 0;
	const FRESULT read_result = f_read(&file, buffer, sizeof(buffer) - 1u, &bytes_read);
	(void) f_close(&file);
	if (read_result != FR_OK || bytes_read == 0u)
	{
		m_Logger.Write(FromKernel, LogWarning, "Settings read failed; using defaults");
		return;
	}
	buffer[bytes_read] = '\0';

	/* Corruption guard: only parse files written by SaveSettingsToStorage(). */
	if (strstr(buffer, "#END") == 0)
	{
		m_Logger.Write(FromKernel, LogWarning, "Settings file invalid/corrupt; using defaults");
		return;
	}

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
			if (SettingsKeyEquals(line, key_len, "overscan"))
			{
				const unsigned clamped = value > 100u ? 100u : value;
				m_OverscanPercent = (clamped / 10u) * 10u;
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
				m_RefreshRateHz = (value == 50u) ? 50u : 60u;
				m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
			}
			else if (SettingsKeyEquals(line, key_len, "disk_rom"))
			{
				m_DiskRomEnabled = value ? TRUE : FALSE;
			}
			else if (SettingsKeyEquals(line, key_len, "boot_mode"))
			{
				m_BootMode = (value > 2u) ? kBootModeNorm : value;
			}
			else if (SettingsKeyEquals(line, key_len, "z80_turbo"))
			{
				m_Z80TurboMode = value > 2u ? 0u : value;
			}
			else if (SettingsKeyEquals(line, key_len, "rensha"))
			{
				m_RenshaMode = (value > 3u) ? 0u : value;
			}
			else if (SettingsKeyEquals(line, key_len, "scc_cart"))
			{
				m_SccCartEnabled = value ? TRUE : FALSE;
			}
			else if (SettingsKeyEquals(line, key_len, "debugger"))
			{
				m_DebugOverlayEnabled = value ? TRUE : FALSE;
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
		}

		line = line_end;
	}

	m_PauseMenu.SetOverscanPercent(m_OverscanPercent);
	m_PauseMenu.SetLanguage(m_Language);
	m_PauseMenu.SetWidescreenEnabled(m_WidescreenEnabled);
	m_PauseMenu.SetScanlineMode(m_ScanlineMode);
	m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
	m_PauseMenu.SetDiskRomEnabled(m_DiskRomEnabled);
	m_PauseMenu.SetBootMode(m_BootMode);
	m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
	m_PauseMenu.SetRenshaMode(m_RenshaMode);
	m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
	m_PauseMenu.SetOverlayEnabled(m_DebugOverlayEnabled, COMBO_ENABLE_DEBUG_OVERLAY ? TRUE : FALSE);
	m_PauseMenu.SetAudioGainPercent(m_AudioOutputGainPct);
#if COMBO_ENABLE_FMSX
	fmsx_runtime_set_overscan(m_OverscanPercent > 0u ? TRUE : FALSE);
	fmsx_runtime_set_refresh_hz(m_RefreshRateHz);
	fmsx_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	fmsx_runtime_set_boot_mode(m_BootMode);
	fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
	fmsx_runtime_set_scc_cart_enabled(m_SccCartEnabled);
#endif

	CString line_log;
	line_log.Format("Settings loaded from %s", kSettingsPath);
	m_Logger.Write(FromKernel, LogNotice, line_log);
}

void CComboKernel::SaveSettingsToStorage(void)
{
	UpdateSettingsSaveTelemetry(1u, 0u, 0u); /* begin */
#if !COMBO_ENABLE_SETTINGS_SAVE_EXPERIMENTAL
	UpdateSettingsSaveTelemetry(95u, 0u, 0u); /* save disabled fail-safe */
	m_Logger.Write(FromKernel, LogWarning, "Settings save disabled (experimental backend OFF)");
	return;
#endif
	if (!m_SettingsStorageReady)
	{
		UpdateSettingsSaveTelemetry(90u, 0u, 0u); /* storage unavailable */
		m_Logger.Write(FromKernel, LogWarning, "Settings save unavailable (storage not mounted)");
		return;
	}

	char buffer[512];
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

	APPEND_LINE_FMT("overscan=%u\n", m_OverscanPercent);
	APPEND_LINE_FMT("language=%u\n", m_Language);
	APPEND_LINE_FMT("widescreen=%u\n", m_WidescreenEnabled ? 1u : 0u);
	APPEND_LINE_FMT("scanline=%u\n", m_ScanlineMode);
	APPEND_LINE_FMT("refresh=%u\n", m_RefreshRateHz);
	APPEND_LINE_FMT("disk_rom=%u\n", m_DiskRomEnabled ? 1u : 0u);
	APPEND_LINE_FMT("boot_mode=%u\n", m_BootMode);
	APPEND_LINE_FMT("z80_turbo=%u\n", m_Z80TurboMode);
	APPEND_LINE_FMT("rensha=%u\n", m_RenshaMode);
	APPEND_LINE_FMT("scc_cart=%u\n", m_SccCartEnabled ? 1u : 0u);
	APPEND_LINE_FMT("debugger=%u\n", m_DebugOverlayEnabled ? 1u : 0u);
	APPEND_LINE_FMT("audio_gain=%u\n", m_AudioOutputGainPct > 100u ? 100u : m_AudioOutputGainPct);
	APPEND_LINE_FMT("#END\n", 0u);

#undef APPEND_LINE_FMT

	/* Persist fixed-size block to keep parser/overwrite deterministic. */
	const unsigned fixed_write_bytes = 512u;
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
		m_Logger.Write(FromKernel, LogWarning, "Settings save failed (cannot open config file)");
		return;
	}
	const FRESULT seek_result = f_lseek(&file, 0);
	if (seek_result != FR_OK)
	{
		(void) f_close(&file);
		UpdateSettingsSaveTelemetry(97u, seek_result, 0u);
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

	if (write_result == FR_OK && bytes_written == fixed_write_bytes && close_ok != 0u)
	{
		UpdateSettingsSaveTelemetry(7u, bytes_written, fixed_write_bytes); /* success */
		CString line_log;
		line_log.Format("Settings saved to %s", kSettingsPath);
		m_Logger.Write(FromKernel, LogNotice, line_log);
	}
	else
	{
		UpdateSettingsSaveTelemetry(92u, write_result, close_ok); /* write/close error */
		m_Logger.Write(FromKernel, LogWarning, "Settings save failed (write error)");
	}
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
		return FALSE;
	}

	const FRESULT mkdir_result = f_mkdir(kStateDirPath);
	return (mkdir_result == FR_OK || mkdir_result == FR_EXIST) ? TRUE : FALSE;
}

void CComboKernel::SaveEmulatorStateToStorage(void)
{
	UpdateSettingsSaveTelemetry(32u, 0u, 0u);
#if !COMBO_ENABLE_FMSX
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
		m_Logger.Write(FromKernel, LogWarning, "Save State falhou: erro de escrita no SD");
	}
#endif
}

void CComboKernel::LoadEmulatorStateFromStorage(void)
{
	UpdateSettingsSaveTelemetry(42u, 0u, 0u);
#if !COMBO_ENABLE_FMSX
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
		m_Logger.Write(FromKernel, LogWarning, "Load State falhou: erro ao consultar arquivo");
		return;
	}

	FIL file;
	const FRESULT open_result = f_open(&file, kStatePath, FA_READ);
	if (open_result != FR_OK)
	{
		UpdateSettingsSaveTelemetry(94u, 7u, open_result);
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
	fmsx_runtime_set_joystick_bits(m_JoyBridgeBits);
	if (fmsx_runtime_step_frame())
	{
		const TFmsxRuntimeStatus runtime_status = fmsx_runtime_get_status();
		m_FmsxFrames = runtime_status.frames;
		m_FmsxLastError = runtime_status.last_error;
		m_FmsxLastPC = runtime_status.last_pc;
		BlitFmsxFrame(TRUE);
		m_PauseNeedsBackgroundRedraw = FALSE;
	}
	else
	{
		m_PauseNeedsBackgroundRedraw = TRUE;
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
	#if COMBO_ENABLE_FMSX
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

				PrimeAudioSilenceBeforeReset();
				const unsigned active_boot_mode = fmsx_runtime_get_active_boot_mode();
				const boolean use_boot_profile_reset = (m_BootMode != active_boot_mode) ? TRUE : FALSE;
				UpdateLoadDiagTelemetry(use_boot_profile_reset ? 2010u : 2003u);
				const boolean load_ok = use_boot_profile_reset
					? fmsx_runtime_hard_reset()
					: fmsx_runtime_load_cartridge(slot_index, rom_path);
				if (load_ok)
				{
					UpdateLoadDiagTelemetry(2004u); /* load cart ok */
					fmsx_runtime_set_boot_mode(m_BootMode);
					ResetEmulationRuntimeState();
					ApplyRuntimeSettingsToFmsx();
					CString line;
					line.Format("Load ROM: SLOT%u <= %s", slot_index + 1u, rom_path);
					m_Logger.Write(FromKernel, LogNotice, line);
				}
				else
				{
					UpdateLoadDiagTelemetry(9004u); /* load cart fail */
					m_Logger.Write(FromKernel, LogWarning, use_boot_profile_reset ? "Load ROM falhou: hard reset" : "Load ROM falhou: LoadCart");
				}
			}
		}
	#endif
		break;

	case ComboMenuActionDiskDriveA:
	case ComboMenuActionDiskDriveB:
	#if COMBO_ENABLE_FMSX
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

	case ComboMenuActionMsxBasic:
	#if COMBO_ENABLE_FMSX
		if (m_FmsxReady)
		{
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
	#if COMBO_ENABLE_FMSX
		if (m_FmsxReady)
		{
			PrimeAudioSilenceBeforeReset();
			if (fmsx_runtime_hard_reset())
			{
				ResetEmulationRuntimeState();
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
		m_OverscanPercent = m_PauseMenu.GetOverscanPercent();
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_overscan(m_OverscanPercent > 0u ? TRUE : FALSE);
	#endif
		{
			CString line;
			line.Format("Settings: Overscan %u", m_OverscanPercent);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
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
		m_RefreshRateHz = (m_RefreshRateHz == 50u) ? 60u : 50u;
		m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
		m_FramePacingResetPending = TRUE;
		m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_refresh_hz(m_RefreshRateHz);
	#endif
		{
			CString line;
			line.Format("Settings: Refresh %uHz", m_RefreshRateHz);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleRefreshRatePrev:
		m_RefreshRateHz = (m_RefreshRateHz == 50u) ? 60u : 50u;
		m_FrameIntervalUs = FrameIntervalFromRefreshHz(m_RefreshRateHz);
		m_FramePacingResetPending = TRUE;
		m_PauseMenu.SetRefreshRateHz(m_RefreshRateHz);
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_refresh_hz(m_RefreshRateHz);
	#endif
		{
			CString line;
			line.Format("Settings: Refresh %uHz", m_RefreshRateHz);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionToggleDiskRom:
		m_DiskRomEnabled = m_DiskRomEnabled ? FALSE : TRUE;
		m_PauseMenu.SetDiskRomEnabled(m_DiskRomEnabled);
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_disk_rom_enabled(m_DiskRomEnabled);
	#endif
		m_Logger.Write(FromKernel, LogNotice, m_DiskRomEnabled ? "Settings: Disk ROM ON" : "Settings: Disk ROM OFF");
		break;

	case ComboMenuActionCycleBootMode:
		m_BootMode = (m_BootMode + 1u) % 3u;
		m_PauseMenu.SetBootMode(m_BootMode);
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_boot_mode(m_BootMode);
	#endif
		{
			CString line;
			line.Format("Settings: Boot Mode %s", BootModeLabelFromMode(m_BootMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleBootModePrev:
		m_BootMode = (m_BootMode == 0u) ? 2u : (m_BootMode - 1u);
		m_PauseMenu.SetBootMode(m_BootMode);
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_boot_mode(m_BootMode);
	#endif
		{
			CString line;
			line.Format("Settings: Boot Mode %s", BootModeLabelFromMode(m_BootMode));
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionCycleZ80Turbo:
		m_Z80TurboMode = (m_Z80TurboMode + 1u) % 3u;
		m_PauseMenu.SetZ80TurboMode(m_Z80TurboMode);
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_z80_turbo_mode(m_Z80TurboMode);
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
	#if COMBO_ENABLE_FMSX
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
		m_PauseMenu.SetRenshaMode(m_RenshaMode);
		RefreshSettingsUiAfterAction();
		{
			CString line;
			line.Format("Settings: Rensha %u", m_RenshaMode);
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionToggleOverlay:
	#if COMBO_ENABLE_DEBUG_OVERLAY
		SetDebugOverlayEnabled(m_DebugOverlayEnabled ? FALSE : TRUE);
		RefreshSettingsUiAfterAction();
		m_Logger.Write(FromKernel, LogNotice, m_DebugOverlayEnabled ? "Settings: Debugger ON" : "Settings: Debugger OFF");
	#else
		m_Logger.Write(FromKernel, LogNotice, "Settings: Debugger indisponivel neste build");
	#endif
		break;

	case ComboMenuActionAudioGainChanged:
		m_AudioOutputGainPct = m_PauseMenu.GetAudioGainPercent();
		RefreshSettingsUiAfterAction();
		{
			CString line;
			if (m_AudioOutputGainPct == 0u)
			{
				line.Format("Settings: Audio gain OFF");
			}
			else
			{
				line.Format("Settings: Audio gain %u%%", m_AudioOutputGainPct);
			}
			m_Logger.Write(FromKernel, LogNotice, line);
		}
		break;

	case ComboMenuActionToggleSccCart:
		m_SccCartEnabled = m_SccCartEnabled ? FALSE : TRUE;
		m_PauseMenu.SetSccCartEnabled(m_SccCartEnabled);
		RefreshSettingsUiAfterAction();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_scc_cart_enabled(m_SccCartEnabled);
	#endif
		m_Logger.Write(FromKernel, LogNotice, m_SccCartEnabled ? "Settings: SCC Cart ON" : "Settings: SCC Cart OFF");
		break;

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
#if COMBO_ENABLE_DEBUG_OVERLAY
	m_DebugOverlayEnabled = enabled ? TRUE : FALSE;
	m_PauseMenu.SetOverlayEnabled(m_DebugOverlayEnabled, TRUE);
	m_PauseMenu.RequestRedraw();
	if (!m_DebugOverlayEnabled)
	{
		ClearDebugOverlay();
	}
#else
	(void) enabled;
#endif
}

void CComboKernel::ClearDebugOverlay(void)
{
	WriteScreenText("\x1b[1;1H                                                                                ");
	WriteScreenText("\x1b[2;1H                                                                                ");
	WriteScreenText("\x1b[3;1H                                                                                ");
	WriteScreenText("\x1b[4;1H                                                                                ");
	WriteScreenText("\x1b[5;1H                                                                                ");
	WriteScreenText("\x1b[6;1H                                                                                ");
	WriteScreenText("\x1b[7;1H                                                                                ");
	WriteScreenText("\x1b[0m");
}

void CComboKernel::WriteScreenText(const char *text)
{
	if (text == 0)
	{
		return;
	}

	m_Screen.Write(text, strlen(text));
}

void CComboKernel::BootTrace(const char *tag)
{
	if (COMBO_BOOT_QUIET)
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
#if COMBO_ENABLE_FMSX
	unsigned char raw_keys[6];
	for (unsigned i = 0u; i < 6u; ++i)
	{
		raw_keys[i] = m_LastKeyboardRawKeys[i];
	}
	if (m_RenshaMode > 0u && !rensha_fire_on)
	{
		for (unsigned i = 0u; i < 6u; ++i)
		{
			if (raw_keys[i] == kHidKeySpace)
			{
				raw_keys[i] = 0u;
			}
		}
	}

	fmsx_runtime_set_keyboard_raw(m_LastKeyboardModifiers, raw_keys);
#else
	(void) rensha_fire_on;
#endif
}

void CComboKernel::UpdateJoystickFromRaw(unsigned char modifiers, const unsigned char raw_keys[6])
{
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
		return;
	}

	TComboKeyboardInputState key_state;
	ComboDecodeKeyboardRaw(modifiers, raw_keys, &key_state);

	if (key_state.f1_pressed && !m_LastF12Pressed)
	{
		#if COMBO_ENABLE_DEBUG_OVERLAY
		SetDebugOverlayEnabled(m_DebugOverlayEnabled ? FALSE : TRUE);
		m_Logger.Write(FromKernel, LogNotice, m_DebugOverlayEnabled ? "Overlay ON" : "Overlay OFF");
		#endif
	}
	m_LastF12Pressed = key_state.f1_pressed;

	const boolean esc_resume_pressed =
		(key_state.menu_back_pressed && m_EmulationPaused && !m_PauseMenu.IsInSettings()) ? TRUE : FALSE;
	if (key_state.pause_pressed || esc_resume_pressed)
	{
		const u64 now_us = CTimer::GetClockTicks64();
		if (m_LastPauseToggleUs == 0u || (now_us - m_LastPauseToggleUs) >= 200000ull)
		{
			m_EmulationPaused = m_EmulationPaused ? FALSE : TRUE;
			if (!m_EmulationPaused)
			{
				m_PauseMenu.Reset();
				m_PauseNeedsBackgroundRedraw = FALSE;
			}
			else
			{
				m_PauseNeedsBackgroundRedraw = TRUE;
			}
			m_Logger.Write(FromKernel, LogNotice, m_EmulationPaused ? "Emulation PAUSED" : "Emulation RESUMED");
			m_LastPauseToggleUs = now_us;
		}
	}
	m_LastPausePressed = key_state.pause_pressed;

	const TComboMenuAction menu_action = m_PauseMenu.ProcessInput(
		m_EmulationPaused,
		key_state.menu_up_pressed,
		key_state.menu_down_pressed,
		key_state.menu_left_pressed,
		key_state.menu_right_pressed,
		key_state.menu_enter_pressed,
		key_state.menu_back_pressed,
		key_state.menu_delete_pressed);
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
	if (m_PauseMenu.ConsumeBackgroundRestoreRequest())
	{
		m_PauseNeedsBackgroundRedraw = TRUE;
	}
	if (defer_heavy_action)
	{
		/* Heavy media load path runs in main loop to avoid USB callback hard-locks. */
		if (m_PendingMenuAction == (unsigned) ComboMenuActionNone)
		{
			m_PendingMenuAction = (unsigned) menu_action;
		}
	}
	else
	{
		/* Keep settings toggles/cycles immediate so state never gets stale/overwritten. */
		HandleMenuAction(menu_action);
	}

	m_JoyBridgeBits = key_state.bridge_bits;
	m_JoyMappedBits = (u8) (~key_state.bridge_bits) & ComboKeyboardJoyMask();
	m_LastKeyboardModifiers = modifiers;
	for (unsigned i = 0u; i < 6u; ++i)
	{
		m_LastKeyboardRawKeys[i] = raw_keys[i];
	}
}

void CComboKernel::KeyStatusRawHandler(unsigned char modifiers, const unsigned char raw_keys[6], void *context)
{
	if (context == 0 || raw_keys == 0)
	{
		return;
	}

	CComboKernel *self = (CComboKernel *) context;
	self->UpdateJoystickFromRaw(modifiers, raw_keys);
}
