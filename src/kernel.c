#include "audio_stub.h"
#include "circle_audio_runtime.h"
#include "circle_input_runtime.h"
#include "framebuffer.h"
#include "input_stub.h"
#include "platform.h"
#include "uart.h"

#ifndef MSXBARE_FB_WIDTH
#define MSXBARE_FB_WIDTH 1024u
#endif

#ifndef MSXBARE_FB_HEIGHT
#define MSXBARE_FB_HEIGHT 768u
#endif

static void render_boot_screen(framebuffer_info_t *fb)
{
    framebuffer_fill(fb, 0x00101010u);
    framebuffer_draw_rect(fb, 0, 0, fb->width, 72, 0x00003366u);
    framebuffer_draw_rect(fb, 0, fb->height - 48, fb->width, 48, 0x00002244u);
    framebuffer_draw_rect(fb, 32, 120, fb->width - 64, fb->height - 200, 0x00000000u);
    framebuffer_draw_rect(fb, 40, 128, fb->width - 80, fb->height - 216, 0x0000AA22u);
}

static void render_heartbeat(framebuffer_info_t *fb, uint32_t tick)
{
    const uint32_t bar_w = 240u;
    const uint32_t x = 48u + (tick % ((fb->width > (bar_w + 96u)) ? (fb->width - bar_w - 96u) : 1u));
    const uint32_t y = fb->height > 96u ? fb->height - 88u : 0u;

    framebuffer_draw_rect(fb, 40, y, fb->width > 80 ? fb->width - 80 : 0, 24, 0x00000000u);
    framebuffer_draw_rect(fb, x, y + 2u, bar_w, 20, 0x00FFFF00u);
}

