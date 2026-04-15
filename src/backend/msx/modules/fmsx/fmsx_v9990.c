#include "fmsx_v9990.h"
#include "Z80.h"

#include <string.h>

extern int ScanLine;

#ifndef MSXBARE_ENABLE_DEBUG_OVERLAY
#define MSXBARE_ENABLE_DEBUG_OVERLAY 0
#endif

#ifndef MSXBARE_V9990_PHASE_TRACE_UART
#define MSXBARE_V9990_PHASE_TRACE_UART MSXBARE_ENABLE_DEBUG_OVERLAY
#endif

#ifndef MSXBARE_V9990_PHASE_VISUAL_DEBUG
#define MSXBARE_V9990_PHASE_VISUAL_DEBUG 0
#endif

#define FMSX_V9990_STATE_MAGIC 0x56393939u /* 'V999' */
#define FMSX_V9990_STATE_VERSION 4u
#define FMSX_V9990_FB_MAX_WIDTH 1280u
#define FMSX_V9990_FB_MAX_HEIGHT 424u
#define FMSX_V9990_UC_TICKS_PER_LINE 2736u
#define FMSX_V9990_FB_GUARD_WORD 0x9A9905A5u

enum {
    FMSX_V9990_REG_COUNT = 64u,
    FMSX_V9990_PALETTE_BYTES = 0x100u,
    FMSX_V9990_SPRITE_TABLE_BASE = 0x3FE00u,
    FMSX_V9990_SPRITE_WIDTH = 16u,
    FMSX_V9990_MAX_SPRITES_PER_LINE = 16u,
    FMSX_V9990_MSX_IRQ = 0x04u,
    FMSX_V9990_IRQ_VER = 0x01u,
    FMSX_V9990_IRQ_HOR = 0x02u,
    FMSX_V9990_IRQ_CMD = 0x04u,
    FMSX_V9990_CMD_STATUS_TR = 0x80u,
    FMSX_V9990_CMD_STATUS_BD = 0x10u,
    FMSX_V9990_CMD_STATUS_CE = 0x01u,
    FMSX_V9990_CMD_FLAG_END_AFTER_READ = 0x01u,
    FMSX_V9990_CMD_FLAG_PARTIAL_VALID = 0x02u,
    FMSX_V9990_CMD_ARG_MAJ = 0x01u,
    FMSX_V9990_CMD_ARG_NEQ = 0x02u,
    FMSX_V9990_CMD_ARG_DIX = 0x04u,
    FMSX_V9990_CMD_ARG_DIY = 0x08u
};

typedef enum {
    FMSX_V9990_PORT_VRAM_DATA = 0,
    FMSX_V9990_PORT_PALETTE_DATA,
    FMSX_V9990_PORT_COMMAND_DATA,
    FMSX_V9990_PORT_REGISTER_DATA,
    FMSX_V9990_PORT_REGISTER_SELECT,
    FMSX_V9990_PORT_STATUS,
    FMSX_V9990_PORT_INTERRUPT_FLAG,
    FMSX_V9990_PORT_SYSTEM_CONTROL,
    FMSX_V9990_PORT_KANJI_ROM_0,
    FMSX_V9990_PORT_KANJI_ROM_1,
    FMSX_V9990_PORT_KANJI_ROM_2,
    FMSX_V9990_PORT_KANJI_ROM_3
} TFmsxV9990PortId;

typedef enum {
    FMSX_V9990_REG_VRAM_WRITE_ADDRESS_0 = 0,
    FMSX_V9990_REG_VRAM_WRITE_ADDRESS_1,
    FMSX_V9990_REG_VRAM_WRITE_ADDRESS_2,
    FMSX_V9990_REG_VRAM_READ_ADDRESS_0,
    FMSX_V9990_REG_VRAM_READ_ADDRESS_1,
    FMSX_V9990_REG_VRAM_READ_ADDRESS_2,
    FMSX_V9990_REG_SCREEN_MODE_0 = 6,
    FMSX_V9990_REG_SCREEN_MODE_1 = 7,
    FMSX_V9990_REG_CONTROL = 8,
    FMSX_V9990_REG_INTERRUPT_0 = 9,
    FMSX_V9990_REG_PALETTE_CONTROL = 13,
    FMSX_V9990_REG_PALETTE_POINTER = 14,
    FMSX_V9990_REG_BACK_DROP_COLOR = 15,
    FMSX_V9990_REG_DISPLAY_ADJUST = 16,
    FMSX_V9990_REG_SCROLL_CONTROL_AY0 = 17,
    FMSX_V9990_REG_SCROLL_CONTROL_AY1 = 18,
    FMSX_V9990_REG_SCROLL_CONTROL_AX0 = 19,
    FMSX_V9990_REG_SCROLL_CONTROL_AX1 = 20,
    FMSX_V9990_REG_SCROLL_CONTROL_BY0 = 21,
    FMSX_V9990_REG_SCROLL_CONTROL_BY1 = 22,
    FMSX_V9990_REG_SCROLL_CONTROL_BX0 = 23,
    FMSX_V9990_REG_SCROLL_CONTROL_BX1 = 24,
    FMSX_V9990_REG_SPRITE_PATTERN_ADDRESS = 25,
    FMSX_V9990_REG_LCD_CONTROL = 26,
    FMSX_V9990_REG_PRIORITY_CONTROL = 27,
    FMSX_V9990_REG_SPRITE_PALETTE_CONTROL = 28
} TFmsxV9990RegisterId;

typedef enum {
    FMSX_V9990_CMD_REG_SX0 = 32,
    FMSX_V9990_CMD_REG_SX1,
    FMSX_V9990_CMD_REG_SY0,
    FMSX_V9990_CMD_REG_SY1,
    FMSX_V9990_CMD_REG_DX0,
    FMSX_V9990_CMD_REG_DX1,
    FMSX_V9990_CMD_REG_DY0,
    FMSX_V9990_CMD_REG_DY1,
    FMSX_V9990_CMD_REG_NX0,
    FMSX_V9990_CMD_REG_NX1,
    FMSX_V9990_CMD_REG_NY0,
    FMSX_V9990_CMD_REG_NY1,
    FMSX_V9990_CMD_REG_ARG,
    FMSX_V9990_CMD_REG_LOGOP,
    FMSX_V9990_CMD_REG_WM0,
    FMSX_V9990_CMD_REG_WM1,
    FMSX_V9990_CMD_REG_FC0,
    FMSX_V9990_CMD_REG_FC1,
    FMSX_V9990_CMD_REG_BC0,
    FMSX_V9990_CMD_REG_BC1,
    FMSX_V9990_CMD_REG_OPCODE,
    FMSX_V9990_CMD_REG_BORDER_X0,
    FMSX_V9990_CMD_REG_BORDER_X1
} TFmsxV9990CommandRegisterId;

typedef enum {
    FMSX_V9990_CMD_MODE_P1 = 0,
    FMSX_V9990_CMD_MODE_P2,
    FMSX_V9990_CMD_MODE_BPP2,
    FMSX_V9990_CMD_MODE_BPP4,
    FMSX_V9990_CMD_MODE_BPP8,
    FMSX_V9990_CMD_MODE_BPP16
} TFmsxV9990CommandMode;

typedef enum {
    FMSX_V9990_MODE_P1 = 0,
    FMSX_V9990_MODE_P2,
    FMSX_V9990_MODE_B0,
    FMSX_V9990_MODE_B1,
    FMSX_V9990_MODE_B2,
    FMSX_V9990_MODE_B3,
    FMSX_V9990_MODE_B4,
    FMSX_V9990_MODE_B7
} TFmsxV9990DisplayMode;

typedef struct {
    uint32_t magic;
    uint16_t version;
    uint16_t reserved0;
    uint32_t payload_size;
} TFmsxV9990StateHeader;

typedef struct {
    uint32_t io_reads;
    uint32_t io_writes;
    uint32_t vram_write_ptr;
    uint32_t vram_read_ptr;
    uint8_t reg_select;
    uint8_t status;
    uint8_t pending_irqs;
    uint8_t system_control;
    uint8_t command_data;
    uint8_t vram_read_buffer;
    uint8_t reserved0[2];
    uint8_t regs[FMSX_V9990_REG_COUNT];
    uint8_t palette[FMSX_V9990_PALETTE_BYTES];
} TFmsxV9990StatePayloadV1;

typedef struct {
    uint32_t io_reads;
    uint32_t io_writes;
    uint32_t vram_write_ptr;
    uint32_t vram_read_ptr;
    uint8_t reg_select;
    uint8_t status;
    uint8_t pending_irqs;
    uint8_t system_control;
    uint8_t command_data;
    uint8_t vram_read_buffer;
    uint8_t reserved0[2];
    uint32_t vram_bytes;
    uint8_t regs[FMSX_V9990_REG_COUNT];
    uint8_t palette[FMSX_V9990_PALETTE_BYTES];
} TFmsxV9990StatePayloadV2;

typedef struct {
    uint32_t io_reads;
    uint32_t io_writes;
    uint32_t vram_write_ptr;
    uint32_t vram_read_ptr;
    uint8_t reg_select;
    uint8_t status;
    uint8_t pending_irqs;
    uint8_t system_control;
    uint8_t command_data;
    uint8_t vram_read_buffer;
    uint8_t reserved0[2];
    uint32_t vram_bytes;
    uint16_t cmd_sx;
    uint16_t cmd_sy;
    uint16_t cmd_dx;
    uint16_t cmd_dy;
    uint16_t cmd_nx;
    uint16_t cmd_ny;
    uint16_t cmd_wm;
    uint16_t cmd_fg;
    uint16_t cmd_bg;
    uint16_t cmd_border_x;
    uint8_t cmd_arg;
    uint8_t cmd_log;
    uint8_t cmd_opcode;
    uint8_t cmd_data;
    uint8_t cmd_partial;
    uint8_t cmd_status;
    uint8_t cmd_flags;
    uint8_t reserved1[2];
    uint8_t regs[FMSX_V9990_REG_COUNT];
    uint8_t palette[FMSX_V9990_PALETTE_BYTES];
} TFmsxV9990StatePayloadV3;

typedef struct {
    uint32_t io_reads;
    uint32_t io_writes;
    uint32_t vram_write_ptr;
    uint32_t vram_read_ptr;
    uint8_t reg_select;
    uint8_t status;
    uint8_t pending_irqs;
    uint8_t system_control;
    uint8_t command_data;
    uint8_t vram_read_buffer;
    uint8_t reserved0[2];
    uint32_t vram_bytes;
    uint16_t cmd_sx;
    uint16_t cmd_sy;
    uint16_t cmd_dx;
    uint16_t cmd_dy;
    uint16_t cmd_nx;
    uint16_t cmd_ny;
    uint16_t cmd_wm;
    uint16_t cmd_fg;
    uint16_t cmd_bg;
    uint16_t cmd_border_x;
    uint16_t cmd_pitch;
    uint16_t cmd_image_width;
    uint8_t cmd_arg;
    uint8_t cmd_log;
    uint8_t cmd_opcode;
    uint8_t cmd_data;
    uint8_t cmd_partial;
    uint8_t cmd_status;
    uint8_t cmd_flags;
    uint8_t cmd_mode;
    uint8_t reserved1;
    uint8_t regs[FMSX_V9990_REG_COUNT];
    uint8_t palette[FMSX_V9990_PALETTE_BYTES];
} TFmsxV9990StatePayloadV4;

typedef struct {
    uint16_t sx;
    uint16_t sy;
    uint16_t dx;
    uint16_t dy;
    uint16_t nx;
    uint16_t ny;
    uint16_t wm;
    uint16_t fg;
    uint16_t bg;
    uint16_t border_x;
    uint8_t arg;
    uint8_t log;
    uint8_t opcode;
    uint8_t data;
    uint8_t partial;
    uint8_t status;
    uint8_t flags;
    uint8_t mode;
    uint16_t pitch;
    uint16_t image_width;
} TFmsxV9990CommandState;

typedef struct {
    uint16_t y;
    uint16_t x;
    uint16_t value;
    uint8_t kind;
    uint8_t reserved;
} TFmsxV9990RasterEvent;

typedef struct {
    boolean enabled;
    uint8_t reg_select;
    uint8_t status;
    uint8_t pending_irqs;
    uint8_t system_control;
    uint8_t command_data;
    uint8_t vram_read_buffer;
    uint32_t vram_write_ptr;
    uint32_t vram_read_ptr;
    uint32_t status_uc_ticks;
    uint64_t status_last_cpu_cycles;
    uint64_t status_cpu_cycle_frac;
    uint32_t io_reads;
    uint32_t io_writes;
    uint8_t regs[FMSX_V9990_REG_COUNT];
    uint8_t palette[FMSX_V9990_PALETTE_BYTES];
    TFmsxV9990CommandState cmd;
    uint16_t scroll_ay_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint16_t scroll_by_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint16_t scroll_ax_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint16_t scroll_bx_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint16_t display_ya_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint16_t display_yb_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t priority_control_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t palette_control_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t backdrop_color_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t control_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t screen_mode_0_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t screen_mode_1_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t scroll_ay1_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t scroll_by1_lines[FMSX_V9990_FB_MAX_HEIGHT];
    uint8_t scroll_ay_high_frame;
    uint8_t scroll_by_high_frame;
    boolean display_enabled_frame;
    TFmsxV9990RasterEvent raster_events[1024];
    unsigned raster_event_count;
    uint8_t vram[FMSX_V9990_VRAM_BYTES];
} TFmsxV9990State;

typedef enum {
    FMSX_V9990_RASTER_EVENT_AY0 = 0u,
    FMSX_V9990_RASTER_EVENT_BY0,
    FMSX_V9990_RASTER_EVENT_AX,
    FMSX_V9990_RASTER_EVENT_BX,
    FMSX_V9990_RASTER_EVENT_PRIORITY,
} TFmsxV9990RasterEventKind;

typedef struct {
    uint16_t scroll_ay;
    uint16_t scroll_by;
    uint16_t scroll_ax;
    uint16_t scroll_bx;
    uint16_t display_ya;
    uint16_t display_yb;
    uint8_t priority;
    uint8_t palette_control;
    uint8_t backdrop_color;
    uint8_t ay1;
    uint8_t by1;
} TFmsxV9990P1LineState;

typedef struct {
    uint32_t guard_lo;
    uint16_t pixels[FMSX_V9990_FB_MAX_WIDTH * FMSX_V9990_FB_MAX_HEIGHT];
    uint32_t guard_hi;
} TFmsxV9990FramebufferStorage;

static TFmsxV9990State g_fmsx_v9990;
static TFmsxV9990FramebufferStorage g_fmsx_v9990_framebuffer_storage;
static TFmsxV9990VideoFrame g_fmsx_v9990_video = { 0 };
#define FMSX_V9990_FRAMEBUFFER (g_fmsx_v9990_framebuffer_storage.pixels)
#if MSXBARE_ENABLE_DEBUG_OVERLAY
static unsigned g_fmsx_v9990_debug_port_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_cmd_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_render_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_reg_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_active_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_scroll_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_active_phase = 0u;
static unsigned g_fmsx_v9990_debug_frame_snapshot_pending = 0u;
static boolean g_fmsx_v9990_debug_compact_trace = FALSE;
static boolean g_fmsx_v9990_debug_lmmc_trace_active = FALSE;
static uint32_t g_fmsx_v9990_debug_lmmc_bytes = 0u;
static uint32_t g_fmsx_v9990_debug_lmmc_total_bytes = 0u;
static unsigned g_fmsx_v9990_debug_lmmc_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_lmmc_pitch = 0u;
static unsigned g_fmsx_v9990_debug_lmmc_image_width = 0u;
static uint8_t g_fmsx_v9990_debug_lmmc_mode = 0u;
static uint16_t g_fmsx_v9990_debug_p1_plane_a_lines[FMSX_V9990_FB_MAX_HEIGHT];
static uint16_t g_fmsx_v9990_debug_p1_plane_b_lines[FMSX_V9990_FB_MAX_HEIGHT];
static uint16_t g_fmsx_v9990_debug_p1_final_lines[FMSX_V9990_FB_MAX_HEIGHT];
static uint8_t g_fmsx_v9990_debug_p1_sample_a[FMSX_V9990_FB_MAX_HEIGHT][8];
static uint8_t g_fmsx_v9990_debug_p1_sample_b[FMSX_V9990_FB_MAX_HEIGHT][8];
static uint8_t g_fmsx_v9990_debug_p1_bg_is_backdrop[FMSX_V9990_FB_MAX_HEIGHT][8];
static uint8_t g_fmsx_v9990_debug_p1_final_is_backdrop[FMSX_V9990_FB_MAX_HEIGHT][8];
static uint8_t g_fmsx_v9990_debug_p1_pal_a_base[FMSX_V9990_FB_MAX_HEIGHT];
static uint8_t g_fmsx_v9990_debug_p1_pal_b_base[FMSX_V9990_FB_MAX_HEIGHT];
static uint8_t g_fmsx_v9990_debug_p1_backdrop_index[FMSX_V9990_FB_MAX_HEIGHT];
static uint16_t g_fmsx_v9990_debug_p1_prio_x[FMSX_V9990_FB_MAX_HEIGHT];
static boolean g_fmsx_v9990_debug_p1_profile_valid = FALSE;
extern void msxbare_uart_write(const char *text);
extern void msxbare_debug_note_gfx9000_activation(void);
extern unsigned msxbare_debug_timer_irq_binding(unsigned stage);
extern Z80 CPU;
extern uint8_t IRQPending;
#endif
extern uint64_t fmsx_vdp_cpu_cycles_now(void);
extern int HPeriod;

static unsigned fmsx_v9990_transform_bx(unsigned address);
static unsigned fmsx_v9990_transform_p1(unsigned address);
static unsigned fmsx_v9990_transform_p2(unsigned address);
static TFmsxV9990DisplayMode fmsx_v9990_get_display_mode(void);
static uint8_t fmsx_v9990_read_status_port(void);
static unsigned fmsx_v9990_image_width(void);
static boolean fmsx_v9990_is_even_odd_enabled(void);
static unsigned fmsx_v9990_get_palette_offset(void);
static void fmsx_v9990_reset_scroll_line_state(void);
static unsigned fmsx_v9990_get_active_display_line(void);
static unsigned fmsx_v9990_get_active_display_x(TFmsxV9990DisplayMode mode);
static boolean fmsx_v9990_display_enabled_current_frame(void);
static void fmsx_v9990_apply_line_state_from(unsigned split);
static void fmsx_v9990_record_raster_event(TFmsxV9990RasterEventKind kind, uint16_t value);
static unsigned fmsx_v9990_get_active_display_width(void);
static void fmsx_v9990_note_scroll_ay_low_write(void);
static void fmsx_v9990_note_scroll_by_low_write(void);
static void fmsx_v9990_note_scroll_ay_high_write(void);
static void fmsx_v9990_note_scroll_by_high_write(void);
static void fmsx_v9990_note_palette_control_write(void);
static void fmsx_v9990_note_backdrop_color_write(void);
static uint8_t fmsx_v9990_read_vram_direct(unsigned address);
static uint8_t fmsx_v9990_read_vram_bx(unsigned address);
static unsigned fmsx_v9990_transform_linear_p1(unsigned address);
static uint8_t fmsx_v9990_read_vram_linear(TFmsxV9990CommandMode mode, unsigned address);
static void fmsx_v9990_write_vram_linear(TFmsxV9990CommandMode mode, unsigned address, uint8_t value);
static void fmsx_v9990_cmd_ready(void);
static void fmsx_v9990_update_host_irq(void);
static void fmsx_v9990_advance_status_time(unsigned uc_ticks);
static void fmsx_v9990_sync_status_to_cpu(void);
static boolean fmsx_v9990_cmd_should_abort(uint8_t opcode);
static TFmsxV9990CommandMode fmsx_v9990_get_command_mode(void);
static unsigned fmsx_v9990_cmd_get_pitch(TFmsxV9990CommandMode mode, unsigned width);
static void fmsx_v9990_debug_trace_port(const char *prefix, uint8_t port, uint8_t value);
static void fmsx_v9990_debug_trace_command(const char *prefix, uint8_t opcode);
static void fmsx_v9990_debug_trace_render(unsigned width, unsigned height, TFmsxV9990DisplayMode mode);
static void fmsx_v9990_debug_trace_enable(const char *tag, boolean enabled);
static void fmsx_v9990_debug_trace_regs(const char *prefix);
static void fmsx_v9990_debug_trace_guard(const char *tag);
static void fmsx_v9990_debug_trace_active(const char *prefix, unsigned width, unsigned height, TFmsxV9990DisplayMode mode);
static void fmsx_v9990_debug_rearm_active_window(const char *tag);
static void fmsx_v9990_debug_trace_phase(const char *tag);
static void fmsx_v9990_debug_trace_irq_host(const char *prefix);
static void fmsx_v9990_debug_trace_scroll_split(const char *tag, unsigned split, unsigned value);
static void fmsx_v9990_debug_trace_frame_profile(unsigned width, unsigned height, unsigned image_width, unsigned bytes_per_line, uint8_t mode_kind);
static void fmsx_v9990_debug_trace_p1_line_state(unsigned height);
static void fmsx_v9990_debug_trace_p1_plane_profile(unsigned height);
static void fmsx_v9990_debug_trace_p1_hole_state(unsigned height);
static void fmsx_v9990_debug_trace_p1_hole_samples(unsigned height);
static void fmsx_v9990_debug_trace_lmmc(const char *tag);
extern uint16_t SetIRQ(uint8_t IRQ);

/*
 * Port/register layout and the first rendering rules are derived from the
 * openMSX V9990 device. This local version intentionally implements only the
 * minimal renderer needed for early GFX9000 bring-up.
 */
static const uint8_t k_fmsx_v9990_reg_access[FMSX_V9990_REG_COUNT] = {
    2u, 2u, 2u,
    2u, 2u, 2u,
    3u, 3u,
    3u,
    3u, 3u, 3u, 3u,
    2u,
    2u,
    3u,
    3u,
    3u, 3u, 3u, 3u,
    3u, 3u, 3u, 3u,
    3u,
    3u,
    3u,
    2u,
    0u, 0u, 0u,
    2u, 2u, 2u, 2u,
    2u, 2u, 2u, 2u,
    2u, 2u, 2u, 2u,
    2u, 2u, 2u, 2u,
    2u, 2u, 2u, 2u,
    2u, 1u, 1u,
    0u, 0u, 0u,
    0u, 0u, 0u,
    0u, 0u, 0u
};

static const uint8_t k_fmsx_v9990_reg_write_mask[32] = {
    0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0x87u, 0xFFu, 0x83u, 0x0Fu, 0xFFu, 0xFFu, 0xFFu,
    0xFFu, 0xFFu, 0xDFu, 0x07u, 0xFFu, 0xFFu, 0xC1u, 0x07u,
    0x3Fu, 0xCFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu, 0xFFu
};

static void fmsx_v9990_cmd_reset(void)
{
    memset(&g_fmsx_v9990.cmd, 0, sizeof(g_fmsx_v9990.cmd));
}

static void fmsx_v9990_cmd_latch_geometry(TFmsxV9990CommandMode mode, unsigned image_width, unsigned pitch)
{
    g_fmsx_v9990.cmd.mode = (uint8_t) mode;
    g_fmsx_v9990.cmd.image_width = (uint16_t) image_width;
    g_fmsx_v9990.cmd.pitch = (uint16_t) pitch;
}

static TFmsxV9990CommandMode fmsx_v9990_cmd_latched_mode(void)
{
    if (g_fmsx_v9990.cmd.mode <= (uint8_t) FMSX_V9990_CMD_MODE_BPP16)
    {
        return (TFmsxV9990CommandMode) g_fmsx_v9990.cmd.mode;
    }
    return fmsx_v9990_get_command_mode();
}

static unsigned fmsx_v9990_cmd_latched_image_width(void)
{
    return g_fmsx_v9990.cmd.image_width != 0u
        ? (unsigned) g_fmsx_v9990.cmd.image_width
        : fmsx_v9990_image_width();
}

static unsigned fmsx_v9990_cmd_latched_pitch(void)
{
    if (g_fmsx_v9990.cmd.pitch != 0u)
    {
        return (unsigned) g_fmsx_v9990.cmd.pitch;
    }

    {
        const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();
        return fmsx_v9990_cmd_get_pitch(mode, fmsx_v9990_cmd_latched_image_width());
    }
}

#if MSXBARE_ENABLE_DEBUG_OVERLAY
typedef struct {
    char *buffer;
    unsigned capacity;
    unsigned length;
} TFmsxV9990TraceBuffer;

static void fmsx_v9990_tracebuf_init(TFmsxV9990TraceBuffer *tb, char *buffer, unsigned capacity)
{
    if (tb == 0 || buffer == 0 || capacity == 0u)
    {
        return;
    }
    tb->buffer = buffer;
    tb->capacity = capacity;
    tb->length = 0u;
    tb->buffer[0] = '\0';
}

static void fmsx_v9990_tracebuf_push_char(TFmsxV9990TraceBuffer *tb, char c)
{
    if (tb == 0 || tb->buffer == 0 || tb->capacity == 0u || tb->length + 1u >= tb->capacity)
    {
        return;
    }
    tb->buffer[tb->length++] = c;
    tb->buffer[tb->length] = '\0';
}

static void fmsx_v9990_tracebuf_push_text(TFmsxV9990TraceBuffer *tb, const char *text)
{
    if (tb == 0 || text == 0)
    {
        return;
    }
    while (*text != '\0')
    {
        fmsx_v9990_tracebuf_push_char(tb, *text++);
    }
}

static void fmsx_v9990_tracebuf_push_hex4(TFmsxV9990TraceBuffer *tb, unsigned value)
{
    static const char kHex[] = "0123456789ABCDEF";
    fmsx_v9990_tracebuf_push_char(tb, kHex[value & 0x0Fu]);
}

static void fmsx_v9990_tracebuf_push_hex8(TFmsxV9990TraceBuffer *tb, unsigned value)
{
    fmsx_v9990_tracebuf_push_hex4(tb, (value >> 4) & 0x0Fu);
    fmsx_v9990_tracebuf_push_hex4(tb, value & 0x0Fu);
}

static void fmsx_v9990_tracebuf_push_hex16(TFmsxV9990TraceBuffer *tb, unsigned value)
{
    fmsx_v9990_tracebuf_push_hex8(tb, (value >> 8) & 0xFFu);
    fmsx_v9990_tracebuf_push_hex8(tb, value & 0xFFu);
}

static void fmsx_v9990_tracebuf_push_hex32(TFmsxV9990TraceBuffer *tb, uint32_t value)
{
    fmsx_v9990_tracebuf_push_hex8(tb, (unsigned) ((value >> 24) & 0xFFu));
    fmsx_v9990_tracebuf_push_hex8(tb, (unsigned) ((value >> 16) & 0xFFu));
    fmsx_v9990_tracebuf_push_hex8(tb, (unsigned) ((value >> 8) & 0xFFu));
    fmsx_v9990_tracebuf_push_hex8(tb, (unsigned) (value & 0xFFu));
}

static void fmsx_v9990_tracebuf_push_uint(TFmsxV9990TraceBuffer *tb, unsigned value)
{
    char out[11];
    unsigned i = 0u;

    if (value == 0u)
    {
        fmsx_v9990_tracebuf_push_char(tb, '0');
        return;
    }

    while (value != 0u && i < (sizeof(out) - 1u))
    {
        out[i++] = (char) ('0' + (value % 10u));
        value /= 10u;
    }

    while (i > 0u)
    {
        fmsx_v9990_tracebuf_push_char(tb, out[--i]);
    }
}

static void fmsx_v9990_debug_trace_char(char c)
{
    char text[2];
    text[0] = c;
    text[1] = '\0';
    msxbare_uart_write(text);
}

