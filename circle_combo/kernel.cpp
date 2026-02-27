#include "kernel.h"
#if COMBO_ENABLE_FMSX
#include "fmsx_runtime.h"
#include "fmsx_initramfs.h"
#endif

#include <circle/sound/hdmisoundbasedevice.h>
#include <circle/startup.h>
#include <circle/string.h>
#include <circle/util.h>
#include <assert.h>

static const char FromKernel[] = "combo";
static const unsigned kSampleRate = 48000;
static const unsigned kChunkSize = 384 * 10;
static const unsigned kQueueMs = 120;
static const u64 kFmsxFrameIntervalUs = 1000000ull / 60ull;
static const uintptr kDCacheLineSize = 64u;

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

static const u8 kHidKeyX = 0x1B;
static const u8 kHidKeyZ = 0x1D;
static const u8 kHidKeySpace = 0x2C;
static const u8 kHidKeyRight = 0x4F;
static const u8 kHidKeyLeft = 0x50;
static const u8 kHidKeyDown = 0x51;
static const u8 kHidKeyUp = 0x52;
static const u8 kHidKeyEnter = 0x28;
static const u8 kHidKeyEsc = 0x29;
static const u8 kHidKeyF11 = 0x44;
static const u8 kHidKeyF12 = 0x45;

static const u8 kJoyRight = (1u << 0);
static const u8 kJoyLeft = (1u << 1);
static const u8 kJoyDown = (1u << 2);
static const u8 kJoyUp = (1u << 3);
static const u8 kJoyButton1 = (1u << 4);
static const u8 kJoyButton2 = (1u << 5);
static const u8 kJoyMask = (kJoyRight | kJoyLeft | kJoyDown | kJoyUp | kJoyButton1 | kJoyButton2);

CComboKernel *CComboKernel::s_Instance = 0;

CComboKernel::CComboKernel(void)
:	m_Screen(m_Options.GetWidth(), m_Options.GetHeight()),
	m_GfxText(&m_Screen),
	m_Timer(&m_Interrupt),
	m_Logger(m_Options.GetLogLevel(), &m_Timer),
	m_USBHCI(&m_Interrupt, &m_Timer, TRUE),
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
	m_AudioOutputGainPct(70),
	m_BootToneFramesRemaining(0),
	m_AudioInitAttempted(FALSE),
	m_JoyBridgeBits(0),
	m_JoyMappedBits(kJoyMask),
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
	m_OverscanEnabled(FALSE),
	m_ScanlinesEnabled(FALSE),
	m_FmsxFallbackPattern(FALSE),
	m_TestToneEnabled(COMBO_TEST_TONE_DEFAULT ? TRUE : FALSE),
	m_MmuEnabled(FALSE),
	m_DCacheEnabled(FALSE),
	m_ICacheEnabled(FALSE)
{
	s_Instance = this;
	m_ActLED.Blink(5);
}

CComboKernel::~CComboKernel(void)
{
	s_Instance = 0;
}

