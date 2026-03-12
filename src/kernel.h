#ifndef MSXBARE_CIRCLE_MSXBARE_KERNEL_H
#define MSXBARE_CIRCLE_MSXBARE_KERNEL_H

#include "gfx_textbox.h"
#include "combo_menu.h"
#include "media_catalog.h"
#include "tools/usb_hid_keyboard.h"

#include <circle/actled.h>
#include <circle/devicenameservice.h>
#include <circle/exceptionhandler.h>
#include <circle/interrupt.h>
#include <circle/koptions.h>
#include <circle/logger.h>
#include <circle/sched/scheduler.h>
#include <circle/screen.h>
#include <circle/serial.h>
#include <circle/sound/soundbasedevice.h>
#include <circle/timer.h>
#include <circle/types.h>
#include <circle/usb/usbhcidevice.h>
#include <SDCard/emmc.h>
extern "C" {
#include <fatfs/ff.h>
}

enum TComboShutdownMode {
    ComboShutdownNone,
    ComboShutdownHalt,
    ComboShutdownReboot
};

class CComboKernel
{
public:
    CComboKernel(void);
    ~CComboKernel(void);

    boolean Initialize(void);
    TComboShutdownMode Run(void);

private:
    void RefillAudioQueue(void);
    void PrimeAudioSilenceBeforeReset(void);
    void InitializeAudioOutput(boolean fmsx_audio_enabled);
    void GenerateSamples(s16 *buffer, unsigned frames);
    void DrawDebugOverlay(unsigned tick);
    void ClearDebugOverlay(void);
    void BootTrace(const char *tag);
    void WriteScreenText(const char *text);
    void ComputeViewportBox(unsigned src_width, unsigned src_height,
                            unsigned *out_x, unsigned *out_y,
                            unsigned *out_w, unsigned *out_h) const;
    void BlitFmsxFrame(boolean force_redraw);
    void HandleMenuAction(TComboMenuAction action);
    void ApplyRuntimeSettingsToFmsx(void);
    void RefreshSettingsUiAfterAction(void);
    void ResetEmulationRuntimeState(void);
    void UpdateJoystickFromRaw(unsigned char modifiers, const unsigned char raw_keys[6]);
    void PushKeyboardStateToRuntime(boolean rensha_fire_on);
    void SetDebugOverlayEnabled(boolean enabled);
    void UpdateSettingsSaveTelemetry(unsigned stage, unsigned code, unsigned aux);
    void UpdateLoadDiagTelemetry(unsigned stage);
    unsigned LoadResolutionModeFromBootConfig(void);
    void PersistResolutionModeToBootConfig(unsigned mode);
    void LoadSettingsFromStorage(void);
    void SaveSettingsToStorage(void);
    boolean EnsureStateIoBuffer(unsigned min_capacity);
    boolean EnsureStateStorageDirectory(void);
    void SaveEmulatorStateToStorage(void);
    void LoadEmulatorStateFromStorage(void);
    void RenderTelemetryBufferView(void);
    void ProcessPendingTelemetryToggle(void);
    void ProcessPendingViewportScreenshot(void);
    void NormalizeSettingsForBuild(void);

    static void KeyPressedHandler(const char *text);

private:
	static const unsigned kBlitMapMaxAxis = 2048u;

    CActLED m_ActLED;
    CKernelOptions m_Options;
    CDeviceNameService m_DeviceNameService;
    CScreenDevice m_Screen;
    CGfxTextBoxRenderer m_GfxText;
    CSerialDevice m_Serial;
    CExceptionHandler m_ExceptionHandler;
    CInterruptSystem m_Interrupt;
    CTimer m_Timer;
    CLogger m_Logger;
    CScheduler m_Scheduler;
    CUSBHCIDevice m_USBHCI;
    CEMMCDevice m_EMMC;
    FATFS m_SettingsFileSystem;

    CSoundBaseDevice *m_Sound;
    CUsbHidKeyboard m_UsbKeyboard;

    u32 m_AudioPhase;
    u32 m_AudioStep;