static char fmsx_v9990_debug_phase_marker(const char *tag, boolean done)
{
    if (tag == 0)
    {
        return '\0';
    }
    if (strcmp(tag, "phase-ret") == 0) return 'r';
    if (strcmp(tag, "phase0 inactive") == 0 && !done) return '0';
    if (strcmp(tag, "phase1 nofill") == 0 && !done) return '1';
    if (strcmp(tag, "phase2 line1") == 0 && done) return '2';
    if (strcmp(tag, "phase3 line16") == 0 && done) return '3';
    if (strcmp(tag, "phase4 line32") == 0 && done) return '4';
    if (strcmp(tag, "phase5 line48") == 0 && done) return '5';
    if (strcmp(tag, "phase6 line64") == 0 && done) return '6';
    if (strcmp(tag, "phase7 live96") == 0 && done) return '7';
    if (strcmp(tag, "phase8 live128") == 0 && done) return '8';
    if (strcmp(tag, "phase9 live160") == 0 && done) return '9';
    if (strcmp(tag, "phaseA live212") == 0 && done) return 'A';
    return '\0';
}
#endif

static unsigned fmsx_v9990_cmd_get_wrapped_nx(void)
{
    return g_fmsx_v9990.cmd.nx ? g_fmsx_v9990.cmd.nx : 2048u;
}

static unsigned fmsx_v9990_cmd_get_wrapped_ny(void)
{
    return g_fmsx_v9990.cmd.ny ? g_fmsx_v9990.cmd.ny : 4096u;
}

static unsigned fmsx_v9990_cmd_get_total_nx(void)
{
    const unsigned nx =
        (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX0]
        | ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX1] & 0x0Fu) << 8);
    return nx ? nx : 2048u;
}

static unsigned fmsx_v9990_cmd_get_total_ny(void)
{
    const unsigned ny =
        (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NY0]
        | ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NY1] & 0x0Fu) << 8);
    return ny ? ny : 4096u;
}

static unsigned fmsx_v9990_cmd_pixels_per_byte(TFmsxV9990CommandMode mode)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP4:
        return 2u;
    case FMSX_V9990_CMD_MODE_BPP2:
        return 4u;
    default:
        return 1u;
    }
}

static unsigned fmsx_v9990_cmd_linear_src_address(void)
{
    return ((unsigned) g_fmsx_v9990.cmd.sx & 0x00FFu)
        | (((unsigned) g_fmsx_v9990.cmd.sy & 0x07FFu) << 8);
}

static unsigned fmsx_v9990_cmd_linear_dst_address(void)
{
    return ((unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu)
        | (((unsigned) g_fmsx_v9990.cmd.dy & 0x07FFu) << 8);
}

static unsigned fmsx_v9990_cmd_linear_byte_count(void)
{
    unsigned count = ((unsigned) g_fmsx_v9990.cmd.nx & 0x00FFu)
        | (((unsigned) g_fmsx_v9990.cmd.ny & 0x07FFu) << 8);
    if (count == 0u)
    {
        count = 0x80000u;
    }
    return count;
}

static boolean fmsx_v9990_cmd_dims_are_zero(void)
{
    return (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX0] == 0u)
        && ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX1] & 0x0Fu) == 0u)
        && (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NY0] == 0u)
        && ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NY1] & 0x0Fu) == 0u);
}

static boolean fmsx_v9990_cmd_should_abort(uint8_t opcode)
{
    const uint8_t op = (uint8_t) (opcode >> 4);

    switch (op)
    {
    case 0x02u:
    case 0x04u:
    case 0x07u:
    case 0x08u:
    case 0x09u:
    case 0x0Au:
    case 0x0Bu:
        if (fmsx_v9990_cmd_dims_are_zero())
        {
            return TRUE;
        }
        break;
    default:
        break;
    }

    switch (op)
    {
    case 0x02u:
    case 0x04u:
    case 0x07u:
    case 0x08u:
    case 0x09u:
    case 0x0Bu:
    {
        const uint64_t budget = (uint64_t) fmsx_v9990_cmd_get_wrapped_nx()
            * (uint64_t) fmsx_v9990_cmd_get_wrapped_ny();
        if (budget > 1048576ull)
        {
            return TRUE;
        }
        break;
    }

    case 0x0Au:
        if (fmsx_v9990_cmd_linear_byte_count() > 262144u)
        {
            return TRUE;
        }
        break;

    default:
        break;
    }

    return FALSE;
}