boolean CComboKernel::Initialize(void)
{
	boolean ok = TRUE;

	if (ok)
	{
		ok = m_Screen.Initialize();
		if (ok)
		{
			if (!COMBO_BOOT_QUIET)
			{
				WriteScreenText("\x1b[2J\x1b[HBT:I1\n");
			}
		}
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
	if (ok) ok = m_USBHCI.Initialize();

	return ok;
}

TComboShutdownMode CComboKernel::Run(void)
{
	if (!COMBO_BOOT_QUIET)
	{
		BootTrace("R0");
	}
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

	m_Logger.Write(FromKernel, LogNotice, "Attach USB keyboard and type");
#if COMBO_ENABLE_FMSX
	if (m_FmsxEnabled)
	{
		if (!COMBO_BOOT_QUIET)
		{
			BootTrace("R1");
		}
		unsigned mounted_files = 0;
		#if COMBO_INITRAMFS_MOUNT
		mounted_files = fmsx_initramfs_mount();
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
	m_PauseMenu.SetOverscanEnabled(m_OverscanEnabled);
	m_PauseMenu.SetScanlinesEnabled(m_ScanlinesEnabled);
#if COMBO_ENABLE_FMSX
	fmsx_runtime_set_overscan(m_OverscanEnabled);
#endif

	u64 next_frame_us = CTimer::GetClockTicks64();
	for (unsigned tick = 0; ; ++tick)
	{
		u64 now_us = CTimer::GetClockTicks64();
		if (!m_AudioInitAttempted && (m_TestToneEnabled || fmsx_audio_enabled))
		{
			if (m_TestToneEnabled || !m_FmsxEnabled || !m_FmsxReady || m_FmsxFrames >= 2u)
			{
				InitializeAudioOutput(fmsx_audio_enabled);
			}
		}
		const boolean updated = m_USBHCI.UpdatePlugAndPlay();
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

		#if COMBO_ENABLE_FMSX
		if (m_FmsxReady && !m_EmulationPaused)
		{
			boolean stepped_fmsx = FALSE;
			unsigned catchup_steps = 0;
			const unsigned max_catchup_steps = 2u;
			while (now_us >= next_frame_us && catchup_steps < max_catchup_steps)
			{
				fmsx_runtime_set_joystick_bits(m_JoyBridgeBits);
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
				next_frame_us += kFmsxFrameIntervalUs;
				catchup_steps++;
				now_us = CTimer::GetClockTicks64();
			}

			if (stepped_fmsx)
			{
				BlitFmsxFrame(FALSE);
			}

			if (now_us > next_frame_us + (kFmsxFrameIntervalUs * 12ull))
			{
				next_frame_us = now_us - (kFmsxFrameIntervalUs * 2ull);
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
			if (m_LastOverlayUs == 0u || now_us - m_LastOverlayUs >= 100000ull)
			{
				DrawDebugOverlay(tick);
				m_LastOverlayUs = now_us;
			}
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
			for (unsigned i = 0; i < write_frames; ++i)
			{
				buffer[(i * 2u) + 0u] = 0;
				buffer[(i * 2u) + 1u] = 0;
			}
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
				else if (got > 0u)
				{
					sample32 = (int) mono[got - 1u];
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
#if COMBO_ENABLE_FMSX
	fmsx_audio_get_stats(&audio_stats);
	fmsx_keyboard_get_debug(&kbd_stats);
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

	line.Format("\x1b[97m\x1b[49m\x1b[6;1HJY2 F:%06lu PC:%04X R:%04u L:%04u          ",
		m_FmsxFrames,
		(unsigned) (m_FmsxLastPC & 0xFFFF),
		m_FmsxPcRepeatCount > 9999u ? 9999u : m_FmsxPcRepeatCount,
		audio_stats.ring_level > 9999u ? 9999u : audio_stats.ring_level);
	WriteScreenText(line);

	WriteScreenText("\x1b[0m");
}

void CComboKernel::BlitFmsxFrame(boolean force_redraw)
{
#if COMBO_ENABLE_FMSX
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
	const unsigned overscan_scale_pct = m_OverscanEnabled ? 100u : 92u;
	const unsigned view_w = (screen_width * overscan_scale_pct) / 100u;
	const unsigned view_h = (screen_height * overscan_scale_pct) / 100u;
	const unsigned view_x0 = (screen_width > view_w) ? ((screen_width - view_w) / 2u) : 0u;
	const unsigned view_y0 = (screen_height > view_h) ? ((screen_height - view_h) / 2u) : 0u;
	unsigned dst_width = view_w;
	unsigned dst_height = view_h;
	if ((u64) view_w * (u64) height <= (u64) view_h * (u64) width)
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
		const boolean scanlines = m_ScanlinesEnabled;
		const boolean can_use_maps = (dst_width <= kBlitMapMaxAxis) && (dst_height <= kBlitMapMaxAxis);
		if (can_use_maps)
		{
			if (!m_BlitMapValid
			 || m_BlitMapSrcW != width
			 || m_BlitMapSrcH != height
			 || m_BlitMapDstW != dst_width
			 || m_BlitMapDstH != dst_height)
			{
				for (unsigned x = 0; x < dst_width; ++x)
				{
					m_BlitXMap[x] = (u16) (((u64) x * (u64) width) / (u64) dst_width);
				}
				for (unsigned y = 0; y < dst_height; ++y)
				{
					m_BlitYMap[y] = (u16) (((u64) y * (u64) height) / (u64) dst_height);
				}
				m_BlitMapSrcW = width;
				m_BlitMapSrcH = height;
				m_BlitMapDstW = dst_width;
				m_BlitMapDstH = dst_height;
				m_BlitMapValid = TRUE;
			}

			for (unsigned y = 0; y < dst_height; ++y)
			{
				const unsigned src_y = m_BlitYMap[y];
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = dst_base + ((offset_y + y) * pitch_pixels) + offset_x;
				const boolean dark_line = scanlines && (y & 1u);
				for (unsigned x = 0; x < dst_width; ++x)
				{
					u16 sample = src_line[m_BlitXMap[x]];
					if (dark_line)
					{
						sample = (u16) ((sample & 0xF7DEu) >> 1);
					}
					dst_line[x] = sample;
				}
			}
		}
		else
		{
			for (unsigned y = 0; y < dst_height; ++y)
			{
				const unsigned src_y = (unsigned) (((u64) y * (u64) height) / (u64) dst_height);
				const u16 *src_line = pixels + (src_y * width);
				u16 *dst_line = dst_base + ((offset_y + y) * pitch_pixels) + offset_x;
				const boolean dark_line = scanlines && (y & 1u);
				for (unsigned x = 0; x < dst_width; ++x)
				{
					const unsigned src_x = (unsigned) (((u64) x * (u64) width) / (u64) dst_width);
					u16 sample = src_line[src_x];
					if (dark_line)
					{
						sample = (u16) ((sample & 0xF7DEu) >> 1);
					}
					dst_line[x] = sample;
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

	for (unsigned y = 0; y < dst_height; ++y)
	{
		const unsigned src_y = (unsigned) (((u64) y * (u64) height) / (u64) dst_height);
		const u16 *line = pixels + (src_y * width);
		const boolean dark_line = m_ScanlinesEnabled && (y & 1u);
		for (unsigned x = 0; x < dst_width; ++x)
		{
			const unsigned src_x = (unsigned) (((u64) x * (u64) width) / (u64) dst_width);
			u16 sample = line[src_x];
			if (dark_line)
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
	m_FmsxFrames = 0;
	m_FmsxLastPC = -1;
	m_FmsxPcRepeatCount = 0;
	m_FmsxPcLoopLogged = FALSE;
	m_EmulationPaused = FALSE;
	m_PauseMenu.Reset();
}

void CComboKernel::HandleMenuAction(TComboMenuAction action)
{
	switch (action)
	{
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

	case ComboMenuActionToggleOverscan:
		m_OverscanEnabled = m_OverscanEnabled ? FALSE : TRUE;
		m_PauseMenu.SetOverscanEnabled(m_OverscanEnabled);
		m_PauseMenu.RequestRedraw();
	#if COMBO_ENABLE_FMSX
		fmsx_runtime_set_overscan(m_OverscanEnabled);
	#endif
		m_Logger.Write(FromKernel, LogNotice, m_OverscanEnabled ? "Settings: Overscan ON" : "Settings: Overscan OFF");
		break;

	case ComboMenuActionToggleScanlines:
		m_ScanlinesEnabled = m_ScanlinesEnabled ? FALSE : TRUE;
		m_PauseMenu.SetScanlinesEnabled(m_ScanlinesEnabled);
		m_PauseMenu.RequestRedraw();
		m_Logger.Write(FromKernel, LogNotice, m_ScanlinesEnabled ? "Settings: Scanlines ON" : "Settings: Scanlines OFF");
		break;

	case ComboMenuActionSettingsOption3:
		m_Logger.Write(FromKernel, LogNotice, "Settings: Opcao 3 (mock)");
		break;

	case ComboMenuActionSettingsOption4:
		m_Logger.Write(FromKernel, LogNotice, "Settings: Opcao 4 (mock)");
		break;

	default:
		break;
	}
}

void CComboKernel::ClearDebugOverlay(void)
{
	WriteScreenText("\x1b[1;1H                                                                                ");
	WriteScreenText("\x1b[2;1H                                                                                ");
	WriteScreenText("\x1b[3;1H                                                                                ");
	WriteScreenText("\x1b[4;1H                                                                                ");
	WriteScreenText("\x1b[5;1H                                                                                ");
	WriteScreenText("\x1b[6;1H                                                                                ");
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

	WriteScreenText("\x1b[1;1H                                        ");
	WriteScreenText("\x1b[1;1H");
	WriteScreenText(line);
}

void CComboKernel::UpdateJoystickFromRaw(unsigned char modifiers, const unsigned char raw_keys[6])
{
	(void) modifiers;

	u8 bridge_bits = 0;
	boolean f1_pressed = FALSE;
	boolean pause_pressed = FALSE;
	boolean menu_up_pressed = FALSE;
	boolean menu_down_pressed = FALSE;
	boolean menu_enter_pressed = FALSE;
	boolean menu_back_pressed = FALSE;

	for (unsigned i = 0; i < 6; ++i)
	{
		const u8 key = raw_keys[i];
		if (key == kHidKeyF11)
		{
			f1_pressed = TRUE;
		}
		if (key == kHidKeyF12)
		{
			pause_pressed = TRUE;
		}
		if (key == kHidKeyUp)
		{
			menu_up_pressed = TRUE;
		}
		if (key == kHidKeyDown)
		{
			menu_down_pressed = TRUE;
		}
		if (key == kHidKeyEnter)
		{
			menu_enter_pressed = TRUE;
		}
		if (key == kHidKeyEsc)
		{
			menu_back_pressed = TRUE;
		}

		switch (key)
		{
		case kHidKeyRight:
			bridge_bits |= kJoyRight;
			break;
		case kHidKeyLeft:
			bridge_bits |= kJoyLeft;
			break;
		case kHidKeyDown:
			bridge_bits |= kJoyDown;
			break;
		case kHidKeyUp:
			bridge_bits |= kJoyUp;
			break;
		case kHidKeySpace:
		case kHidKeyZ:
			bridge_bits |= kJoyButton1;
			break;
		case kHidKeyX:
			bridge_bits |= kJoyButton2;
			break;
		default:
			break;
		}
	}


	if (f1_pressed && !m_LastF12Pressed)
	{
		#if COMBO_ENABLE_DEBUG_OVERLAY
		m_DebugOverlayEnabled = m_DebugOverlayEnabled ? FALSE : TRUE;
		if (!m_DebugOverlayEnabled)
		{
			ClearDebugOverlay();
		}
		m_Logger.Write(FromKernel, LogNotice, m_DebugOverlayEnabled ? "Overlay ON" : "Overlay OFF");
		#endif
	}
	m_LastF12Pressed = f1_pressed;

	if (pause_pressed)
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
	m_LastPausePressed = pause_pressed;

	const TComboMenuAction menu_action = m_PauseMenu.ProcessInput(
		m_EmulationPaused,
		menu_up_pressed,
		menu_down_pressed,
		menu_enter_pressed,
		menu_back_pressed);
	if (m_PauseMenu.ConsumeBackgroundRestoreRequest())
	{
		m_PauseNeedsBackgroundRedraw = TRUE;
	}
	HandleMenuAction(menu_action);

	m_JoyBridgeBits = bridge_bits;
	m_JoyMappedBits = (u8) (~bridge_bits) & kJoyMask;
#if COMBO_ENABLE_FMSX
	fmsx_runtime_set_keyboard_raw(modifiers, raw_keys);
#endif
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