    unsigned m_PlugAndPlayCount;
    unsigned m_KeyEventCount;
    unsigned m_LastKeyCode;
    unsigned m_AudioWriteOps;
    unsigned m_AudioDropOps;
    unsigned m_AudioPeak;
    s16 m_LastAudioSample;
    unsigned m_SoundStartAttempts;
    unsigned m_SoundStartFailures;
    unsigned m_LastQueueAvail;
    unsigned m_LastQueueFree;
    unsigned m_AudioTargetPeakRuntime;
    unsigned m_AudioClipMaxRuntime;
    unsigned m_AudioOutputGainPct;
    unsigned m_BootToneFramesRemaining;
    unsigned m_UsbInitRetryTick;
    boolean m_AudioInitAttempted;
    boolean m_UsbReady;
    u8 m_JoyBridgeBits;
    u8 m_JoyMappedBits;
    boolean m_DebugOverlayEnabled;
    boolean m_DebugOverlayUnlocked;
    boolean m_EmulationPaused;
    boolean m_LastF12Pressed;
    boolean m_LastF6Pressed;
    boolean m_LastF7Pressed;
    boolean m_LastF8Pressed;
    boolean m_LastF9Pressed;
    boolean m_LastF10Pressed;
    boolean m_LastFmGainUpPressed;
    boolean m_LastFmGainDownPressed;
    boolean m_LastPauseWasInSettings;
    boolean m_LastPausePressed;
    boolean m_LastMenuBackPressed;
    boolean m_PauseNeedsBackgroundRedraw;
    boolean m_PauseNeedsFullViewportClear;
    boolean m_ForceViewportFullClearNextFrame;
    boolean m_PauseRenderSuppressed;
    boolean m_FmsxEnabled;
    boolean m_FmsxReady;
    const char *m_EmulatorBackendName;
    unsigned m_BackendInitFailCode;
    unsigned long m_FmsxFrames;
    int m_FmsxLastError;
    int m_FmsxLastPC;
    unsigned m_FmsxPcRepeatCount;
    boolean m_FmsxPcLoopLogged;
    unsigned m_FmsxVideoSeq;
    u64 m_FmsxFpsWindowStartUs;
    u64 m_LastPauseToggleUs;
    u64 m_LastMenuInputPollUs;
    u64 m_LastOverlayUs;
    unsigned long m_FmsxFpsWindowStartFrames;
    unsigned m_FmsxFpsX10;
    unsigned m_FramePacingErrAvgUs;
    unsigned m_FramePacingErrMaxUs;
    unsigned m_FmsxBlankFrames;
    unsigned m_InitramfsFiles;
    unsigned m_FmsxBoxX;
    unsigned m_FmsxBoxY;
    unsigned m_FmsxBoxW;
    unsigned m_FmsxBoxH;
    unsigned m_BlitMapSrcW;
    unsigned m_BlitMapSrcH;
    unsigned m_BlitMapDstW;
    unsigned m_BlitMapDstH;
    boolean m_BlitMapValid;
    u16 m_BlitXMap[kBlitMapMaxAxis];
    u16 m_BlitYMap[kBlitMapMaxAxis];
    CComboPauseMenu m_PauseMenu;
    unsigned m_OverscanPercent;
    unsigned m_Language;
    unsigned m_ResolutionMode;
    boolean m_WidescreenEnabled;
    unsigned m_ScanlineMode;
    unsigned m_RefreshRateHz;
    boolean m_DiskRomEnabled;
    unsigned m_BootMode;
    unsigned m_MachineProfile;
    unsigned m_RamMapperKb;
    unsigned m_MegaRamKb;
    unsigned m_Z80TurboMode;
    unsigned m_RenshaMode;
    unsigned m_RenshaPhase;
    boolean m_RenshaFireAHeld;
    boolean m_RenshaSpaceHeld;
    unsigned char m_LastKeyboardModifiers;
    unsigned char m_LastKeyboardRawKeys[6];
    boolean m_FmMusicEnabled;
    unsigned m_FmLayerGainPct;
    boolean m_SccCartEnabled;
    u64 m_FrameIntervalUs;
    boolean m_FramePacingResetPending;
    boolean m_FmsxFallbackPattern;
    boolean m_TestToneEnabled;
    boolean m_MmuEnabled;
    boolean m_DCacheEnabled;
    boolean m_ICacheEnabled;
    boolean m_SettingsStorageReady;
    boolean m_SettingsLoadPending;
    boolean m_InitramfsDeferredMountPending;
    boolean m_SettingsSavePending;
    volatile boolean m_ResolutionModeLoadPending;
    boolean m_StateSavePending;
    boolean m_StateLoadPending;
    boolean m_MediaCatalogStarted;
    boolean m_MediaCatalogSummaryLogged;
    volatile unsigned m_PendingMenuAction;
    unsigned m_SettingsSaveStage;
    unsigned m_SettingsSaveCode;
    unsigned m_SettingsSaveAux;
    u64 m_BootStartUs;
    unsigned m_BootToFmsxMs;
    unsigned m_TelemetryViewMode;
    boolean m_TelemetrySavedPausedState;
    volatile unsigned m_PendingTelemetryToggle;
    volatile boolean m_PendingViewportScreenshot;
    u8 *m_StateIoBuffer;
    unsigned m_StateIoBufferCapacity;

    static CComboKernel *s_Instance;
};

#endif