#if MSXBARE_ENABLE_DEBUG_OVERLAY
static void fmsx_v9990_debug_trace_port(const char *prefix, uint8_t port, uint8_t value)
{
    char line[80];
    TFmsxV9990TraceBuffer tb;

    if (g_fmsx_v9990_debug_port_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_port_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, prefix);
    fmsx_v9990_tracebuf_push_text(&tb, " p:");
    fmsx_v9990_tracebuf_push_hex8(&tb, port);
    fmsx_v9990_tracebuf_push_text(&tb, " v:");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " rs:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.reg_select);
    fmsx_v9990_tracebuf_push_text(&tb, " op:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.cmd.opcode);
    fmsx_v9990_tracebuf_push_text(&tb, " pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.PC.W);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_command(const char *prefix, uint8_t opcode)
{
    char line[96];
    TFmsxV9990TraceBuffer tb;

    if (g_fmsx_v9990_debug_cmd_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_cmd_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, prefix);
    fmsx_v9990_tracebuf_push_text(&tb, " op:");
    fmsx_v9990_tracebuf_push_hex8(&tb, opcode);
    fmsx_v9990_tracebuf_push_text(&tb, " nx:");
    fmsx_v9990_tracebuf_push_uint(&tb, fmsx_v9990_cmd_get_wrapped_nx());
    fmsx_v9990_tracebuf_push_text(&tb, " ny:");
    fmsx_v9990_tracebuf_push_uint(&tb, fmsx_v9990_cmd_get_wrapped_ny());
    fmsx_v9990_tracebuf_push_text(&tb, " sx:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.sx);
    fmsx_v9990_tracebuf_push_text(&tb, " sy:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.sy);
    fmsx_v9990_tracebuf_push_text(&tb, " dx:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.dx);
    fmsx_v9990_tracebuf_push_text(&tb, " dy:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.dy);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_render(unsigned width, unsigned height, TFmsxV9990DisplayMode mode)
{
    char line[80];
    TFmsxV9990TraceBuffer tb;

    if (g_fmsx_v9990_debug_render_logs_remaining == 0u)
    {
        return;
    }

    if (fmsx_v9990_display_enabled_current_frame())
    {
        return;
    }

    --g_fmsx_v9990_debug_render_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9V f:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_video.sequence);
    fmsx_v9990_tracebuf_push_text(&tb, " m:");
    fmsx_v9990_tracebuf_push_uint(&tb, (unsigned) mode);
    fmsx_v9990_tracebuf_push_text(&tb, " ctl:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL]);
    fmsx_v9990_tracebuf_push_text(&tb, " sm0:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0]);
    fmsx_v9990_tracebuf_push_text(&tb, " sm1:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1]);
    fmsx_v9990_tracebuf_push_text(&tb, " w:");
    fmsx_v9990_tracebuf_push_uint(&tb, width);
    fmsx_v9990_tracebuf_push_text(&tb, " h:");
    fmsx_v9990_tracebuf_push_uint(&tb, height);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_enable(const char *tag, boolean enabled)
{
    char line[32];
    TFmsxV9990TraceBuffer tb;

    if (tag == 0)
    {
        return;
    }
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9E ");
    fmsx_v9990_tracebuf_push_text(&tb, tag);
    fmsx_v9990_tracebuf_push_text(&tb, enabled ? " ON\n" : " OFF\n");
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_regs(const char *prefix)
{
    char line[80];
    TFmsxV9990TraceBuffer tb;

    if (prefix == 0 || g_fmsx_v9990_debug_reg_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_reg_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, prefix);
    fmsx_v9990_tracebuf_push_text(&tb, " ctl:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL]);
    fmsx_v9990_tracebuf_push_text(&tb, " sm0:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0]);
    fmsx_v9990_tracebuf_push_text(&tb, " sm1:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1]);
    fmsx_v9990_tracebuf_push_text(&tb, " i0:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_INTERRUPT_0]);
    fmsx_v9990_tracebuf_push_text(&tb, " irq:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.pending_irqs);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_core_reg_write(uint8_t reg, uint8_t prev, uint8_t value)
{
    char line[96];
    TFmsxV9990TraceBuffer tb;

    if (prev == value)
    {
        return;
    }

    switch (reg)
    {
    case FMSX_V9990_REG_SCREEN_MODE_0:
    case FMSX_V9990_REG_SCREEN_MODE_1:
    case FMSX_V9990_REG_CONTROL:
    case FMSX_V9990_REG_INTERRUPT_0:
        break;
    default:
        return;
    }

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9W r:");
    fmsx_v9990_tracebuf_push_hex8(&tb, reg);
    fmsx_v9990_tracebuf_push_text(&tb, " ");
    fmsx_v9990_tracebuf_push_hex8(&tb, prev);
    fmsx_v9990_tracebuf_push_text(&tb, "->");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.PC.W);
    fmsx_v9990_tracebuf_push_text(&tb, " vi:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.pending_irqs);
    fmsx_v9990_tracebuf_push_text(&tb, " i0:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_INTERRUPT_0]);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_irq_host(const char *prefix)
{
    char line[128];
    TFmsxV9990TraceBuffer tb;

    if (prefix == 0 || g_fmsx_v9990_debug_reg_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_reg_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, prefix);
    fmsx_v9990_tracebuf_push_text(&tb, " pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.PC.W);
    fmsx_v9990_tracebuf_push_text(&tb, " sp:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.SP.W);
    fmsx_v9990_tracebuf_push_text(&tb, " iff:");
    fmsx_v9990_tracebuf_push_hex8(&tb, CPU.IFF);
    fmsx_v9990_tracebuf_push_text(&tb, " ir:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.IRequest);
    fmsx_v9990_tracebuf_push_text(&tb, " qp:");
    fmsx_v9990_tracebuf_push_hex8(&tb, IRQPending);
    fmsx_v9990_tracebuf_push_text(&tb, " vi:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.pending_irqs);
    fmsx_v9990_tracebuf_push_text(&tb, " i0:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_INTERRUPT_0]);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_scroll_split(const char *tag, unsigned split, unsigned value)
{
    char line[64];
    TFmsxV9990TraceBuffer tb;

    if (tag == 0 || g_fmsx_v9990_debug_scroll_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_scroll_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, tag);
    fmsx_v9990_tracebuf_push_text(&tb, " y:");
    fmsx_v9990_tracebuf_push_uint(&tb, split);
    fmsx_v9990_tracebuf_push_text(&tb, " v:");
    fmsx_v9990_tracebuf_push_uint(&tb, value);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_guard(const char *tag)
{
    char line[48];
    TFmsxV9990TraceBuffer tb;

    if (tag == 0)
    {
        return;
    }

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9X ");
    fmsx_v9990_tracebuf_push_text(&tb, tag);
    fmsx_v9990_tracebuf_push_text(&tb, " lo:");
    fmsx_v9990_tracebuf_push_hex32(&tb, g_fmsx_v9990_framebuffer_storage.guard_lo);
    fmsx_v9990_tracebuf_push_text(&tb, " hi:");
    fmsx_v9990_tracebuf_push_hex32(&tb, g_fmsx_v9990_framebuffer_storage.guard_hi);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_active(const char *prefix, unsigned width, unsigned height, TFmsxV9990DisplayMode mode)
{
    char line[72];
    TFmsxV9990TraceBuffer tb;

    if (prefix == 0 || g_fmsx_v9990_debug_active_logs_remaining == 0u)
    {
        return;
    }

    if (g_fmsx_v9990_debug_compact_trace)
    {
        if (strcmp(prefix, "G9A rf-begin") == 0)
        {
            fmsx_v9990_debug_trace_char('(');
            --g_fmsx_v9990_debug_active_logs_remaining;
            return;
        }
        if (strcmp(prefix, "G9A rf-end") == 0)
        {
            fmsx_v9990_debug_trace_char(')');
            --g_fmsx_v9990_debug_active_logs_remaining;
            return;
        }
    }

    --g_fmsx_v9990_debug_active_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, prefix);
    fmsx_v9990_tracebuf_push_text(&tb, " f:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_video.sequence);
    fmsx_v9990_tracebuf_push_text(&tb, " m:");
    fmsx_v9990_tracebuf_push_uint(&tb, (unsigned) mode);
    fmsx_v9990_tracebuf_push_text(&tb, " ctl:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL]);
    fmsx_v9990_tracebuf_push_text(&tb, " w:");
    fmsx_v9990_tracebuf_push_uint(&tb, width);
    fmsx_v9990_tracebuf_push_text(&tb, " h:");
    fmsx_v9990_tracebuf_push_uint(&tb, height);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_rearm_active_window(const char *tag)
{
    g_fmsx_v9990_debug_port_logs_remaining = 0u;
    g_fmsx_v9990_debug_cmd_logs_remaining = 0u;
    g_fmsx_v9990_debug_reg_logs_remaining = 0u;
    g_fmsx_v9990_debug_active_logs_remaining = 0u;
    g_fmsx_v9990_debug_scroll_logs_remaining = 32u;
    g_fmsx_v9990_debug_active_phase = 0u;
    g_fmsx_v9990_debug_frame_snapshot_pending = 1u;
    g_fmsx_v9990_debug_compact_trace = FALSE;
    g_fmsx_v9990_debug_p1_profile_valid = FALSE;
    if (tag != 0)
    {
        char line[32];
        TFmsxV9990TraceBuffer tb;
        fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
        fmsx_v9990_tracebuf_push_text(&tb, "G9A ");
        fmsx_v9990_tracebuf_push_text(&tb, tag);
        fmsx_v9990_tracebuf_push_char(&tb, '\n');
        msxbare_uart_write(line);
    }
}

static void fmsx_v9990_debug_trace_frame_profile(unsigned width,
                                                 unsigned height,
                                                 unsigned image_width,
                                                 unsigned bytes_per_line,
                                                 uint8_t mode_kind)
{
    char line[224];
    TFmsxV9990TraceBuffer tb;
    unsigned nonzero_rows = 0u;
    unsigned first_nonzero = height;
    unsigned last_nonzero = 0u;
    unsigned max_blank_run = 0u;
    unsigned blank_run = 0u;
    unsigned prev_nonzero = 0u;
    unsigned min_step = height;
    unsigned max_step = 0u;
    unsigned sample_rows[4] = { 0u, 0u, 0u, 0u };
    unsigned significant_rows = 0u;
    unsigned first_significant = height;
    unsigned last_significant = 0u;
    unsigned prev_significant = 0u;
    unsigned min_significant_step = height;
    unsigned max_significant_step = 0u;
    unsigned significant_sample_rows[4] = { 0u, 0u, 0u, 0u };
    const unsigned significant_threshold = (width >= 64u) ? (width / 8u) : 8u;
    unsigned y;

    if (g_fmsx_v9990_debug_frame_snapshot_pending == 0u)
    {
        return;
    }
    for (y = 0u; y < height; ++y)
    {
        const uint16_t *src = FMSX_V9990_FRAMEBUFFER + (y * FMSX_V9990_FB_MAX_WIDTH);
        unsigned x;
        boolean row_nonzero = FALSE;
        unsigned lit_pixels = 0u;

        for (x = 0u; x < width; ++x)
        {
            if (src[x] != 0u)
            {
                row_nonzero = TRUE;
                ++lit_pixels;
            }
        }

        if (row_nonzero)
        {
            if (nonzero_rows < 4u)
            {
                sample_rows[nonzero_rows] = y;
            }
            if (nonzero_rows != 0u)
            {
                const unsigned step = y - prev_nonzero;
                if (step < min_step)
                {
                    min_step = step;
                }
                if (step > max_step)
                {
                    max_step = step;
                }
            }
            ++nonzero_rows;
            if (first_nonzero == height)
            {
                first_nonzero = y;
            }
            last_nonzero = y;
            prev_nonzero = y;
            if (blank_run > max_blank_run)
            {
                max_blank_run = blank_run;
            }
            blank_run = 0u;
        }
        else
        {
            ++blank_run;
        }

        if (lit_pixels >= significant_threshold)
        {
            if (significant_rows < 4u)
            {
                significant_sample_rows[significant_rows] = y;
            }
            if (significant_rows != 0u)
            {
                const unsigned step = y - prev_significant;
                if (step < min_significant_step)
                {
                    min_significant_step = step;
                }
                if (step > max_significant_step)
                {
                    max_significant_step = step;
                }
            }
            ++significant_rows;
            if (first_significant == height)
            {
                first_significant = y;
            }
            last_significant = y;
            prev_significant = y;
        }
    }

    if (blank_run > max_blank_run)
    {
        max_blank_run = blank_run;
    }

    if (nonzero_rows == 0u)
    {
        return;
    }

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9D fb w:");
    fmsx_v9990_tracebuf_push_uint(&tb, width);
    fmsx_v9990_tracebuf_push_text(&tb, " h:");
    fmsx_v9990_tracebuf_push_uint(&tb, height);
    fmsx_v9990_tracebuf_push_text(&tb, " iw:");
    fmsx_v9990_tracebuf_push_uint(&tb, image_width);
    fmsx_v9990_tracebuf_push_text(&tb, " bpl:");
    fmsx_v9990_tracebuf_push_uint(&tb, bytes_per_line);
    fmsx_v9990_tracebuf_push_text(&tb, " mk:");
    fmsx_v9990_tracebuf_push_uint(&tb, mode_kind);
    fmsx_v9990_tracebuf_push_text(&tb, " eo:");
    fmsx_v9990_tracebuf_push_uint(&tb, fmsx_v9990_is_even_odd_enabled() ? 1u : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " fld:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_video.field_parity_odd ? 1u : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " nz:");
    fmsx_v9990_tracebuf_push_uint(&tb, nonzero_rows);
    fmsx_v9990_tracebuf_push_text(&tb, " fst:");
    fmsx_v9990_tracebuf_push_uint(&tb, first_nonzero == height ? 0u : first_nonzero);
    fmsx_v9990_tracebuf_push_text(&tb, " lst:");
    fmsx_v9990_tracebuf_push_uint(&tb, nonzero_rows == 0u ? 0u : last_nonzero);
    fmsx_v9990_tracebuf_push_text(&tb, " gap:");
    fmsx_v9990_tracebuf_push_uint(&tb, max_blank_run);
    fmsx_v9990_tracebuf_push_text(&tb, " step:");
    fmsx_v9990_tracebuf_push_uint(&tb, (nonzero_rows > 1u) ? min_step : 0u);
    fmsx_v9990_tracebuf_push_char(&tb, '-');
    fmsx_v9990_tracebuf_push_uint(&tb, (nonzero_rows > 1u) ? max_step : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " samp:");
    fmsx_v9990_tracebuf_push_uint(&tb, sample_rows[0]);
    if (nonzero_rows > 1u)
    {
        fmsx_v9990_tracebuf_push_char(&tb, ',');
        fmsx_v9990_tracebuf_push_uint(&tb, sample_rows[1]);
    }
    if (nonzero_rows > 2u)
    {
        fmsx_v9990_tracebuf_push_char(&tb, ',');
        fmsx_v9990_tracebuf_push_uint(&tb, sample_rows[2]);
    }
    if (nonzero_rows > 3u)
    {
        fmsx_v9990_tracebuf_push_char(&tb, ',');
        fmsx_v9990_tracebuf_push_uint(&tb, sample_rows[3]);
    }
    fmsx_v9990_tracebuf_push_text(&tb, " sig:");
    fmsx_v9990_tracebuf_push_uint(&tb, significant_rows);
    fmsx_v9990_tracebuf_push_text(&tb, " sf:");
    fmsx_v9990_tracebuf_push_uint(&tb, significant_rows == 0u ? 0u : first_significant);
    fmsx_v9990_tracebuf_push_text(&tb, " sl:");
    fmsx_v9990_tracebuf_push_uint(&tb, significant_rows == 0u ? 0u : last_significant);
    fmsx_v9990_tracebuf_push_text(&tb, " sstep:");
    fmsx_v9990_tracebuf_push_uint(&tb, (significant_rows > 1u) ? min_significant_step : 0u);
    fmsx_v9990_tracebuf_push_char(&tb, '-');
    fmsx_v9990_tracebuf_push_uint(&tb, (significant_rows > 1u) ? max_significant_step : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " ssamp:");
    fmsx_v9990_tracebuf_push_uint(&tb, significant_sample_rows[0]);
    if (significant_rows > 1u)
    {
        fmsx_v9990_tracebuf_push_char(&tb, ',');
        fmsx_v9990_tracebuf_push_uint(&tb, significant_sample_rows[1]);
    }
    if (significant_rows > 2u)
    {
        fmsx_v9990_tracebuf_push_char(&tb, ',');
        fmsx_v9990_tracebuf_push_uint(&tb, significant_sample_rows[2]);
    }
    if (significant_rows > 3u)
    {
        fmsx_v9990_tracebuf_push_char(&tb, ',');
        fmsx_v9990_tracebuf_push_uint(&tb, significant_sample_rows[3]);
    }
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
    if ((mode_kind == 0u) && (width == 256u) && (height == 212u))
    {
        fmsx_v9990_debug_trace_p1_plane_profile(height);
        fmsx_v9990_debug_trace_p1_hole_state(height);
        fmsx_v9990_debug_trace_p1_hole_samples(height);
        fmsx_v9990_debug_trace_p1_line_state(height);
    }
    --g_fmsx_v9990_debug_frame_snapshot_pending;
}

static void fmsx_v9990_debug_trace_p1_plane_profile(unsigned height)
{
    char line[256];
    TFmsxV9990TraceBuffer tb;
    unsigned first_dense = height;
    unsigned last_dense = 0u;
    unsigned dense_rows = 0u;
    unsigned holes = 0u;
    unsigned samples = 0u;
    unsigned y;
    const unsigned dense_threshold = 32u;
    const unsigned hole_threshold = 4u;

    if (!g_fmsx_v9990_debug_p1_profile_valid || height == 0u)
    {
        return;
    }

    for (y = 0u; y < height; ++y)
    {
        if (g_fmsx_v9990_debug_p1_final_lines[y] >= dense_threshold)
        {
            if (first_dense == height)
            {
                first_dense = y;
            }
            last_dense = y;
            ++dense_rows;
        }
    }

    if (dense_rows == 0u)
    {
        return;
    }

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9D p1 env:");
    fmsx_v9990_tracebuf_push_uint(&tb, first_dense);
    fmsx_v9990_tracebuf_push_char(&tb, '-');
    fmsx_v9990_tracebuf_push_uint(&tb, last_dense);
    fmsx_v9990_tracebuf_push_text(&tb, " holes:");

    for (y = first_dense; y <= last_dense && samples < 6u; ++y)
    {
        if (g_fmsx_v9990_debug_p1_final_lines[y] > hole_threshold)
        {
            continue;
        }
        ++holes;
        fmsx_v9990_tracebuf_push_text(&tb, samples == 0u ? "" : ",");
        fmsx_v9990_tracebuf_push_uint(&tb, y);
        fmsx_v9990_tracebuf_push_char(&tb, '(');
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_p1_plane_a_lines[y]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_p1_plane_b_lines[y]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_p1_final_lines[y]);
        fmsx_v9990_tracebuf_push_char(&tb, ')');
        ++samples;
    }

    if (samples == 0u)
    {
        fmsx_v9990_tracebuf_push_text(&tb, " none");
    }
    fmsx_v9990_tracebuf_push_text(&tb, " dense:");
    fmsx_v9990_tracebuf_push_uint(&tb, dense_rows);
    fmsx_v9990_tracebuf_push_text(&tb, " hc:");
    fmsx_v9990_tracebuf_push_uint(&tb, holes);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_p1_hole_state(unsigned height)
{
    char line[320];
    TFmsxV9990TraceBuffer tb;
    unsigned first_dense = height;
    unsigned last_dense = 0u;
    unsigned dense_rows = 0u;
    unsigned samples = 0u;
    unsigned y;
    const unsigned dense_threshold = 32u;
    const unsigned hole_threshold = 4u;

    if (!g_fmsx_v9990_debug_p1_profile_valid || height == 0u)
    {
        return;
    }

    for (y = 0u; y < height; ++y)
    {
        if (g_fmsx_v9990_debug_p1_final_lines[y] >= dense_threshold)
        {
            if (first_dense == height)
            {
                first_dense = y;
            }
            last_dense = y;
            ++dense_rows;
        }
    }

    if (dense_rows == 0u)
    {
        return;
    }

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9D lh");

    for (y = first_dense; y <= last_dense && samples < 4u; ++y)
    {
        if (g_fmsx_v9990_debug_p1_final_lines[y] > hole_threshold)
        {
            continue;
        }

        fmsx_v9990_tracebuf_push_text(&tb, samples == 0u ? " y:" : " |y:");
        fmsx_v9990_tracebuf_push_uint(&tb, y);
        fmsx_v9990_tracebuf_push_text(&tb, " ay:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.display_ya_lines[y]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_ay_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " by:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.display_yb_lines[y]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_by_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " ax:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_ax_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " bx:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_bx_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " pr:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.priority_control_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " pc:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.palette_control_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " bd:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.backdrop_color_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " ct:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.control_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " m0:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.screen_mode_0_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " m1:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.screen_mode_1_lines[y]);
        ++samples;
    }

    if (samples == 0u)
    {
        fmsx_v9990_tracebuf_push_text(&tb, " none");
    }
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_p1_hole_samples(unsigned height)
{
    char line[320];
    TFmsxV9990TraceBuffer tb;
    unsigned first_dense = height;
    unsigned last_dense = 0u;
    unsigned dense_rows = 0u;
    unsigned y;
    unsigned x;
    const unsigned dense_threshold = 32u;
    const unsigned hole_threshold = 4u;

    if (!g_fmsx_v9990_debug_p1_profile_valid || height == 0u)
    {
        return;
    }

    for (y = 0u; y < height; ++y)
    {
        if (g_fmsx_v9990_debug_p1_final_lines[y] >= dense_threshold)
        {
            if (first_dense == height)
            {
                first_dense = y;
            }
            last_dense = y;
            ++dense_rows;
        }
    }

    if (dense_rows == 0u)
    {
        return;
    }

    for (y = first_dense; y <= last_dense; ++y)
    {
        if (g_fmsx_v9990_debug_p1_final_lines[y] > hole_threshold)
        {
            continue;
        }

        fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
        fmsx_v9990_tracebuf_push_text(&tb, "G9D lc y:");
        fmsx_v9990_tracebuf_push_uint(&tb, y);
        fmsx_v9990_tracebuf_push_text(&tb, " px:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_p1_prio_x[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " pa:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990_debug_p1_pal_a_base[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " pb:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990_debug_p1_pal_b_base[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " bd:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990_debug_p1_backdrop_index[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " a:");
        for (x = 0u; x < 8u; ++x)
        {
            if (x != 0u) fmsx_v9990_tracebuf_push_char(&tb, ',');
            fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990_debug_p1_sample_a[y][x]);
        }
        fmsx_v9990_tracebuf_push_text(&tb, " b:");
        for (x = 0u; x < 8u; ++x)
        {
            if (x != 0u) fmsx_v9990_tracebuf_push_char(&tb, ',');
            fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990_debug_p1_sample_b[y][x]);
        }
        fmsx_v9990_tracebuf_push_text(&tb, " bg:");
        for (x = 0u; x < 8u; ++x)
        {
            if (x != 0u) fmsx_v9990_tracebuf_push_char(&tb, ',');
            fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_p1_bg_is_backdrop[y][x]);
        }
        fmsx_v9990_tracebuf_push_text(&tb, " fi:");
        for (x = 0u; x < 8u; ++x)
        {
            if (x != 0u) fmsx_v9990_tracebuf_push_char(&tb, ',');
            fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_p1_final_is_backdrop[y][x]);
        }
        fmsx_v9990_tracebuf_push_char(&tb, '\n');
        msxbare_uart_write(line);
        return;
    }
}

static void fmsx_v9990_debug_trace_p1_line_state(unsigned height)
{
    char line[224];
    TFmsxV9990TraceBuffer tb;
    unsigned y;
    unsigned emitted = 0u;

    if (height == 0u)
    {
        return;
    }

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9D ls");

    for (y = 1u; y < height && emitted < 8u; ++y)
    {
        const boolean ay_split =
            (g_fmsx_v9990.display_ya_lines[y] != (uint16_t) (g_fmsx_v9990.display_ya_lines[y - 1u] + 1u)) ||
            (g_fmsx_v9990.scroll_ay_lines[y] != g_fmsx_v9990.scroll_ay_lines[y - 1u]);
        const boolean by_split =
            (g_fmsx_v9990.display_yb_lines[y] != (uint16_t) (g_fmsx_v9990.display_yb_lines[y - 1u] + 1u)) ||
            (g_fmsx_v9990.scroll_by_lines[y] != g_fmsx_v9990.scroll_by_lines[y - 1u]);
        const boolean ax_split = (g_fmsx_v9990.scroll_ax_lines[y] != g_fmsx_v9990.scroll_ax_lines[y - 1u]);
        const boolean bx_split = (g_fmsx_v9990.scroll_bx_lines[y] != g_fmsx_v9990.scroll_bx_lines[y - 1u]);
        const boolean pr_split = (g_fmsx_v9990.priority_control_lines[y] != g_fmsx_v9990.priority_control_lines[y - 1u]);
        const boolean pc_split = (g_fmsx_v9990.palette_control_lines[y] != g_fmsx_v9990.palette_control_lines[y - 1u]);
        const boolean bd_split = (g_fmsx_v9990.backdrop_color_lines[y] != g_fmsx_v9990.backdrop_color_lines[y - 1u]);
        const boolean ctl_split = (g_fmsx_v9990.control_lines[y] != g_fmsx_v9990.control_lines[y - 1u]);
        const boolean sm0_split = (g_fmsx_v9990.screen_mode_0_lines[y] != g_fmsx_v9990.screen_mode_0_lines[y - 1u]);
        const boolean sm1_split = (g_fmsx_v9990.screen_mode_1_lines[y] != g_fmsx_v9990.screen_mode_1_lines[y - 1u]);

        if (!(ay_split || by_split || ax_split || bx_split || pr_split || pc_split || bd_split || ctl_split || sm0_split || sm1_split))
        {
            continue;
        }

        fmsx_v9990_tracebuf_push_text(&tb, emitted == 0u ? " y:" : " |y:");
        fmsx_v9990_tracebuf_push_uint(&tb, y);
        fmsx_v9990_tracebuf_push_text(&tb, " ay:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.display_ya_lines[y]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_ay_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " by:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.display_yb_lines[y]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_by_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " ax:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_ax_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " bx:");
        fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.scroll_bx_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " pr:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.priority_control_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " pc:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.palette_control_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " bd:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.backdrop_color_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " ct:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.control_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " m0:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.screen_mode_0_lines[y]);
        fmsx_v9990_tracebuf_push_text(&tb, " m1:");
        fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.screen_mode_1_lines[y]);
        ++emitted;
    }

    if (emitted == 0u)
    {
        fmsx_v9990_tracebuf_push_text(&tb, " none");
    }
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_lmmc(const char *tag)
{
    char line[256];
    TFmsxV9990TraceBuffer tb;

    if (g_fmsx_v9990_debug_lmmc_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_lmmc_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9L ");
    fmsx_v9990_tracebuf_push_text(&tb, tag);
    fmsx_v9990_tracebuf_push_text(&tb, " b:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_bytes);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_total_bytes);
    fmsx_v9990_tracebuf_push_text(&tb, " dx:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.dx);
    fmsx_v9990_tracebuf_push_text(&tb, " dy:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.dy);
    fmsx_v9990_tracebuf_push_text(&tb, " nx:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.nx);
    fmsx_v9990_tracebuf_push_text(&tb, " ny:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.ny);
    fmsx_v9990_tracebuf_push_text(&tb, " md:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_mode);
    fmsx_v9990_tracebuf_push_text(&tb, " iw:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_image_width);
    fmsx_v9990_tracebuf_push_text(&tb, " pt:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_pitch);
    fmsx_v9990_tracebuf_push_text(&tb, " sx:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.sx);
    fmsx_v9990_tracebuf_push_text(&tb, " sy:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.sy);
    fmsx_v9990_tracebuf_push_text(&tb, " wm:");
    fmsx_v9990_tracebuf_push_hex16(&tb, g_fmsx_v9990.cmd.wm);
    fmsx_v9990_tracebuf_push_text(&tb, " arg:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.cmd.arg);
    fmsx_v9990_tracebuf_push_text(&tb, " log:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.cmd.log);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_phase(const char *tag)
{
#if MSXBARE_V9990_PHASE_TRACE_UART
    const char marker = fmsx_v9990_debug_phase_marker(tag, FALSE);
    if (tag == 0)
    {
        return;
    }
    if (g_fmsx_v9990_debug_compact_trace)
    {
        if (marker != '\0')
        {
            fmsx_v9990_debug_trace_char(marker);
        }
        return;
    }
    {
        char line[40];
        TFmsxV9990TraceBuffer tb;
        fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
        fmsx_v9990_tracebuf_push_text(&tb, "G9A ");
        fmsx_v9990_tracebuf_push_text(&tb, tag);
        fmsx_v9990_tracebuf_push_char(&tb, '\n');
        msxbare_uart_write(line);
    }
#else
    (void) tag;
#endif
}

static void fmsx_v9990_debug_trace_phase_done(const char *tag)
{
#if MSXBARE_V9990_PHASE_TRACE_UART
    const char marker = fmsx_v9990_debug_phase_marker(tag, TRUE);
    if (tag == 0)
    {
        return;
    }
    if (g_fmsx_v9990_debug_compact_trace)
    {
        if (marker != '\0')
        {
            fmsx_v9990_debug_trace_char(marker);
        }
        return;
    }
    {
        char line[48];
        TFmsxV9990TraceBuffer tb;
        fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
        fmsx_v9990_tracebuf_push_text(&tb, "G9A ");
        fmsx_v9990_tracebuf_push_text(&tb, tag);
        fmsx_v9990_tracebuf_push_text(&tb, " done\n");
        msxbare_uart_write(line);
    }
#else
    (void) tag;
#endif
}
#else
static void fmsx_v9990_debug_trace_port(const char *prefix, uint8_t port, uint8_t value)
{
    (void) prefix;
    (void) port;
    (void) value;
}

static void fmsx_v9990_debug_trace_command(const char *prefix, uint8_t opcode)
{
    (void) prefix;
    (void) opcode;
}

static void fmsx_v9990_debug_trace_render(unsigned width, unsigned height, TFmsxV9990DisplayMode mode)
{
    (void) width;
    (void) height;
    (void) mode;
}

static void fmsx_v9990_debug_trace_enable(const char *tag, boolean enabled)
{
    (void) tag;
    (void) enabled;
}

static void fmsx_v9990_debug_trace_regs(const char *prefix)
{
    (void) prefix;
}

static void fmsx_v9990_debug_trace_guard(const char *tag)
{
    (void) tag;
}

static void fmsx_v9990_debug_trace_active(const char *prefix, unsigned width, unsigned height, TFmsxV9990DisplayMode mode)
{
    (void) prefix;
    (void) width;
    (void) height;
    (void) mode;
}

static void fmsx_v9990_debug_rearm_active_window(const char *tag)
{
    (void) tag;
}

static void fmsx_v9990_debug_trace_phase(const char *tag)
{
    (void) tag;
}

static void fmsx_v9990_debug_trace_phase_done(const char *tag)
{
    (void) tag;
}

static void fmsx_v9990_debug_trace_irq_host(const char *prefix)
{
    (void) prefix;
}

static void fmsx_v9990_debug_trace_scroll_split(const char *tag, unsigned split, unsigned value)
{
    (void) tag;
    (void) split;
    (void) value;
}
#endif

static void fmsx_v9990_reset_framebuffer_guards(void)
{
    g_fmsx_v9990_framebuffer_storage.guard_lo = FMSX_V9990_FB_GUARD_WORD;
    g_fmsx_v9990_framebuffer_storage.guard_hi = FMSX_V9990_FB_GUARD_WORD;
}

static boolean fmsx_v9990_framebuffer_guards_ok(void)
{
    return g_fmsx_v9990_framebuffer_storage.guard_lo == FMSX_V9990_FB_GUARD_WORD
        && g_fmsx_v9990_framebuffer_storage.guard_hi == FMSX_V9990_FB_GUARD_WORD;
}

static void fmsx_v9990_update_host_irq(void)
{
    if ((g_fmsx_v9990.pending_irqs & g_fmsx_v9990.regs[FMSX_V9990_REG_INTERRUPT_0]) != 0u)
    {
        SetIRQ(FMSX_V9990_MSX_IRQ);
#if MSXBARE_ENABLE_DEBUG_OVERLAY
        (void) 0;
#endif
    }
    else
    {
        SetIRQ((uint8_t) ~FMSX_V9990_MSX_IRQ);
    }
}

static unsigned fmsx_v9990_get_left_border_ticks(void)
{
    const boolean xtal = (g_fmsx_v9990.status & 0x04u) ? TRUE : FALSE;
    const unsigned blank = xtal ? 372u : 400u;
    const unsigned border1 = xtal ? 0u : 112u;
    const int adjust = ((((int) (g_fmsx_v9990.regs[FMSX_V9990_REG_DISPLAY_ADJUST] & 0x0Fu)) ^ 7) - 8) * 8;
    return (unsigned) ((int) blank + (int) border1 + adjust);
}

static unsigned fmsx_v9990_get_right_border_ticks(void)
{
    const boolean xtal = (g_fmsx_v9990.status & 0x04u) ? TRUE : FALSE;
    const unsigned display = xtal ? 2304u : 2048u;
    return fmsx_v9990_get_left_border_ticks() + display;
}

static unsigned fmsx_v9990_get_frame_lines(void)
{
    return (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1] & 0x08u) ? 313u : 262u;
}

static unsigned fmsx_v9990_get_top_border_lines(void)
{
    const boolean xtal = (g_fmsx_v9990.status & 0x04u) ? TRUE : FALSE;
    const boolean pal = (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1] & 0x08u) ? TRUE : FALSE;
    const unsigned blank = 15u;
    const unsigned border1 = xtal ? 0u : (pal ? 41u : 14u);
    const int adjust = ((((int) ((g_fmsx_v9990.regs[FMSX_V9990_REG_DISPLAY_ADJUST] >> 4) & 0x0Fu)) ^ 7) - 8);
    return (unsigned) ((int) blank + (int) border1 + adjust);
}

static unsigned fmsx_v9990_get_bottom_border_lines(void)
{
    const boolean xtal = (g_fmsx_v9990.status & 0x04u) ? TRUE : FALSE;
    const boolean pal = (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1] & 0x08u) ? TRUE : FALSE;
    const unsigned display = xtal ? (pal ? 290u : 240u) : 212u;
    return fmsx_v9990_get_top_border_lines() + display;
}

static void fmsx_v9990_raise_ver_irq_if_needed(void)
{
    g_fmsx_v9990.pending_irqs |= FMSX_V9990_IRQ_VER;
    fmsx_v9990_update_host_irq();
}

void fmsx_v9990_begin_frame(void)
{
    g_fmsx_v9990.raster_event_count = 0u;
    fmsx_v9990_advance_status_time(
        fmsx_v9990_get_frame_lines() * FMSX_V9990_UC_TICKS_PER_LINE);
    g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
    g_fmsx_v9990.status_cpu_cycle_frac = 0u;
}

static void fmsx_v9990_advance_status_time(unsigned uc_ticks)
{
    const unsigned frame_ticks = fmsx_v9990_get_frame_lines() * FMSX_V9990_UC_TICKS_PER_LINE;
    const unsigned vscan_ticks = fmsx_v9990_get_bottom_border_lines() * FMSX_V9990_UC_TICKS_PER_LINE;
    const unsigned old_ticks = g_fmsx_v9990.status_uc_ticks;
    const unsigned advanced = old_ticks + uc_ticks;

    if (frame_ticks == 0u)
    {
        g_fmsx_v9990.status_uc_ticks = 0u;
        return;
    }

    if (uc_ticks == 0u)
    {
        return;
    }

    if (old_ticks < vscan_ticks && advanced >= vscan_ticks)
    {
        fmsx_v9990_raise_ver_irq_if_needed();
    }

    if (advanced >= frame_ticks)
    {
        g_fmsx_v9990.status ^= 0x02u;
        fmsx_v9990_reset_scroll_line_state();
        if ((advanced - frame_ticks) >= vscan_ticks)
        {
            fmsx_v9990_raise_ver_irq_if_needed();
        }
    }

    g_fmsx_v9990.status_uc_ticks = advanced % frame_ticks;
    g_fmsx_v9990_video.field_parity_odd = (g_fmsx_v9990.status & 0x02u) ? TRUE : FALSE;
}

static void fmsx_v9990_sync_status_to_cpu(void)
{
    const uint64_t now_cycles = fmsx_vdp_cpu_cycles_now();
    const unsigned hperiod = (HPeriod > 0) ? (unsigned) HPeriod : (1368u / 6u);

    if (hperiod == 0u)
    {
        g_fmsx_v9990.status_last_cpu_cycles = now_cycles;
        g_fmsx_v9990.status_cpu_cycle_frac = 0u;
        return;
    }

    if (now_cycles < g_fmsx_v9990.status_last_cpu_cycles)
    {
        g_fmsx_v9990.status_last_cpu_cycles = now_cycles;
        g_fmsx_v9990.status_cpu_cycle_frac = 0u;
        return;
    }

    if (now_cycles == g_fmsx_v9990.status_last_cpu_cycles)
    {
        return;
    }

    {
        const uint64_t delta_cycles = now_cycles - g_fmsx_v9990.status_last_cpu_cycles;
        const uint64_t scaled = g_fmsx_v9990.status_cpu_cycle_frac
            + (delta_cycles * (uint64_t) FMSX_V9990_UC_TICKS_PER_LINE);
        const unsigned uc_ticks = (unsigned) (scaled / (uint64_t) hperiod);

        g_fmsx_v9990.status_last_cpu_cycles = now_cycles;
        g_fmsx_v9990.status_cpu_cycle_frac = scaled % (uint64_t) hperiod;
        if (uc_ticks != 0u)
        {
            fmsx_v9990_advance_status_time(uc_ticks);
        }
    }
}

static uint8_t fmsx_v9990_read_status_port(void)
{
    const unsigned left = fmsx_v9990_get_left_border_ticks();
    const unsigned right = fmsx_v9990_get_right_border_ticks();
    const unsigned top = fmsx_v9990_get_top_border_lines();
    const unsigned bottom = fmsx_v9990_get_bottom_border_lines();
    unsigned ticks;
    unsigned x;
    unsigned y;
    uint8_t out;

    fmsx_v9990_sync_status_to_cpu();
    ticks = g_fmsx_v9990.status_uc_ticks;
    x = ticks % FMSX_V9990_UC_TICKS_PER_LINE;
    y = ticks / FMSX_V9990_UC_TICKS_PER_LINE;
    const boolean hr = (x < left || x >= right) ? TRUE : FALSE;
    const boolean vr = (y < top || y >= bottom) ? TRUE : FALSE;
    out = (uint8_t) (g_fmsx_v9990.cmd.status
        | (vr ? 0x40u : 0u)
        | (hr ? 0x20u : 0u)
        | (g_fmsx_v9990.status & 0x06u));
    return out;
}

static TFmsxV9990CommandMode fmsx_v9990_get_command_mode(void)
{
    switch (fmsx_v9990_get_display_mode())
    {
    case FMSX_V9990_MODE_P1:
        return FMSX_V9990_CMD_MODE_P1;
    case FMSX_V9990_MODE_P2:
        return FMSX_V9990_CMD_MODE_P2;
    default:
        switch (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0] & 0x03u)
        {
        case 0u:  return FMSX_V9990_CMD_MODE_BPP2;
        case 1u:  return FMSX_V9990_CMD_MODE_BPP4;
        case 2u:  return FMSX_V9990_CMD_MODE_BPP8;
        default:  return FMSX_V9990_CMD_MODE_BPP16;
        }
    }
}

static unsigned fmsx_v9990_cmd_get_pitch(TFmsxV9990CommandMode mode, unsigned width)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP4:
        return width >> 1;
    case FMSX_V9990_CMD_MODE_BPP2:
        return width >> 2;
    case FMSX_V9990_CMD_MODE_BPP8:
    case FMSX_V9990_CMD_MODE_BPP16:
        return width;
    default:
        return width;
    }
}

static unsigned fmsx_v9990_cmd_address_of(TFmsxV9990CommandMode mode, unsigned x, unsigned y, unsigned pitch)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    {
        /*
         * Match openMSX/WebMSX semantics for P1 command coordinates:
         *   - visible X coordinate is always 0..255
         *   - bit 9 selects plane B
         *   - bit 8 must not feed the byte address
         *
         * Letting X8 leak into ((x >> 1) & (pitch - 1)) shifts the command
         * stream by 128 bytes inside a row and is consistent with the
         * repeated "3/4 drawn + 1/4 missing" gameplay corruption.
         */
        const unsigned coord_x = x & 0x00FFu;
        const unsigned plane_offset = (x & 0x0200u) ? 0x40000u : 0u;
        unsigned addr = fmsx_v9990_transform_p1(((coord_x >> 1) & (pitch - 1u)) + y * pitch);
        return (addr & 0x3FFFFu) | plane_offset;
    }
    case FMSX_V9990_CMD_MODE_P2:
        return fmsx_v9990_transform_p2(((x >> 1) & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP2:
        return fmsx_v9990_transform_bx(((x >> 2) & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP4:
        return fmsx_v9990_transform_bx(((x >> 1) & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP8:
        return fmsx_v9990_transform_bx((x & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP16:
        return ((x & (pitch - 1u)) + y * pitch) & 0x3FFFFu;
    default:
        return 0u;
    }
}

static uint16_t fmsx_v9990_cmd_logic16(uint8_t op, uint16_t src, uint16_t dst, boolean transparent)
{
    uint16_t result = 0u;
    unsigned bit;

    if (transparent && src == 0u)
    {
        return dst;
    }

    op &= 0x0Fu;
    for (bit = 0u; bit < 16u; ++bit)
    {
        const unsigned src_bit = (src >> bit) & 1u;
        const unsigned dst_bit = (dst >> bit) & 1u;
        const unsigned lut_bit = (src_bit << 1) | dst_bit;
        if (((op >> lut_bit) & 1u) != 0u)
        {
            result |= (uint16_t) (1u << bit);
        }
    }
    return result;
}

static uint8_t fmsx_v9990_cmd_logic8(uint8_t op, uint8_t src, uint8_t dst, uint8_t active_mask)
{
    uint8_t result = 0u;
    unsigned bit;

    op &= 0x0Fu;
    for (bit = 0u; bit < 8u; ++bit)
    {
        const uint8_t bit_mask = (uint8_t) (1u << bit);
        const unsigned src_bit = (src >> bit) & 1u;
        const unsigned dst_bit = (dst >> bit) & 1u;
        const unsigned lut_bit = (src_bit << 1) | dst_bit;
        if ((active_mask & bit_mask) != 0u)
        {
            if (((op >> lut_bit) & 1u) != 0u)
            {
                result |= bit_mask;
            }
        }
        else if ((dst & bit_mask) != 0u)
        {
            result |= bit_mask;
        }
    }
    return result;
}

static uint8_t fmsx_v9990_cmd_group_mask(TFmsxV9990CommandMode mode, unsigned x)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP4:
        return (x & 1u) ? 0x0Fu : 0xF0u;
    case FMSX_V9990_CMD_MODE_BPP2:
        return (uint8_t) (0xC0u >> (2u * (x & 3u)));
    case FMSX_V9990_CMD_MODE_BPP8:
        return 0xFFu;
    default:
        return 0xFFu;
    }
}

static uint8_t fmsx_v9990_cmd_wm8_for_addr(uint16_t wm, unsigned linear_addr)
{
    return (uint8_t) ((wm >> (((~linear_addr) & 1u) << 3)) & 0xFFu);
}

static uint8_t fmsx_v9990_cmd_logic_apply8(uint8_t dst, uint8_t src, uint8_t mask, uint8_t log)
{
    if (((log & 0x10u) != 0u) && (src == 0u))
    {
        return dst;
    }
    return fmsx_v9990_cmd_logic8(log, src, dst, mask);
}

static uint8_t fmsx_v9990_cmd_p1_plane_wm8(uint16_t wm, unsigned dy_linear)
{
    return (dy_linear & 0x0800u) != 0u
        ? (uint8_t) (wm & 0x00FFu)
        : (uint8_t) ((wm >> 8) & 0x00FFu);
}

static void fmsx_v9990_cmd_p1_logical_pcopyxx(
    unsigned dx,
    unsigned dy_linear,
    unsigned sx,
    unsigned sy_linear,
    uint8_t log,
    uint16_t wm,
    unsigned pitch)
{
    const unsigned s_shift = (1u - (sx & 1u)) << 2;
    const unsigned d_shift = (1u - (dx & 1u)) << 2;
    const unsigned s_linear = ((sy_linear * pitch) + (sx >> 1)) & 0x7FFFFu;
    const unsigned d_linear = ((dy_linear * pitch) + (dx >> 1)) & 0x7FFFFu;
    const unsigned s_direct = fmsx_v9990_transform_linear_p1(s_linear);
    const unsigned d_direct = fmsx_v9990_transform_linear_p1(d_linear);
    const uint8_t src = (uint8_t) (((fmsx_v9990_read_vram_direct(s_direct) >> s_shift) & 0x0Fu) << d_shift);
    const uint8_t mask = (uint8_t) ((0x0Fu << d_shift) & fmsx_v9990_cmd_p1_plane_wm8(wm, dy_linear));
    const uint8_t dst = fmsx_v9990_read_vram_direct(d_direct);

    g_fmsx_v9990.vram[d_direct] = fmsx_v9990_cmd_logic_apply8(dst, src, mask, log);
}

static void fmsx_v9990_cmd_p1_logical_psetx(
    unsigned dx,
    unsigned dy_linear,
    unsigned sx,
    uint16_t sc,
    uint8_t log,
    uint16_t wm,
    unsigned pitch)
{
    const unsigned s_shift = (3u - (sx & 3u)) << 2;
    const unsigned d_shift = (1u - (dx & 1u)) << 2;
    const unsigned d_linear = ((dy_linear * pitch) + (dx >> 1)) & 0x7FFFFu;
    const unsigned d_direct = fmsx_v9990_transform_linear_p1(d_linear);
    const uint8_t src = (uint8_t) ((((unsigned) sc >> s_shift) & 0x0Fu) << d_shift);
    const uint8_t mask = (uint8_t) ((0x0Fu << d_shift) & fmsx_v9990_cmd_p1_plane_wm8(wm, dy_linear));
    const uint8_t dst = fmsx_v9990_read_vram_direct(d_direct);

    g_fmsx_v9990.vram[d_direct] = fmsx_v9990_cmd_logic_apply8(dst, src, mask, log);
}

static void fmsx_v9990_cmd_p1_logical_pcopylx(
    unsigned da,
    unsigned dx,
    unsigned sx,
    unsigned sy_linear,
    uint8_t log,
    uint16_t wm,
    unsigned pitch)
{
    const unsigned s_shift = (1u - (sx & 1u)) << 2;
    const unsigned d_shift = (1u - (dx & 1u)) << 2;
    const unsigned s_linear = ((sy_linear * pitch) + (sx >> 1)) & 0x7FFFFu;
    const unsigned s_direct = fmsx_v9990_transform_linear_p1(s_linear);
    const unsigned d_direct = fmsx_v9990_transform_linear_p1(da);
    const uint8_t src = (uint8_t) (((fmsx_v9990_read_vram_direct(s_direct) >> s_shift) & 0x0Fu) << d_shift);
    const uint8_t mask = (uint8_t) ((0x0Fu << d_shift) & fmsx_v9990_cmd_wm8_for_addr(wm, da));
    const uint8_t dst = fmsx_v9990_read_vram_direct(d_direct);

    g_fmsx_v9990.vram[d_direct] = fmsx_v9990_cmd_logic_apply8(dst, src, mask, log);
}

static void fmsx_v9990_cmd_p1_logical_pcopyll(unsigned da, unsigned sa, uint8_t log, uint16_t wm)
{
    const unsigned d_direct = fmsx_v9990_transform_linear_p1(da);
    const unsigned s_direct = fmsx_v9990_transform_linear_p1(sa);
    const uint8_t src = fmsx_v9990_read_vram_direct(s_direct);
    const uint8_t mask = fmsx_v9990_cmd_wm8_for_addr(wm, da);
    const uint8_t dst = fmsx_v9990_read_vram_direct(d_direct);

    g_fmsx_v9990.vram[d_direct] = fmsx_v9990_cmd_logic_apply8(dst, src, mask, log);
}

static uint16_t fmsx_v9990_cmd_point(TFmsxV9990CommandMode mode, unsigned x, unsigned y, unsigned pitch)
{
    const unsigned addr = fmsx_v9990_cmd_address_of(mode, x, y, pitch);

    if (mode == FMSX_V9990_CMD_MODE_BPP16)
    {
        return (uint16_t) fmsx_v9990_read_vram_direct(addr + 0x00000u)
            | ((uint16_t) fmsx_v9990_read_vram_direct(addr + 0x40000u) << 8);
    }

    return fmsx_v9990_read_vram_direct(addr);
}

static uint16_t fmsx_v9990_cmd_pixel_value(TFmsxV9990CommandMode mode, uint16_t value, unsigned x)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP4:
        return (uint16_t) (((x & 1u) == 0u) ? ((value >> 4) & 0x0Fu) : (value & 0x0Fu));
    case FMSX_V9990_CMD_MODE_BPP2:
        return (uint16_t) ((value >> (6u - 2u * (x & 3u))) & 0x03u);
    case FMSX_V9990_CMD_MODE_BPP8:
        return (uint16_t) (value & 0x00FFu);
    default:
        return value;
    }
}

static uint16_t fmsx_v9990_cmd_shift_value(TFmsxV9990CommandMode mode, uint16_t value, unsigned from_x, unsigned to_x)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP4:
    {
        const int shift = 4 * ((int) (to_x & 1u) - (int) (from_x & 1u));
        return (shift > 0) ? (uint16_t) (value >> shift) : (uint16_t) (value << -shift);
    }
    case FMSX_V9990_CMD_MODE_BPP2:
    {
        const int shift = 2 * ((int) (to_x & 3u) - (int) (from_x & 3u));
        return (shift > 0) ? (uint16_t) (value >> shift) : (uint16_t) (value << -shift);
    }
    default:
        return value;
    }
}

static void fmsx_v9990_write_vram_bx(unsigned address, uint8_t value)
{
    g_fmsx_v9990.vram[fmsx_v9990_transform_bx(address)] = value;
}

static void fmsx_v9990_write_vram_linear(TFmsxV9990CommandMode mode, unsigned address, uint8_t value)
{
    if (mode == FMSX_V9990_CMD_MODE_P1)
    {
        g_fmsx_v9990.vram[fmsx_v9990_transform_linear_p1(address)] = value;
        return;
    }
    fmsx_v9990_write_vram_bx(address, value);
}

static void fmsx_v9990_cmd_pset_color(TFmsxV9990CommandMode mode, unsigned x, unsigned y, unsigned pitch, uint16_t color, uint16_t mask, uint8_t log)
{
    const unsigned addr = fmsx_v9990_cmd_address_of(mode, x, y, pitch);
    const boolean transparent = (log & 0x10u) ? TRUE : FALSE;

    if (mode == FMSX_V9990_CMD_MODE_BPP16)
    {
        const uint16_t dst = (uint16_t) fmsx_v9990_read_vram_direct(addr + 0x00000u)
            | ((uint16_t) fmsx_v9990_read_vram_direct(addr + 0x40000u) << 8);
        const uint16_t logic = fmsx_v9990_cmd_logic16(log, color, dst, transparent);
        const uint16_t result = (uint16_t) ((dst & ~mask) | (logic & mask));
        g_fmsx_v9990.vram[(addr + 0x00000u) & (FMSX_V9990_VRAM_BYTES - 1u)] = (uint8_t) (result & 0xFFu);
        g_fmsx_v9990.vram[(addr + 0x40000u) & (FMSX_V9990_VRAM_BYTES - 1u)] = (uint8_t) (result >> 8);
        return;
    }

    {
        const uint8_t dst = fmsx_v9990_read_vram_direct(addr);
        const uint8_t src = (addr & 0x40000u) ? (uint8_t) (color >> 8) : (uint8_t) color;
        const uint8_t mask_byte = (addr & 0x40000u) ? (uint8_t) (mask >> 8) : (uint8_t) mask;
        const uint8_t pixel_mask = fmsx_v9990_cmd_group_mask(mode, x);
        const uint8_t active_mask = (uint8_t) (mask_byte & pixel_mask);
        uint8_t logic;

        if (transparent && (src & pixel_mask) == 0u)
        {
            logic = dst;
        }
        else
        {
            logic = fmsx_v9990_cmd_logic8(log, src, dst, pixel_mask);
        }
        g_fmsx_v9990.vram[addr & (FMSX_V9990_VRAM_BYTES - 1u)] = (uint8_t) ((dst & ~active_mask) | (logic & active_mask));
    }
}

static boolean fmsx_v9990_cmd_advance_write_cursor(void)
{
    const unsigned total_nx = fmsx_v9990_cmd_get_total_nx();
    const int step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? -1 : 1;
    const int step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? -1 : 1;

    g_fmsx_v9990.cmd.dx = (uint16_t) (g_fmsx_v9990.cmd.dx + step_x);
    if (--g_fmsx_v9990.cmd.nx == 0u)
    {
        g_fmsx_v9990.cmd.dx = (uint16_t) (g_fmsx_v9990.cmd.dx - (int) total_nx * step_x);
        g_fmsx_v9990.cmd.dy = (uint16_t) (g_fmsx_v9990.cmd.dy + step_y);
        if (--g_fmsx_v9990.cmd.ny == 0u)
        {
            return TRUE;
        }
        g_fmsx_v9990.cmd.nx = (uint16_t) total_nx;
    }
    return FALSE;
}

static boolean fmsx_v9990_cmd_advance_read_cursor(void)
{
    const unsigned total_nx = fmsx_v9990_cmd_get_total_nx();
    const int step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? -1 : 1;
    const int step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? -1 : 1;

    g_fmsx_v9990.cmd.sx = (uint16_t) (g_fmsx_v9990.cmd.sx + step_x);
    if (--g_fmsx_v9990.cmd.nx == 0u)
    {
        g_fmsx_v9990.cmd.sx = (uint16_t) (g_fmsx_v9990.cmd.sx - (int) total_nx * step_x);
        g_fmsx_v9990.cmd.sy = (uint16_t) (g_fmsx_v9990.cmd.sy + step_y);
        if (--g_fmsx_v9990.cmd.ny == 0u)
        {
            return TRUE;
        }
        g_fmsx_v9990.cmd.nx = (uint16_t) total_nx;
    }
    return FALSE;
}

static void fmsx_v9990_cmd_fill_lmcm_read(TFmsxV9990CommandMode mode, unsigned pitch)
{
    boolean end_after_read = FALSE;

    g_fmsx_v9990.cmd.flags &= (uint8_t) ~(FMSX_V9990_CMD_FLAG_END_AFTER_READ | FMSX_V9990_CMD_FLAG_PARTIAL_VALID);
    if (g_fmsx_v9990.cmd.ny == 0u)
    {
        fmsx_v9990_cmd_ready();
        return;
    }

    if (mode == FMSX_V9990_CMD_MODE_BPP16)
    {
        const uint16_t value = fmsx_v9990_cmd_point(mode, g_fmsx_v9990.cmd.sx, g_fmsx_v9990.cmd.sy, pitch);
        end_after_read = fmsx_v9990_cmd_advance_read_cursor();
        g_fmsx_v9990.cmd.data = (uint8_t) (value & 0xFFu);
        g_fmsx_v9990.cmd.partial = (uint8_t) (value >> 8);
        g_fmsx_v9990.cmd.flags |= FMSX_V9990_CMD_FLAG_PARTIAL_VALID;
    }
    else
    {
        const unsigned pixels_per_byte = fmsx_v9990_cmd_pixels_per_byte(mode);
        uint8_t packed = 0u;
        unsigned i;

        for (i = 0u; (i < pixels_per_byte) && (g_fmsx_v9990.cmd.ny != 0u); ++i)
        {
            const uint16_t value = fmsx_v9990_cmd_point(mode, g_fmsx_v9990.cmd.sx, g_fmsx_v9990.cmd.sy, pitch);
            const uint16_t shifted = fmsx_v9990_cmd_shift_value(mode, value, g_fmsx_v9990.cmd.sx, i);
            packed = (uint8_t) (packed | (shifted & fmsx_v9990_cmd_group_mask(mode, i)));
            end_after_read = fmsx_v9990_cmd_advance_read_cursor();
            if (end_after_read)
            {
                break;
            }
        }

        g_fmsx_v9990.cmd.data = packed;
    }

    if (end_after_read)
    {
        g_fmsx_v9990.cmd.flags |= FMSX_V9990_CMD_FLAG_END_AFTER_READ;
    }
    g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
}

static void fmsx_v9990_cmd_consume_lmmc(TFmsxV9990CommandMode mode, unsigned pitch, uint8_t value)
{
#if MSXBARE_ENABLE_DEBUG_OVERLAY
    if (g_fmsx_v9990_debug_lmmc_trace_active)
    {
        ++g_fmsx_v9990_debug_lmmc_bytes;
        if ((g_fmsx_v9990_debug_lmmc_bytes % 0x2000u) == 0u)
        {
            fmsx_v9990_debug_trace_lmmc("chunk");
        }
    }
#endif
    g_fmsx_v9990.cmd.data = value;
    g_fmsx_v9990.cmd.status &= (uint8_t) ~FMSX_V9990_CMD_STATUS_TR;

    if (g_fmsx_v9990.cmd.ny == 0u)
    {
        fmsx_v9990_cmd_ready();
        return;
    }

    if (mode == FMSX_V9990_CMD_MODE_BPP16)
    {
        if ((g_fmsx_v9990.cmd.flags & FMSX_V9990_CMD_FLAG_PARTIAL_VALID) == 0u)
        {
            g_fmsx_v9990.cmd.partial = value;
            g_fmsx_v9990.cmd.flags |= FMSX_V9990_CMD_FLAG_PARTIAL_VALID;
            g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
            return;
        }

        g_fmsx_v9990.cmd.flags &= (uint8_t) ~FMSX_V9990_CMD_FLAG_PARTIAL_VALID;
        fmsx_v9990_cmd_pset_color(
            mode,
            g_fmsx_v9990.cmd.dx,
            g_fmsx_v9990.cmd.dy,
            pitch,
            (uint16_t) (((uint16_t) value << 8) | g_fmsx_v9990.cmd.partial),
            g_fmsx_v9990.cmd.wm,
            g_fmsx_v9990.cmd.log);

        if (fmsx_v9990_cmd_advance_write_cursor())
        {
            fmsx_v9990_cmd_ready();
        }
        else
        {
            g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
        }
        return;
    }

    {
        const unsigned pixels_per_byte = fmsx_v9990_cmd_pixels_per_byte(mode);
        unsigned i;

        for (i = 0u; (i < pixels_per_byte) && (g_fmsx_v9990.cmd.ny != 0u); ++i)
        {
            const uint16_t shifted = fmsx_v9990_cmd_shift_value(mode, value, i, g_fmsx_v9990.cmd.dx);
            const uint16_t color = (uint16_t) (shifted | (shifted << 8));
            fmsx_v9990_cmd_pset_color(
                mode,
                g_fmsx_v9990.cmd.dx,
                g_fmsx_v9990.cmd.dy,
                pitch,
                color,
                g_fmsx_v9990.cmd.wm,
                g_fmsx_v9990.cmd.log);

            if (fmsx_v9990_cmd_advance_write_cursor())
            {
                fmsx_v9990_cmd_ready();
                return;
            }
        }
    }

    g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
}

static void fmsx_v9990_cmd_consume_cmmc(TFmsxV9990CommandMode mode, unsigned pitch, uint8_t value)
{
    unsigned bit;

    g_fmsx_v9990.cmd.data = value;
    g_fmsx_v9990.cmd.status &= (uint8_t) ~FMSX_V9990_CMD_STATUS_TR;

    if (g_fmsx_v9990.cmd.ny == 0u)
    {
        fmsx_v9990_cmd_ready();
        return;
    }

    for (bit = 0u; (bit < 8u) && (g_fmsx_v9990.cmd.ny != 0u); ++bit)
    {
        const uint16_t color = ((value & 0x80u) != 0u) ? g_fmsx_v9990.cmd.fg : g_fmsx_v9990.cmd.bg;
        value <<= 1;

        fmsx_v9990_cmd_pset_color(
            mode,
            g_fmsx_v9990.cmd.dx,
            g_fmsx_v9990.cmd.dy,
            pitch,
            color,
            g_fmsx_v9990.cmd.wm,
            g_fmsx_v9990.cmd.log);

        if (fmsx_v9990_cmd_advance_write_cursor())
        {
            fmsx_v9990_cmd_ready();
            return;
        }
    }

    g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
}

static uint8_t fmsx_v9990_cmd_logic_byte(TFmsxV9990CommandMode mode, uint8_t src, uint8_t dst, uint16_t mask, uint8_t log, boolean transparent)
{
    const unsigned pixels_per_byte = fmsx_v9990_cmd_pixels_per_byte(mode);
    uint8_t result = dst;
    unsigned i;

    for (i = 0u; i < pixels_per_byte; ++i)
    {
        const uint8_t group_mask = fmsx_v9990_cmd_group_mask(mode, i);
        const uint8_t active_mask = (uint8_t) (group_mask & mask);
        if (active_mask == 0u)
        {
            continue;
        }
        if (transparent && (src & group_mask) == 0u)
        {
            continue;
        }
        result = (uint8_t) ((result & ~active_mask) | (fmsx_v9990_cmd_logic8(log, src, result, group_mask) & active_mask));
    }

    return result;
}

static void fmsx_v9990_cmd_apply_advn(void)
{
    const uint8_t ax = (uint8_t) (g_fmsx_v9990.cmd.opcode & 0x03u);
    const uint8_t ay = (uint8_t) ((g_fmsx_v9990.cmd.opcode >> 2) & 0x03u);

    if (ax == 0x02u)
    {
        g_fmsx_v9990.cmd.dx = (uint16_t) (g_fmsx_v9990.cmd.dx + 1u);
    }
    else if (ax == 0x03u)
    {
        g_fmsx_v9990.cmd.dx = (uint16_t) (g_fmsx_v9990.cmd.dx - 1u);
    }

    if (ay == 0x02u)
    {
        g_fmsx_v9990.cmd.dy = (uint16_t) (g_fmsx_v9990.cmd.dy + 1u);
    }
    else if (ay == 0x03u)
    {
        g_fmsx_v9990.cmd.dy = (uint16_t) (g_fmsx_v9990.cmd.dy - 1u);
    }
}

static void fmsx_v9990_cmd_store_sy(uint16_t value)
{
    value &= 0x0FFFu;
    g_fmsx_v9990.cmd.sy = value;
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] =
        (uint8_t) ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] & 0xF0u) | ((value >> 8) & 0x0Fu));
}

static void fmsx_v9990_cmd_store_dy(uint16_t value)
{
    value &= 0x0FFFu;
    g_fmsx_v9990.cmd.dy = value;
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] =
        (uint8_t) ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] & 0xF0u) | ((value >> 8) & 0x0Fu));
}

static void fmsx_v9990_cmd_store_dx(uint16_t value)
{
    value &= 0x07FFu;
    g_fmsx_v9990.cmd.dx = value;
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX1] =
        (uint8_t) ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX1] & 0xF8u) | ((value >> 8) & 0x07u));
}

static void fmsx_v9990_cmd_store_sa(unsigned value)
{
    value &= 0x7FFFFu;
    g_fmsx_v9990.cmd.sx = (uint16_t) ((g_fmsx_v9990.cmd.sx & 0x0700u) | (value & 0x00FFu));
    g_fmsx_v9990.cmd.sy = (uint16_t) ((value >> 8) & 0x0FFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY0] = (uint8_t) ((value >> 8) & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] =
        (uint8_t) ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] & 0xF8u) | ((value >> 16) & 0x07u));
}

static void fmsx_v9990_cmd_store_da(unsigned value)
{
    value &= 0x7FFFFu;
    g_fmsx_v9990.cmd.dx = (uint16_t) ((g_fmsx_v9990.cmd.dx & 0x0700u) | (value & 0x00FFu));
    g_fmsx_v9990.cmd.dy = (uint16_t) ((value >> 8) & 0x0FFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY0] = (uint8_t) ((value >> 8) & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] =
        (uint8_t) ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] & 0xF8u) | ((value >> 16) & 0x07u));
}

static void fmsx_v9990_cmd_ready(void)
{
    if (g_fmsx_v9990_debug_lmmc_trace_active)
    {
        fmsx_v9990_debug_trace_lmmc("done");
        g_fmsx_v9990_debug_lmmc_trace_active = FALSE;
        g_fmsx_v9990_debug_lmmc_bytes = 0u;
        g_fmsx_v9990_debug_lmmc_total_bytes = 0u;
        g_fmsx_v9990_debug_lmmc_logs_remaining = 0u;
        g_fmsx_v9990_debug_lmmc_pitch = 0u;
        g_fmsx_v9990_debug_lmmc_image_width = 0u;
        g_fmsx_v9990_debug_lmmc_mode = 0u;
    }
    g_fmsx_v9990.cmd.opcode = 0u;
    g_fmsx_v9990.cmd.status &= (uint8_t) ~(FMSX_V9990_CMD_STATUS_CE | FMSX_V9990_CMD_STATUS_TR);
    g_fmsx_v9990.cmd.flags = 0u;
    g_fmsx_v9990.pending_irqs |= FMSX_V9990_IRQ_CMD;
    fmsx_v9990_update_host_irq();
    fmsx_v9990_debug_trace_regs("G9I cmd-ready");
}

static void fmsx_v9990_cmd_execute(void)
{
    const TFmsxV9990CommandMode mode = fmsx_v9990_get_command_mode();
    const unsigned image_width = fmsx_v9990_image_width();
    const unsigned pitch = fmsx_v9990_cmd_get_pitch(mode, image_width);
    const uint8_t opcode = (uint8_t) (g_fmsx_v9990.cmd.opcode >> 4);

    fmsx_v9990_cmd_latch_geometry(mode, image_width, pitch);
    fmsx_v9990_debug_trace_command("G9C exec", g_fmsx_v9990.cmd.opcode);
    if (fmsx_v9990_cmd_should_abort(g_fmsx_v9990.cmd.opcode))
    {
        fmsx_v9990_debug_trace_command("G9C drop", g_fmsx_v9990.cmd.opcode);
        fmsx_v9990_cmd_ready();
        return;
    }

    g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_CE;
    g_fmsx_v9990.cmd.status &= (uint8_t) ~FMSX_V9990_CMD_STATUS_BD;

    switch (opcode)
    {
    case 0x00u:
        fmsx_v9990_cmd_ready();
        break;

    case 0x01u:
        g_fmsx_v9990.cmd.flags = 0u;
        g_fmsx_v9990.cmd.nx = (uint16_t) fmsx_v9990_cmd_get_total_nx();
        g_fmsx_v9990.cmd.ny = (uint16_t) fmsx_v9990_cmd_get_total_ny();
        g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
        {
            const unsigned pixels_per_byte = fmsx_v9990_cmd_pixels_per_byte(mode);
            const uint32_t total_pixels =
                (uint32_t) fmsx_v9990_cmd_get_total_nx() * (uint32_t) fmsx_v9990_cmd_get_total_ny();
            const uint32_t total_bytes =
                (pixels_per_byte != 0u) ? ((total_pixels + pixels_per_byte - 1u) / pixels_per_byte) : 0u;
            g_fmsx_v9990_debug_lmmc_trace_active = (total_bytes >= 0x2000u) ? TRUE : FALSE;
            g_fmsx_v9990_debug_lmmc_bytes = 0u;
            g_fmsx_v9990_debug_lmmc_total_bytes = total_bytes;
            g_fmsx_v9990_debug_lmmc_logs_remaining = g_fmsx_v9990_debug_lmmc_trace_active ? 12u : 0u;
            g_fmsx_v9990_debug_lmmc_pitch = pitch;
            g_fmsx_v9990_debug_lmmc_image_width = image_width;
            g_fmsx_v9990_debug_lmmc_mode = (uint8_t) mode;
            if (g_fmsx_v9990_debug_lmmc_trace_active)
            {
                fmsx_v9990_debug_trace_lmmc("start");
            }
        }
#endif
        break;

    case 0x02u:
    {
        const unsigned nx = fmsx_v9990_cmd_get_wrapped_nx();
        const unsigned ny = fmsx_v9990_cmd_get_wrapped_ny();
        const uint16_t step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? (uint16_t) -1 : 1;
        const uint16_t step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? (uint16_t) -1 : 1;
        unsigned row;
        uint16_t dx = g_fmsx_v9990.cmd.dx;
        uint16_t dy = g_fmsx_v9990.cmd.dy;

        for (row = 0u; row < ny; ++row)
        {
            unsigned col;
            uint16_t cur_x = dx;
            for (col = 0u; col < nx; ++col)
            {
                fmsx_v9990_cmd_pset_color(mode, cur_x, dy, pitch, g_fmsx_v9990.cmd.fg, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
                cur_x = (uint16_t) (cur_x + step_x);
            }
            dy = (uint16_t) (dy + step_y);
        }
        fmsx_v9990_cmd_store_dy(dy);
        fmsx_v9990_cmd_ready();
        break;
    }

    case 0x03u:
        g_fmsx_v9990.cmd.flags = 0u;
        g_fmsx_v9990.cmd.nx = (uint16_t) fmsx_v9990_cmd_get_total_nx();
        g_fmsx_v9990.cmd.ny = (uint16_t) fmsx_v9990_cmd_get_total_ny();
        fmsx_v9990_cmd_fill_lmcm_read(mode, pitch);
        break;

    case 0x04u:
    {
        const unsigned nx = fmsx_v9990_cmd_get_wrapped_nx();
        const unsigned ny = fmsx_v9990_cmd_get_wrapped_ny();
        const uint16_t step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? (uint16_t) -1 : 1;
        const uint16_t step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? (uint16_t) -1 : 1;
        uint16_t sx = g_fmsx_v9990.cmd.sx;
        uint16_t sy = g_fmsx_v9990.cmd.sy;
        uint16_t dx = g_fmsx_v9990.cmd.dx;
        uint16_t dy = g_fmsx_v9990.cmd.dy;
        unsigned row;

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned src_plane = (g_fmsx_v9990.cmd.sx & 0x0200u) ? 0x0800u : 0u;
            const unsigned dst_plane = (g_fmsx_v9990.cmd.dx & 0x0200u) ? 0x0800u : 0u;
            uint16_t sy_vis = (uint16_t) (sy & 0x07FFu);
            uint16_t dy_vis = (uint16_t) (dy & 0x07FFu);
            uint16_t sx_vis = (uint16_t) (sx & 0x00FFu);
            uint16_t dx_vis = (uint16_t) (dx & 0x00FFu);

            for (row = 0u; row < ny; ++row)
            {
                unsigned col;
                uint16_t cur_sx = sx_vis;
                uint16_t cur_dx = dx_vis;

                for (col = 0u; col < nx; ++col)
                {
                    fmsx_v9990_cmd_p1_logical_pcopyxx(
                        cur_dx,
                        (unsigned) dy_vis | dst_plane,
                        cur_sx,
                        (unsigned) sy_vis | src_plane,
                        g_fmsx_v9990.cmd.log,
                        g_fmsx_v9990.cmd.wm,
                        pitch);
                    cur_sx = (uint16_t) ((cur_sx + step_x) & 0x00FFu);
                    cur_dx = (uint16_t) ((cur_dx + step_x) & 0x00FFu);
                }

                sy_vis = (uint16_t) ((sy_vis + step_y) & 0x07FFu);
                dy_vis = (uint16_t) ((dy_vis + step_y) & 0x07FFu);
            }

            fmsx_v9990_cmd_store_sy(sy_vis);
            fmsx_v9990_cmd_store_dy(dy_vis);
            fmsx_v9990_cmd_ready();
            break;
        }

        for (row = 0u; row < ny; ++row)
        {
            unsigned col;
            uint16_t cur_sx = sx;
            uint16_t cur_dx = dx;

            for (col = 0u; col < nx; ++col)
            {
                const uint16_t value = fmsx_v9990_cmd_point(mode, cur_sx, sy, pitch);
                const uint16_t shifted = fmsx_v9990_cmd_shift_value(mode, value, cur_sx, cur_dx);
                const uint16_t color = (mode == FMSX_V9990_CMD_MODE_BPP16)
                    ? shifted
                    : (uint16_t) (shifted | (shifted << 8));
                fmsx_v9990_cmd_pset_color(mode, cur_dx, dy, pitch, color, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
                cur_sx = (uint16_t) (cur_sx + step_x);
                cur_dx = (uint16_t) (cur_dx + step_x);
            }

            sy = (uint16_t) (sy + step_y);
            dy = (uint16_t) (dy + step_y);
        }

        fmsx_v9990_cmd_store_sy(sy);
        fmsx_v9990_cmd_store_dy(dy);
        fmsx_v9990_cmd_ready();
        break;
    }

    case 0x05u:
        g_fmsx_v9990.cmd.flags = 0u;
        g_fmsx_v9990.cmd.nx = (uint16_t) fmsx_v9990_cmd_get_total_nx();
        g_fmsx_v9990.cmd.ny = (uint16_t) fmsx_v9990_cmd_get_total_ny();
        g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
        break;

    case 0x07u:
    {
        const unsigned nx = fmsx_v9990_cmd_get_wrapped_nx();
        const unsigned ny = fmsx_v9990_cmd_get_wrapped_ny();
        const uint16_t step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? (uint16_t) -1 : 1;
        const uint16_t step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? (uint16_t) -1 : 1;
        unsigned src_address = fmsx_v9990_cmd_linear_src_address();
        uint8_t data = 0u;
        unsigned bits_left = 0u;
        uint16_t dx = g_fmsx_v9990.cmd.dx;
        uint16_t dy = g_fmsx_v9990.cmd.dy;
        unsigned row;

        for (row = 0u; row < ny; ++row)
        {
            unsigned col;
            uint16_t cur_dx = dx;
            for (col = 0u; col < nx; ++col)
            {
                uint16_t color;
                if (bits_left == 0u)
                {
                    data = fmsx_v9990_read_vram_linear(mode, src_address++);
                    bits_left = 8u;
                }
                color = ((data & 0x80u) != 0u) ? g_fmsx_v9990.cmd.fg : g_fmsx_v9990.cmd.bg;
                data <<= 1;
                --bits_left;

                fmsx_v9990_cmd_pset_color(mode, cur_dx, dy, pitch, color, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
                cur_dx = (uint16_t) (cur_dx + step_x);
            }
            dy = (uint16_t) (dy + step_y);
        }
        fmsx_v9990_cmd_store_sa(src_address);
        fmsx_v9990_cmd_store_dy(dy);
        fmsx_v9990_cmd_ready();
        break;
    }

    case 0x08u:
    {
        const unsigned nx = fmsx_v9990_cmd_get_wrapped_nx();
        const unsigned ny = fmsx_v9990_cmd_get_wrapped_ny();
        const uint16_t step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? (uint16_t) -1 : 1;
        const uint16_t step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? (uint16_t) -1 : 1;
        unsigned src_address = fmsx_v9990_cmd_linear_src_address();
        uint16_t dx = g_fmsx_v9990.cmd.dx;
        uint16_t dy = g_fmsx_v9990.cmd.dy;
        unsigned row;

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned dest_plane = (g_fmsx_v9990.cmd.dx & 0x0200u) ? 0x0800u : 0u;
            uint16_t dy_vis = (uint16_t) (dy & 0x07FFu);
            uint16_t dx_vis = (uint16_t) (dx & 0x00FFu);
            unsigned sx_linear = 0u;

            for (row = 0u; row < ny; ++row)
            {
                unsigned col = 0u;
                uint16_t cur_dx = dx_vis;

                while (col < nx)
                {
                    const uint8_t packed = fmsx_v9990_read_vram_linear(mode, src_address++);
                    const uint16_t sc = (uint16_t) (packed | ((uint16_t) packed << 8));
                    unsigned i;

                    for (i = 0u; (i < 2u) && (col < nx); ++i, ++col)
                    {
                        fmsx_v9990_cmd_p1_logical_psetx(
                            cur_dx,
                            (unsigned) dy_vis | dest_plane,
                            sx_linear,
                            sc,
                            g_fmsx_v9990.cmd.log,
                            g_fmsx_v9990.cmd.wm,
                            pitch);
                        cur_dx = (uint16_t) ((cur_dx + step_x) & 0x00FFu);
                        ++sx_linear;
                    }
                }
                dy_vis = (uint16_t) ((dy_vis + step_y) & 0x07FFu);
            }

            fmsx_v9990_cmd_store_dy(dy_vis);
            fmsx_v9990_cmd_store_sa(src_address);
            fmsx_v9990_cmd_ready();
            break;
        }

        if (mode == FMSX_V9990_CMD_MODE_BPP16)
        {
            for (row = 0u; row < ny; ++row)
            {
                unsigned col;
                uint16_t cur_dx = dx;
                for (col = 0u; col < nx; ++col)
                {
                    const uint16_t color =
                        (uint16_t) fmsx_v9990_read_vram_bx(src_address + 0u)
                        | ((uint16_t) fmsx_v9990_read_vram_bx(src_address + 1u) << 8);
                    src_address += 2u;
                    fmsx_v9990_cmd_pset_color(mode, cur_dx, dy, pitch, color, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
                    cur_dx = (uint16_t) (cur_dx + step_x);
                }
                dy = (uint16_t) (dy + step_y);
            }
        }
        else
        {
            const unsigned pixels_per_byte = fmsx_v9990_cmd_pixels_per_byte(mode);
            for (row = 0u; row < ny; ++row)
            {
                unsigned col = 0u;
                uint16_t cur_dx = dx;
                while (col < nx)
                {
                    const uint8_t packed = fmsx_v9990_read_vram_linear(mode, src_address++);
                    unsigned i;
                    for (i = 0u; (i < pixels_per_byte) && (col < nx); ++i, ++col)
                    {
                        const uint16_t shifted = fmsx_v9990_cmd_shift_value(mode, packed, i, cur_dx);
                        const uint16_t color = (uint16_t) (shifted | (shifted << 8));
                        fmsx_v9990_cmd_pset_color(mode, cur_dx, dy, pitch, color, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
                        cur_dx = (uint16_t) (cur_dx + step_x);
                    }
                }
                dy = (uint16_t) (dy + step_y);
            }
        }

        fmsx_v9990_cmd_store_dy(dy);
        fmsx_v9990_cmd_store_sa(src_address);
        fmsx_v9990_cmd_ready();
        break;
    }

    case 0x09u:
    {
        const unsigned nx = fmsx_v9990_cmd_get_wrapped_nx();
        const unsigned ny = fmsx_v9990_cmd_get_wrapped_ny();
        const uint16_t step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? (uint16_t) -1 : 1;
        const uint16_t step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? (uint16_t) -1 : 1;
        unsigned dst_address = fmsx_v9990_cmd_linear_dst_address();
        uint16_t sx = g_fmsx_v9990.cmd.sx;
        uint16_t sy = g_fmsx_v9990.cmd.sy;
        unsigned row;

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned src_plane = (g_fmsx_v9990.cmd.sx & 0x0200u) ? 0x0800u : 0u;
            uint16_t sy_vis = (uint16_t) (sy & 0x07FFu);
            uint16_t sx_vis = (uint16_t) (sx & 0x00FFu);
            unsigned dx_linear = 0u;
            unsigned cb = 0u;

            for (row = 0u; row < ny; ++row)
            {
                uint16_t cur_sx = sx_vis;
                unsigned col;

                for (col = 0u; col < nx; ++col)
                {
                    fmsx_v9990_cmd_p1_logical_pcopylx(
                        (dst_address + (cb >> 3)) & 0x7FFFFu,
                        dx_linear,
                        cur_sx,
                        (unsigned) sy_vis | src_plane,
                        g_fmsx_v9990.cmd.log,
                        g_fmsx_v9990.cmd.wm,
                        pitch);
                    cur_sx = (uint16_t) ((cur_sx + step_x) & 0x00FFu);
                    ++dx_linear;
                    cb += 4u;
                }

                sy_vis = (uint16_t) ((sy_vis + step_y) & 0x07FFu);
            }

            fmsx_v9990_cmd_store_sy(sy_vis);
            fmsx_v9990_cmd_ready();
            break;
        }

        if (mode == FMSX_V9990_CMD_MODE_BPP16)
        {
            for (row = 0u; row < ny; ++row)
            {
                unsigned col;
                uint16_t cur_sx = sx;
                for (col = 0u; col < nx; ++col)
                {
                    const uint16_t value = fmsx_v9990_cmd_point(mode, cur_sx, sy, pitch);
                    fmsx_v9990_write_vram_bx(dst_address++, (uint8_t) (value & 0xFFu));
                    fmsx_v9990_write_vram_bx(dst_address++, (uint8_t) (value >> 8));
                    cur_sx = (uint16_t) (cur_sx + step_x);
                }
                sy = (uint16_t) (sy + step_y);
            }
        }
        else
        {
            const unsigned pixels_per_byte = fmsx_v9990_cmd_pixels_per_byte(mode);
            for (row = 0u; row < ny; ++row)
            {
                unsigned col = 0u;
                uint16_t cur_sx = sx;
                while (col < nx)
                {
                    uint8_t packed = 0u;
                    unsigned i;
                    for (i = 0u; (i < pixels_per_byte) && (col < nx); ++i, ++col)
                    {
                        const uint16_t value = fmsx_v9990_cmd_point(mode, cur_sx, sy, pitch);
                        packed = (uint8_t) (packed | (fmsx_v9990_cmd_shift_value(mode, value, cur_sx, i) & fmsx_v9990_cmd_group_mask(mode, i)));
                        cur_sx = (uint16_t) (cur_sx + step_x);
                    }
                    fmsx_v9990_write_vram_linear(mode, dst_address++, packed);
                }
                sy = (uint16_t) (sy + step_y);
            }
        }

        fmsx_v9990_cmd_store_sy(sy);
        fmsx_v9990_cmd_ready();
        break;
    }

    case 0x0Au:
    {
        unsigned src_address = fmsx_v9990_cmd_linear_src_address();
        unsigned dst_address = fmsx_v9990_cmd_linear_dst_address();
        unsigned count = fmsx_v9990_cmd_linear_byte_count();

        if (mode == FMSX_V9990_CMD_MODE_BPP16)
        {
            const boolean transparent = (g_fmsx_v9990.cmd.log & 0x10u) ? TRUE : FALSE;
            src_address >>= 1;
            dst_address >>= 1;
            count >>= 1;
            if (count == 0u)
            {
                count = 0x40000u;
            }

            while (count-- != 0u)
            {
                const uint16_t src_color =
                    (uint16_t) fmsx_v9990_read_vram_direct(src_address + 0x00000u)
                    | ((uint16_t) fmsx_v9990_read_vram_direct(src_address + 0x40000u) << 8);
                const uint16_t dst_color =
                    (uint16_t) fmsx_v9990_read_vram_direct(dst_address + 0x00000u)
                    | ((uint16_t) fmsx_v9990_read_vram_direct(dst_address + 0x40000u) << 8);
                const uint16_t logic = fmsx_v9990_cmd_logic16(g_fmsx_v9990.cmd.log, src_color, dst_color, transparent);
                const uint16_t result = (uint16_t) ((dst_color & ~g_fmsx_v9990.cmd.wm) | (logic & g_fmsx_v9990.cmd.wm));

                g_fmsx_v9990.vram[(dst_address + 0x00000u) & (FMSX_V9990_VRAM_BYTES - 1u)] = (uint8_t) (result & 0xFFu);
                g_fmsx_v9990.vram[(dst_address + 0x40000u) & (FMSX_V9990_VRAM_BYTES - 1u)] = (uint8_t) (result >> 8);
                src_address = (src_address + 1u) & 0x3FFFFu;
                dst_address = (dst_address + 1u) & 0x3FFFFu;
            }
        }
        else
        {
            if (mode == FMSX_V9990_CMD_MODE_P1)
            {
                const int step = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? -1 : 1;

                while (count-- != 0u)
                {
                    fmsx_v9990_cmd_p1_logical_pcopyll(
                        dst_address & 0x7FFFFu,
                        src_address & 0x7FFFFu,
                        g_fmsx_v9990.cmd.log,
                        g_fmsx_v9990.cmd.wm);
                    src_address = (unsigned) ((src_address + step) & 0x7FFFFu);
                    dst_address = (unsigned) ((dst_address + step) & 0x7FFFFu);
                }

                fmsx_v9990_cmd_store_sa(src_address);
                fmsx_v9990_cmd_store_da(dst_address);
                fmsx_v9990_cmd_ready();
                break;
            }

            const boolean transparent = (g_fmsx_v9990.cmd.log & 0x10u) ? TRUE : FALSE;
            while (count-- != 0u)
            {
                const uint8_t src_color = fmsx_v9990_read_vram_linear(mode, src_address);
                const unsigned dst_direct =
                    (mode == FMSX_V9990_CMD_MODE_P1)
                        ? fmsx_v9990_transform_linear_p1(dst_address)
                        : fmsx_v9990_transform_bx(dst_address);
                const uint8_t dst_color = fmsx_v9990_read_vram_direct(dst_direct);
                const uint8_t mask = (dst_direct & 0x40000u) ? (uint8_t) (g_fmsx_v9990.cmd.wm >> 8) : (uint8_t) g_fmsx_v9990.cmd.wm;
                const uint8_t result = fmsx_v9990_cmd_logic_byte(mode, src_color, dst_color, mask, g_fmsx_v9990.cmd.log, transparent);

                g_fmsx_v9990.vram[dst_direct] = result;
                src_address = (src_address + 1u) & 0x7FFFFu;
                dst_address = (dst_address + 1u) & 0x7FFFFu;
            }
        }

        fmsx_v9990_cmd_store_sa(src_address);
        fmsx_v9990_cmd_store_da(dst_address);
        fmsx_v9990_cmd_ready();
        break;
    }

    case 0x0Bu:
    {
        const unsigned nx = fmsx_v9990_cmd_get_wrapped_nx();
        const unsigned ny = fmsx_v9990_cmd_get_wrapped_ny();
        const uint16_t step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? (uint16_t) -1 : 1;
        const uint16_t step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? (uint16_t) -1 : 1;
        uint16_t accumulator = (uint16_t) ((nx - 1u) >> 1);
        uint16_t dx = g_fmsx_v9990.cmd.dx;
        uint16_t dy = g_fmsx_v9990.cmd.dy;
        unsigned count = 0u;

        if ((g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_MAJ) == 0u)
        {
            for (;;)
            {
                fmsx_v9990_cmd_pset_color(mode, dx, dy, pitch, g_fmsx_v9990.cmd.fg, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
                dx = (uint16_t) (dx + step_x);
                if (accumulator < ny)
                {
                    accumulator = (uint16_t) (accumulator + nx);
                    dy = (uint16_t) (dy + step_y);
                }
                accumulator = (uint16_t) (accumulator - ny);
                if ((count++ == nx) || ((dx & image_width) != 0u))
                {
                    fmsx_v9990_cmd_store_dx(dx);
                    fmsx_v9990_cmd_store_dy(dy);
                    fmsx_v9990_cmd_ready();
                    break;
                }
            }
        }
        else
        {
            for (;;)
            {
                fmsx_v9990_cmd_pset_color(mode, dx, dy, pitch, g_fmsx_v9990.cmd.fg, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
                dy = (uint16_t) (dy + step_y);
                if (accumulator < ny)
                {
                    accumulator = (uint16_t) (accumulator + nx);
                    dx = (uint16_t) (dx + step_x);
                }
                accumulator = (uint16_t) (accumulator - ny);
                if ((count++ == nx) || ((dx & image_width) != 0u))
                {
                    fmsx_v9990_cmd_store_dx(dx);
                    fmsx_v9990_cmd_store_dy(dy);
                    fmsx_v9990_cmd_ready();
                    break;
                }
            }
        }
        break;
    }

    case 0x0Cu:
    {
        const uint16_t step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? (uint16_t) -1 : 1;
        const boolean neq = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_NEQ) ? TRUE : FALSE;
        uint16_t sx = g_fmsx_v9990.cmd.sx;

        for (;;)
        {
            boolean match;

            if (mode == FMSX_V9990_CMD_MODE_BPP16)
            {
                match = (fmsx_v9990_cmd_point(mode, sx, g_fmsx_v9990.cmd.sy, pitch) == g_fmsx_v9990.cmd.fg) ? TRUE : FALSE;
            }
            else
            {
                const unsigned addr = fmsx_v9990_cmd_address_of(mode, sx, g_fmsx_v9990.cmd.sy, pitch);
                const uint8_t value = fmsx_v9990_read_vram_direct(addr);
                const uint8_t src = (addr & 0x40000u) ? (uint8_t) (g_fmsx_v9990.cmd.fg >> 8) : (uint8_t) g_fmsx_v9990.cmd.fg;
                match = (fmsx_v9990_cmd_pixel_value(mode, value, sx) == fmsx_v9990_cmd_pixel_value(mode, src, sx)) ? TRUE : FALSE;
            }

            if ((match ^ neq) != 0)
            {
                g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_BD;
                g_fmsx_v9990.cmd.border_x = sx;
                fmsx_v9990_cmd_ready();
                break;
            }

            sx = (uint16_t) (sx + step_x);
            if ((sx & image_width) != 0u)
            {
                g_fmsx_v9990.cmd.status &= (uint8_t) ~FMSX_V9990_CMD_STATUS_BD;
                g_fmsx_v9990.cmd.border_x = sx;
                fmsx_v9990_cmd_ready();
                break;
            }
        }
        break;
    }

    case 0x0Du:
    {
        const uint16_t value = fmsx_v9990_cmd_point(mode, g_fmsx_v9990.cmd.sx, g_fmsx_v9990.cmd.sy, pitch);
        g_fmsx_v9990.cmd.data = (uint8_t) (value & 0xFFu);
        g_fmsx_v9990.cmd.partial = (uint8_t) (value >> 8);
        g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
        if (mode == FMSX_V9990_CMD_MODE_BPP16)
        {
            g_fmsx_v9990.cmd.flags &= (uint8_t) ~FMSX_V9990_CMD_FLAG_END_AFTER_READ;
            g_fmsx_v9990.cmd.flags |= FMSX_V9990_CMD_FLAG_PARTIAL_VALID;
        }
        else
        {
            g_fmsx_v9990.cmd.flags = FMSX_V9990_CMD_FLAG_END_AFTER_READ;
        }
        break;
    }

    case 0x0Eu:
        fmsx_v9990_cmd_pset_color(mode, g_fmsx_v9990.cmd.dx, g_fmsx_v9990.cmd.dy, pitch, g_fmsx_v9990.cmd.fg, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
        fmsx_v9990_cmd_apply_advn();
        fmsx_v9990_cmd_ready();
        break;

    case 0x0Fu:
    {
        fmsx_v9990_cmd_apply_advn();
        fmsx_v9990_cmd_ready();
        break;
    }

    default:
        fmsx_v9990_cmd_ready();
        break;
    }
}

static void fmsx_v9990_cmd_set_reg(uint8_t reg, uint8_t value)
{
    g_fmsx_v9990.regs[reg] = value;

    switch (reg)
    {
    case FMSX_V9990_CMD_REG_SX0: g_fmsx_v9990.cmd.sx = (uint16_t) ((g_fmsx_v9990.cmd.sx & 0x0700u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_SX1: value &= 0x07u; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.sx = (uint16_t) ((g_fmsx_v9990.cmd.sx & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_SY0: g_fmsx_v9990.cmd.sy = (uint16_t) ((g_fmsx_v9990.cmd.sy & 0x0F00u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_SY1: value &= 0x0Fu; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.sy = (uint16_t) ((g_fmsx_v9990.cmd.sy & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_DX0: g_fmsx_v9990.cmd.dx = (uint16_t) ((g_fmsx_v9990.cmd.dx & 0x0700u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_DX1: value &= 0x07u; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.dx = (uint16_t) ((g_fmsx_v9990.cmd.dx & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_DY0: g_fmsx_v9990.cmd.dy = (uint16_t) ((g_fmsx_v9990.cmd.dy & 0x0F00u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_DY1: value &= 0x0Fu; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.dy = (uint16_t) ((g_fmsx_v9990.cmd.dy & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_NX0: g_fmsx_v9990.cmd.nx = (uint16_t) ((g_fmsx_v9990.cmd.nx & 0x0F00u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_NX1: value &= 0x0Fu; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.nx = (uint16_t) ((g_fmsx_v9990.cmd.nx & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_NY0: g_fmsx_v9990.cmd.ny = (uint16_t) ((g_fmsx_v9990.cmd.ny & 0x0F00u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_NY1: value &= 0x0Fu; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.ny = (uint16_t) ((g_fmsx_v9990.cmd.ny & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_ARG: value &= 0x0Fu; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.arg = value; break;
    case FMSX_V9990_CMD_REG_LOGOP: value &= 0x1Fu; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.log = value; break;
    case FMSX_V9990_CMD_REG_WM0: g_fmsx_v9990.cmd.wm = (uint16_t) ((g_fmsx_v9990.cmd.wm & 0xFF00u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_WM1: g_fmsx_v9990.cmd.wm = (uint16_t) ((g_fmsx_v9990.cmd.wm & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_FC0: g_fmsx_v9990.cmd.fg = (uint16_t) ((g_fmsx_v9990.cmd.fg & 0xFF00u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_FC1: g_fmsx_v9990.cmd.fg = (uint16_t) ((g_fmsx_v9990.cmd.fg & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_BC0: g_fmsx_v9990.cmd.bg = (uint16_t) ((g_fmsx_v9990.cmd.bg & 0xFF00u) | ((uint16_t) value << 0)); break;
    case FMSX_V9990_CMD_REG_BC1: g_fmsx_v9990.cmd.bg = (uint16_t) ((g_fmsx_v9990.cmd.bg & 0x00FFu) | ((uint16_t) value << 8)); break;
    case FMSX_V9990_CMD_REG_OPCODE:
        g_fmsx_v9990.cmd.opcode = value;
        fmsx_v9990_cmd_execute();
        break;
    default:
        break;
    }
}

static uint8_t fmsx_v9990_cmd_get_data(void)
{
    uint8_t value = 0xFFu;
    const uint8_t opcode = (uint8_t) (g_fmsx_v9990.cmd.opcode >> 4);

    if ((g_fmsx_v9990.cmd.status & FMSX_V9990_CMD_STATUS_TR) == 0u)
    {
        return 0xFFu;
    }

    value = g_fmsx_v9990.cmd.data;
    g_fmsx_v9990.cmd.status &= (uint8_t) ~FMSX_V9990_CMD_STATUS_TR;
    if ((g_fmsx_v9990.cmd.flags & FMSX_V9990_CMD_FLAG_PARTIAL_VALID) != 0u)
    {
        g_fmsx_v9990.cmd.flags &= (uint8_t) ~FMSX_V9990_CMD_FLAG_PARTIAL_VALID;
        g_fmsx_v9990.cmd.data = g_fmsx_v9990.cmd.partial;
        if (opcode != 0x03u)
        {
            g_fmsx_v9990.cmd.flags |= FMSX_V9990_CMD_FLAG_END_AFTER_READ;
        }
        g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
    }
    else if ((g_fmsx_v9990.cmd.flags & FMSX_V9990_CMD_FLAG_END_AFTER_READ) != 0u)
    {
        g_fmsx_v9990.cmd.flags &= (uint8_t) ~FMSX_V9990_CMD_FLAG_END_AFTER_READ;
        fmsx_v9990_cmd_ready();
    }
    else if (opcode == 0x03u)
    {
        const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();
        const unsigned pitch = fmsx_v9990_cmd_latched_pitch();
        fmsx_v9990_cmd_fill_lmcm_read(mode, pitch);
    }

    return value;
}

static unsigned fmsx_v9990_get_vram_addr(uint8_t base)
{
    const unsigned addr =
        (unsigned) g_fmsx_v9990.regs[base + 0u]
        | ((unsigned) g_fmsx_v9990.regs[base + 1u] << 8)
        | ((unsigned) (g_fmsx_v9990.regs[base + 2u] & 0x07u) << 16);
    return addr & (FMSX_V9990_VRAM_BYTES - 1u);
}

static void fmsx_v9990_set_vram_addr(uint8_t base, unsigned addr)
{
    const unsigned masked = addr & (FMSX_V9990_VRAM_BYTES - 1u);
    g_fmsx_v9990.regs[base + 0u] = (uint8_t) (masked & 0xFFu);
    g_fmsx_v9990.regs[base + 1u] = (uint8_t) ((masked >> 8) & 0xFFu);
    g_fmsx_v9990.regs[base + 2u] = (uint8_t) ((g_fmsx_v9990.regs[base + 2u] & 0xF8u) | ((masked >> 16) & 0x07u));
}

static void fmsx_v9990_reset_registers_keep_memory(void)
{
    memset(g_fmsx_v9990.regs, 0, sizeof(g_fmsx_v9990.regs));
    g_fmsx_v9990.reg_select = 0xFFu;
    g_fmsx_v9990.status = 0u;
    g_fmsx_v9990.pending_irqs = 0u;
    g_fmsx_v9990.system_control = 0u;
    g_fmsx_v9990.command_data = 0u;
    g_fmsx_v9990.vram_read_buffer = 0u;
    g_fmsx_v9990.vram_write_ptr = 0u;
    g_fmsx_v9990.vram_read_ptr = 0u;
    /*
     * Start the synthetic raster in VSCAN/HBLANK.
     *
     * The current guest bring-up code polls STATUS before it ever enables the
     * V9990 display. If we start inside the active area, the polling loop only
     * sees HR toggling (0x00/0x20) and can stall before CONTROL reaches 0xC2.
     * Starting at UC tick 0 matches the frame start / VSCAN side of the
     * openMSX timeline closely enough for this baremetal baseline and restores
     * the expected VR=1 observations (0x40/0x60 family) during early polling.
     */
    g_fmsx_v9990.status_uc_ticks = 0u;
    g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
    g_fmsx_v9990.status_cpu_cycle_frac = 0u;
    fmsx_v9990_cmd_reset();
    fmsx_v9990_update_host_irq();
}

static void fmsx_v9990_init_palette_defaults(void)
{
    unsigned i;

    for (i = 0u; i < 64u; ++i)
    {
        g_fmsx_v9990.palette[4u * i + 0u] = 0x9Fu;
        g_fmsx_v9990.palette[4u * i + 1u] = 0x1Fu;
        g_fmsx_v9990.palette[4u * i + 2u] = 0x1Fu;
        g_fmsx_v9990.palette[4u * i + 3u] = 0x00u;
    }
}

static void fmsx_v9990_palette_advance(void)
{
    uint8_t *const ptr = &g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_POINTER];

    switch (*ptr & 3u)
    {
    case 0u:
    case 1u:
        *ptr = (uint8_t) (*ptr + 1u);
        break;
    case 2u:
        *ptr = (uint8_t) (*ptr + 2u);
        break;
    default:
        *ptr = (uint8_t) (*ptr - 3u);
        break;
    }
}

static unsigned fmsx_v9990_transform_bx(unsigned address)
{
    return (((address & 1u) << 18) | ((address & 0x7FFFEu) >> 1)) & (FMSX_V9990_VRAM_BYTES - 1u);
}

static unsigned fmsx_v9990_transform_p1(unsigned address)
{
    return address & (FMSX_V9990_VRAM_BYTES - 1u);
}

static unsigned fmsx_v9990_transform_p2(unsigned address)
{
    address &= 0x7FFFFu;
    if (address < 0x78000u)
    {
        return fmsx_v9990_transform_bx(address);
    }
    if (address < 0x7C000u)
    {
        return address - 0x3C000u;
    }
    return address;
}

static TFmsxV9990DisplayMode fmsx_v9990_get_display_mode(void)
{
    const uint8_t screen_mode_0 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0];

    switch (screen_mode_0 & 0xC0u)
    {
    case 0x00u:
        return FMSX_V9990_MODE_P1;
    case 0x40u:
        return FMSX_V9990_MODE_P2;
    case 0x80u:
        if (g_fmsx_v9990.status & 0x04u)
        {
            switch (screen_mode_0 & 0x30u)
            {
            case 0x00u: return FMSX_V9990_MODE_B0;
            case 0x10u: return FMSX_V9990_MODE_B2;
            case 0x20u: return FMSX_V9990_MODE_B4;
            default: break;
            }
        }
        else
        {
            switch (screen_mode_0 & 0x30u)
            {
            case 0x00u: return FMSX_V9990_MODE_B1;
            case 0x10u: return FMSX_V9990_MODE_B3;
            case 0x20u: return FMSX_V9990_MODE_B7;
            default: break;
            }
        }
        break;
    default:
        break;
    }

    return FMSX_V9990_MODE_P1;
}

static unsigned fmsx_v9990_map_vram_address(unsigned address)
{
    switch (fmsx_v9990_get_display_mode())
    {
    case FMSX_V9990_MODE_P1:
        return fmsx_v9990_transform_p1(address);
    case FMSX_V9990_MODE_P2:
        return fmsx_v9990_transform_p2(address);
    default:
        return fmsx_v9990_transform_bx(address);
    }
}

static uint8_t fmsx_v9990_read_vram_direct(unsigned address)
{
    return g_fmsx_v9990.vram[address & (FMSX_V9990_VRAM_BYTES - 1u)];
}

static uint8_t fmsx_v9990_read_vram_p1(unsigned address)
{
    return fmsx_v9990_read_vram_direct(fmsx_v9990_transform_p1(address));
}

static uint8_t fmsx_v9990_read_vram_p2(unsigned address)
{
    return fmsx_v9990_read_vram_direct(fmsx_v9990_transform_p2(address));
}

static uint8_t fmsx_v9990_read_vram_bx(unsigned address)
{
    return fmsx_v9990_read_vram_direct(fmsx_v9990_transform_bx(address));
}

static unsigned fmsx_v9990_transform_linear_p1(unsigned address)
{
    return ((address >> 1) | ((address & 1u) << 18)) & (FMSX_V9990_VRAM_BYTES - 1u);
}

static uint8_t fmsx_v9990_read_vram_linear(TFmsxV9990CommandMode mode, unsigned address)
{
    if (mode == FMSX_V9990_CMD_MODE_P1)
    {
        return fmsx_v9990_read_vram_direct(fmsx_v9990_transform_linear_p1(address));
    }
    return fmsx_v9990_read_vram_bx(address);
}

static uint8_t fmsx_v9990_read_vram_cpu(unsigned address)
{
    return fmsx_v9990_read_vram_direct(fmsx_v9990_map_vram_address(address));
}

static void fmsx_v9990_write_vram_cpu(unsigned address, uint8_t value)
{
    g_fmsx_v9990.vram[fmsx_v9990_map_vram_address(address)] = value;
}

static uint16_t fmsx_v9990_rgb555_to_rgb565(uint16_t value)
{
    const uint16_t r = (uint16_t) (value & 0x1Fu);
    const uint16_t g = (uint16_t) ((value >> 5) & 0x1Fu);
    const uint16_t b = (uint16_t) ((value >> 10) & 0x1Fu);
    const uint16_t g6 = (uint16_t) ((g << 1) | (g >> 4));
    return (uint16_t) ((r << 11) | (g6 << 5) | b);
}

static uint16_t fmsx_v9990_rgb332_to_rgb565(uint8_t value)
{
    const uint16_t r = (uint16_t) ((value >> 5) & 0x07u);
    const uint16_t g = (uint16_t) ((value >> 2) & 0x07u);
    const uint16_t b = (uint16_t) (value & 0x03u);
    const uint16_t r5 = (uint16_t) ((r << 2) | (r >> 1));
    const uint16_t g6 = (uint16_t) ((g << 3) | g);
    const uint16_t b5 = (uint16_t) ((b << 3) | (b << 1) | (b >> 1));
    return (uint16_t) ((r5 << 11) | (g6 << 5) | b5);
}

static uint16_t fmsx_v9990_palette_color(uint8_t index)
{
    const unsigned base = ((unsigned) index & 0x3Fu) << 2;
    const uint16_t r = (uint16_t) (g_fmsx_v9990.palette[base + 0u] & 0x1Fu);
    const uint16_t g = (uint16_t) (g_fmsx_v9990.palette[base + 1u] & 0x1Fu);
    const uint16_t b = (uint16_t) (g_fmsx_v9990.palette[base + 2u] & 0x1Fu);
    const uint16_t g6 = (uint16_t) ((g << 1) | (g >> 4));
    return (uint16_t) ((r << 11) | (g6 << 5) | b);
}

static uint16_t fmsx_v9990_safe_index_color(uint8_t index, uint8_t mode_kind)
{
    unsigned max_value = 63u;
    const unsigned value = (unsigned) index;
    unsigned scaled;
    const uint16_t r5 = 0u;
    uint16_t g6;
    uint16_t b5;

    switch (mode_kind)
    {
    case 1u: max_value = 3u;  break;
    case 2u: max_value = 15u; break;
    case 3u: max_value = 63u; break;
    default: max_value = 63u; break;
    }

    scaled = (max_value == 0u) ? 0u : ((value & max_value) * 255u) / max_value;
    g6 = (uint16_t) (scaled >> 2);
    b5 = (uint16_t) (scaled >> 3);
    return (uint16_t) ((r5 << 11) | (g6 << 5) | b5);
}

static boolean fmsx_v9990_is_bx_hires(void)
{
    switch (fmsx_v9990_get_display_mode())
    {
    case FMSX_V9990_MODE_B3:
    case FMSX_V9990_MODE_B7:
        return TRUE;
    default:
        return FALSE;
    }
}

static uint8_t fmsx_v9990_palette_index_bp2(unsigned src_x, uint8_t index)
{
    const unsigned offset = fmsx_v9990_get_palette_offset();

    if (fmsx_v9990_is_bx_hires())
    {
        const unsigned base = (offset & 0x07u) << 2;
        return (uint8_t) (base + ((src_x & 1u) ? 32u : 0u) + (index & 0x03u));
    }

    return (uint8_t) ((offset << 2) + (index & 0x03u));
}

static uint8_t fmsx_v9990_palette_index_bp4(unsigned src_x, uint8_t index)
{
    const unsigned offset = fmsx_v9990_get_palette_offset();

    if (fmsx_v9990_is_bx_hires())
    {
        const unsigned base = (offset & 0x04u) << 2;
        return (uint8_t) (base + ((src_x & 1u) ? 32u : 0u) + (index & 0x0Fu));
    }

    return (uint8_t) (((offset & 0x0Cu) << 2) + (index & 0x0Fu));
}

static uint16_t fmsx_v9990_decode_bd8_pixel(uint8_t value)
{
    /*
     * BD8 uses a fixed 256-entry subspace of the 15-bit palette.
     * This matches the openMSX construction:
     *   idx32768 = ((value & 0xE0) << 7) | ((value & 0x1C) << 5) | ((value & 0x03) << 3)
     */
    const uint16_t value15 = (uint16_t) (((value & 0xE0u) << 7)
                                       | ((value & 0x1Cu) << 5)
                                       | ((value & 0x03u) << 3));
    return fmsx_v9990_rgb555_to_rgb565(value15);
}

static unsigned fmsx_v9990_get_palette_offset(void)
{
    return g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL] & 0x0Fu;
}

static uint16_t fmsx_v9990_backdrop_color(void)
{
    return fmsx_v9990_palette_color(g_fmsx_v9990.regs[FMSX_V9990_REG_BACK_DROP_COLOR]);
}

static unsigned fmsx_v9990_get_scroll_ax(void)
{
    return (unsigned) g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_AX0]
        + (8u * (unsigned) g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_AX1]);
}

static unsigned fmsx_v9990_get_scroll_ay(void)
{
    /*
     * openMSX/WebMSX latch AY1 at frame start. Only AY1[4:0] contribute to
     * scroll Y; AY1[7:6] are the roll mask selector.
     */
    return (unsigned) g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_AY0]
        + (256u * ((unsigned) g_fmsx_v9990.scroll_ay_high_frame & 0x1Fu));
}

static unsigned fmsx_v9990_get_scroll_bx(void)
{
    return (unsigned) g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BX0]
        + (8u * (unsigned) g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BX1]);
}

static unsigned fmsx_v9990_get_scroll_by(void)
{
    /*
     * In P1, BY1 bit 0 is the only high scroll bit. BY1[7:6] are plane
     * enables and must not feed the current-frame vertical scroll.
     */
    return (unsigned) g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY0]
        + (256u * ((unsigned) g_fmsx_v9990.scroll_by_high_frame & 0x01u));
}

static unsigned fmsx_v9990_get_roll_mask(unsigned max_mask)
{
    const unsigned t = (unsigned) (g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_AY1] >> 6);
    switch (t)
    {
    case 1u: return 0x00FFu;
    case 2u: return 0x01FFu;
    case 3u: return 0x00FFu;
    default: return max_mask;
    }
}

static unsigned fmsx_v9990_get_roll_mask_from_ay1(uint8_t ay1, unsigned max_mask)
{
    const unsigned t = (unsigned) (ay1 >> 6);
    switch (t)
    {
    case 1u: return 0x00FFu;
    case 2u: return 0x01FFu;
    case 3u: return 0x00FFu;
    default: return max_mask;
    }
}

static unsigned fmsx_v9990_get_priority_control_x(void)
{
    const unsigned t = g_fmsx_v9990.regs[FMSX_V9990_REG_PRIORITY_CONTROL] & 0x03u;
    return (t == 0u) ? 256u : (t << 6);
}

static unsigned fmsx_v9990_get_priority_control_y(void)
{
    const unsigned t = g_fmsx_v9990.regs[FMSX_V9990_REG_PRIORITY_CONTROL] & 0x0Cu;
    return (t == 0u) ? 256u : (t << 4);
}

static unsigned fmsx_v9990_image_width(void)
{
    switch (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0] & 0xC0u)
    {
    case 0x00u:
        /*
         * Command-engine pitch must follow the chip image width used by the
         * V9990 core itself. openMSX returns 256 for P1 and 512 for P2 here.
         * Using 512/1024 in this helper over-expanded the internal pitch and
         * matched the remaining "3/4 drawn + 1/4 missing" symptom.
         */
        return 256u;
    case 0x40u:
        return 512u;
    case 0x80u:
    default:
        return 256u << ((g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0] & 0x0Cu) >> 2);
    }
}

static unsigned fmsx_v9990_get_line_width(void)
{
    switch (fmsx_v9990_get_display_mode())
    {
    case FMSX_V9990_MODE_B0: return 213u;
    case FMSX_V9990_MODE_P1:
    case FMSX_V9990_MODE_B1: return 320u;
    case FMSX_V9990_MODE_B2: return 426u;
    case FMSX_V9990_MODE_P2:
    case FMSX_V9990_MODE_B3: return 640u;
    case FMSX_V9990_MODE_B4: return 853u;
    case FMSX_V9990_MODE_B7: return 1280u;
    default:                 return 256u;
    }
}

static unsigned fmsx_v9990_get_active_display_width(void)
{
    switch (fmsx_v9990_get_display_mode())
    {
    case FMSX_V9990_MODE_P1:
    case FMSX_V9990_MODE_B1: return 256u;
    case FMSX_V9990_MODE_P2:
    case FMSX_V9990_MODE_B3: return 512u;
    case FMSX_V9990_MODE_B0: return 192u;
    case FMSX_V9990_MODE_B2: return 384u;
    case FMSX_V9990_MODE_B4: return 768u;
    case FMSX_V9990_MODE_B7: return 1024u;
    default:                 return fmsx_v9990_image_width();
    }
}

static unsigned fmsx_v9990_frame_height(void)
{
    return 212u;
}

static void fmsx_v9990_reset_scroll_line_state(void)
{
    unsigned y;
    g_fmsx_v9990.scroll_ay_high_frame = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_AY1];
    g_fmsx_v9990.scroll_by_high_frame = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1];
    g_fmsx_v9990.display_enabled_frame =
        ((g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL] & 0x80u) != 0u) ? TRUE : FALSE;

    const unsigned scroll_ay = fmsx_v9990_get_scroll_ay();
    const unsigned scroll_by = fmsx_v9990_get_scroll_by();
    const unsigned scroll_ax = fmsx_v9990_get_scroll_ax();
    const unsigned scroll_bx = fmsx_v9990_get_scroll_bx();
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t priority = g_fmsx_v9990.regs[FMSX_V9990_REG_PRIORITY_CONTROL];
    const uint8_t palette_control = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL];
    const uint8_t backdrop_color = g_fmsx_v9990.regs[FMSX_V9990_REG_BACK_DROP_COLOR];
    const uint8_t ay1 = g_fmsx_v9990.scroll_ay_high_frame;
    const uint8_t by1 = (uint8_t) (g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1] & 0xC0u);

    for (y = 0u; y < height; ++y)
    {
        g_fmsx_v9990.scroll_ay_lines[y] = (uint16_t) scroll_ay;
        g_fmsx_v9990.scroll_by_lines[y] = (uint16_t) scroll_by;
        g_fmsx_v9990.scroll_ax_lines[y] = (uint16_t) scroll_ax;
        g_fmsx_v9990.scroll_bx_lines[y] = (uint16_t) scroll_bx;
        g_fmsx_v9990.display_ya_lines[y] = (uint16_t) y;
        g_fmsx_v9990.display_yb_lines[y] = (uint16_t) y;
        g_fmsx_v9990.priority_control_lines[y] = priority;
        g_fmsx_v9990.palette_control_lines[y] = palette_control;
        g_fmsx_v9990.backdrop_color_lines[y] = backdrop_color;
        g_fmsx_v9990.control_lines[y] = g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL];
        g_fmsx_v9990.screen_mode_0_lines[y] = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0];
        g_fmsx_v9990.screen_mode_1_lines[y] = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1];
        g_fmsx_v9990.scroll_ay1_lines[y] = ay1;
        g_fmsx_v9990.scroll_by1_lines[y] = by1;
    }
}

static boolean fmsx_v9990_display_enabled_current_frame(void)
{
    return g_fmsx_v9990.display_enabled_frame ? TRUE : FALSE;
}

static void fmsx_v9990_apply_line_state_from(unsigned split)
{
    unsigned y;
    const unsigned height = fmsx_v9990_frame_height();
    const uint16_t scroll_ay = (uint16_t) fmsx_v9990_get_scroll_ay();
    const uint16_t scroll_by = (uint16_t) fmsx_v9990_get_scroll_by();
    const uint16_t scroll_ax = (uint16_t) fmsx_v9990_get_scroll_ax();
    const uint16_t scroll_bx = (uint16_t) fmsx_v9990_get_scroll_bx();
    const uint8_t priority = g_fmsx_v9990.regs[FMSX_V9990_REG_PRIORITY_CONTROL];
    const uint8_t palette_control = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL];
    const uint8_t backdrop_color = g_fmsx_v9990.regs[FMSX_V9990_REG_BACK_DROP_COLOR];
    const uint8_t control = g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL];
    const uint8_t sm0 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0];
    const uint8_t sm1 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1];
    const uint8_t ay1 = g_fmsx_v9990.scroll_ay_high_frame;
    const uint8_t by1 = (uint8_t) (g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1] & 0xC0u);

    if (split >= height)
    {
        return;
    }

    for (y = split; y < height; ++y)
    {
        g_fmsx_v9990.scroll_ay_lines[y] = scroll_ay;
        g_fmsx_v9990.scroll_by_lines[y] = scroll_by;
        g_fmsx_v9990.scroll_ax_lines[y] = scroll_ax;
        g_fmsx_v9990.scroll_bx_lines[y] = scroll_bx;
        g_fmsx_v9990.display_ya_lines[y] = (uint16_t) (y - split);
        g_fmsx_v9990.display_yb_lines[y] = (uint16_t) (y - split);
        g_fmsx_v9990.priority_control_lines[y] = priority;
        g_fmsx_v9990.palette_control_lines[y] = palette_control;
        g_fmsx_v9990.backdrop_color_lines[y] = backdrop_color;
        g_fmsx_v9990.control_lines[y] = control;
        g_fmsx_v9990.screen_mode_0_lines[y] = sm0;
        g_fmsx_v9990.screen_mode_1_lines[y] = sm1;
        g_fmsx_v9990.scroll_ay1_lines[y] = ay1;
        g_fmsx_v9990.scroll_by1_lines[y] = by1;
    }
}

static unsigned fmsx_v9990_get_active_display_line(void)
{
    const unsigned top = fmsx_v9990_get_top_border_lines();
    const unsigned bottom = fmsx_v9990_get_bottom_border_lines();
    const unsigned height = fmsx_v9990_frame_height();
    unsigned y;

    /*
     * Keep bootstrap/polling on the synthetic V9990 clock, but use the live
     * fMSX scanline while display is active.
     *
     * Pure synthetic timing fixed some STATUS/IRQ drift during bootstrap, but
     * it regressed live gameplay: raster writes started landing on unstable
     * split positions and brought back the vertical rolling artifact. The
     * active display path needs the same line source that the core is actually
     * rendering right now.
     */
    if (fmsx_v9990_display_enabled_current_frame() && (ScanLine >= 0))
    {
        y = (unsigned) ScanLine;
    }
    else
    {
        fmsx_v9990_sync_status_to_cpu();
        y = g_fmsx_v9990.status_uc_ticks / FMSX_V9990_UC_TICKS_PER_LINE;
    }

    if (y < top)
    {
        return 0u;
    }
    if (y >= bottom)
    {
        return height - 1u;
    }
    return ((y - top) < height) ? (y - top) : (height - 1u);
}

static unsigned fmsx_v9990_get_active_display_x(TFmsxV9990DisplayMode mode)
{
    const unsigned left = fmsx_v9990_get_left_border_ticks();
    const unsigned right = fmsx_v9990_get_right_border_ticks();
    const unsigned width = fmsx_v9990_get_active_display_width();
    unsigned ticks;
    unsigned x_ticks;
    unsigned x;

    fmsx_v9990_sync_status_to_cpu();
    ticks = g_fmsx_v9990.status_uc_ticks % FMSX_V9990_UC_TICKS_PER_LINE;

    if (ticks <= left)
    {
        return 0u;
    }
    if (ticks >= right)
    {
        return width;
    }

    x_ticks = ticks - left;
    switch (mode)
    {
    case FMSX_V9990_MODE_P1:
    case FMSX_V9990_MODE_B1:
        x = x_ticks / 8u;
        break;
    case FMSX_V9990_MODE_P2:
    case FMSX_V9990_MODE_B3:
        x = x_ticks / 4u;
        break;
    case FMSX_V9990_MODE_B0:
        x = x_ticks / 12u;
        break;
    case FMSX_V9990_MODE_B2:
        x = x_ticks / 6u;
        break;
    case FMSX_V9990_MODE_B4:
        x = x_ticks / 3u;
        break;
    case FMSX_V9990_MODE_B7:
        x = x_ticks / 2u;
        break;
    default:
        x = 0u;
        break;
    }

    return (x < width) ? x : width;
}

static void fmsx_v9990_record_raster_event(TFmsxV9990RasterEventKind kind, uint16_t value)
{
    const unsigned count = g_fmsx_v9990.raster_event_count;

    if (count >= (sizeof(g_fmsx_v9990.raster_events) / sizeof(g_fmsx_v9990.raster_events[0])))
    {
        return;
    }

    g_fmsx_v9990.raster_events[count].y = (uint16_t) fmsx_v9990_get_active_display_line();
    g_fmsx_v9990.raster_events[count].x = (uint16_t) fmsx_v9990_get_active_display_x(fmsx_v9990_get_display_mode());
    g_fmsx_v9990.raster_events[count].value = value;
    g_fmsx_v9990.raster_events[count].kind = (uint8_t) kind;
    g_fmsx_v9990.raster_events[count].reserved = 0u;
    g_fmsx_v9990.raster_event_count = count + 1u;
}

static void fmsx_v9990_note_scroll_ay_low_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint16_t scroll_ay = (uint16_t) fmsx_v9990_get_scroll_ay();

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_AY0, scroll_ay);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_ay_lines[y] = scroll_ay;
        g_fmsx_v9990.display_ya_lines[y] = (uint16_t) (y - split);
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y ay", split, scroll_ay);
}

static void fmsx_v9990_note_scroll_by_low_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint16_t scroll_by = (uint16_t) fmsx_v9990_get_scroll_by();

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_BY0, scroll_by);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_by_lines[y] = scroll_by;
        g_fmsx_v9990.display_yb_lines[y] = (uint16_t) (y - split);
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y by", split, scroll_by);
}

static void fmsx_v9990_note_scroll_ay_high_write(void)
{
    /*
     * openMSX/WebMSX do not apply AY1 high scroll / roll-mask changes to the
     * current active frame. They are latched on frame start. Keep the new raw
     * register value for the next frame only.
     */
}

static void fmsx_v9990_note_scroll_by_high_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t plane_control = (uint8_t) (g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1] & 0xC0u);

    for (y = split; y < height; ++y)
    {
        /*
         * In WebMSX, BY1 low scroll bit is only committed at vertical blank,
         * but *SDA/*SDB are immediate. Keep only the plane-enable bits live
         * for the remainder of the current frame.
         */
        g_fmsx_v9990.scroll_by1_lines[y] = plane_control;
    }
}

static void fmsx_v9990_note_scroll_ax_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint16_t scroll_ax = (uint16_t) fmsx_v9990_get_scroll_ax();

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_AX, scroll_ax);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_ax_lines[y] = scroll_ax;
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y ax", split, scroll_ax);
}

static void fmsx_v9990_note_scroll_bx_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint16_t scroll_bx = (uint16_t) fmsx_v9990_get_scroll_bx();

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_BX, scroll_bx);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_bx_lines[y] = scroll_bx;
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y bx", split, scroll_bx);
}

static void fmsx_v9990_note_priority_control_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t priority = g_fmsx_v9990.regs[FMSX_V9990_REG_PRIORITY_CONTROL];

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_PRIORITY, priority);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.priority_control_lines[y] = priority;
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y pr", split, priority);
}

static void fmsx_v9990_note_palette_control_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t palette_control = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL];

    for (y = split; y < height; ++y)
    {
        g_fmsx_v9990.palette_control_lines[y] = palette_control;
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y pc", split, palette_control);
}

static void fmsx_v9990_note_backdrop_color_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t backdrop_color = g_fmsx_v9990.regs[FMSX_V9990_REG_BACK_DROP_COLOR];

    for (y = split; y < height; ++y)
    {
        g_fmsx_v9990.backdrop_color_lines[y] = backdrop_color;
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y bd", split, backdrop_color);
}

static boolean fmsx_v9990_is_even_odd_enabled(void)
{
    return (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1] & 0x04u) ? TRUE : FALSE;
}

static boolean fmsx_v9990_sprites_enabled(void)
{
    return (g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL] & 0x40u) ? FALSE : TRUE;
}

static unsigned fmsx_v9990_bytes_per_line(unsigned image_width, uint8_t *mode_kind)
{
    const uint8_t sm0 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0];
    const uint8_t pal_ctrl = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL];

    if ((sm0 & 0xC0u) != 0x80u)
    {
        *mode_kind = 0u;
        return 0u;
    }

    switch (sm0 & 0x03u)
    {
    case 0u:
        *mode_kind = 1u; /* BP2 */
        return image_width >> 2;
    case 1u:
        *mode_kind = 2u; /* BP4 */
        return image_width >> 1;
    case 2u:
        if ((pal_ctrl & 0xC0u) == 0x00u)
        {
            *mode_kind = 3u; /* BP6 */
        }
        else
        {
            *mode_kind = 4u; /* direct 8-bit fallback */
        }
        return image_width;
    case 3u:
        *mode_kind = 5u; /* direct 16-bit fallback */
        return image_width << 1;
    default:
        *mode_kind = 0u;
        return 0u;
    }
}

static uint16_t fmsx_v9990_decode_bx_pixel(unsigned src_x, unsigned src_y, unsigned image_width, unsigned bytes_per_line, uint8_t mode_kind)
{
    const unsigned line_base = (src_y * bytes_per_line) % FMSX_V9990_VRAM_BYTES;

    switch (mode_kind)
    {
    case 1u:
    {
        const unsigned addr = line_base + (src_x >> 2);
        const uint8_t shift = (uint8_t) (6u - ((src_x & 3u) << 1));
        const uint8_t index = (uint8_t) ((fmsx_v9990_read_vram_bx(addr) >> shift) & 0x03u);
        return fmsx_v9990_palette_color(fmsx_v9990_palette_index_bp2(src_x, index));
    }
    case 2u:
    {
        const unsigned addr = line_base + (src_x >> 1);
        const uint8_t value = fmsx_v9990_read_vram_bx(addr);
        const uint8_t index = (src_x & 1u) ? (value & 0x0Fu) : (value >> 4);
        return fmsx_v9990_palette_color(fmsx_v9990_palette_index_bp4(src_x, index));
    }
    case 3u:
    {
        const unsigned addr = line_base + src_x;
        return fmsx_v9990_palette_color((uint8_t) (fmsx_v9990_read_vram_bx(addr) & 0x3Fu));
    }
    case 4u:
    {
        const unsigned addr = line_base + src_x;
        return fmsx_v9990_decode_bd8_pixel(fmsx_v9990_read_vram_bx(addr));
    }
    case 5u:
    {
        const unsigned addr = line_base + (src_x << 1);
        const uint16_t value = (uint16_t) fmsx_v9990_read_vram_bx(addr)
            | ((uint16_t) fmsx_v9990_read_vram_bx(addr + 1u) << 8);
        return fmsx_v9990_rgb555_to_rgb565(value);
    }
    default:
        (void) image_width;
        return 0u;
    }
}

static uint8_t fmsx_v9990_sample_p1_nibble(unsigned display_x, unsigned display_y, unsigned name_base, unsigned pattern_base)
{
    const unsigned cell_x = (display_x & 511u) >> 3;
    const unsigned cell_y = (display_y & 511u) >> 3;
    const unsigned name_addr = name_base + (((cell_y * 64u) + cell_x) << 1);
    const unsigned pattern_num =
        ((unsigned) fmsx_v9990_read_vram_p1(name_addr + 0u)
      | ((unsigned) fmsx_v9990_read_vram_p1(name_addr + 1u) << 8)) & 0x1FFFu;
    const unsigned within_x = display_x & 7u;
    const unsigned within_y = display_y & 7u;
    const unsigned pattern_addr =
        pattern_base
      + ((pattern_num % 32u) * 4u)
      + ((pattern_num / 32u) * 1024u)
      + (within_y * 128u)
      + (within_x >> 1);
    const uint8_t data = fmsx_v9990_read_vram_p1(pattern_addr);
    return (within_x & 1u) ? (data & 0x0Fu) : (data >> 4);
}

static void fmsx_v9990_render_p1_plane_pass(uint16_t *dst,
                                            uint8_t *info,
                                            unsigned width,
                                            unsigned start_x,
                                            unsigned end_x,
                                            unsigned display_x,
                                            unsigned display_y,
                                            unsigned name_base,
                                            unsigned pattern_base,
                                            unsigned palette_base,
                                            uint16_t backdrop,
                                            boolean draw_backdrop,
                                            boolean mark_foreground,
                                            unsigned *lit_counter)
{
    unsigned x;

    if (start_x >= end_x || start_x >= width)
    {
        return;
    }
    if (end_x > width)
    {
        end_x = width;
    }

    for (x = start_x; x < end_x; ++x)
    {
        const uint8_t nibble =
            fmsx_v9990_sample_p1_nibble(display_x + (x - start_x), display_y, name_base, pattern_base);

        if (nibble != 0u)
        {
            dst[x] = fmsx_v9990_palette_color((uint8_t) (palette_base + nibble));
            if (mark_foreground)
            {
                info[x] = 1u;
            }
            if (lit_counter != 0)
            {
                ++*lit_counter;
            }
        }
        else if (draw_backdrop)
        {
            dst[x] = backdrop;
        }
    }
}

static void fmsx_v9990_render_p1_segment(uint16_t *dst,
                                         uint8_t *info,
                                         unsigned width,
                                         unsigned display_y,
                                         unsigned start_x,
                                         unsigned end_x,
                                         const TFmsxV9990P1LineState *state,
                                         unsigned *plane_a_lit,
                                         unsigned *plane_b_lit)
{
    const unsigned palette_control = state->palette_control;
    const unsigned pal_a_base = (palette_control & 0x03u) << 4;
    const unsigned pal_b_base = (palette_control & 0x0Cu) << 2;
    const uint16_t backdrop = fmsx_v9990_palette_color(state->backdrop_color);
    const unsigned roll_mask = fmsx_v9990_get_roll_mask_from_ay1(state->ay1, 0x01FFu);
    const unsigned prio_y = ((state->priority & 0x0Cu) == 0u) ? 256u : ((state->priority & 0x0Cu) << 4);
    const unsigned prio_x_base = ((state->priority & 0x03u) == 0u) ? 256u : ((state->priority & 0x03u) << 6);
    const unsigned prio_x = (display_y >= prio_y) ? 0u : prio_x_base;
    const unsigned split_x = (prio_x < width) ? prio_x : width;
    const unsigned scroll_ay_base = state->scroll_ay & ~roll_mask & 0x01FFu;
    const unsigned display_ay = scroll_ay_base + ((state->display_ya + state->scroll_ay) & roll_mask);
    const unsigned display_by = (state->display_yb + state->scroll_by) & 0x01FFu;
    const boolean plane_a_enabled = ((state->by1 & 0x80u) == 0u) ? TRUE : FALSE;
    const boolean plane_b_enabled = ((state->by1 & 0x40u) == 0u) ? TRUE : FALSE;
    unsigned x;

    if (start_x >= end_x || start_x >= width)
    {
        return;
    }
    if (end_x > width)
    {
        end_x = width;
    }

    for (x = start_x; x < end_x; ++x)
    {
        dst[x] = backdrop;
    }

    if (plane_b_enabled)
    {
        fmsx_v9990_render_p1_plane_pass(
            dst, info, width,
            start_x, (end_x < split_x) ? end_x : split_x,
            (state->scroll_bx + start_x) & 511u, display_by,
            0x7E000u, 0x40000u, pal_b_base, backdrop,
            FALSE, FALSE, plane_b_lit);
    }
    if (plane_a_enabled)
    {
        const unsigned seg_start = (start_x > split_x) ? start_x : split_x;
        fmsx_v9990_render_p1_plane_pass(
            dst, info, width,
            seg_start, end_x,
            (state->scroll_ax + seg_start) & 511u, display_ay,
            0x7C000u, 0x00000u, pal_a_base, backdrop,
            FALSE, FALSE, plane_a_lit);
    }

    if (plane_a_enabled)
    {
        fmsx_v9990_render_p1_plane_pass(
            dst, info, width,
            start_x, (end_x < split_x) ? end_x : split_x,
            (state->scroll_ax + start_x) & 511u, display_ay,
            0x7C000u, 0x00000u, pal_a_base, backdrop,
            FALSE, TRUE, plane_a_lit);
    }
    if (plane_b_enabled)
    {
        const unsigned seg_start = (start_x > split_x) ? start_x : split_x;
        fmsx_v9990_render_p1_plane_pass(
            dst, info, width,
            seg_start, end_x,
            (state->scroll_bx + seg_start) & 511u, display_by,
            0x7E000u, 0x40000u, pal_b_base, backdrop,
            FALSE, TRUE, plane_b_lit);
    }
}

static void fmsx_v9990_apply_p1_raster_event(TFmsxV9990P1LineState *state,
                                             const TFmsxV9990RasterEvent *event,
                                             unsigned line_y)
{
    switch ((TFmsxV9990RasterEventKind) event->kind)
    {
    case FMSX_V9990_RASTER_EVENT_AY0:
        state->scroll_ay = event->value;
        state->display_ya = (uint16_t) (line_y - (unsigned) event->y);
        break;
    case FMSX_V9990_RASTER_EVENT_BY0:
        state->scroll_by = event->value;
        state->display_yb = (uint16_t) (line_y - (unsigned) event->y);
        break;
    case FMSX_V9990_RASTER_EVENT_AX:
        state->scroll_ax = event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_BX:
        state->scroll_bx = event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_PRIORITY:
        state->priority = (uint8_t) event->value;
        break;
    default:
        break;
    }
}

static uint8_t fmsx_v9990_sample_p2_nibble(unsigned display_x, unsigned display_y, unsigned *palette_base)
{
    const unsigned cell_x = (display_x & 1023u) >> 3;
    const unsigned cell_y = (display_y & 511u) >> 3;
    const unsigned name_addr = 0x7C000u + (((cell_y * 128u) + cell_x) << 1);
    const unsigned pattern_num =
        ((unsigned) fmsx_v9990_read_vram_direct(name_addr + 0u)
      | ((unsigned) fmsx_v9990_read_vram_direct(name_addr + 1u) << 8)) & 0x1FFFu;
    const unsigned within_x = display_x & 7u;
    const unsigned within_y = display_y & 7u;
    const unsigned pattern_addr =
        ((pattern_num % 64u) * 4u)
      + ((pattern_num / 64u) * 2048u)
      + (within_y * 256u)
      + (within_x >> 1);
    const uint8_t data = fmsx_v9990_read_vram_bx(pattern_addr);
    const unsigned offset = fmsx_v9990_get_palette_offset();
    *palette_base = (pattern_addr & 1u) ? ((offset & 0x0Cu) << 2) : ((offset & 0x03u) << 4);
    return (within_x & 1u) ? (data & 0x0Fu) : (data >> 4);
}

static unsigned fmsx_v9990_get_sprite_pattern_address(TFmsxV9990DisplayMode mode)
{
    switch (mode)
    {
    case FMSX_V9990_MODE_P1:
        return ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_REG_SPRITE_PATTERN_ADDRESS] & 0x0Eu)) << 14;
    case FMSX_V9990_MODE_P2:
        return ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_REG_SPRITE_PATTERN_ADDRESS] & 0x0Fu)) << 15;
    default:
        return 0u;
    }
}

static uint8_t fmsx_v9990_read_sprite_attr_p1(unsigned address)
{
    return fmsx_v9990_read_vram_p1(address);
}

static uint8_t fmsx_v9990_read_sprite_attr_p2(unsigned address)
{
    return fmsx_v9990_read_vram_direct(address);
}

static uint8_t fmsx_v9990_read_sprite_pattern_p1(unsigned address)
{
    return fmsx_v9990_read_vram_p1(address);
}

static uint8_t fmsx_v9990_read_sprite_pattern_p2(unsigned address)
{
    return fmsx_v9990_read_vram_bx(address);
}

static unsigned fmsx_v9990_get_sprite_pattern_offset_p1(uint8_t sprite_no, uint8_t sprite_y)
{
    return (128u * (((unsigned) sprite_no & 0xF0u) + (unsigned) sprite_y))
        + (8u * ((unsigned) sprite_no & 0x0Fu));
}

static unsigned fmsx_v9990_get_sprite_pattern_offset_p2(uint8_t sprite_no, uint8_t sprite_y)
{
    return (256u * ((((unsigned) sprite_no & 0xE0u) >> 1) + (unsigned) sprite_y))
        + (8u * ((unsigned) sprite_no & 0x1Fu));
}

static void fmsx_v9990_draw_sprite_pixel(uint16_t *dst,
                                         uint8_t *info,
                                         unsigned width,
                                         int x_pos,
                                         uint8_t level,
                                         uint8_t palette_base,
                                         uint8_t nibble)
{
    unsigned x;

    if (nibble == 0u || x_pos < 0)
    {
        return;
    }

    x = (unsigned) x_pos;
    if (x >= width)
    {
        return;
    }

    if (info[x] < level)
    {
        dst[x] = fmsx_v9990_palette_color((uint8_t) (palette_base + nibble));
    }
    info[x] = 2u;
}

static void fmsx_v9990_render_p1_sprites_line(uint16_t *dst, uint8_t *info, unsigned width, unsigned display_y)
{
    int visible[FMSX_V9990_MAX_SPRITES_PER_LINE + 1u];
    unsigned sprite_pattern_table;
    unsigned i;
    int visible_count = 0;
    int visible_limit = (int) FMSX_V9990_MAX_SPRITES_PER_LINE;

    if (!fmsx_v9990_sprites_enabled())
    {
        return;
    }

    sprite_pattern_table = fmsx_v9990_get_sprite_pattern_address(FMSX_V9990_MODE_P1);

    for (i = 0u; i < 125u && visible_count < visible_limit; ++i)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * i);
        const uint8_t sprite_y_base = (uint8_t) (fmsx_v9990_read_sprite_attr_p1(sprite_info) + 1u);
        const uint8_t sprite_y_pos = (uint8_t) (display_y - sprite_y_base);

        if (sprite_y_pos < FMSX_V9990_SPRITE_WIDTH)
        {
            const uint8_t sprite_attr = fmsx_v9990_read_sprite_attr_p1(sprite_info + 3u);
            if ((sprite_attr & 0x10u) != 0u)
            {
                visible_limit--;
            }
            else
            {
                visible[visible_count++] = (int) i;
            }
        }
    }
    visible[visible_count] = -1;

    for (i = 0u; visible[i] >= 0; ++i)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * (unsigned) visible[i]);
        const uint8_t sprite_attr = fmsx_v9990_read_sprite_attr_p1(sprite_info + 3u);
        const uint8_t level = ((sprite_attr & 0x20u) == 0u) ? 2u : 1u;
        int sprite_x = (int) fmsx_v9990_read_sprite_attr_p1(sprite_info + 2u);
        uint8_t sprite_y = fmsx_v9990_read_sprite_attr_p1(sprite_info + 0u);
        const uint8_t sprite_no = fmsx_v9990_read_sprite_attr_p1(sprite_info + 1u);
        unsigned pat_addr;
        unsigned x;

        sprite_x += 256 * (int) (sprite_attr & 0x03u);
        if (sprite_x > 1008)
        {
            sprite_x -= 1024;
        }
        sprite_y = (uint8_t) (display_y - (unsigned) (sprite_y + 1u));
        pat_addr = sprite_pattern_table + fmsx_v9990_get_sprite_pattern_offset_p1(sprite_no, sprite_y);

        for (x = 0u; x < FMSX_V9990_SPRITE_WIDTH; x += 2u)
        {
            const uint8_t data = fmsx_v9990_read_sprite_pattern_p1(pat_addr++);
            const uint8_t palette_base = (uint8_t) ((sprite_attr >> 2) & 0x30u);
            fmsx_v9990_draw_sprite_pixel(dst, info, width, sprite_x + (int) x + 0, level, palette_base, (uint8_t) (data >> 4));
            fmsx_v9990_draw_sprite_pixel(dst, info, width, sprite_x + (int) x + 1, level, palette_base, (uint8_t) (data & 0x0Fu));
        }
    }
}

static void fmsx_v9990_render_p2_sprites_line(uint16_t *dst, uint8_t *info, unsigned width, unsigned display_y)
{
    int visible[FMSX_V9990_MAX_SPRITES_PER_LINE + 1u];
    unsigned sprite_pattern_table;
    unsigned i;
    int visible_count = 0;
    int visible_limit = (int) FMSX_V9990_MAX_SPRITES_PER_LINE;

    if (!fmsx_v9990_sprites_enabled())
    {
        return;
    }

    sprite_pattern_table = fmsx_v9990_get_sprite_pattern_address(FMSX_V9990_MODE_P2);

    for (i = 0u; i < 125u && visible_count < visible_limit; ++i)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * i);
        const uint8_t sprite_y_base = (uint8_t) (fmsx_v9990_read_sprite_attr_p2(sprite_info) + 1u);
        const uint8_t sprite_y_pos = (uint8_t) (display_y - sprite_y_base);

        if (sprite_y_pos < FMSX_V9990_SPRITE_WIDTH)
        {
            const uint8_t sprite_attr = fmsx_v9990_read_sprite_attr_p2(sprite_info + 3u);
            if ((sprite_attr & 0x10u) != 0u)
            {
                visible_limit--;
            }
            else
            {
                visible[visible_count++] = (int) i;
            }
        }
    }
    visible[visible_count] = -1;

    for (i = 0u; visible[i] >= 0; ++i)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * (unsigned) visible[i]);
        const uint8_t sprite_attr = fmsx_v9990_read_sprite_attr_p2(sprite_info + 3u);
        const uint8_t level = ((sprite_attr & 0x20u) == 0u) ? 2u : 1u;
        int sprite_x = (int) fmsx_v9990_read_sprite_attr_p2(sprite_info + 2u);
        uint8_t sprite_y = fmsx_v9990_read_sprite_attr_p2(sprite_info + 0u);
        const uint8_t sprite_no = fmsx_v9990_read_sprite_attr_p2(sprite_info + 1u);
        unsigned pat_addr;
        unsigned x;

        sprite_x += 256 * (int) (sprite_attr & 0x03u);
        if (sprite_x > 1008)
        {
            sprite_x -= 1024;
        }
        sprite_y = (uint8_t) (display_y - (unsigned) (sprite_y + 1u));
        pat_addr = sprite_pattern_table + fmsx_v9990_get_sprite_pattern_offset_p2(sprite_no, sprite_y);

        for (x = 0u; x < FMSX_V9990_SPRITE_WIDTH; x += 2u)
        {
            const uint8_t data = fmsx_v9990_read_sprite_pattern_p2(pat_addr++);
            const uint8_t palette_base = (uint8_t) ((sprite_attr >> 2) & 0x30u);
            fmsx_v9990_draw_sprite_pixel(dst, info, width, sprite_x + (int) x + 0, level, palette_base, (uint8_t) (data >> 4));
            fmsx_v9990_draw_sprite_pixel(dst, info, width, sprite_x + (int) x + 1, level, palette_base, (uint8_t) (data & 0x0Fu));
        }
    }
}

static void fmsx_v9990_render_placeholder(unsigned width, unsigned height)
{
    unsigned x;
    unsigned y;

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = FMSX_V9990_FRAMEBUFFER + (y * FMSX_V9990_FB_MAX_WIDTH);
        for (x = 0u; x < width; ++x)
        {
            const unsigned band = (x * 6u) / (width ? width : 1u);
            switch (band)
            {
            case 0u: dst[x] = 0xF800u; break;
            case 1u: dst[x] = 0xFD20u; break;
            case 2u: dst[x] = 0xFFE0u; break;
            case 3u: dst[x] = 0x07E0u; break;
            case 4u: dst[x] = 0x07FFu; break;
            default: dst[x] = 0x001Fu; break;
            }
        }
    }
}

