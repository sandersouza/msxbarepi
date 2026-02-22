#include "msx_core.h"

#include "fmsx_frontend.h"
#include "platform.h"

#include "MSX.h"
#include "Sound.h"
#include "streams/file_stream.h"

static int g_ready;
static unsigned g_run_iterations;

static int probe_file(const char *name, unsigned long *size_out) {
    RFILE *f = rfopen(name, "rb");
    if (!f) {
        if (size_out) {
            *size_out = 0;
        }
        return 0;
    }

    if (rfseek(f, 0, SEEK_END) == 0) {
        long sz = rftell(f);
        if (size_out) {
            *size_out = sz > 0 ? (unsigned long)sz : 0;
        }
        filestream_rewind(f);
    } else if (size_out) {
        *size_out = 0;
    }

    rfclose(f);
    return 1;
}

int msx_core_init(const uint8_t *rom_data, uint32_t rom_size) {
    (void)rom_size;

#ifdef MSXBARE_DEBUG_LOGS
    platform_log("[dbg] msx_core_init: begin\n");
#endif
    if (!fmsx_frontend_init()) {
        platform_log("[M1.1] Falha ao inicializar frontend fMSX.\n");
        return 0;
    }
#ifdef MSXBARE_DEBUG_LOGS
    platform_log("[dbg] frontend fMSX inicializado\n");
#endif

    fmsx_frontend_set_raw_rom(rom_data, rom_size);

    ROMName[0] = "CARTA.ROM";
    ROMName[1] = "CARTB.ROM";
    DSKName[0] = "DRIVEA.DSK";
    DSKName[1] = "DRIVEB.DSK";

    Mode = MSX_MSX1 | MSX_NTSC;
    RAMPages = 4;
    VRAMPages = 2;
    UPeriod = 100; /* Forca render a cada frame durante o bring-up */

#ifdef MSXBARE_DEBUG_LOGS
    platform_log("[M1.1] Inicializando nucleo real fMSX...\n");
#endif
    {
        unsigned long sz = 0;
        if (!probe_file("MSX.ROM", &sz)) {
            platform_log("[M1.1] ERRO: MSX.ROM nao encontrado no initramfs.\n");
        }

        if (!probe_file("CARTA.ROM", &sz)) {
#ifdef MSXBARE_DEBUG_LOGS
            platform_log("[M1.1] WARN: CARTA.ROM nao encontrado (BASIC deve subir sem cartucho).\n");
#endif
        }
    }

    if (!StartMSX(Mode, RAMPages, VRAMPages)) {
        platform_log("[M1.1] StartMSX falhou. Verifique initramfs com MSX.ROM e CARTA.ROM.\n");
        return 0;
    }

    /* Desliga o frame-skip de fast-boot assim que a carga inicial do core/ROMs terminou. */
    fmsx_frontend_set_boot_fast_mode(0);

    /* In baremetal we want the original continuous Z80 loop, not libretro's per-frame quit. */
    ExitNow = 0;

    g_ready = 1;
    g_run_iterations = 0;
    platform_log("[M1.1] fMSX inicializado (HDMI).\n");
    return 1;
}

void msx_core_run(void) {
    if (!g_ready) {
        while (1) {
            platform_delay_ms(1000);
        }
    }

#ifdef MSXBARE_DEBUG_LOGS
    platform_log("[dbg] Entrando no loop externo do core.\n");
    platform_log("[dbg] Chamando RunZ80 (continuo)...\n");
#endif
    (void)RunZ80(&CPU);
    platform_log("[M1.1] RunZ80 retornou (inesperado no baremetal).\n");

    for (;;) {
        platform_delay_ms(1000);
    }
}
