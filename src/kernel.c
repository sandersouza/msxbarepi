#include "console.h"
#include "initramfs.h"
#include "mmu.h"
#include "msx_core.h"
#include "platform.h"
#include "rom_loader.h"
#ifdef MSXBARE_AUDIO_HDMI_DEBUG_STANDALONE
#include "audio_out.h"
#include "audio_pcm.h"
#endif

#ifdef MSXBARE_AUDIO_HDMI_DEBUG_STANDALONE
static void hdmi_audio_debug_standalone(void) {
    static int16_t tone[256];
    uint32_t phase = 0u;
    const uint32_t sample_rate = 48000u;
    const uint32_t freq_hz = 440u;
    const uint32_t phase_step = (uint32_t)(((uint64_t)freq_hz << 24) / sample_rate);
    const uint64_t hz = platform_ticks_hz();
    const uint64_t run_ticks = hz ? (hz * 8u) : 0u;
    uint64_t start = platform_ticks_now();

    platform_log("[audio][hdmi] modo diagnostico standalone (sem emulador).\n");
    platform_log("[audio][hdmi] inicializando fila PCM e backend HDMI (48kHz)...\n");
    audio_pcm_init(sample_rate, 1u);
    audio_out_init(sample_rate);
    platform_log("[audio][hdmi] injetando tom 440Hz por 8s e servindo backend...\n");

    while (!hz || (platform_ticks_now() - start) < run_ticks) {
        for (unsigned int i = 0; i < 256u; ++i) {
            phase += phase_step;
            tone[i] = (phase & 0x00800000u) ? 12000 : -12000;
        }
        (void)audio_pcm_write_interleaved_s16(tone, 256u);
        for (unsigned int i = 0; i < 128u; ++i) {
            audio_out_service();
        }
        platform_delay_ms(2);
    }

    platform_log("[audio][hdmi] fim do teste. sistema parado para leitura.\n");
    while (1) {
        audio_out_service();
        platform_delay_ms(50);
    }
}
#endif

void kernel_main(unsigned long dtb_ptr) {
    const unsigned char *rom_data = 0;
    unsigned int rom_size = 0;

    console_init();
    platform_init();

#ifdef MSXBARE_ENABLE_MMU
#ifdef MSXBARE_DEBUG_LOGS
    console_puts("[dbg] MMU/cache: habilitando...\n");
#endif
    mmu_enable_identity_map();
#ifdef MSXBARE_DEBUG_LOGS
    console_puts("[dbg] MMU/cache: OK\n");
#endif
#endif

    console_puts("MSXBare boot\n");
    console_puts("M1.1 - Core MSX1\n");

#ifdef MSXBARE_AUDIO_HDMI_DEBUG_STANDALONE
    hdmi_audio_debug_standalone();
#endif

    if (rom_loader_from_initramfs((unsigned long)dtb_ptr, &rom_data, &rom_size)) {
        console_puts("Initramfs carregado via SD\n");
        initramfs_mount(rom_data, rom_size);
    } else {
        console_puts("Initramfs nao encontrado\n");
    }

#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    console_puts("[hdmi-audio-test] antes de msx_core_init\n");
#endif

#ifdef MSXBARE_DEBUG_LOGS
    console_puts("[dbg] Chamando msx_core_init...\n");
#endif
    if (!msx_core_init(rom_data, rom_size)) {
        console_puts("[M1.1] Falha na inicializacao do core. Verifique BIOS/ROM no initramfs.\n");
        while (1) {
            platform_delay_ms(1000);
        }
    }

#ifdef MSXBARE_AUDIO_HDMI_BOOT_DEBUG
    console_puts("[hdmi-audio-test] msx_core_init OK\n");
#endif

#ifdef MSXBARE_DEBUG_LOGS
    platform_debug_hold_if_enabled();
#endif
    msx_core_run();
}