/*
 * First-light Bx path: keep display-active rendering strictly linear and
 * bounded until the active-frame freeze is resolved. This intentionally avoids
 * scroll, transformed VRAM addressing and even/odd handling.
 */
static void fmsx_v9990_render_bx_firstlight(unsigned width,
                                            unsigned height,
                                            unsigned image_width,
                                            unsigned bytes_per_line,
                                            uint8_t mode_kind)
{
    unsigned y;
    const unsigned scroll_x = fmsx_v9990_get_scroll_ax();

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = FMSX_V9990_FRAMEBUFFER + (y * FMSX_V9990_FB_MAX_WIDTH);
        const unsigned scroll_y = (unsigned) g_fmsx_v9990.scroll_ay_lines[y];
        const unsigned display_y = (unsigned) g_fmsx_v9990.display_ya_lines[y];
        const unsigned roll_mask = fmsx_v9990_get_roll_mask(0x1FFFu);
        const unsigned scroll_y_base = scroll_y & ~roll_mask & 0x1FFFu;
        const unsigned src_y = scroll_y_base + ((display_y + scroll_y) & roll_mask);
        unsigned x;

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        (void) msxbare_debug_timer_irq_binding(0x20u + (y & 0x7Fu));
#endif

        for (x = 0u; x < width; ++x)
        {
            const unsigned src_x = (image_width != 0u) ? ((x + scroll_x) % image_width) : 0u;
            dst[x] = fmsx_v9990_decode_bx_pixel(src_x, src_y, image_width, bytes_per_line, mode_kind);
        }
    }
}

