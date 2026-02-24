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
static char *usbdbg_append_str(char *p, const char *s) { while (*s) *p++ = *s++; return p; }
static char *usbdbg_append_u32(char *p, uint32_t v) { char t[10]; unsigned n=0; if(!v){*p++='0'; return p;} while(v&&n<sizeof(t)){ t[n++]=(char)('0'+(v%10u)); v/=10u; } while(n) *p++=t[--n]; return p; }
static char *usbdbg_append_hex32(char *p, uint32_t v) { static const char h[]="0123456789ABCDEF"; *p++='0'; *p++='x'; for (int i=7;i>=0;--i) *p++=h[(v>>(i*4))&0xFu]; return p; }
static void usbdbg_draw_u8(uint32_t x,uint32_t y,uint32_t v){ char d[4]; char *q=d; q=usbdbg_append_u32(q,v); *q=0; framebuffer_draw_text_at(x,y,d); }
static void usbdbg_draw_hex16(uint32_t x,uint32_t y,uint16_t v){ char d[7]; char *q=d; q=usbdbg_append_str(q,"0x"); static const char h[]="0123456789ABCDEF"; *q++=h[(v>>12)&0xF]; *q++=h[(v>>8)&0xF]; *q++=h[(v>>4)&0xF]; *q++=h[v&0xF]; *q=0; framebuffer_draw_text_at(x,y,d); }
static void usbdbg_line_hex2(uint32_t x,uint32_t y,const char *a,uint32_t va,const char *b,uint32_t vb){ char line[160]; char*q=line; q=usbdbg_append_str(q,a); q=usbdbg_append_hex32(q,va); q=usbdbg_append_str(q,b); q=usbdbg_append_hex32(q,vb); *q=0; framebuffer_draw_text_at(x,y,line);} 
static void usbdbg_line_status(uint32_t x,uint32_t y,const usb_host_status_t *st){ char line[192]; char*q=line; q=usbdbg_append_str(q,"detect="); q=usbdbg_append_u32(q,st->controller_detected); q=usbdbg_append_str(q," init_ok="); q=usbdbg_append_u32(q,st->init_ok); q=usbdbg_append_str(q," host_mode="); q=usbdbg_append_u32(q,st->host_mode); *q=0; framebuffer_draw_text_at(x,y,line);} 
static void usbdbg_line_root(uint32_t x,uint32_t y,const usb_host_status_t *st){
    framebuffer_draw_text_at(x,y,"root pwr conn en spd:");
    usbdbg_draw_u8(x+8u*22u,y,st->port_powered);
    usbdbg_draw_u8(x+8u*24u,y,st->device_present);
    usbdbg_draw_u8(x+8u*26u,y,st->port_enabled);
    usbdbg_draw_u8(x+8u*30u,y,st->port_speed);
}

static void usbdbg_line_ep0(uint32_t x,uint32_t y,const usb_host_status_t *st){
    framebuffer_draw_text_at(x,y,"ep0 p s d t v m c:");
    usbdbg_draw_u8(x+8u*20u,y,st->ep0_probe_started);
    usbdbg_draw_u8(x+8u*22u,y,st->ep0_setup_ok);
    usbdbg_draw_u8(x+8u*24u,y,st->ep0_data_ok);
    usbdbg_draw_u8(x+8u*26u,y,st->ep0_status_ok);
    usbdbg_draw_u8(x+8u*28u,y,st->ep0_desc_valid);
    usbdbg_draw_u8(x+8u*30u,y,st->ep0_max_packet_size0);
    usbdbg_draw_u8(x+8u*33u,y,st->ep0_dev_class);
}

static void usbdbg_line_enum(uint32_t x,uint32_t y,const usb_host_status_t *st){
    framebuffer_draw_text_at(x,y,"enum sa fd a vid pid:");
    usbdbg_draw_u8(x+8u*19u,y,st->ep0_set_address_ok);
    usbdbg_draw_u8(x+8u*21u,y,st->ep0_desc18_ok);
    usbdbg_draw_u8(x+8u*23u,y,st->ep0_assigned_address);
    usbdbg_draw_hex16(x+8u*25u,y,st->ep0_vendor_id16);
    usbdbg_draw_hex16(x+8u*32u,y,st->ep0_product_id16);
}

static void usbdbg_line_hid(uint32_t x,uint32_t y,const usb_host_status_t *st){ char line[128]; char*q=line; q=usbdbg_append_str(q,"hid-kbd="); q=usbdbg_append_u32(q,st->hid_keyboard_present); q=usbdbg_append_str(q," hid-pad="); q=usbdbg_append_u32(q,st->hid_gamepad_present); q=usbdbg_append_str(q," (stub)"); *q=0; framebuffer_draw_text_at(x,y,line);} 
static void usb_host_debug_standalone(void){ usb_host_status_t st; framebuffer_clear(0x00000000u); framebuffer_draw_text_at(8,8,"MSXBare boot"); framebuffer_draw_text_at(8,24,"USB Host Debug (standalone)"); framebuffer_draw_text_at(8,56,"U0: entrou no standalone"); uart_puts("[usb][dbg] standalone enter\n"); framebuffer_draw_text_at(8,72,"U1: chamando usb_host_init()..."); usb_host_init(); framebuffer_draw_text_at(8,88,"U2: usb_host_init() retornou"); while(1){ framebuffer_draw_text_at(8,104,"U3: poll"); usb_host_poll(); framebuffer_draw_text_at(8,104,"U4: get_status"); usb_host_get_status(&st); framebuffer_draw_text_at(8,104,"U5: drawstatus"); framebuffer_fill_rect(0,120,1024,192,0x00000000u); usbdbg_line_hex2(8,120,"V=",st.vendor_id," H2=",st.hw_cfg2); usbdbg_line_status(8,136,&st); usbdbg_line_root(8,152,&st); usbdbg_line_ep0(8,168,&st); usbdbg_line_enum(8,184,&st); platform_delay_ms(250);} }
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
