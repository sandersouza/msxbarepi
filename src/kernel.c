#include "console.h"
#include "framebuffer.h"
#include "initramfs.h"
#include "mmu.h"
#include "msx_input.h"
#include "msx_core.h"
#include "platform.h"
#include "rom_loader.h"
#include "uart.h"
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
#ifdef MSXBARE_USB_HOST_DEBUG_STANDALONE
#include "usb_host.h"
#endif

#ifdef MSXBARE_USB_HOST_DEBUG_STANDALONE
static char *usbdbg_append_str(char *p, const char *s) { while (*s) *p++ = *s++; return p; }
static char *usbdbg_append_u32(char *p, uint32_t v) {
    char tmp[10]; unsigned n = 0;
    if (v == 0u) { *p++ = '0'; return p; }
    while (v && n < sizeof(tmp)) { tmp[n++] = (char)('0' + (v % 10u)); v /= 10u; }
    while (n) *p++ = tmp[--n];
    return p;
}
static char *usbdbg_append_hex32(char *p, uint32_t v) {
    static const char h[] = "0123456789ABCDEF";
    *p++='0'; *p++='x';
    for (int i = 7; i >= 0; --i) *p++ = h[(v >> (i*4)) & 0xFu];
    return p;
}
static void usbdbg_line_at(uint32_t x, uint32_t y, const char *prefix, uint32_t a, const char *mid, uint32_t b) {
    char line[128]; char *q = line;
    q = usbdbg_append_str(q, prefix);
    q = usbdbg_append_hex32(q, a);
    q = usbdbg_append_str(q, mid);
    q = usbdbg_append_hex32(q, b);
    *q='\0';
    framebuffer_draw_text_at(x,y,line);
}
static void usbdbg_status_line(uint32_t x, uint32_t y, const usb_host_status_t *st) {
    char line[128]; char *q = line;
    q = usbdbg_append_str(q, "detect="); q = usbdbg_append_u32(q, st->controller_detected);
    q = usbdbg_append_str(q, " init_ok="); q = usbdbg_append_u32(q, st->init_ok);
    q = usbdbg_append_str(q, " host_mode="); q = usbdbg_append_u32(q, st->host_mode);
    *q='\0'; framebuffer_draw_text_at(x,y,line);
}
static void usbdbg_root_line(uint32_t x, uint32_t y, const usb_host_status_t *st) {
    char line[128]; char *q = line;
    q = usbdbg_append_str(q, "rootport pwr="); q = usbdbg_append_u32(q, st->port_powered);
    q = usbdbg_append_str(q, " conn="); q = usbdbg_append_u32(q, st->device_present);
    q = usbdbg_append_str(q, " en="); q = usbdbg_append_u32(q, st->port_enabled);
    q = usbdbg_append_str(q, " speed="); q = usbdbg_append_u32(q, st->port_speed);
    *q='\0'; framebuffer_draw_text_at(x,y,line);
}
static void usbdbg_hid_line(uint32_t x, uint32_t y, const usb_host_status_t *st) {
    char line[96]; char *q = line;
    q = usbdbg_append_str(q, "hid-kbd="); q = usbdbg_append_u32(q, st->hid_keyboard_present);
    q = usbdbg_append_str(q, " hid-pad="); q = usbdbg_append_u32(q, st->hid_gamepad_present);
    q = usbdbg_append_str(q, " (stub)");
    *q='\0'; framebuffer_draw_text_at(x,y,line);
}
static void usbdbg_raw1_line(uint32_t x, uint32_t y, const usb_host_status_t *st) {
    char line[160]; char *q = line;
    q = usbdbg_append_str(q, "hcd_pwr="); q = usbdbg_append_u32(q, st->hcd_power_on_ok);
    q = usbdbg_append_str(q, " GINT="); q = usbdbg_append_hex32(q, st->gintsts_raw);
    q = usbdbg_append_str(q, " HPRT="); q = usbdbg_append_hex32(q, st->hprt_raw);
    *q='\0'; framebuffer_draw_text_at(x,y,line);
}

static void usbdbg_raw2_line(uint32_t x, uint32_t y, const usb_host_status_t *st) {
    char line[160]; char *q = line;
    q = usbdbg_append_str(q, "GUSBCFG="); q = usbdbg_append_hex32(q, st->gusbcfg_raw);
    q = usbdbg_append_str(q, " GAHBCFG="); q = usbdbg_append_hex32(q, st->gahbcfg_raw);
    *q='\0'; framebuffer_draw_text_at(x,y,line);
}

static void usb_host_debug_standalone(void) {
    usb_host_status_t st;

    framebuffer_clear(0x00000000u);
    framebuffer_draw_text_at(8, 8, "MSXBare boot");
    framebuffer_draw_text_at(8, 24, "USB Host Debug (standalone)");
    framebuffer_draw_text_at(8, 56, "U0: entrou no standalone");
    uart_puts("[usb][dbg] standalone enter\n");

    framebuffer_draw_text_at(8, 72, "U1: chamando usb_host_init()...");
    uart_puts("[usb][dbg] before usb_host_init\n");
    usb_host_init();
    framebuffer_draw_text_at(8, 88, "U2: usb_host_init() retornou");
    uart_puts("[usb][dbg] after usb_host_init\n");

    while (1) {
        framebuffer_draw_text_at(8, 104, "U3: poll");
        usb_host_poll();
        framebuffer_draw_text_at(8, 104, "U4: get_status");
        usb_host_get_status(&st);
        framebuffer_draw_text_at(8, 104, "U5: draw");

        framebuffer_fill_rect(0, 120, 1024, 168, 0x00000000u);

        usbdbg_line_at(8, 120, "V=", st.vendor_id, " H2=", st.hw_cfg2);
        usbdbg_status_line(8, 136, &st);
        usbdbg_root_line(8, 152, &st);
        usbdbg_hid_line(8, 168, &st);
        usbdbg_raw1_line(8, 184, &st);
        usbdbg_raw2_line(8, 200, &st);

        framebuffer_draw_text_at(8, 104, "U6: sleep");
        platform_delay_ms(250);
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

#ifdef MSXBARE_USB_HOST_DEBUG_STANDALONE
    usb_host_debug_standalone();
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

    msx_input_init();

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