static void fmsx_v9990_fill_scanline(uint16_t *dst, unsigned width, uint16_t value)
{
    unsigned x;

    for (x = 0u; x < width; ++x)
    {
        dst[x] = value;
    }
}

static void fmsx_v9990_fill_frame_lines(uint16_t *base,
                                        unsigned pitch_pixels,
                                        unsigned width,
                                        unsigned height,
                                        unsigned line_count,
                                        uint16_t value)
{
    unsigned y;
    const unsigned lines = (line_count < height) ? line_count : height;

    if (base == 0 || pitch_pixels == 0u)
    {
        return;
    }

    for (y = 0u; y < lines; ++y)
    {
        uint16_t *dst = base + (y * pitch_pixels);
        fmsx_v9990_fill_scanline(dst, width, value);
    }
}

static void fmsx_v9990_render_p1_frame(unsigned width, unsigned height)
{
    uint8_t info[640];
    unsigned y;
    const boolean capture_profile = (g_fmsx_v9990_debug_frame_snapshot_pending != 0u) ? TRUE : FALSE;

#if MSXBARE_ENABLE_DEBUG_OVERLAY
    if (capture_profile)
    {
        memset(g_fmsx_v9990_debug_p1_plane_a_lines, 0, sizeof(g_fmsx_v9990_debug_p1_plane_a_lines));
        memset(g_fmsx_v9990_debug_p1_plane_b_lines, 0, sizeof(g_fmsx_v9990_debug_p1_plane_b_lines));
        memset(g_fmsx_v9990_debug_p1_final_lines, 0, sizeof(g_fmsx_v9990_debug_p1_final_lines));
        memset(g_fmsx_v9990_debug_p1_sample_a, 0, sizeof(g_fmsx_v9990_debug_p1_sample_a));
        memset(g_fmsx_v9990_debug_p1_sample_b, 0, sizeof(g_fmsx_v9990_debug_p1_sample_b));
        memset(g_fmsx_v9990_debug_p1_bg_is_backdrop, 0, sizeof(g_fmsx_v9990_debug_p1_bg_is_backdrop));
        memset(g_fmsx_v9990_debug_p1_final_is_backdrop, 0, sizeof(g_fmsx_v9990_debug_p1_final_is_backdrop));
        memset(g_fmsx_v9990_debug_p1_pal_a_base, 0, sizeof(g_fmsx_v9990_debug_p1_pal_a_base));
        memset(g_fmsx_v9990_debug_p1_pal_b_base, 0, sizeof(g_fmsx_v9990_debug_p1_pal_b_base));
        memset(g_fmsx_v9990_debug_p1_backdrop_index, 0, sizeof(g_fmsx_v9990_debug_p1_backdrop_index));
        memset(g_fmsx_v9990_debug_p1_prio_x, 0, sizeof(g_fmsx_v9990_debug_p1_prio_x));
        g_fmsx_v9990_debug_p1_profile_valid = TRUE;
    }
#endif

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = FMSX_V9990_FRAMEBUFFER + (y * FMSX_V9990_FB_MAX_WIDTH);
        TFmsxV9990P1LineState state;
        unsigned line_start = 0u;
        unsigned event_i;
        unsigned plane_a_lit = 0u;
        unsigned plane_b_lit = 0u;

        memset(info, 0, width);
        state.scroll_ay = g_fmsx_v9990.scroll_ay_lines[y];
        state.scroll_by = g_fmsx_v9990.scroll_by_lines[y];
        state.scroll_ax = g_fmsx_v9990.scroll_ax_lines[y];
        state.scroll_bx = g_fmsx_v9990.scroll_bx_lines[y];
        state.display_ya = g_fmsx_v9990.display_ya_lines[y];
        state.display_yb = g_fmsx_v9990.display_yb_lines[y];
        state.priority = g_fmsx_v9990.priority_control_lines[y];
        state.palette_control = g_fmsx_v9990.palette_control_lines[y];
        state.backdrop_color = g_fmsx_v9990.backdrop_color_lines[y];
        state.ay1 = g_fmsx_v9990.scroll_ay_high_frame;
        state.by1 = g_fmsx_v9990.scroll_by1_lines[y];

        for (event_i = 0u; event_i < g_fmsx_v9990.raster_event_count; ++event_i)
        {
            const TFmsxV9990RasterEvent *event = &g_fmsx_v9990.raster_events[event_i];
            unsigned split_x;

            if ((unsigned) event->y != y)
            {
                continue;
            }

            split_x = (event->x < width) ? (unsigned) event->x : width;
            if (split_x > line_start)
            {
                fmsx_v9990_render_p1_segment(
                    dst, info, width, y, line_start, split_x, &state, &plane_a_lit, &plane_b_lit);
                line_start = split_x;
            }
            fmsx_v9990_apply_p1_raster_event(&state, event, y);
        }

        fmsx_v9990_render_p1_segment(
            dst, info, width, y, line_start, width, &state, &plane_a_lit, &plane_b_lit);

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        if (capture_profile && (y < FMSX_V9990_FB_MAX_HEIGHT))
        {
            unsigned x;
            const unsigned roll_mask = fmsx_v9990_get_roll_mask_from_ay1(state.ay1, 0x01FFu);
            const unsigned scroll_ay_base = state.scroll_ay & ~roll_mask & 0x01FFu;
            const unsigned display_ay = scroll_ay_base + ((state.display_ya + state.scroll_ay) & roll_mask);
            const unsigned display_by = (state.display_yb + state.scroll_by) & 0x01FFu;
            const boolean plane_a_enabled = ((state.by1 & 0x80u) == 0u) ? TRUE : FALSE;
            const boolean plane_b_enabled = ((state.by1 & 0x40u) == 0u) ? TRUE : FALSE;
            const uint16_t backdrop = fmsx_v9990_palette_color(state.backdrop_color);
            const unsigned prio_y = ((state.priority & 0x0Cu) == 0u) ? 256u : ((state.priority & 0x0Cu) << 4);
            const unsigned prio_x_base = ((state.priority & 0x03u) == 0u) ? 256u : ((state.priority & 0x03u) << 6);
            const unsigned prio_x = (y >= prio_y) ? 0u : prio_x_base;
            for (x = 0u; x < width && x < 8u; ++x)
            {
                const unsigned ax = (x + state.scroll_ax) & 511u;
                const unsigned bx = (x + state.scroll_bx) & 511u;
                const uint8_t nibble_a = plane_a_enabled ? fmsx_v9990_sample_p1_nibble(ax, display_ay, 0x7C000u, 0x00000u) : 0u;
                const uint8_t nibble_b = plane_b_enabled ? fmsx_v9990_sample_p1_nibble(bx, display_by, 0x7E000u, 0x40000u) : 0u;
                g_fmsx_v9990_debug_p1_sample_a[y][x] = nibble_a;
                g_fmsx_v9990_debug_p1_sample_b[y][x] = nibble_b;
                g_fmsx_v9990_debug_p1_bg_is_backdrop[y][x] = (dst[x] == backdrop && info[x] == 0u) ? 1u : 0u;
                g_fmsx_v9990_debug_p1_final_is_backdrop[y][x] = (dst[x] == backdrop) ? 1u : 0u;
            }
        }
#endif

        fmsx_v9990_render_p1_sprites_line(dst, info, width, y);

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        if (capture_profile && (y < FMSX_V9990_FB_MAX_HEIGHT))
        {
            unsigned sprite_lit = 0u;
            unsigned x;
            const unsigned pal_a_base = (state.palette_control & 0x03u) << 4;
            const unsigned pal_b_base = (state.palette_control & 0x0Cu) << 2;
            const unsigned prio_y = ((state.priority & 0x0Cu) == 0u) ? 256u : ((state.priority & 0x0Cu) << 4);
            const unsigned prio_x_base = ((state.priority & 0x03u) == 0u) ? 256u : ((state.priority & 0x03u) << 6);
            const unsigned prio_x = (y >= prio_y) ? 0u : prio_x_base;
            const uint16_t backdrop = fmsx_v9990_palette_color(state.backdrop_color);
            g_fmsx_v9990_debug_p1_pal_a_base[y] = (uint8_t) pal_a_base;
            g_fmsx_v9990_debug_p1_pal_b_base[y] = (uint8_t) pal_b_base;
            g_fmsx_v9990_debug_p1_backdrop_index[y] = state.backdrop_color;
            g_fmsx_v9990_debug_p1_prio_x[y] = (uint16_t) prio_x;
            for (x = 0u; x < width; ++x)
            {
                if (dst[x] != backdrop)
                {
                    ++sprite_lit;
                }
            }
            g_fmsx_v9990_debug_p1_plane_a_lines[y] = (uint16_t) plane_a_lit;
            g_fmsx_v9990_debug_p1_plane_b_lines[y] = (uint16_t) plane_b_lit;
            g_fmsx_v9990_debug_p1_final_lines[y] = (uint16_t) sprite_lit;
        }
#endif
    }
}