void kernel_main(uint64_t dtb_ptr)
{
    (void)dtb_ptr;

    uart_init();
    uart_puts("\r\n[msxbare][m0] boot start\r\n");
    uart_puts("[msxbare][m0] init uart: ok\r\n");

    framebuffer_info_t framebuffer;
    if (!framebuffer_init(&framebuffer, MSXBARE_FB_WIDTH, MSXBARE_FB_HEIGHT)) {
        uart_puts("[msxbare][m0] init framebuffer: fail\r\n");
        for (;;) {
            platform_delay_ms(250);
        }
    }

    uart_puts("[msxbare][m0] init framebuffer: ok\r\n");
    uart_puts("[msxbare][m0] fb width=0x");
    uart_put_hex32(framebuffer.width);
    uart_puts(" height=0x");
    uart_put_hex32(framebuffer.height);
    uart_puts(" pitch=0x");
    uart_put_hex32(framebuffer.pitch);
    uart_puts("\r\n");

    audio_stub_init();
    uart_puts("[msxbare][m0] init audio stub: ok (hdmi path placeholder)\r\n");

    render_boot_screen(&framebuffer);
    uart_puts("[msxbare][m0] render hdmi: ok\r\n");

#ifdef MSXBARE_CIRCLE_AUDIO_RUNTIME
    uart_puts("[msxbare][m0.2] circle hdmi audio runtime: deferred init\r\n");
#endif

#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
    if (!circle_input_runtime_init()) {
        uart_puts("[msxbare][m0.1] init circle input runtime: fail\r\n");
    } else {
        uart_puts("[msxbare][m0.1] init circle input runtime: ok\r\n");
    }
#endif

    input_stub_state_t input;
    input_stub_init(&input);
#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
    uart_puts("[msxbare][m0] init input backend: circle-usb-hid\r\n");
#else
    uart_puts("[msxbare][m0] init input stub: ok (usb/hid placeholder)\r\n");
#endif

    uint32_t tick = 0;
#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
    circle_input_snapshot_t circle_snapshot;
#endif
#ifdef MSXBARE_CIRCLE_AUDIO_RUNTIME
    circle_audio_snapshot_t circle_audio;
    uint32_t prev_writable_hits = 0;
    uint32_t prev_writable_misses = 0;
    uint32_t audio_init_state = 0;
#endif
    for (;;) {
#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
        circle_input_runtime_poll(&circle_snapshot);
#else
        input_stub_poll(&input);
#endif

#ifdef MSXBARE_CIRCLE_AUDIO_RUNTIME
        if (audio_init_state == 0u && tick >= 180u) {
            uart_puts("[msxbare][m0.2] attempting deferred audio init\r\n");
            if (!circle_audio_runtime_init()) {
                audio_init_state = 2u;
                uart_puts("[msxbare][m0.2] deferred audio init: fail\r\n");
            } else {
                audio_init_state = 1u;
                uart_puts("[msxbare][m0.2] deferred audio init: ok\r\n");
            }
        }

        if (audio_init_state == 1u) {
            circle_audio_runtime_poll(&circle_audio);
        } else {
            circle_audio.ready = audio_init_state == 0u ? 0x0000000Du : 0x000000EEu;
            circle_audio.active = 0u;
            circle_audio.queue_frames = 0u;
            circle_audio.queue_avail = 0u;
            circle_audio.writes = 0u;
            circle_audio.drops = 0u;
            circle_audio.last_level = 0u;
            circle_audio.writable_hits = 0u;
            circle_audio.writable_misses = 0u;
        }
#else
        audio_stub_tick();
#endif

        if ((tick & 0x0Fu) == 0u) {
            render_heartbeat(&framebuffer, tick);
#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
            if (circle_snapshot.keyboard_attached) {
                framebuffer_draw_rect(&framebuffer, 40u, framebuffer.height - 56u, 120u, 12u, 0x0000FF00u);
            } else {
                framebuffer_draw_rect(&framebuffer, 40u, framebuffer.height - 56u, 120u, 12u, 0x00AA0000u);
            }
#endif

#ifdef MSXBARE_CIRCLE_AUDIO_RUNTIME
            if (audio_init_state == 0u) {
                framebuffer_draw_rect(&framebuffer, 176u, framebuffer.height - 56u, 120u, 12u, 0x00006699u);
            } else if (audio_init_state == 2u) {
                framebuffer_draw_rect(&framebuffer, 176u, framebuffer.height - 56u, 120u, 12u, 0x00AA0000u);
            } else if (circle_audio.active) {
                framebuffer_draw_rect(&framebuffer, 176u, framebuffer.height - 56u, 120u, 12u, 0x0000AAFFu);
            } else {
                framebuffer_draw_rect(&framebuffer, 176u, framebuffer.height - 56u, 120u, 12u, 0x00004488u);
            }

            {
                uint32_t hit_delta = circle_audio.writable_hits - prev_writable_hits;
                uint32_t miss_delta = circle_audio.writable_misses - prev_writable_misses;
                uint32_t hit_w = hit_delta > 120u ? 120u : hit_delta;
                uint32_t miss_w = miss_delta > 120u ? 120u : miss_delta;

                framebuffer_draw_rect(&framebuffer, 304u, framebuffer.height - 56u, 120u, 5u, 0x00000000u);
                framebuffer_draw_rect(&framebuffer, 304u, framebuffer.height - 50u, 120u, 5u, 0x00000000u);

                if (hit_w > 0u) {
                    framebuffer_draw_rect(&framebuffer, 304u, framebuffer.height - 56u, hit_w, 5u, 0x0000FF00u);
                }
                if (miss_w > 0u) {
                    framebuffer_draw_rect(&framebuffer, 304u, framebuffer.height - 50u, miss_w, 5u, 0x00FF0000u);
                }

                prev_writable_hits = circle_audio.writable_hits;
                prev_writable_misses = circle_audio.writable_misses;
            }
#endif
        }

        if ((tick % 120u) == 0u) {
#ifdef MSXBARE_CIRCLE_INPUT_RUNTIME
            uart_puts("[msxbare][m0.1] circle ready=0x");
            uart_put_hex32(circle_snapshot.ready);
            uart_puts(" kbd=0x");
            uart_put_hex32(circle_snapshot.keyboard_attached);
            uart_puts(" ev=0x");
            uart_put_hex32(circle_snapshot.key_events);
            uart_puts(" mod=0x");
            uart_put_hex32(circle_snapshot.last_modifiers);
            uart_puts("\r\n");
#else
            uart_puts("[msxbare][m0] loop heartbeat polls=0x");
            uart_put_hex32(input.polls);
            uart_puts("\r\n");
#endif

        #ifdef MSXBARE_CIRCLE_AUDIO_RUNTIME
                uart_puts("[msxbare][m0.2] audio ready=0x");
                uart_put_hex32(circle_audio.ready);
                uart_puts(" active=0x");
                uart_put_hex32(circle_audio.active);
                uart_puts(" q=0x");
                uart_put_hex32(circle_audio.queue_frames);
                uart_puts(" avail=0x");
                uart_put_hex32(circle_audio.queue_avail);
                uart_puts(" wr=0x");
                uart_put_hex32(circle_audio.writes);
                uart_puts(" drop=0x");
                uart_put_hex32(circle_audio.drops);
                    uart_puts(" wh=0x");
                    uart_put_hex32(circle_audio.writable_hits);
                    uart_puts(" wm=0x");
                    uart_put_hex32(circle_audio.writable_misses);
                uart_puts("\r\n");
        #endif
        }

        ++tick;
    #ifdef MSXBARE_CIRCLE_AUDIO_RUNTIME
        platform_delay_ms(1);
    #else
        platform_delay_ms(16);
    #endif
    }
}