static void fmsx_v9990_render_p2_frame(unsigned width, unsigned height)
{
    uint8_t info[640];
    unsigned y;
    const unsigned roll_mask = fmsx_v9990_get_roll_mask(0x01FFu);

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = FMSX_V9990_FRAMEBUFFER + (y * FMSX_V9990_FB_MAX_WIDTH);
        const uint16_t backdrop = fmsx_v9990_palette_color(g_fmsx_v9990.backdrop_color_lines[y]);
        const unsigned scroll_x = (unsigned) g_fmsx_v9990.scroll_ax_lines[y];
        const unsigned scroll_y = (unsigned) g_fmsx_v9990.scroll_ay_lines[y];
        const unsigned display_ya = (unsigned) g_fmsx_v9990.display_ya_lines[y];
        const unsigned scroll_y_base = scroll_y & ~roll_mask & 0x01FFu;
        const unsigned display_y = scroll_y_base + ((display_ya + scroll_y) & roll_mask);
        unsigned x;

        memset(info, 0, width);
        for (x = 0u; x < width; ++x)
        {
            unsigned palette_base = 0u;
            const unsigned display_x = (x + scroll_x) & 1023u;
            const uint8_t nibble = fmsx_v9990_sample_p2_nibble(display_x, display_y, &palette_base);
            dst[x] = nibble ? fmsx_v9990_palette_color((uint8_t) (palette_base + nibble)) : backdrop;
            info[x] = nibble ? 1u : 0u;
        }

        fmsx_v9990_render_p2_sprites_line(dst, info, width, y);
    }
}

static uint8_t fmsx_v9990_read_register(uint8_t index)
{
    const uint8_t access = k_fmsx_v9990_reg_access[index & 0x3Fu];
    const uint8_t reg = index & 0x3Fu;

    if (reg == FMSX_V9990_CMD_REG_BORDER_X0)
    {
        return (uint8_t) (g_fmsx_v9990.cmd.border_x & 0xFFu);
    }
    if (reg == FMSX_V9990_CMD_REG_BORDER_X1)
    {
        return (uint8_t) (g_fmsx_v9990.cmd.border_x >> 8);
    }
    return (access & 1u) ? g_fmsx_v9990.regs[reg] : 0xFFu;
}

static void fmsx_v9990_write_register(uint8_t index, uint8_t value)
{
    const uint8_t reg = index & 0x3Fu;
    const uint8_t access = k_fmsx_v9990_reg_access[reg];
    const uint8_t prev = g_fmsx_v9990.regs[reg];

    if ((access & 2u) == 0u)
    {
        return;
    }

    if (reg >= FMSX_V9990_CMD_REG_SX0)
    {
        fmsx_v9990_cmd_set_reg(reg, value);
        return;
    }

    value &= k_fmsx_v9990_reg_write_mask[reg];
    g_fmsx_v9990.regs[reg] = value;

#if MSXBARE_ENABLE_DEBUG_OVERLAY
    fmsx_v9990_debug_trace_core_reg_write(reg, prev, value);
#endif

    if (reg == FMSX_V9990_REG_SCREEN_MODE_0
     || reg == FMSX_V9990_REG_SCREEN_MODE_1
     || reg == FMSX_V9990_REG_CONTROL
     || reg == FMSX_V9990_REG_INTERRUPT_0)
    {
        fmsx_v9990_debug_trace_regs("G9I reg");
    }

    if (reg == FMSX_V9990_REG_CONTROL)
    {
        const boolean display_was_enabled = (prev & 0x80u) != 0u ? TRUE : FALSE;
        const boolean display_is_enabled = (value & 0x80u) != 0u ? TRUE : FALSE;
        const unsigned split = fmsx_v9990_get_active_display_line();

        for (unsigned y = split; y < fmsx_v9990_frame_height(); ++y)
        {
            g_fmsx_v9990.control_lines[y] = value;
        }

        if (!display_was_enabled && display_is_enabled)
        {
            /*
             * openMSX only syncs the renderer on display enable/disable; it
             * does not rebase displayYA/displayYB there. Only AY0/BY0 writes
             * start a new vertical display window. Rebasing here splits the
             * gameplay frame into artificial windows, which matches the
             * observed "3/4 drawn + 1/4 missing" artifact.
             */
            fmsx_v9990_debug_rearm_active_window("display-on");
            msxbare_debug_note_gfx9000_activation();
        }
    }
    else if ((reg == FMSX_V9990_REG_SCREEN_MODE_0 || reg == FMSX_V9990_REG_SCREEN_MODE_1)
          && !fmsx_v9990_display_enabled_current_frame())
    {
        /*
         * While display is off, mode changes should refresh the line state
         * baseline immediately; otherwise the next display-on can inherit
         * split data from the previous mode window.
         */
        fmsx_v9990_reset_scroll_line_state();
    }
    else if (reg == FMSX_V9990_REG_SCREEN_MODE_0)
    {
        const unsigned split = fmsx_v9990_get_active_display_line();
        for (unsigned y = split; y < fmsx_v9990_frame_height(); ++y)
        {
            g_fmsx_v9990.screen_mode_0_lines[y] = value;
        }
    }
    else if (reg == FMSX_V9990_REG_SCREEN_MODE_1)
    {
        const unsigned split = fmsx_v9990_get_active_display_line();
        for (unsigned y = split; y < fmsx_v9990_frame_height(); ++y)
        {
            g_fmsx_v9990.screen_mode_1_lines[y] = value;
        }
    }

    if (reg == FMSX_V9990_REG_VRAM_WRITE_ADDRESS_2)
    {
        g_fmsx_v9990.vram_write_ptr = fmsx_v9990_get_vram_addr(FMSX_V9990_REG_VRAM_WRITE_ADDRESS_0);
    }
    else if (reg == FMSX_V9990_REG_VRAM_READ_ADDRESS_2)
    {
        g_fmsx_v9990.vram_read_ptr = fmsx_v9990_get_vram_addr(FMSX_V9990_REG_VRAM_READ_ADDRESS_0);
        g_fmsx_v9990.vram_read_buffer = fmsx_v9990_read_vram_cpu(g_fmsx_v9990.vram_read_ptr);
    }
    else if (reg == FMSX_V9990_REG_INTERRUPT_0)
    {
        fmsx_v9990_update_host_irq();
    }
    else if (reg == FMSX_V9990_REG_PALETTE_CONTROL)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_palette_control_write();
        }
        else
        {
            for (unsigned y = 0u; y < fmsx_v9990_frame_height(); ++y)
            {
                g_fmsx_v9990.palette_control_lines[y] = value;
            }
        }
    }
    else if (reg == FMSX_V9990_REG_BACK_DROP_COLOR)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_backdrop_color_write();
        }
        else
        {
            for (unsigned y = 0u; y < fmsx_v9990_frame_height(); ++y)
            {
                g_fmsx_v9990.backdrop_color_lines[y] = value;
            }
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_AY0)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_ay_low_write();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_AY1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_ay_high_write();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_AX0 || reg == FMSX_V9990_REG_SCROLL_CONTROL_AX1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_ax_write();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_BY0)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_by_low_write();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_BY1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_by_high_write();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_BX0 || reg == FMSX_V9990_REG_SCROLL_CONTROL_BX1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_bx_write();
        }
    }
    else if (reg == FMSX_V9990_REG_PRIORITY_CONTROL)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_priority_control_write();
        }
    }
}

void fmsx_v9990_power_on(void)
{
    const boolean enabled = g_fmsx_v9990.enabled;

    fmsx_v9990_debug_trace_enable("power", enabled);
    memset(&g_fmsx_v9990, 0, sizeof(g_fmsx_v9990));
    g_fmsx_v9990.enabled = enabled;
    fmsx_v9990_reset_framebuffer_guards();
    fmsx_v9990_reset_registers_keep_memory();
    fmsx_v9990_init_palette_defaults();
    fmsx_v9990_reset_scroll_line_state();
    g_fmsx_v9990.raster_event_count = 0u;
    memset(&g_fmsx_v9990_video, 0, sizeof(g_fmsx_v9990_video));
    g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
    g_fmsx_v9990_debug_port_logs_remaining = 0u;
    g_fmsx_v9990_debug_cmd_logs_remaining = 0u;
    g_fmsx_v9990_debug_render_logs_remaining = 0u;
    g_fmsx_v9990_debug_reg_logs_remaining = 0u;
    g_fmsx_v9990_debug_active_logs_remaining = 0u;
    g_fmsx_v9990_debug_active_phase = 0u;
    g_fmsx_v9990_debug_frame_snapshot_pending = 0u;
#endif
}

void fmsx_v9990_reset(void)
{
    const boolean enabled = g_fmsx_v9990.enabled;
    const uint32_t io_reads = g_fmsx_v9990.io_reads;
    const uint32_t io_writes = g_fmsx_v9990.io_writes;

    fmsx_v9990_debug_trace_enable("reset", enabled);
    fmsx_v9990_reset_registers_keep_memory();
    g_fmsx_v9990.enabled = enabled;
    g_fmsx_v9990.io_reads = io_reads;
    g_fmsx_v9990.io_writes = io_writes;
    g_fmsx_v9990_video.active = FALSE;
    fmsx_v9990_reset_scroll_line_state();
    g_fmsx_v9990.raster_event_count = 0u;
    fmsx_v9990_reset_framebuffer_guards();
}

void fmsx_v9990_set_enabled(boolean enabled)
{
    const boolean desired = enabled ? TRUE : FALSE;

    if (g_fmsx_v9990.enabled == desired)
    {
        return;
    }

    g_fmsx_v9990.enabled = desired;
    g_fmsx_v9990_video.active = FALSE;
    if (!desired)
    {
        g_fmsx_v9990.status = 0u;
        g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
        g_fmsx_v9990.status_cpu_cycle_frac = 0u;
        g_fmsx_v9990.pending_irqs = 0u;
        fmsx_v9990_cmd_reset();
        fmsx_v9990_update_host_irq();
    }
}

boolean fmsx_v9990_get_enabled(void)
{
    return g_fmsx_v9990.enabled ? TRUE : FALSE;
}

void fmsx_v9990_render_frame(unsigned sequence)
{
    unsigned image_width;
    unsigned width;
    unsigned height;
    unsigned bytes_per_line;
    uint8_t mode_kind;
    TFmsxV9990DisplayMode display_mode;
    unsigned x;
    unsigned y;
#if MSXBARE_V9990_PHASE_VISUAL_DEBUG
    boolean debug_phase_return = FALSE;
#endif

    if (!g_fmsx_v9990.enabled)
    {
        g_fmsx_v9990_video.active = FALSE;
        g_fmsx_v9990_video.sequence = sequence;
        return;
    }

    display_mode = fmsx_v9990_get_display_mode();
    image_width = fmsx_v9990_image_width();
    height = fmsx_v9990_frame_height();
    width = fmsx_v9990_get_active_display_width();
    if (width > FMSX_V9990_FB_MAX_WIDTH)
    {
        width = FMSX_V9990_FB_MAX_WIDTH;
    }
    if (height > FMSX_V9990_FB_MAX_HEIGHT)
    {
        height = FMSX_V9990_FB_MAX_HEIGHT;
    }
    bytes_per_line = fmsx_v9990_bytes_per_line(image_width, &mode_kind);

    g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
    g_fmsx_v9990_video.width = width;
    g_fmsx_v9990_video.height = height;
    g_fmsx_v9990_video.logical_width = width;
    g_fmsx_v9990_video.logical_height = height;
    g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
    g_fmsx_v9990_video.sequence = sequence;
    g_fmsx_v9990_video.hires_mode = width >= 640u ? TRUE : FALSE;
    g_fmsx_v9990_video.interlaced_mode = (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1] & 0x02u) ? TRUE : FALSE;
    g_fmsx_v9990_video.woven_hires = FALSE;
    g_fmsx_v9990_video.active = FALSE;
    fmsx_v9990_debug_trace_render(width, height, display_mode);
    if (!fmsx_v9990_framebuffer_guards_ok())
    {
        fmsx_v9990_debug_trace_guard("pre");
        fmsx_v9990_reset_framebuffer_guards();
    }

    g_fmsx_v9990_video.field_parity_odd = (g_fmsx_v9990.status & 0x02u) ? TRUE : FALSE;

#if MSXBARE_ENABLE_DEBUG_OVERLAY
    (void) msxbare_debug_timer_irq_binding(0x10u);
#endif

    /*
     * Keep the GFX9000 electrically present but visually dormant until the
     * guest actually enables V9990 display output. For the current auto-switch
     * policy, an idle chip must not touch the framebuffer path at all.
     */
    if (!fmsx_v9990_display_enabled_current_frame())
    {
        return;
    }

    g_fmsx_v9990_video.active = TRUE;
    fmsx_v9990_debug_trace_active("G9A rf-begin", width, height, display_mode);

#if MSXBARE_ENABLE_DEBUG_OVERLAY
    (void) msxbare_debug_timer_irq_binding(0x11u);
#endif

#if MSXBARE_V9990_PHASE_VISUAL_DEBUG
    if (display_mode != FMSX_V9990_MODE_P1 && display_mode != FMSX_V9990_MODE_P2 && g_fmsx_v9990_debug_active_phase < 11u)
    {
        const unsigned phase = g_fmsx_v9990_debug_active_phase++;
        switch (phase)
        {
        case 0u:
            fmsx_v9990_debug_trace_phase("phase0 inactive");
            g_fmsx_v9990_video.active = FALSE;
            debug_phase_return = TRUE;
            break;
        case 1u:
            fmsx_v9990_debug_trace_phase("phase1 nofill");
            debug_phase_return = TRUE;
            break;
        case 2u:
        {
            uint16_t *dst = FMSX_V9990_FRAMEBUFFER;
            fmsx_v9990_debug_trace_phase("phase2 line1");
            fmsx_v9990_fill_scanline(dst, width, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase2 line1");
            debug_phase_return = TRUE;
            break;
        }
        case 3u:
            fmsx_v9990_debug_trace_phase("phase3 line16");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 16u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase3 line16");
            debug_phase_return = TRUE;
            break;
        case 4u:
            fmsx_v9990_debug_trace_phase("phase4 line32");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 32u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase4 line32");
            debug_phase_return = TRUE;
            break;
        case 5u:
            fmsx_v9990_debug_trace_phase("phase5 line48");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 48u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase5 line48");
            debug_phase_return = TRUE;
            break;
        case 6u:
            fmsx_v9990_debug_trace_phase("phase6 line64");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 64u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase6 line64");
            debug_phase_return = TRUE;
            break;
        case 7u:
            fmsx_v9990_debug_trace_phase("phase7 live96");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 96u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase7 live96");
            debug_phase_return = TRUE;
            break;
        case 8u:
            fmsx_v9990_debug_trace_phase("phase8 live128");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 128u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase8 live128");
            debug_phase_return = TRUE;
            break;
        case 9u:
            fmsx_v9990_debug_trace_phase("phase9 live160");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 160u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phase9 live160");
            debug_phase_return = TRUE;
            break;
        default:
            fmsx_v9990_debug_trace_phase("phaseA live212");
            g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
            g_fmsx_v9990_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;
            fmsx_v9990_fill_frame_lines(FMSX_V9990_FRAMEBUFFER, FMSX_V9990_FB_MAX_WIDTH,
                width, height, 212u, 0xFFFFu);
            fmsx_v9990_debug_trace_phase_done("phaseA live212");
            debug_phase_return = TRUE;
            break;
        }

        if (debug_phase_return)
        {
            if (!fmsx_v9990_framebuffer_guards_ok())
            {
                fmsx_v9990_debug_trace_guard("phase-post");
                g_fmsx_v9990_video.active = FALSE;
                fmsx_v9990_reset_framebuffer_guards();
            }
            fmsx_v9990_debug_trace_phase("phase-ret");
            return;
        }
    }
#endif

    if (display_mode == FMSX_V9990_MODE_P1)
    {
        fmsx_v9990_render_p1_frame(width, height);
    }
    else if (display_mode == FMSX_V9990_MODE_P2)
    {
        fmsx_v9990_render_p2_frame(width, height);
    }
    else if (bytes_per_line == 0u || mode_kind == 0u)
    {
        fmsx_v9990_render_placeholder(width, height);
    }
    else
    {
        (void) x;
        (void) y;
        fmsx_v9990_render_bx_firstlight(width, height, image_width, bytes_per_line, mode_kind);
    }

    if (!fmsx_v9990_framebuffer_guards_ok())
    {
        fmsx_v9990_debug_trace_guard("post");
        g_fmsx_v9990_video.active = FALSE;
        fmsx_v9990_reset_framebuffer_guards();
    }

    fmsx_v9990_debug_trace_frame_profile(width, height, image_width, bytes_per_line, mode_kind);

    fmsx_v9990_debug_trace_active("G9A rf-end", width, height, display_mode);

#if MSXBARE_ENABLE_DEBUG_OVERLAY
    (void) msxbare_debug_timer_irq_binding(0x12u);
#endif
}

void fmsx_v9990_get_video_frame(TFmsxV9990VideoFrame *frame)
{
    if (frame == 0)
    {
        return;
    }
    *frame = g_fmsx_v9990_video;
}

boolean fmsx_v9990_in_port(uint8_t port, uint8_t *value)
{
    uint8_t out = 0xFFu;
    const uint8_t local_port = (uint8_t) (port - FMSX_V9990_PORT_BASE);

    if (!g_fmsx_v9990.enabled
     || port < FMSX_V9990_PORT_BASE
     || port >= (FMSX_V9990_PORT_BASE + FMSX_V9990_PORT_COUNT))
    {
        return FALSE;
    }

    g_fmsx_v9990.io_reads++;
    fmsx_v9990_debug_trace_port("G9P in", port, 0xFFu);

    switch (local_port)
    {
    case FMSX_V9990_PORT_VRAM_DATA:
        out = g_fmsx_v9990.vram_read_buffer;
        if ((g_fmsx_v9990.regs[FMSX_V9990_REG_VRAM_READ_ADDRESS_2] & 0x80u) == 0u)
        {
            g_fmsx_v9990.vram_read_ptr = (fmsx_v9990_get_vram_addr(FMSX_V9990_REG_VRAM_READ_ADDRESS_0) + 1u)
                & (FMSX_V9990_VRAM_BYTES - 1u);
            fmsx_v9990_set_vram_addr(FMSX_V9990_REG_VRAM_READ_ADDRESS_0, g_fmsx_v9990.vram_read_ptr);
            g_fmsx_v9990.vram_read_buffer = fmsx_v9990_read_vram_cpu(g_fmsx_v9990.vram_read_ptr);
        }
        break;

    case FMSX_V9990_PORT_PALETTE_DATA:
        out = g_fmsx_v9990.palette[g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_POINTER]];
        if ((g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL] & 0x10u) == 0u)
        {
            fmsx_v9990_palette_advance();
        }
        break;

    case FMSX_V9990_PORT_COMMAND_DATA:
        out = fmsx_v9990_cmd_get_data();
        break;

    case FMSX_V9990_PORT_REGISTER_DATA:
        out = fmsx_v9990_read_register((uint8_t) (g_fmsx_v9990.reg_select & 0x3Fu));
        if ((g_fmsx_v9990.reg_select & 0x40u) == 0u)
        {
            g_fmsx_v9990.reg_select = (uint8_t) ((g_fmsx_v9990.reg_select + 1u) & ~0x40u);
        }
        break;

    case FMSX_V9990_PORT_STATUS:
        out = fmsx_v9990_read_status_port();
        fmsx_v9990_debug_trace_port("G9P sts", port, out);
        break;

    case FMSX_V9990_PORT_INTERRUPT_FLAG:
        out = g_fmsx_v9990.pending_irqs;
        fmsx_v9990_debug_trace_port("G9P irq", port, out);
        break;

    default:
        out = 0xFFu;
        break;
    }

    if (value != 0)
    {
        *value = out;
    }
    return TRUE;
}

boolean fmsx_v9990_out_port(uint8_t port, uint8_t value)
{
    const uint8_t local_port = (uint8_t) (port - FMSX_V9990_PORT_BASE);

    if (!g_fmsx_v9990.enabled
     || port < FMSX_V9990_PORT_BASE
     || port >= (FMSX_V9990_PORT_BASE + FMSX_V9990_PORT_COUNT))
    {
        return FALSE;
    }

    g_fmsx_v9990.io_writes++;
    fmsx_v9990_debug_trace_port("G9P out", port, value);

    switch (local_port)
    {
    case FMSX_V9990_PORT_VRAM_DATA:
        g_fmsx_v9990.vram_write_ptr = fmsx_v9990_get_vram_addr(FMSX_V9990_REG_VRAM_WRITE_ADDRESS_0);
        fmsx_v9990_write_vram_cpu(g_fmsx_v9990.vram_write_ptr, value);
        if ((g_fmsx_v9990.regs[FMSX_V9990_REG_VRAM_WRITE_ADDRESS_2] & 0x80u) == 0u)
        {
            g_fmsx_v9990.vram_write_ptr = (g_fmsx_v9990.vram_write_ptr + 1u) & (FMSX_V9990_VRAM_BYTES - 1u);
            fmsx_v9990_set_vram_addr(FMSX_V9990_REG_VRAM_WRITE_ADDRESS_0, g_fmsx_v9990.vram_write_ptr);
        }
        break;

    case FMSX_V9990_PORT_PALETTE_DATA:
    {
        const uint8_t pal_ptr = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_POINTER];
        switch (pal_ptr & 3u)
        {
        case 0u: value &= 0x9Fu; break;
        case 1u:
        case 2u: value &= 0x1Fu; break;
        default: value = 0x00u; break;
        }
        g_fmsx_v9990.palette[pal_ptr] = value;
        if ((g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL] & 0x10u) == 0u)
        {
            fmsx_v9990_palette_advance();
        }
        break;
    }

    case FMSX_V9990_PORT_COMMAND_DATA:
        if (((g_fmsx_v9990.cmd.status & FMSX_V9990_CMD_STATUS_CE) != 0u)
         && (((uint8_t) (g_fmsx_v9990.cmd.opcode >> 4)) == 0x01u))
        {
            const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();
            const unsigned pitch = fmsx_v9990_cmd_latched_pitch();
            fmsx_v9990_cmd_consume_lmmc(mode, pitch, value);
        }
        else if (((g_fmsx_v9990.cmd.status & FMSX_V9990_CMD_STATUS_CE) != 0u)
              && (((uint8_t) (g_fmsx_v9990.cmd.opcode >> 4)) == 0x05u))
        {
            const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();
            const unsigned pitch = fmsx_v9990_cmd_latched_pitch();
            fmsx_v9990_cmd_consume_cmmc(mode, pitch, value);
        }
        else
        {
            g_fmsx_v9990.cmd.data = value;
            g_fmsx_v9990.cmd.status &= (uint8_t) ~FMSX_V9990_CMD_STATUS_TR;
        }
        break;

    case FMSX_V9990_PORT_REGISTER_DATA:
        fmsx_v9990_write_register((uint8_t) (g_fmsx_v9990.reg_select & 0x3Fu), value);
        if ((g_fmsx_v9990.reg_select & 0x80u) == 0u)
        {
            g_fmsx_v9990.reg_select =
                (uint8_t) ((g_fmsx_v9990.reg_select & 0xC0u) | ((g_fmsx_v9990.reg_select + 1u) & 0x3Fu));
        }
        break;

    case FMSX_V9990_PORT_REGISTER_SELECT:
        g_fmsx_v9990.reg_select = value;
        break;

    case FMSX_V9990_PORT_INTERRUPT_FLAG:
        g_fmsx_v9990.pending_irqs &= (uint8_t) ~value;
        fmsx_v9990_update_host_irq();
        break;

    case FMSX_V9990_PORT_SYSTEM_CONTROL:
        g_fmsx_v9990.system_control = value;
        g_fmsx_v9990.status = (uint8_t) ((g_fmsx_v9990.status & 0xFBu) | ((value & 0x01u) << 2));
        if ((value & 0x02u) != 0u)
        {
            fmsx_v9990_reset_registers_keep_memory();
            g_fmsx_v9990.system_control = value;
            g_fmsx_v9990.status = (uint8_t) ((g_fmsx_v9990.status & 0xFBu) | ((value & 0x01u) << 2));
        }
        fmsx_v9990_update_host_irq();
        break;

    default:
        break;
    }

    return TRUE;
}

unsigned fmsx_v9990_save_state(void *dst, unsigned capacity)
{
    TFmsxV9990StateHeader header;
    TFmsxV9990StatePayloadV4 payload;
    uint8_t *out = (uint8_t *) dst;

    if (!g_fmsx_v9990.enabled || dst == 0)
    {
        return 0u;
    }

    header.magic = FMSX_V9990_STATE_MAGIC;
    header.version = FMSX_V9990_STATE_VERSION;
    header.reserved0 = 0u;
    header.payload_size = sizeof(payload) + FMSX_V9990_VRAM_BYTES;

    if (capacity < sizeof(header) + sizeof(payload))
    {
        return 0u;
    }
    if (capacity < sizeof(header) + header.payload_size)
    {
        return 0u;
    }

    memset(&payload, 0, sizeof(payload));
    payload.io_reads = g_fmsx_v9990.io_reads;
    payload.io_writes = g_fmsx_v9990.io_writes;
    payload.vram_write_ptr = g_fmsx_v9990.vram_write_ptr;
    payload.vram_read_ptr = g_fmsx_v9990.vram_read_ptr;
    payload.reg_select = g_fmsx_v9990.reg_select;
    payload.status = g_fmsx_v9990.status;
    payload.pending_irqs = g_fmsx_v9990.pending_irqs;
    payload.system_control = g_fmsx_v9990.system_control;
    payload.command_data = g_fmsx_v9990.cmd.data;
    payload.vram_read_buffer = g_fmsx_v9990.vram_read_buffer;
    payload.vram_bytes = FMSX_V9990_VRAM_BYTES;
    payload.cmd_sx = g_fmsx_v9990.cmd.sx;
    payload.cmd_sy = g_fmsx_v9990.cmd.sy;
    payload.cmd_dx = g_fmsx_v9990.cmd.dx;
    payload.cmd_dy = g_fmsx_v9990.cmd.dy;
    payload.cmd_nx = g_fmsx_v9990.cmd.nx;
    payload.cmd_ny = g_fmsx_v9990.cmd.ny;
    payload.cmd_wm = g_fmsx_v9990.cmd.wm;
    payload.cmd_fg = g_fmsx_v9990.cmd.fg;
    payload.cmd_bg = g_fmsx_v9990.cmd.bg;
    payload.cmd_border_x = g_fmsx_v9990.cmd.border_x;
    payload.cmd_arg = g_fmsx_v9990.cmd.arg;
    payload.cmd_log = g_fmsx_v9990.cmd.log;
    payload.cmd_opcode = g_fmsx_v9990.cmd.opcode;
    payload.cmd_data = g_fmsx_v9990.cmd.data;
    payload.cmd_partial = g_fmsx_v9990.cmd.partial;
    payload.cmd_status = g_fmsx_v9990.cmd.status;
    payload.cmd_flags = g_fmsx_v9990.cmd.flags;
    payload.cmd_mode = g_fmsx_v9990.cmd.mode;
    payload.cmd_pitch = g_fmsx_v9990.cmd.pitch;
    payload.cmd_image_width = g_fmsx_v9990.cmd.image_width;
    memcpy(payload.regs, g_fmsx_v9990.regs, sizeof(payload.regs));
    memcpy(payload.palette, g_fmsx_v9990.palette, sizeof(payload.palette));

    memcpy(out, &header, sizeof(header));
    memcpy(out + sizeof(header), &payload, sizeof(payload));
    memcpy(out + sizeof(header) + sizeof(payload), g_fmsx_v9990.vram, FMSX_V9990_VRAM_BYTES);
    return sizeof(header) + header.payload_size;
}

unsigned fmsx_v9990_load_state(const void *src, unsigned size)
{
    TFmsxV9990StateHeader header;
    TFmsxV9990StatePayloadV1 payload;
    TFmsxV9990StatePayloadV2 payload_v2;
    TFmsxV9990StatePayloadV3 payload_v3;
    TFmsxV9990StatePayloadV4 payload_v4;
    const uint8_t *in = (const uint8_t *) src;

    if (src == 0 || size < sizeof(header))
    {
        return 0u;
    }

    memcpy(&header, in, sizeof(header));
    if (header.magic != FMSX_V9990_STATE_MAGIC)
    {
        return 0u;
    }

    if (!g_fmsx_v9990.enabled)
    {
        return sizeof(header) + header.payload_size;
    }

    if (header.version == 1u)
    {
        if (header.payload_size != sizeof(payload) || size < sizeof(header) + sizeof(payload))
        {
            return 0u;
        }

        memcpy(&payload, in + sizeof(header), sizeof(payload));
        g_fmsx_v9990.io_reads = payload.io_reads;
        g_fmsx_v9990.io_writes = payload.io_writes;
        g_fmsx_v9990.vram_write_ptr = payload.vram_write_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.vram_read_ptr = payload.vram_read_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.reg_select = payload.reg_select;
        g_fmsx_v9990.status = payload.status;
        g_fmsx_v9990.pending_irqs = payload.pending_irqs;
        g_fmsx_v9990.system_control = payload.system_control;
        g_fmsx_v9990.cmd.data = payload.command_data;
        g_fmsx_v9990.vram_read_buffer = payload.vram_read_buffer;
        fmsx_v9990_cmd_reset();
        memcpy(g_fmsx_v9990.regs, payload.regs, sizeof(g_fmsx_v9990.regs));
        memcpy(g_fmsx_v9990.palette, payload.palette, sizeof(g_fmsx_v9990.palette));
        g_fmsx_v9990_video.active = FALSE;
        g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
        g_fmsx_v9990.status_cpu_cycle_frac = 0u;
        fmsx_v9990_update_host_irq();
        return sizeof(header) + sizeof(payload);
    }

    if (header.version == 2u)
    {
        if (header.payload_size != sizeof(payload_v2) + FMSX_V9990_VRAM_BYTES
         || size < sizeof(header) + sizeof(payload_v2) + FMSX_V9990_VRAM_BYTES)
        {
            return 0u;
        }

        memcpy(&payload_v2, in + sizeof(header), sizeof(payload_v2));
        if (payload_v2.vram_bytes != FMSX_V9990_VRAM_BYTES)
        {
            return 0u;
        }

        g_fmsx_v9990.io_reads = payload_v2.io_reads;
        g_fmsx_v9990.io_writes = payload_v2.io_writes;
        g_fmsx_v9990.vram_write_ptr = payload_v2.vram_write_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.vram_read_ptr = payload_v2.vram_read_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.reg_select = payload_v2.reg_select;
        g_fmsx_v9990.status = payload_v2.status;
        g_fmsx_v9990.pending_irqs = payload_v2.pending_irqs;
        g_fmsx_v9990.system_control = payload_v2.system_control;
        g_fmsx_v9990.cmd.data = payload_v2.command_data;
        g_fmsx_v9990.vram_read_buffer = payload_v2.vram_read_buffer;
        fmsx_v9990_cmd_reset();
        memcpy(g_fmsx_v9990.regs, payload_v2.regs, sizeof(g_fmsx_v9990.regs));
        memcpy(g_fmsx_v9990.palette, payload_v2.palette, sizeof(g_fmsx_v9990.palette));
        memcpy(g_fmsx_v9990.vram, in + sizeof(header) + sizeof(payload_v2), FMSX_V9990_VRAM_BYTES);
        g_fmsx_v9990_video.active = FALSE;
        g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
        g_fmsx_v9990.status_cpu_cycle_frac = 0u;
        fmsx_v9990_update_host_irq();
        return sizeof(header) + header.payload_size;
    }

    if (header.version != FMSX_V9990_STATE_VERSION
     && header.version != 3u)
    {
        return 0u;
    }

    if (header.version == 4u)
    {
        if (header.payload_size != sizeof(payload_v4) + FMSX_V9990_VRAM_BYTES
         || size < sizeof(header) + sizeof(payload_v4) + FMSX_V9990_VRAM_BYTES)
        {
            return 0u;
        }

        memcpy(&payload_v4, in + sizeof(header), sizeof(payload_v4));
        if (payload_v4.vram_bytes != FMSX_V9990_VRAM_BYTES)
        {
            return 0u;
        }

        g_fmsx_v9990.io_reads = payload_v4.io_reads;
        g_fmsx_v9990.io_writes = payload_v4.io_writes;
        g_fmsx_v9990.vram_write_ptr = payload_v4.vram_write_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.vram_read_ptr = payload_v4.vram_read_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.reg_select = payload_v4.reg_select;
        g_fmsx_v9990.status = payload_v4.status;
        g_fmsx_v9990.pending_irqs = payload_v4.pending_irqs;
        g_fmsx_v9990.system_control = payload_v4.system_control;
        g_fmsx_v9990.cmd.sx = payload_v4.cmd_sx;
        g_fmsx_v9990.cmd.sy = payload_v4.cmd_sy;
        g_fmsx_v9990.cmd.dx = payload_v4.cmd_dx;
        g_fmsx_v9990.cmd.dy = payload_v4.cmd_dy;
        g_fmsx_v9990.cmd.nx = payload_v4.cmd_nx;
        g_fmsx_v9990.cmd.ny = payload_v4.cmd_ny;
        g_fmsx_v9990.cmd.wm = payload_v4.cmd_wm;
        g_fmsx_v9990.cmd.fg = payload_v4.cmd_fg;
        g_fmsx_v9990.cmd.bg = payload_v4.cmd_bg;
        g_fmsx_v9990.cmd.border_x = payload_v4.cmd_border_x;
        g_fmsx_v9990.cmd.pitch = payload_v4.cmd_pitch;
        g_fmsx_v9990.cmd.image_width = payload_v4.cmd_image_width;
        g_fmsx_v9990.cmd.arg = payload_v4.cmd_arg;
        g_fmsx_v9990.cmd.log = payload_v4.cmd_log;
        g_fmsx_v9990.cmd.opcode = payload_v4.cmd_opcode;
        g_fmsx_v9990.cmd.data = payload_v4.cmd_data;
        g_fmsx_v9990.cmd.partial = payload_v4.cmd_partial;
        g_fmsx_v9990.cmd.status = payload_v4.cmd_status;
        g_fmsx_v9990.cmd.flags = payload_v4.cmd_flags;
        g_fmsx_v9990.cmd.mode = payload_v4.cmd_mode;
        g_fmsx_v9990.vram_read_buffer = payload_v4.vram_read_buffer;
        memcpy(g_fmsx_v9990.regs, payload_v4.regs, sizeof(g_fmsx_v9990.regs));
        memcpy(g_fmsx_v9990.palette, payload_v4.palette, sizeof(g_fmsx_v9990.palette));
        memcpy(g_fmsx_v9990.vram, in + sizeof(header) + sizeof(payload_v4), FMSX_V9990_VRAM_BYTES);
        g_fmsx_v9990_video.active = FALSE;
        g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
        g_fmsx_v9990.status_cpu_cycle_frac = 0u;
        fmsx_v9990_update_host_irq();
        return sizeof(header) + header.payload_size;
    }

    if (header.payload_size != sizeof(payload_v3) + FMSX_V9990_VRAM_BYTES
     || size < sizeof(header) + sizeof(payload_v3) + FMSX_V9990_VRAM_BYTES)
    {
        return 0u;
    }

    memcpy(&payload_v3, in + sizeof(header), sizeof(payload_v3));
    if (payload_v3.vram_bytes != FMSX_V9990_VRAM_BYTES)
    {
        return 0u;
    }

    g_fmsx_v9990.io_reads = payload_v3.io_reads;
    g_fmsx_v9990.io_writes = payload_v3.io_writes;
    g_fmsx_v9990.vram_write_ptr = payload_v3.vram_write_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
    g_fmsx_v9990.vram_read_ptr = payload_v3.vram_read_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
    g_fmsx_v9990.reg_select = payload_v3.reg_select;
    g_fmsx_v9990.status = payload_v3.status;
    g_fmsx_v9990.pending_irqs = payload_v3.pending_irqs;
    g_fmsx_v9990.system_control = payload_v3.system_control;
    g_fmsx_v9990.cmd.sx = payload_v3.cmd_sx;
    g_fmsx_v9990.cmd.sy = payload_v3.cmd_sy;
    g_fmsx_v9990.cmd.dx = payload_v3.cmd_dx;
    g_fmsx_v9990.cmd.dy = payload_v3.cmd_dy;
    g_fmsx_v9990.cmd.nx = payload_v3.cmd_nx;
    g_fmsx_v9990.cmd.ny = payload_v3.cmd_ny;
    g_fmsx_v9990.cmd.wm = payload_v3.cmd_wm;
    g_fmsx_v9990.cmd.fg = payload_v3.cmd_fg;
    g_fmsx_v9990.cmd.bg = payload_v3.cmd_bg;
    g_fmsx_v9990.cmd.border_x = payload_v3.cmd_border_x;
    g_fmsx_v9990.cmd.arg = payload_v3.cmd_arg;
    g_fmsx_v9990.cmd.log = payload_v3.cmd_log;
    g_fmsx_v9990.cmd.opcode = payload_v3.cmd_opcode;
    g_fmsx_v9990.cmd.data = payload_v3.cmd_data;
    g_fmsx_v9990.cmd.partial = payload_v3.cmd_partial;
    g_fmsx_v9990.cmd.status = payload_v3.cmd_status;
    g_fmsx_v9990.cmd.flags = payload_v3.cmd_flags;
    g_fmsx_v9990.cmd.mode = (uint8_t) fmsx_v9990_get_command_mode();
    g_fmsx_v9990.cmd.image_width = (uint16_t) fmsx_v9990_image_width();
    g_fmsx_v9990.cmd.pitch =
        (uint16_t) fmsx_v9990_cmd_get_pitch((TFmsxV9990CommandMode) g_fmsx_v9990.cmd.mode,
                                            (unsigned) g_fmsx_v9990.cmd.image_width);
    g_fmsx_v9990.vram_read_buffer = payload_v3.vram_read_buffer;
    memcpy(g_fmsx_v9990.regs, payload_v3.regs, sizeof(g_fmsx_v9990.regs));
    memcpy(g_fmsx_v9990.palette, payload_v3.palette, sizeof(g_fmsx_v9990.palette));
    memcpy(g_fmsx_v9990.vram, in + sizeof(header) + sizeof(payload_v3), FMSX_V9990_VRAM_BYTES);
    g_fmsx_v9990_video.active = FALSE;
    g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
    g_fmsx_v9990.status_cpu_cycle_frac = 0u;
    fmsx_v9990_update_host_irq();
    return sizeof(header) + header.payload_size;
}
