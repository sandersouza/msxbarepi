#include "fmsx_v9990.h"
#include "Z80.h"

#include <string.h>

extern int ScanLine;

#ifndef MSXBARE_ENABLE_DEBUG_OVERLAY
#define MSXBARE_ENABLE_DEBUG_OVERLAY 0
#endif

#ifndef MSXBARE_V9990_UART_TRACE
#define MSXBARE_V9990_UART_TRACE 0
#endif

#ifndef MSXBARE_V9990_PHASE_TRACE_UART
#define MSXBARE_V9990_PHASE_TRACE_UART MSXBARE_V9990_UART_TRACE
#endif

#ifndef MSXBARE_V9990_PHASE_VISUAL_DEBUG
#define MSXBARE_V9990_PHASE_VISUAL_DEBUG 0
#endif

#define FMSX_V9990_STATE_MAGIC 0x56393939u /* 'V999' */
#define FMSX_V9990_STATE_VERSION 5u
#define FMSX_V9990_FB_MAX_WIDTH 1280u
#define FMSX_V9990_FB_MAX_HEIGHT 480u
#define FMSX_V9990_DEBUG_BLOCK_LINES 16u
#define FMSX_V9990_DEBUG_BLOCK_MAX ((FMSX_V9990_FB_MAX_HEIGHT + FMSX_V9990_DEBUG_BLOCK_LINES - 1u) / FMSX_V9990_DEBUG_BLOCK_LINES)
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
    FMSX_V9990_MODE_B5,
    FMSX_V9990_MODE_B6,
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
    uint8_t vram_interleaved;
    uint8_t reserved0;
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
} TFmsxV9990StatePayloadV5;

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
    int16_t scroll_ay_frame_lines[FMSX_V9990_FB_MAX_HEIGHT];
    int16_t scroll_by_frame_lines[FMSX_V9990_FB_MAX_HEIGHT];
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
    uint8_t control_frame;
    boolean display_enabled_frame;
    boolean sprites_enabled_frame;
    TFmsxV9990RasterEvent raster_events[1024];
    unsigned raster_event_count;
    boolean vram_interleaved;
    uint8_t vram[FMSX_V9990_VRAM_BYTES];
} TFmsxV9990State;

typedef enum {
    FMSX_V9990_RASTER_EVENT_AY0 = 0u,
    FMSX_V9990_RASTER_EVENT_BY0,
    FMSX_V9990_RASTER_EVENT_AY1,
    FMSX_V9990_RASTER_EVENT_BY1,
    FMSX_V9990_RASTER_EVENT_AX,
    FMSX_V9990_RASTER_EVENT_BX,
    FMSX_V9990_RASTER_EVENT_PRIORITY,
    FMSX_V9990_RASTER_EVENT_BY1_PLANES,
    FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL,
    FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR,
} TFmsxV9990RasterEventKind;

typedef struct {
    uint16_t scroll_ay;
    uint16_t scroll_by;
    uint16_t scroll_ax;
    uint16_t scroll_bx;
    int16_t scroll_ay_frame;
    int16_t scroll_by_frame;
    uint8_t priority;
    uint8_t palette_control;
    uint8_t backdrop_color;
    uint8_t ay1;
    uint8_t by1;
} TFmsxV9990P1LineState;

typedef struct {
    int16_t scroll_ay_frame;
    uint16_t scroll_ax;
    uint8_t ay1;
    uint8_t palette_control;
    uint8_t backdrop_color;
} TFmsxV9990BxLineState;

typedef struct {
    uint32_t guard_lo;
    uint16_t pixels[FMSX_V9990_FB_MAX_WIDTH * FMSX_V9990_FB_MAX_HEIGHT];
    uint32_t guard_hi;
} TFmsxV9990FramebufferStorage;

static TFmsxV9990State g_fmsx_v9990;
static TFmsxV9990FramebufferStorage g_fmsx_v9990_framebuffer_storage;
static uint8_t g_fmsx_v9990_vram_interleave_tmp[FMSX_V9990_VRAM_BYTES >> 1];
static TFmsxV9990VideoFrame g_fmsx_v9990_video = { 0 };
static TFmsxV9990VideoFrame g_fmsx_v9990_debug_video = { 0 };
static TFmsxV9990DebugLiveView g_fmsx_v9990_debug_live_view = FMSX_V9990_DEBUG_LIVE_VIEW_OFF;
static TFmsxV9990DebugReferenceView g_fmsx_v9990_debug_reference_view = FMSX_V9990_DEBUG_REF_VIEW_OFF;
static boolean g_fmsx_v9990_debug_reference_valid = FALSE;
static boolean g_fmsx_v9990_debug_reference_unavailable_logged = FALSE;
#define FMSX_V9990_FRAMEBUFFER (g_fmsx_v9990_framebuffer_storage.pixels)

static void fmsx_v9990_get_p1_frame_initial_state(TFmsxV9990P1LineState *state)
{
    state->scroll_ay = g_fmsx_v9990.scroll_ay_lines[0];
    state->scroll_by = g_fmsx_v9990.scroll_by_lines[0];
    state->scroll_ax = g_fmsx_v9990.scroll_ax_lines[0];
    state->scroll_bx = g_fmsx_v9990.scroll_bx_lines[0];
    state->scroll_ay_frame = g_fmsx_v9990.scroll_ay_frame_lines[0];
    state->scroll_by_frame = g_fmsx_v9990.scroll_by_frame_lines[0];
    state->priority = g_fmsx_v9990.priority_control_lines[0];
    state->palette_control = g_fmsx_v9990.palette_control_lines[0];
    state->backdrop_color = g_fmsx_v9990.backdrop_color_lines[0];
    state->ay1 = g_fmsx_v9990.scroll_ay1_lines[0];
    state->by1 = g_fmsx_v9990.scroll_by1_lines[0];
}

static void fmsx_v9990_get_bx_frame_initial_state(TFmsxV9990BxLineState *state)
{
    state->scroll_ay_frame = g_fmsx_v9990.scroll_ay_frame_lines[0];
    state->scroll_ax = g_fmsx_v9990.scroll_ax_lines[0];
    state->ay1 = g_fmsx_v9990.scroll_ay1_lines[0];
    state->palette_control = g_fmsx_v9990.palette_control_lines[0];
    state->backdrop_color = g_fmsx_v9990.backdrop_color_lines[0];
}
#if MSXBARE_ENABLE_DEBUG_OVERLAY
static unsigned g_fmsx_v9990_debug_port_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_cmd_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_render_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_reg_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_active_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_scroll_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_vram_cpu_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_disabled_port_logs_remaining = 64u;
static unsigned g_fmsx_v9990_debug_active_phase = 0u;
static unsigned g_fmsx_v9990_debug_frame_snapshot_pending = 0u;
static boolean g_fmsx_v9990_debug_compact_trace = FALSE;
static boolean g_fmsx_v9990_debug_lmmc_trace_active = FALSE;
static uint32_t g_fmsx_v9990_debug_lmmc_bytes = 0u;
static uint32_t g_fmsx_v9990_debug_lmmc_total_bytes = 0u;
static unsigned g_fmsx_v9990_debug_lmmc_logs_remaining = 0u;
static unsigned g_fmsx_v9990_debug_lmmc_pitch = 0u;
static unsigned g_fmsx_v9990_debug_lmmc_image_width = 0u;
static unsigned g_fmsx_v9990_debug_lmmc_row_bytes = 0u;
static uint8_t g_fmsx_v9990_debug_lmmc_mode = 0u;
static uint8_t g_fmsx_v9990_debug_lmmc_opcode = 0u;
static unsigned g_fmsx_v9990_debug_ci_status_logs_remaining = 96u;
static unsigned g_fmsx_v9990_debug_ci_palette_logs_remaining = 4u;
static unsigned g_fmsx_v9990_debug_ci_vram_logs_remaining = 32u;
static uint16_t g_fmsx_v9990_debug_ci_status_last_pc = 0xFFFFu;
static uint8_t g_fmsx_v9990_debug_ci_status_last_value = 0xFFu;
static unsigned g_fmsx_v9990_debug_ci_status_repeat = 0u;
static unsigned g_fmsx_v9990_debug_ci_palette_count = 0u;
static unsigned g_fmsx_v9990_debug_ci_vram_count = 0u;
static uint16_t g_fmsx_v9990_debug_ci_vram_last_pc = 0xFFFFu;
static unsigned g_fmsx_v9990_debug_ci_vram_last_raw = 0xFFFFFFFFu;
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
static void fmsx_v9990_update_vram_interleaving(const char *tag);
static void fmsx_v9990_fill_scanline(uint16_t *dst, unsigned width, uint16_t value);
static TFmsxV9990DisplayMode fmsx_v9990_get_display_mode(void);
static const char *fmsx_v9990_mode_name(TFmsxV9990DisplayMode mode);
static unsigned fmsx_v9990_frame_height(void);
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
static uint8_t fmsx_v9990_cmd_read_vram_nonp1(unsigned address);
static void fmsx_v9990_cmd_write_vram_nonp1(unsigned address, uint8_t value);
static uint8_t fmsx_v9990_cmd_read_vram_xy(TFmsxV9990CommandMode mode, unsigned address);
static void fmsx_v9990_cmd_write_vram_xy(TFmsxV9990CommandMode mode, unsigned address, uint8_t value);
static void fmsx_v9990_cmd_ready(void);
static void fmsx_v9990_update_host_irq(void);
static void fmsx_v9990_advance_status_time(unsigned uc_ticks);
static void fmsx_v9990_sync_status_to_cpu(void);
static boolean fmsx_v9990_is_csm_mode(void);
static boolean fmsx_v9990_cmd_should_abort(uint8_t opcode);
static TFmsxV9990CommandMode fmsx_v9990_get_command_mode(void);
static unsigned fmsx_v9990_cmd_get_pitch(TFmsxV9990CommandMode mode, unsigned width);
static void fmsx_v9990_debug_trace_port(const char *prefix, uint8_t port, uint8_t value);
static void fmsx_v9990_debug_trace_disabled_port(const char *prefix, uint8_t port, uint8_t value);
static void fmsx_v9990_debug_trace_codeintruder_status(uint8_t value);
static void fmsx_v9990_debug_trace_codeintruder_palette(uint8_t value);
static void fmsx_v9990_debug_trace_codeintruder_vram_out(unsigned raw, unsigned phys, uint8_t value);
static boolean fmsx_v9990_debug_is_codeintruder_palette_bulk(void);
static boolean fmsx_v9990_debug_is_codeintruder_vram_bulk(uint8_t port);
static void fmsx_v9990_debug_reset_codeintruder_windows(void);
static void fmsx_v9990_debug_trace_command(const char *prefix, uint8_t opcode);
static void fmsx_v9990_debug_trace_render(unsigned width, unsigned height, TFmsxV9990DisplayMode mode);
static void fmsx_v9990_debug_trace_enable(const char *tag, boolean enabled);
static void fmsx_v9990_debug_trace_regs(const char *prefix);
static void fmsx_v9990_debug_trace_core_reg_write(uint8_t reg, uint8_t prev, uint8_t value);
static void fmsx_v9990_debug_trace_guard(const char *tag);
static void fmsx_v9990_debug_trace_active(const char *prefix, unsigned width, unsigned height, TFmsxV9990DisplayMode mode);
static void fmsx_v9990_debug_rearm_port_window(void);
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
static void fmsx_v9990_debug_begin_linear_trace(uint8_t opcode,
                                                TFmsxV9990CommandMode mode,
                                                unsigned image_width,
                                                unsigned pitch,
                                                uint32_t total_bytes);
static void fmsx_v9990_debug_trace_p1_block_timing(unsigned height);
static void fmsx_v9990_debug_trace_p1_block_profile(unsigned height);
static void fmsx_v9990_debug_trace_vram_cpu(const char *tag, unsigned raw, unsigned phys, uint8_t value);
static void fmsx_v9990_render_debug_frame(unsigned width,
                                          unsigned height,
                                          TFmsxV9990DisplayMode display_mode,
                                          unsigned image_width,
                                          unsigned bytes_per_line,
                                          uint8_t mode_kind);
static void fmsx_v9990_render_p1_live_debug_frame(uint16_t *base,
                                                  unsigned width,
                                                  unsigned height,
                                                  TFmsxV9990DebugLiveView view);
static void fmsx_v9990_render_reference_debug_frame(uint16_t *base,
                                                    unsigned width,
                                                    unsigned height,
                                                    TFmsxV9990DisplayMode display_mode);
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

static unsigned fmsx_v9990_cmd_bits_per_pixel(TFmsxV9990CommandMode mode)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP4:
        return 4u;
    case FMSX_V9990_CMD_MODE_BPP2:
        return 2u;
    case FMSX_V9990_CMD_MODE_BPP8:
        return 8u;
    case FMSX_V9990_CMD_MODE_BPP16:
        return 16u;
    default:
        return 8u;
    }
}

static unsigned fmsx_v9990_cmd_latched_image_height(void)
{
    const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();

    if (mode == FMSX_V9990_CMD_MODE_P1 || mode == FMSX_V9990_CMD_MODE_P2)
    {
        return 2048u;
    }

    {
        const unsigned width = fmsx_v9990_cmd_latched_image_width();
        const unsigned bpp = fmsx_v9990_cmd_bits_per_pixel(mode);
        const unsigned row_bytes = (width * bpp) >> 3;
        return (row_bytes != 0u) ? (FMSX_V9990_VRAM_BYTES / row_bytes) : 0u;
    }
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

static void fmsx_v9990_tracebuf_push_int(TFmsxV9990TraceBuffer *tb, int value)
{
    if (value < 0)
    {
        fmsx_v9990_tracebuf_push_char(tb, '-');
        fmsx_v9990_tracebuf_push_uint(tb, (unsigned) (-value));
        return;
    }
    fmsx_v9990_tracebuf_push_uint(tb, (unsigned) value);
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
        | ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX1] & 0x07u) << 8);
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

static unsigned fmsx_v9990_cmd_visible_width_mask(TFmsxV9990CommandMode mode)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP2:
    case FMSX_V9990_CMD_MODE_BPP4:
    case FMSX_V9990_CMD_MODE_BPP8:
    case FMSX_V9990_CMD_MODE_BPP16:
    {
        const unsigned width = fmsx_v9990_cmd_latched_image_width();
        return width != 0u ? (width - 1u) : 0u;
    }
    default:
        return 0u;
    }
}

static unsigned fmsx_v9990_cmd_image_width_mask(TFmsxV9990CommandMode mode)
{
    return fmsx_v9990_cmd_visible_width_mask(mode);
}

static unsigned fmsx_v9990_cmd_visible_height_mask(TFmsxV9990CommandMode mode)
{
    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP2:
    case FMSX_V9990_CMD_MODE_BPP4:
    case FMSX_V9990_CMD_MODE_BPP8:
    case FMSX_V9990_CMD_MODE_BPP16:
    {
        const unsigned height = fmsx_v9990_cmd_latched_image_height();
        return height != 0u ? (height - 1u) : 0u;
    }
    default:
        return 0u;
    }
}

static unsigned fmsx_v9990_cmd_image_height_mask(TFmsxV9990CommandMode mode)
{
    return fmsx_v9990_cmd_visible_height_mask(mode);
}

static unsigned fmsx_v9990_cmd_start_visible_sx(TFmsxV9990CommandMode mode)
{
    const unsigned mask = fmsx_v9990_cmd_visible_width_mask(mode);
    if (mask == 0u)
    {
        return g_fmsx_v9990.cmd.sx;
    }
    return (((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX1] << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX0]) & mask;
}

static unsigned fmsx_v9990_cmd_start_visible_sy(TFmsxV9990CommandMode mode)
{
    const unsigned mask = fmsx_v9990_cmd_visible_height_mask(mode);
    if (mask == 0u)
    {
        return g_fmsx_v9990.cmd.sy;
    }
    return (((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY0]) & mask;
}

static unsigned fmsx_v9990_cmd_start_visible_dx(TFmsxV9990CommandMode mode)
{
    const unsigned mask = fmsx_v9990_cmd_visible_width_mask(mode);
    if (mask == 0u)
    {
        return g_fmsx_v9990.cmd.dx;
    }
    return (((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX1] << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX0]) & mask;
}

static unsigned fmsx_v9990_cmd_start_visible_dy(TFmsxV9990CommandMode mode)
{
    const unsigned mask = fmsx_v9990_cmd_visible_height_mask(mode);
    if (mask == 0u)
    {
        return g_fmsx_v9990.cmd.dy;
    }
    return (((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY0]) & mask;
}

static void fmsx_v9990_cmd_normalize_start_coordinates(TFmsxV9990CommandMode mode)
{
    const unsigned sx_raw =
        ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX1] & 0x07u) << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX0];
    const unsigned dx_raw =
        ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX1] & 0x07u) << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX0];
    const unsigned sx_plane_bits = sx_raw & ~fmsx_v9990_cmd_visible_width_mask(mode);
    const unsigned dx_plane_bits = dx_raw & ~fmsx_v9990_cmd_visible_width_mask(mode);

    g_fmsx_v9990.cmd.sx = (uint16_t) (sx_plane_bits | fmsx_v9990_cmd_start_visible_sx(mode));
    g_fmsx_v9990.cmd.sy = (uint16_t) fmsx_v9990_cmd_start_visible_sy(mode);
    g_fmsx_v9990.cmd.dx = (uint16_t) (dx_plane_bits | fmsx_v9990_cmd_start_visible_dx(mode));
    g_fmsx_v9990.cmd.dy = (uint16_t) fmsx_v9990_cmd_start_visible_dy(mode);
}

static boolean fmsx_v9990_cmd_p1_source_plane_b(void)
{
    return (g_fmsx_v9990.cmd.sx & 0x0200u) ? TRUE : FALSE;
}

static boolean fmsx_v9990_cmd_p1_dest_plane_b(void)
{
    return (g_fmsx_v9990.cmd.dx & 0x0200u) ? TRUE : FALSE;
}

static unsigned fmsx_v9990_cmd_p1_source_plane_offset(void)
{
    return fmsx_v9990_cmd_p1_source_plane_b() ? 0x0800u : 0u;
}

static unsigned fmsx_v9990_cmd_p1_dest_plane_offset(void)
{
    return fmsx_v9990_cmd_p1_dest_plane_b() ? 0x0800u : 0u;
}

static uint16_t fmsx_v9990_cmd_plane_wm(boolean plane_b)
{
    if (fmsx_v9990_cmd_latched_mode() != FMSX_V9990_CMD_MODE_P1)
    {
        return g_fmsx_v9990.cmd.wm;
    }

    return plane_b
        ? (uint16_t) ((((uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_WM1]) << 8)
            | (uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_WM1])
        : (uint16_t) ((((uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_WM0]) << 8)
            | (uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_WM0]);
}

static uint16_t fmsx_v9990_cmd_plane_fc(boolean plane_b)
{
    if (fmsx_v9990_cmd_latched_mode() != FMSX_V9990_CMD_MODE_P1)
    {
        return g_fmsx_v9990.cmd.fg;
    }

    return plane_b
        ? (uint16_t) ((((uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_FC1]) << 8)
            | (uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_FC1])
        : (uint16_t) ((((uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_FC0]) << 8)
            | (uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_FC0]);
}

static uint16_t fmsx_v9990_cmd_plane_bc(boolean plane_b)
{
    if (fmsx_v9990_cmd_latched_mode() != FMSX_V9990_CMD_MODE_P1)
    {
        return g_fmsx_v9990.cmd.bg;
    }

    return plane_b
        ? (uint16_t) ((((uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_BC1]) << 8)
            | (uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_BC1])
        : (uint16_t) ((((uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_BC0]) << 8)
            | (uint16_t) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_BC0]);
}

static unsigned fmsx_v9990_cmd_linear_src_address(void)
{
    /*
     * WebMSX treats SA as a raw 19-bit linear address assembled from the
     * shared SX0/SY0/SY1 registers, without the imageWidth/imageHeight masks
     * applied to the XY view. Reconstructing SA from masked cmd.sx/cmd.sy
     * corrupts BMXL/CMMM/BMLL in Bx/P2 modes.
     */
    return ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] & 0x07u) << 16)
        | ((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY0] << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX0];
}

static unsigned fmsx_v9990_cmd_linear_dst_address(void)
{
    /* Same semantics as SA above, but for DA on DX0/DY0/DY1. */
    return ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] & 0x07u) << 16)
        | ((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY0] << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX0];
}

static unsigned fmsx_v9990_cmd_linear_byte_count(void)
{
    /*
     * WebMSX/openMSX use NA for BMLL:
     *   NA = ((NY1 & 0x07) << 16) | (NY0 << 8) | NX0
     *
     * NX1 is not part of the linear byte count. Using our wrapped NX/NY view
     * here can walk the linear stream at the wrong size and is consistent with
     * repeated background blocks missing from gameplay while static screens
     * still look correct.
     */
    unsigned count = ((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX0] << 0)
        | ((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NY0] << 8)
        | (((unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NY1] & 0x07u) << 16);
    if (count == 0u)
    {
        count = 0x80000u;
    }
    return count;
}

static boolean fmsx_v9990_cmd_dims_are_zero(void)
{
    return (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX0] == 0u)
        && ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_NX1] & 0x07u) == 0u)
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

#if MSXBARE_ENABLE_DEBUG_OVERLAY && MSXBARE_V9990_UART_TRACE
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

static void fmsx_v9990_debug_trace_disabled_port(const char *prefix, uint8_t port, uint8_t value)
{
    char line[80];
    TFmsxV9990TraceBuffer tb;

    if (g_fmsx_v9990_debug_disabled_port_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_disabled_port_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, prefix);
    fmsx_v9990_tracebuf_push_text(&tb, " p:");
    fmsx_v9990_tracebuf_push_hex8(&tb, port);
    fmsx_v9990_tracebuf_push_text(&tb, " v:");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.PC.W);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static boolean fmsx_v9990_debug_codeintruder_status_pc(uint16_t pc)
{
    return ((pc >= 0x4C38u && pc <= 0x4C42u)
         || (pc >= 0x4EBEu && pc <= 0x4EC8u)
         || (pc >= 0x7150u && pc <= 0x7158u)
         || (pc >= 0x7418u && pc <= 0x7435u)
         || (pc >= 0x6785u && pc <= 0x6835u)
         || (pc >= 0x6860u && pc <= 0x68B0u)
         || (pc >= 0x78B0u && pc <= 0x7935u)
         || (pc >= 0x6A65u && pc <= 0x6AC0u)) ? TRUE : FALSE;
}

static void fmsx_v9990_debug_trace_codeintruder_status(uint8_t value)
{
    char line[96];
    TFmsxV9990TraceBuffer tb;
    const uint16_t pc = CPU.PC.W;
    const boolean emit_repeat = (g_fmsx_v9990_debug_ci_status_repeat >= 512u) ? TRUE : FALSE;

    if (!fmsx_v9990_debug_codeintruder_status_pc(pc))
    {
        return;
    }

    ++g_fmsx_v9990_debug_ci_status_repeat;
    if (g_fmsx_v9990_debug_ci_status_logs_remaining == 0u)
    {
        return;
    }
    if (!emit_repeat
     && pc == g_fmsx_v9990_debug_ci_status_last_pc
     && value == g_fmsx_v9990_debug_ci_status_last_value)
    {
        return;
    }

    --g_fmsx_v9990_debug_ci_status_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9C sts pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, pc);
    fmsx_v9990_tracebuf_push_text(&tb, " v:");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " ce:");
    fmsx_v9990_tracebuf_push_uint(&tb, (value & FMSX_V9990_CMD_STATUS_CE) ? 1u : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " vr:");
    fmsx_v9990_tracebuf_push_uint(&tb, (value & 0x40u) ? 1u : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " hr:");
    fmsx_v9990_tracebuf_push_uint(&tb, (value & 0x20u) ? 1u : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " rep:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_ci_status_repeat);
    fmsx_v9990_tracebuf_push_text(&tb, " uc:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.status_uc_ticks);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);

    g_fmsx_v9990_debug_ci_status_last_pc = pc;
    g_fmsx_v9990_debug_ci_status_last_value = value;
    g_fmsx_v9990_debug_ci_status_repeat = 0u;
}

static boolean fmsx_v9990_debug_is_codeintruder_palette_bulk(void)
{
    return CPU.PC.W == 0x739Cu ? TRUE : FALSE;
}

static boolean fmsx_v9990_debug_codeintruder_vram_pc(uint16_t pc)
{
    return ((pc >= 0x71B0u && pc <= 0x7335u)
         || (pc >= 0x7474u && pc <= 0x74ACu)
         || (pc >= 0x50D0u && pc <= 0x5110u)
         || (pc >= 0x6C80u && pc <= 0x6F10u)
         || (pc >= 0x6770u && pc <= 0x6810u)) ? TRUE : FALSE;
}

static boolean fmsx_v9990_debug_is_codeintruder_vram_bulk(uint8_t port)
{
    return (port == FMSX_V9990_PORT_VRAM_DATA
         && fmsx_v9990_debug_codeintruder_vram_pc(CPU.PC.W)) ? TRUE : FALSE;
}

static void fmsx_v9990_debug_trace_codeintruder_palette(uint8_t value)
{
    char line[80];
    TFmsxV9990TraceBuffer tb;

    if (!fmsx_v9990_debug_is_codeintruder_palette_bulk())
    {
        return;
    }

    ++g_fmsx_v9990_debug_ci_palette_count;
    if (g_fmsx_v9990_debug_ci_palette_logs_remaining == 0u)
    {
        return;
    }
    if (g_fmsx_v9990_debug_ci_palette_count != 1u
     && (g_fmsx_v9990_debug_ci_palette_count & 0x3Fu) != 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_ci_palette_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9C pal pc:739C n:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_ci_palette_count);
    fmsx_v9990_tracebuf_push_text(&tb, " v:");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " pp:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_POINTER]);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_codeintruder_vram_out(unsigned raw, unsigned phys, uint8_t value)
{
    char line[96];
    TFmsxV9990TraceBuffer tb;
    const uint16_t pc = CPU.PC.W;
    const boolean pc_changed = (pc != g_fmsx_v9990_debug_ci_vram_last_pc) ? TRUE : FALSE;
    const boolean raw_wrapped = (raw < g_fmsx_v9990_debug_ci_vram_last_raw) ? TRUE : FALSE;
    const boolean raw_boundary = ((raw & 0x0FFFu) == 0u) ? TRUE : FALSE;
    const boolean count_boundary = ((g_fmsx_v9990_debug_ci_vram_count & 0x1FFFu) == 0u) ? TRUE : FALSE;

    if (!fmsx_v9990_debug_codeintruder_vram_pc(pc))
    {
        return;
    }
    ++g_fmsx_v9990_debug_ci_vram_count;
    if (g_fmsx_v9990_debug_ci_vram_logs_remaining == 0u)
    {
        return;
    }
    if (!pc_changed && !raw_wrapped && !raw_boundary && !count_boundary)
    {
        return;
    }

    --g_fmsx_v9990_debug_ci_vram_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9C vram pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, pc);
    fmsx_v9990_tracebuf_push_text(&tb, " raw:");
    fmsx_v9990_tracebuf_push_hex32(&tb, raw);
    fmsx_v9990_tracebuf_push_text(&tb, " phys:");
    fmsx_v9990_tracebuf_push_hex32(&tb, phys);
    fmsx_v9990_tracebuf_push_text(&tb, " v:");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " n:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_ci_vram_count);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);

    g_fmsx_v9990_debug_ci_vram_last_pc = pc;
    g_fmsx_v9990_debug_ci_vram_last_raw = raw;
}

static void fmsx_v9990_debug_reset_codeintruder_windows(void)
{
    g_fmsx_v9990_debug_ci_status_logs_remaining = 96u;
    g_fmsx_v9990_debug_ci_palette_logs_remaining = 4u;
    g_fmsx_v9990_debug_ci_vram_logs_remaining = 32u;
    g_fmsx_v9990_debug_ci_status_last_pc = 0xFFFFu;
    g_fmsx_v9990_debug_ci_status_last_value = 0xFFu;
    g_fmsx_v9990_debug_ci_status_repeat = 0u;
    g_fmsx_v9990_debug_ci_palette_count = 0u;
    g_fmsx_v9990_debug_ci_vram_count = 0u;
    g_fmsx_v9990_debug_ci_vram_last_pc = 0xFFFFu;
    g_fmsx_v9990_debug_ci_vram_last_raw = 0xFFFFFFFFu;
}

static void fmsx_v9990_debug_trace_vram_cpu(const char *tag, unsigned raw, unsigned phys, uint8_t value)
{
    char line[96];
    TFmsxV9990TraceBuffer tb;

    if (g_fmsx_v9990_debug_vram_cpu_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_vram_cpu_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, tag);
    fmsx_v9990_tracebuf_push_text(&tb, " raw:");
    fmsx_v9990_tracebuf_push_hex8(&tb, (uint8_t) ((raw >> 16) & 0xFFu));
    fmsx_v9990_tracebuf_push_hex16(&tb, (uint16_t) (raw & 0xFFFFu));
    fmsx_v9990_tracebuf_push_text(&tb, " phys:");
    fmsx_v9990_tracebuf_push_hex8(&tb, (uint8_t) ((phys >> 16) & 0xFFu));
    fmsx_v9990_tracebuf_push_hex16(&tb, (uint16_t) (phys & 0xFFFFu));
    fmsx_v9990_tracebuf_push_text(&tb, " m:");
    fmsx_v9990_tracebuf_push_hex8(&tb, (uint8_t) fmsx_v9990_get_display_mode());
    fmsx_v9990_tracebuf_push_text(&tb, " sc:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.system_control);
    fmsx_v9990_tracebuf_push_text(&tb, " v:");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.PC.W);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_vram_interleave(const char *tag, boolean before, boolean after)
{
    char line[96];
    TFmsxV9990TraceBuffer tb;

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9V ilv ");
    if (tag != 0)
    {
        fmsx_v9990_tracebuf_push_text(&tb, tag);
        fmsx_v9990_tracebuf_push_char(&tb, ' ');
    }
    fmsx_v9990_tracebuf_push_uint(&tb, before ? 1u : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, "->");
    fmsx_v9990_tracebuf_push_uint(&tb, after ? 1u : 0u);
    fmsx_v9990_tracebuf_push_text(&tb, " m:");
    fmsx_v9990_tracebuf_push_uint(&tb, (unsigned) fmsx_v9990_get_display_mode());
    fmsx_v9990_tracebuf_push_text(&tb, " sc:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.system_control);
    fmsx_v9990_tracebuf_push_text(&tb, " sm0:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0]);
    fmsx_v9990_tracebuf_push_text(&tb, " sm1:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1]);
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
    fmsx_v9990_tracebuf_push_text(&tb, " mn:");
    fmsx_v9990_tracebuf_push_text(&tb, fmsx_v9990_mode_name(mode));
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
    fmsx_v9990_tracebuf_push_text(&tb, "G9M mode r:");
    fmsx_v9990_tracebuf_push_hex8(&tb, reg);
    fmsx_v9990_tracebuf_push_text(&tb, " ");
    fmsx_v9990_tracebuf_push_hex8(&tb, prev);
    fmsx_v9990_tracebuf_push_text(&tb, "->");
    fmsx_v9990_tracebuf_push_hex8(&tb, value);
    fmsx_v9990_tracebuf_push_text(&tb, " pc:");
    fmsx_v9990_tracebuf_push_hex16(&tb, CPU.PC.W);
    fmsx_v9990_tracebuf_push_text(&tb, " dm:");
    fmsx_v9990_tracebuf_push_text(&tb, fmsx_v9990_mode_name(fmsx_v9990_get_display_mode()));
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

static void fmsx_v9990_debug_rearm_port_window(void)
{
    if (g_fmsx_v9990_debug_port_logs_remaining < 96u)
    {
        g_fmsx_v9990_debug_port_logs_remaining = 96u;
    }
    if (g_fmsx_v9990_debug_vram_cpu_logs_remaining < 16u)
    {
        g_fmsx_v9990_debug_vram_cpu_logs_remaining = 16u;
    }
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
    fmsx_v9990_tracebuf_push_text(&tb, " dm:");
    fmsx_v9990_tracebuf_push_uint(&tb, (unsigned) fmsx_v9990_get_display_mode());
    fmsx_v9990_tracebuf_push_text(&tb, " mn:");
    fmsx_v9990_tracebuf_push_text(&tb, fmsx_v9990_mode_name(fmsx_v9990_get_display_mode()));
    fmsx_v9990_tracebuf_push_text(&tb, " sc:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.system_control);
    fmsx_v9990_tracebuf_push_text(&tb, " sm0:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0]);
    fmsx_v9990_tracebuf_push_text(&tb, " sm1:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1]);
    fmsx_v9990_tracebuf_push_text(&tb, " pc:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL]);
    fmsx_v9990_tracebuf_push_text(&tb, " map:");
    fmsx_v9990_tracebuf_push_text(&tb, (fmsx_v9990_get_display_mode() == FMSX_V9990_MODE_P1) ? "p1" : "lin");
    fmsx_v9990_tracebuf_push_text(&tb, " cpu:");
    fmsx_v9990_tracebuf_push_text(&tb, (fmsx_v9990_get_display_mode() == FMSX_V9990_MODE_P1) ? "p1" : "lin");
    fmsx_v9990_tracebuf_push_text(&tb, " cmd:");
    fmsx_v9990_tracebuf_push_text(&tb, (fmsx_v9990_get_display_mode() == FMSX_V9990_MODE_P1) ? "mix" : "mix");
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
        fmsx_v9990_debug_trace_p1_block_timing(height);
        fmsx_v9990_debug_trace_p1_block_profile(height);
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

static void fmsx_v9990_debug_trace_p1_block_timing(unsigned height)
{
    char line[224];
    TFmsxV9990TraceBuffer tb;
    const uint64_t now_cycles = fmsx_vdp_cpu_cycles_now();
    const unsigned status_line = g_fmsx_v9990.status_uc_ticks / FMSX_V9990_UC_TICKS_PER_LINE;
    const unsigned status_x = g_fmsx_v9990.status_uc_ticks % FMSX_V9990_UC_TICKS_PER_LINE;
    const unsigned blocks = (height + FMSX_V9990_DEBUG_BLOCK_LINES - 1u) / FMSX_V9990_DEBUG_BLOCK_LINES;

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9D clk sc:");
    fmsx_v9990_tracebuf_push_int(&tb, ScanLine);
    fmsx_v9990_tracebuf_push_text(&tb, " sy:");
    fmsx_v9990_tracebuf_push_uint(&tb, status_line);
    fmsx_v9990_tracebuf_push_text(&tb, " sx:");
    fmsx_v9990_tracebuf_push_uint(&tb, status_x);
    fmsx_v9990_tracebuf_push_text(&tb, " uc:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.status_uc_ticks);
    fmsx_v9990_tracebuf_push_text(&tb, " cy:");
    fmsx_v9990_tracebuf_push_hex32(&tb, (uint32_t) now_cycles);
    fmsx_v9990_tracebuf_push_text(&tb, " ev:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.raster_event_count);
    fmsx_v9990_tracebuf_push_text(&tb, " blk:");
    fmsx_v9990_tracebuf_push_uint(&tb, blocks);
    fmsx_v9990_tracebuf_push_text(&tb, " fld:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_video.field_parity_odd ? 1u : 0u);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_trace_p1_block_profile(unsigned height)
{
    char line[320];
    TFmsxV9990TraceBuffer tb;
    unsigned block_a_rows[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_b_rows[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_f_rows[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_missing_rows[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_backdrop_rows[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_event_count[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_backdrop_events[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_palette_events[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_scroll_events[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_event_x_min[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned block_event_x_max[FMSX_V9990_DEBUG_BLOCK_MAX];
    uint8_t block_backdrop_index[FMSX_V9990_DEBUG_BLOCK_MAX];
    uint8_t block_control[FMSX_V9990_DEBUG_BLOCK_MAX];
    uint8_t block_mode0[FMSX_V9990_DEBUG_BLOCK_MAX];
    uint8_t block_mode1[FMSX_V9990_DEBUG_BLOCK_MAX];
    unsigned blocks;
    unsigned y;
    unsigned i;
    unsigned emitted = 0u;
    const unsigned plane_threshold = 16u;
    const unsigned final_threshold = 16u;
    const unsigned backdrop_threshold = 4u;

    if (!g_fmsx_v9990_debug_p1_profile_valid || height == 0u)
    {
        return;
    }

    blocks = (height + FMSX_V9990_DEBUG_BLOCK_LINES - 1u) / FMSX_V9990_DEBUG_BLOCK_LINES;
    if (blocks > FMSX_V9990_DEBUG_BLOCK_MAX)
    {
        blocks = FMSX_V9990_DEBUG_BLOCK_MAX;
    }

    memset(block_a_rows, 0, sizeof(block_a_rows));
    memset(block_b_rows, 0, sizeof(block_b_rows));
    memset(block_f_rows, 0, sizeof(block_f_rows));
    memset(block_missing_rows, 0, sizeof(block_missing_rows));
    memset(block_backdrop_rows, 0, sizeof(block_backdrop_rows));
    memset(block_event_count, 0, sizeof(block_event_count));
    memset(block_backdrop_events, 0, sizeof(block_backdrop_events));
    memset(block_palette_events, 0, sizeof(block_palette_events));
    memset(block_scroll_events, 0, sizeof(block_scroll_events));

    for (i = 0u; i < blocks; ++i)
    {
        const unsigned base_y = i * FMSX_V9990_DEBUG_BLOCK_LINES;
        block_event_x_min[i] = 0xFFFFu;
        block_event_x_max[i] = 0u;
        block_backdrop_index[i] = g_fmsx_v9990.backdrop_color_lines[base_y];
        block_control[i] = g_fmsx_v9990.control_lines[base_y];
        block_mode0[i] = g_fmsx_v9990.screen_mode_0_lines[base_y];
        block_mode1[i] = g_fmsx_v9990.screen_mode_1_lines[base_y];
    }

    for (y = 0u; y < height; ++y)
    {
        const unsigned block = y / FMSX_V9990_DEBUG_BLOCK_LINES;
        const boolean a_on = (g_fmsx_v9990_debug_p1_plane_a_lines[y] >= plane_threshold) ? TRUE : FALSE;
        const boolean b_on = (g_fmsx_v9990_debug_p1_plane_b_lines[y] >= plane_threshold) ? TRUE : FALSE;
        const boolean f_on = (g_fmsx_v9990_debug_p1_final_lines[y] >= final_threshold) ? TRUE : FALSE;
        const boolean f_backdrop = (g_fmsx_v9990_debug_p1_final_lines[y] <= backdrop_threshold) ? TRUE : FALSE;

        if (block >= blocks)
        {
            continue;
        }

        if (a_on) ++block_a_rows[block];
        if (b_on) ++block_b_rows[block];
        if (f_on) ++block_f_rows[block];
        if ((a_on || b_on) && f_backdrop) ++block_missing_rows[block];
        if (f_backdrop) ++block_backdrop_rows[block];
    }

    for (i = 0u; i < g_fmsx_v9990.raster_event_count; ++i)
    {
        const TFmsxV9990RasterEvent *event = &g_fmsx_v9990.raster_events[i];
        const unsigned block = event->y / FMSX_V9990_DEBUG_BLOCK_LINES;

        if (block >= blocks)
        {
            continue;
        }

        ++block_event_count[block];
        if (event->x < block_event_x_min[block]) block_event_x_min[block] = event->x;
        if (event->x > block_event_x_max[block]) block_event_x_max[block] = event->x;

        switch ((TFmsxV9990RasterEventKind) event->kind)
        {
        case FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR:
            ++block_backdrop_events[block];
            break;
        case FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL:
            ++block_palette_events[block];
            break;
        case FMSX_V9990_RASTER_EVENT_AY0:
        case FMSX_V9990_RASTER_EVENT_BY0:
        case FMSX_V9990_RASTER_EVENT_AY1:
        case FMSX_V9990_RASTER_EVENT_BY1:
        case FMSX_V9990_RASTER_EVENT_AX:
        case FMSX_V9990_RASTER_EVENT_BX:
        case FMSX_V9990_RASTER_EVENT_PRIORITY:
        case FMSX_V9990_RASTER_EVENT_BY1_PLANES:
            ++block_scroll_events[block];
            break;
        default:
            break;
        }
    }

    for (i = 0u; i < blocks; ++i)
    {
        const boolean suspicious = (block_missing_rows[i] >= 4u)
            || ((block_a_rows[i] + block_b_rows[i]) >= 8u && block_f_rows[i] == 0u);

        if (!suspicious)
        {
            continue;
        }

        if ((emitted % 2u) == 0u)
        {
            if (emitted != 0u)
            {
                fmsx_v9990_tracebuf_push_char(&tb, '\n');
                msxbare_uart_write(line);
            }
            fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
            fmsx_v9990_tracebuf_push_text(&tb, "G9B blk ");
        }
        else
        {
            fmsx_v9990_tracebuf_push_text(&tb, " | ");
        }

        fmsx_v9990_tracebuf_push_uint(&tb, i);
        fmsx_v9990_tracebuf_push_char(&tb, ':');
        fmsx_v9990_tracebuf_push_uint(&tb, block_a_rows[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, block_b_rows[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, block_f_rows[i]);
        fmsx_v9990_tracebuf_push_text(&tb, " m:");
        fmsx_v9990_tracebuf_push_uint(&tb, block_missing_rows[i]);
        fmsx_v9990_tracebuf_push_text(&tb, " bd:");
        fmsx_v9990_tracebuf_push_uint(&tb, block_backdrop_rows[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '@');
        fmsx_v9990_tracebuf_push_hex8(&tb, block_backdrop_index[i]);
        fmsx_v9990_tracebuf_push_text(&tb, " ev:");
        fmsx_v9990_tracebuf_push_uint(&tb, block_event_count[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, block_scroll_events[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, block_palette_events[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_uint(&tb, block_backdrop_events[i]);
        fmsx_v9990_tracebuf_push_text(&tb, " x:");
        if (block_event_count[i] == 0u || block_event_x_min[i] == 0xFFFFu)
        {
            fmsx_v9990_tracebuf_push_text(&tb, "-");
        }
        else
        {
            fmsx_v9990_tracebuf_push_uint(&tb, block_event_x_min[i]);
            fmsx_v9990_tracebuf_push_char(&tb, '-');
            fmsx_v9990_tracebuf_push_uint(&tb, block_event_x_max[i]);
        }
        fmsx_v9990_tracebuf_push_text(&tb, " ct:");
        fmsx_v9990_tracebuf_push_hex8(&tb, block_control[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_hex8(&tb, block_mode0[i]);
        fmsx_v9990_tracebuf_push_char(&tb, '/');
        fmsx_v9990_tracebuf_push_hex8(&tb, block_mode1[i]);
        ++emitted;
    }

    if (emitted != 0u)
    {
        fmsx_v9990_tracebuf_push_char(&tb, '\n');
        msxbare_uart_write(line);
    }
}

static void fmsx_v9990_debug_trace_lmmc(const char *tag)
{
    char line[320];
    TFmsxV9990TraceBuffer tb;
    unsigned rows = 0u;
    unsigned blocks16 = 0u;
    const unsigned sx_raw =
        ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX1] & 0x07u) << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SX0];
    const unsigned sy_raw =
        ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] & 0x0Fu) << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY0];
    const unsigned dx_raw =
        ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX1] & 0x07u) << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX0];
    const unsigned dy_raw =
        ((unsigned) (g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] & 0x0Fu) << 8)
        | (unsigned) g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY0];

    if (g_fmsx_v9990_debug_lmmc_logs_remaining == 0u)
    {
        return;
    }

    --g_fmsx_v9990_debug_lmmc_logs_remaining;
    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9U ");
    fmsx_v9990_tracebuf_push_text(&tb, tag);
    fmsx_v9990_tracebuf_push_text(&tb, " op:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990_debug_lmmc_opcode);
    fmsx_v9990_tracebuf_push_text(&tb, " b:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_bytes);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_total_bytes);
    fmsx_v9990_tracebuf_push_text(&tb, " c8:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_bytes >> 11);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_total_bytes >> 11);
    fmsx_v9990_tracebuf_push_text(&tb, " c20:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_bytes >> 13);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_total_bytes >> 13);
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
    fmsx_v9990_tracebuf_push_text(&tb, " rb:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990_debug_lmmc_row_bytes);
    if (g_fmsx_v9990_debug_lmmc_row_bytes != 0u)
    {
        rows = g_fmsx_v9990_debug_lmmc_bytes / g_fmsx_v9990_debug_lmmc_row_bytes;
        blocks16 = rows >> 4;
    }
    fmsx_v9990_tracebuf_push_text(&tb, " row:");
    fmsx_v9990_tracebuf_push_uint(&tb, rows);
    fmsx_v9990_tracebuf_push_text(&tb, " b16:");
    fmsx_v9990_tracebuf_push_uint(&tb, blocks16);
    fmsx_v9990_tracebuf_push_text(&tb, " sx:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.sx);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, sx_raw);
    fmsx_v9990_tracebuf_push_text(&tb, " sy:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.sy);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, sy_raw);
    fmsx_v9990_tracebuf_push_text(&tb, " dx:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.dx);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, dx_raw);
    fmsx_v9990_tracebuf_push_text(&tb, " dy:");
    fmsx_v9990_tracebuf_push_uint(&tb, g_fmsx_v9990.cmd.dy);
    fmsx_v9990_tracebuf_push_char(&tb, '/');
    fmsx_v9990_tracebuf_push_uint(&tb, dy_raw);
    fmsx_v9990_tracebuf_push_text(&tb, " sa:");
    fmsx_v9990_tracebuf_push_uint(&tb, fmsx_v9990_cmd_linear_src_address());
    fmsx_v9990_tracebuf_push_text(&tb, " da:");
    fmsx_v9990_tracebuf_push_uint(&tb, fmsx_v9990_cmd_linear_dst_address());
    fmsx_v9990_tracebuf_push_text(&tb, " wm:");
    fmsx_v9990_tracebuf_push_hex16(&tb, g_fmsx_v9990.cmd.wm);
    fmsx_v9990_tracebuf_push_text(&tb, " arg:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.cmd.arg);
    fmsx_v9990_tracebuf_push_text(&tb, " log:");
    fmsx_v9990_tracebuf_push_hex8(&tb, g_fmsx_v9990.cmd.log);
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
}

static void fmsx_v9990_debug_begin_linear_trace(
    uint8_t opcode,
    TFmsxV9990CommandMode mode,
    unsigned image_width,
    unsigned pitch,
    uint32_t total_bytes)
{
#if MSXBARE_ENABLE_DEBUG_OVERLAY && MSXBARE_V9990_UART_TRACE
    unsigned row_bytes = 0u;

    switch (mode)
    {
    case FMSX_V9990_CMD_MODE_P1:
    case FMSX_V9990_CMD_MODE_P2:
    case FMSX_V9990_CMD_MODE_BPP4:
        row_bytes = image_width >> 1;
        break;
    case FMSX_V9990_CMD_MODE_BPP2:
        row_bytes = image_width >> 2;
        break;
    case FMSX_V9990_CMD_MODE_BPP8:
        row_bytes = image_width;
        break;
    case FMSX_V9990_CMD_MODE_BPP16:
        row_bytes = image_width << 1;
        break;
    default:
        row_bytes = 0u;
        break;
    }

    g_fmsx_v9990_debug_lmmc_trace_active = (total_bytes >= 0x0800u) ? TRUE : FALSE;
    g_fmsx_v9990_debug_lmmc_bytes = 0u;
    g_fmsx_v9990_debug_lmmc_total_bytes = total_bytes;
    g_fmsx_v9990_debug_lmmc_logs_remaining = g_fmsx_v9990_debug_lmmc_trace_active ? 16u : 0u;
    g_fmsx_v9990_debug_lmmc_pitch = pitch;
    g_fmsx_v9990_debug_lmmc_image_width = image_width;
    g_fmsx_v9990_debug_lmmc_row_bytes = row_bytes;
    g_fmsx_v9990_debug_lmmc_mode = (uint8_t) mode;
    g_fmsx_v9990_debug_lmmc_opcode = opcode;
    if (g_fmsx_v9990_debug_lmmc_trace_active)
    {
        fmsx_v9990_debug_trace_lmmc("start");
    }
#else
    (void) opcode;
    (void) mode;
    (void) image_width;
    (void) pitch;
    (void) total_bytes;
#endif
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

static void fmsx_v9990_debug_trace_disabled_port(const char *prefix, uint8_t port, uint8_t value)
{
    (void) prefix;
    (void) port;
    (void) value;
}

static void fmsx_v9990_debug_trace_codeintruder_status(uint8_t value)
{
    (void) value;
}

static void fmsx_v9990_debug_trace_codeintruder_palette(uint8_t value)
{
    (void) value;
}

static void fmsx_v9990_debug_trace_codeintruder_vram_out(unsigned raw, unsigned phys, uint8_t value)
{
    (void) raw;
    (void) phys;
    (void) value;
}

static void fmsx_v9990_debug_begin_linear_trace(uint8_t opcode,
                                                TFmsxV9990CommandMode mode,
                                                unsigned image_width,
                                                unsigned pitch,
                                                uint32_t total_bytes)
{
    (void) opcode;
    (void) mode;
    (void) image_width;
    (void) pitch;
    (void) total_bytes;
}

static void fmsx_v9990_debug_trace_frame_profile(unsigned width,
                                                 unsigned height,
                                                 unsigned image_width,
                                                 unsigned bytes_per_line,
                                                 uint8_t mode_kind)
{
    (void) width;
    (void) height;
    (void) image_width;
    (void) bytes_per_line;
    (void) mode_kind;
}

static void fmsx_v9990_debug_trace_lmmc(const char *tag)
{
    (void) tag;
}

static boolean fmsx_v9990_debug_is_codeintruder_palette_bulk(void)
{
    return FALSE;
}

static boolean fmsx_v9990_debug_is_codeintruder_vram_bulk(uint8_t port)
{
    (void) port;
    return FALSE;
}

static void fmsx_v9990_debug_reset_codeintruder_windows(void)
{
}

static void fmsx_v9990_debug_trace_command(const char *prefix, uint8_t opcode)
{
    (void) prefix;
    (void) opcode;
}

static void fmsx_v9990_debug_trace_vram_cpu(const char *tag, unsigned raw, unsigned phys, uint8_t value)
{
    (void) tag;
    (void) raw;
    (void) phys;
    (void) value;
}

static void fmsx_v9990_debug_trace_vram_interleave(const char *tag, boolean before, boolean after)
{
    (void) tag;
    (void) before;
    (void) after;
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

static void fmsx_v9990_debug_trace_core_reg_write(uint8_t reg, uint8_t prev, uint8_t value)
{
    (void) reg;
    (void) prev;
    (void) value;
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

static void fmsx_v9990_debug_rearm_port_window(void)
{
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
    const boolean xtal = fmsx_v9990_is_csm_mode();
    const TFmsxV9990DisplayMode mode = fmsx_v9990_get_display_mode();
    const boolean has_borders =
        (mode == FMSX_V9990_MODE_P1
      || mode == FMSX_V9990_MODE_P2
      || mode == FMSX_V9990_MODE_B1
      || mode == FMSX_V9990_MODE_B3
      || mode == FMSX_V9990_MODE_B7) ? TRUE : FALSE;
    const unsigned blank = xtal ? 372u : 400u;
    const unsigned border1 = has_borders ? (xtal ? 0u : 112u) : 0u;
    const int adjust = ((((int) (g_fmsx_v9990.regs[FMSX_V9990_REG_DISPLAY_ADJUST] & 0x0Fu)) ^ 7) - 8) * 8;
    return (unsigned) ((int) blank + (int) border1 + adjust);
}

static unsigned fmsx_v9990_get_right_border_ticks(void)
{
    const boolean xtal = fmsx_v9990_is_csm_mode();
    const unsigned display = xtal ? 2304u : 2048u;
    return fmsx_v9990_get_left_border_ticks() + display;
}

static unsigned fmsx_v9990_get_frame_lines(void)
{
    return (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1] & 0x08u) ? 313u : 262u;
}

static unsigned fmsx_v9990_get_top_border_lines(void)
{
    const boolean xtal = fmsx_v9990_is_csm_mode();
    const TFmsxV9990DisplayMode mode = fmsx_v9990_get_display_mode();
    const boolean has_borders =
        (mode == FMSX_V9990_MODE_P1
      || mode == FMSX_V9990_MODE_P2
      || mode == FMSX_V9990_MODE_B1
      || mode == FMSX_V9990_MODE_B3
      || mode == FMSX_V9990_MODE_B7) ? TRUE : FALSE;
    const boolean pal = (g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1] & 0x08u) ? TRUE : FALSE;
    const unsigned blank = 15u;
    const unsigned border1 = has_borders ? (xtal ? 0u : (pal ? 41u : 14u)) : 0u;
    const int adjust = ((((int) ((g_fmsx_v9990.regs[FMSX_V9990_REG_DISPLAY_ADJUST] >> 4) & 0x0Fu)) ^ 7) - 8);
    return (unsigned) ((int) blank + (int) border1 + adjust);
}

static unsigned fmsx_v9990_get_bottom_border_lines(void)
{
    return fmsx_v9990_get_top_border_lines() + fmsx_v9990_frame_height();
}

static boolean fmsx_v9990_is_csm_mode(void)
{
    return (g_fmsx_v9990.system_control & 0x01u) ? TRUE : FALSE;
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
        return width;
    case FMSX_V9990_CMD_MODE_BPP16:
        return width << 1;
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
        const unsigned coord_x = x & 0x00FFu;
        const unsigned plane_y = (y & 0x07FFu) | ((x & 0x0200u) ? 0x0800u : 0u);

        /*
         * WebMSX/openMSX treat P1 x/y commands on raw VRAM coordinates:
         *   pos = (planeY * imageWidthBytes) + (x >> 1)
         *
         * The linear-address swizzle ((addr >> 1) | ((addr & 1) << 18)) is
         * only for the linear-address family (BMLX/BMLL/CMMM on P1), not for
         * x/y-addressed commands. Applying transform_linear_p1() here makes
         * the command engine read/write the wrong quarter of the background
         * and matches the persistent gameplay corruption.
         */
        return (((plane_y * pitch) + (coord_x >> 1)) & (FMSX_V9990_VRAM_BYTES - 1u));
    }
    case FMSX_V9990_CMD_MODE_P2:
        return (((x >> 1) & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP2:
        return (((x >> 2) & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP4:
        return (((x >> 1) & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP8:
        return ((x & (pitch - 1u)) + y * pitch) & 0x7FFFFu;
    case FMSX_V9990_CMD_MODE_BPP16:
        return ((((x << 1) & (pitch - 1u)) + y * pitch) & 0x7FFFFu);
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

static uint16_t fmsx_v9990_cmd_wm16_for_addr(uint16_t wm, unsigned linear_addr)
{
    return (uint16_t) (((wm >> (((linear_addr & 1u) != 0u) ? 8u : 0u)) & 0x00FFu)
        | ((wm << (((linear_addr & 1u) != 0u) ? 8u : 0u)) & 0xFF00u));
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

static unsigned fmsx_v9990_cmd_p1_xy_direct_address(unsigned x, unsigned y_linear, unsigned pitch)
{
    return ((((y_linear & 0x0FFFu) * pitch) + ((x & 0x00FFu) >> 1)) & (FMSX_V9990_VRAM_BYTES - 1u));
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
    const unsigned s_direct = fmsx_v9990_cmd_p1_xy_direct_address(sx, sy_linear, pitch);
    const unsigned d_direct = fmsx_v9990_cmd_p1_xy_direct_address(dx, dy_linear, pitch);
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
    const unsigned d_direct = fmsx_v9990_cmd_p1_xy_direct_address(dx, dy_linear, pitch);
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
    const unsigned s_direct = fmsx_v9990_cmd_p1_xy_direct_address(sx, sy_linear, pitch);
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

static void fmsx_v9990_cmd_linear_pcopylx_bpp16(
    unsigned da,
    unsigned sx,
    unsigned sy,
    unsigned pitch,
    uint8_t log,
    uint16_t wm)
{
    const unsigned s_direct = fmsx_v9990_cmd_address_of(FMSX_V9990_CMD_MODE_BPP16, sx, sy, pitch);
    const uint16_t src =
        (uint16_t) fmsx_v9990_cmd_read_vram_xy(FMSX_V9990_CMD_MODE_BPP16, s_direct + 0u)
      | ((uint16_t) fmsx_v9990_cmd_read_vram_xy(FMSX_V9990_CMD_MODE_BPP16, s_direct + 1u) << 8);
    const unsigned d_direct = da & 0x7FFFFu;
    const uint16_t dst =
        (uint16_t) fmsx_v9990_read_vram_linear(FMSX_V9990_CMD_MODE_BPP16, d_direct + 0u)
      | ((uint16_t) fmsx_v9990_read_vram_linear(FMSX_V9990_CMD_MODE_BPP16, (d_direct + 1u) & 0x7FFFFu) << 8);
    const uint16_t result = fmsx_v9990_cmd_logic16(
        log,
        src,
        dst,
        (log & 0x10u) ? TRUE : FALSE);
    const uint16_t masked = (uint16_t) ((dst & ~fmsx_v9990_cmd_wm16_for_addr(wm, da)) | (result & fmsx_v9990_cmd_wm16_for_addr(wm, da)));

    fmsx_v9990_write_vram_linear(FMSX_V9990_CMD_MODE_BPP16, d_direct + 0u, (uint8_t) (masked & 0x00FFu));
    fmsx_v9990_write_vram_linear(FMSX_V9990_CMD_MODE_BPP16, (d_direct + 1u) & 0x7FFFFu, (uint8_t) (masked >> 8));
}

static uint16_t fmsx_v9990_cmd_p1_normal_pgetx(unsigned sx, unsigned sy_linear, unsigned dx, unsigned pitch)
{
    const unsigned s_shift = (1u - (sx & 1u)) << 2;
    const unsigned d_shift = (3u - (dx & 3u)) << 2;
    const unsigned s_direct = fmsx_v9990_cmd_p1_xy_direct_address(sx, sy_linear, pitch);
    return (uint16_t) ((((unsigned) fmsx_v9990_read_vram_direct(s_direct) >> s_shift) & 0x0Fu) << d_shift);
}

static uint16_t fmsx_v9990_cmd_point(TFmsxV9990CommandMode mode, unsigned x, unsigned y, unsigned pitch)
{
    const unsigned addr = fmsx_v9990_cmd_address_of(mode, x, y, pitch);

    if (mode == FMSX_V9990_CMD_MODE_BPP16)
    {
        return (uint16_t) fmsx_v9990_cmd_read_vram_xy(mode, addr + 0u)
            | ((uint16_t) fmsx_v9990_cmd_read_vram_xy(mode, addr + 1u) << 8);
    }

    return fmsx_v9990_cmd_read_vram_xy(mode, addr);
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
    g_fmsx_v9990.vram[fmsx_v9990_transform_bx(address)] = value;
}

static uint8_t fmsx_v9990_cmd_read_vram_nonp1(unsigned address)
{
    return fmsx_v9990_read_vram_direct(fmsx_v9990_transform_bx(address));
}

static void fmsx_v9990_cmd_write_vram_nonp1(unsigned address, uint8_t value)
{
    g_fmsx_v9990.vram[fmsx_v9990_transform_bx(address)] = value;
}

static uint8_t fmsx_v9990_cmd_read_vram_xy(TFmsxV9990CommandMode mode, unsigned address)
{
    if (mode == FMSX_V9990_CMD_MODE_P1)
    {
        return fmsx_v9990_read_vram_direct(address);
    }
    return fmsx_v9990_cmd_read_vram_nonp1(address);
}

static void fmsx_v9990_cmd_write_vram_xy(TFmsxV9990CommandMode mode, unsigned address, uint8_t value)
{
    if (mode == FMSX_V9990_CMD_MODE_P1)
    {
        g_fmsx_v9990.vram[address & (FMSX_V9990_VRAM_BYTES - 1u)] = value;
        return;
    }
    fmsx_v9990_cmd_write_vram_nonp1(address, value);
}

static void fmsx_v9990_cmd_pset_color(TFmsxV9990CommandMode mode, unsigned x, unsigned y, unsigned pitch, uint16_t color, uint16_t mask, uint8_t log)
{
    const unsigned addr = fmsx_v9990_cmd_address_of(mode, x, y, pitch);
    const boolean transparent = (log & 0x10u) ? TRUE : FALSE;

    if (mode == FMSX_V9990_CMD_MODE_BPP16)
    {
        const uint16_t dst = (uint16_t) fmsx_v9990_cmd_read_vram_xy(mode, addr + 0u)
            | ((uint16_t) fmsx_v9990_cmd_read_vram_xy(mode, addr + 1u) << 8);
        const uint16_t logic = fmsx_v9990_cmd_logic16(log, color, dst, transparent);
        const uint16_t result = (uint16_t) ((dst & ~mask) | (logic & mask));
        fmsx_v9990_cmd_write_vram_xy(mode, addr + 0u, (uint8_t) (result & 0xFFu));
        fmsx_v9990_cmd_write_vram_xy(mode, addr + 1u, (uint8_t) (result >> 8));
        return;
    }

    {
        const uint8_t dst = fmsx_v9990_cmd_read_vram_xy(mode, addr);
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
        fmsx_v9990_cmd_write_vram_xy(mode, addr, (uint8_t) ((dst & ~active_mask) | (logic & active_mask)));
    }
}

static boolean fmsx_v9990_cmd_advance_write_cursor(TFmsxV9990CommandMode mode)
{
    const unsigned total_nx = fmsx_v9990_cmd_get_total_nx();
    const int step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? -1 : 1;
    const int step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? -1 : 1;
    const unsigned width_mask = fmsx_v9990_cmd_visible_width_mask(mode);
    const unsigned height_mask = fmsx_v9990_cmd_visible_height_mask(mode);

    if (width_mask != 0u)
    {
        const unsigned plane_bits = (unsigned) g_fmsx_v9990.cmd.dx & ~width_mask;
        const unsigned visible_x = (((unsigned) g_fmsx_v9990.cmd.dx & width_mask) + step_x) & width_mask;
        g_fmsx_v9990.cmd.dx = (uint16_t) (plane_bits | visible_x);
    }
    else
    {
        g_fmsx_v9990.cmd.dx = (uint16_t) (g_fmsx_v9990.cmd.dx + step_x);
    }
    if (--g_fmsx_v9990.cmd.nx == 0u)
    {
        if (width_mask != 0u)
        {
            const unsigned plane_bits = (unsigned) g_fmsx_v9990.cmd.dx & ~width_mask;
            g_fmsx_v9990.cmd.dx = (uint16_t) (plane_bits | fmsx_v9990_cmd_start_visible_dx(mode));
        }
        else
        {
            g_fmsx_v9990.cmd.dx = (uint16_t) (g_fmsx_v9990.cmd.dx - (int) total_nx * step_x);
        }

        if (height_mask != 0u)
        {
            g_fmsx_v9990.cmd.dy = (uint16_t) ((((unsigned) g_fmsx_v9990.cmd.dy & height_mask) + step_y) & height_mask);
        }
        else
        {
            g_fmsx_v9990.cmd.dy = (uint16_t) (g_fmsx_v9990.cmd.dy + step_y);
        }
        if (--g_fmsx_v9990.cmd.ny == 0u)
        {
            return TRUE;
        }
        g_fmsx_v9990.cmd.nx = (uint16_t) total_nx;
    }
    return FALSE;
}

static boolean fmsx_v9990_cmd_advance_read_cursor(TFmsxV9990CommandMode mode)
{
    const unsigned total_nx = fmsx_v9990_cmd_get_total_nx();
    const int step_x = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? -1 : 1;
    const int step_y = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIY) ? -1 : 1;
    const unsigned width_mask = fmsx_v9990_cmd_visible_width_mask(mode);
    const unsigned height_mask = fmsx_v9990_cmd_visible_height_mask(mode);

    if (width_mask != 0u)
    {
        const unsigned plane_bits = (unsigned) g_fmsx_v9990.cmd.sx & ~width_mask;
        const unsigned visible_x = (((unsigned) g_fmsx_v9990.cmd.sx & width_mask) + step_x) & width_mask;
        g_fmsx_v9990.cmd.sx = (uint16_t) (plane_bits | visible_x);
    }
    else
    {
        g_fmsx_v9990.cmd.sx = (uint16_t) (g_fmsx_v9990.cmd.sx + step_x);
    }
    if (--g_fmsx_v9990.cmd.nx == 0u)
    {
        if (width_mask != 0u)
        {
            const unsigned plane_bits = (unsigned) g_fmsx_v9990.cmd.sx & ~width_mask;
            g_fmsx_v9990.cmd.sx = (uint16_t) (plane_bits | fmsx_v9990_cmd_start_visible_sx(mode));
        }
        else
        {
            g_fmsx_v9990.cmd.sx = (uint16_t) (g_fmsx_v9990.cmd.sx - (int) total_nx * step_x);
        }

        if (height_mask != 0u)
        {
            g_fmsx_v9990.cmd.sy = (uint16_t) ((((unsigned) g_fmsx_v9990.cmd.sy & height_mask) + step_y) & height_mask);
        }
        else
        {
            g_fmsx_v9990.cmd.sy = (uint16_t) (g_fmsx_v9990.cmd.sy + step_y);
        }
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

    if (mode == FMSX_V9990_CMD_MODE_P1)
    {
        const unsigned sy_linear =
            ((unsigned) g_fmsx_v9990.cmd.sy & 0x07FFu)
            | (((unsigned) g_fmsx_v9990.cmd.sx & 0x0200u) ? 0x0800u : 0u);
        uint8_t packed = 0u;

        packed = (uint8_t) (packed | (fmsx_v9990_cmd_p1_normal_pgetx(
            (unsigned) g_fmsx_v9990.cmd.sx & 0x00FFu,
            sy_linear,
            2u,
            pitch) & 0xF0u));
        end_after_read = fmsx_v9990_cmd_advance_read_cursor(mode);
        if (!end_after_read)
        {
            const unsigned sy_linear_next =
                ((unsigned) g_fmsx_v9990.cmd.sy & 0x07FFu)
                | (((unsigned) g_fmsx_v9990.cmd.sx & 0x0200u) ? 0x0800u : 0u);
            packed = (uint8_t) (packed | (fmsx_v9990_cmd_p1_normal_pgetx(
                (unsigned) g_fmsx_v9990.cmd.sx & 0x00FFu,
                sy_linear_next,
                3u,
                pitch) & 0x0Fu));
            end_after_read = fmsx_v9990_cmd_advance_read_cursor(mode);
        }

        g_fmsx_v9990.cmd.data = packed;
    }
    else if (mode == FMSX_V9990_CMD_MODE_BPP16)
    {
        const uint16_t value = fmsx_v9990_cmd_point(mode, g_fmsx_v9990.cmd.sx, g_fmsx_v9990.cmd.sy, pitch);
        end_after_read = fmsx_v9990_cmd_advance_read_cursor(mode);
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
            end_after_read = fmsx_v9990_cmd_advance_read_cursor(mode);
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
#if MSXBARE_ENABLE_DEBUG_OVERLAY && MSXBARE_V9990_UART_TRACE
    if (g_fmsx_v9990_debug_lmmc_trace_active)
    {
        ++g_fmsx_v9990_debug_lmmc_bytes;
        if ((g_fmsx_v9990_debug_lmmc_bytes % 0x0800u) == 0u)
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

    if (mode == FMSX_V9990_CMD_MODE_P1)
    {
        const boolean plane_b = fmsx_v9990_cmd_p1_dest_plane_b();
        const uint16_t wm = fmsx_v9990_cmd_plane_wm(plane_b);
        const unsigned dy_linear =
            ((unsigned) g_fmsx_v9990.cmd.dy & 0x07FFu)
            | (plane_b ? 0x0800u : 0u);
        const uint16_t sc = (uint16_t) (value | ((uint16_t) value << 8));

        fmsx_v9990_cmd_p1_logical_psetx(
            (unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu,
            dy_linear,
            0u,
            sc,
            g_fmsx_v9990.cmd.log,
            wm,
            pitch);

        if (fmsx_v9990_cmd_advance_write_cursor(mode))
        {
            fmsx_v9990_cmd_ready();
            return;
        }

        fmsx_v9990_cmd_p1_logical_psetx(
            (unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu,
            (((unsigned) g_fmsx_v9990.cmd.dy & 0x07FFu)
                | (plane_b ? 0x0800u : 0u)),
            1u,
            sc,
            g_fmsx_v9990.cmd.log,
            wm,
            pitch);

        if (fmsx_v9990_cmd_advance_write_cursor(mode))
        {
            fmsx_v9990_cmd_ready();
        }
        else
        {
            g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
        }
        return;
    }
    else if (mode == FMSX_V9990_CMD_MODE_BPP16)
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

        if (fmsx_v9990_cmd_advance_write_cursor(mode))
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

            if (fmsx_v9990_cmd_advance_write_cursor(mode))
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

    if (mode == FMSX_V9990_CMD_MODE_P1)
    {
        const boolean plane_b = fmsx_v9990_cmd_p1_dest_plane_b();
        const uint16_t wm = fmsx_v9990_cmd_plane_wm(plane_b);
        const uint16_t fg = fmsx_v9990_cmd_plane_fc(plane_b);
        const uint16_t bg = fmsx_v9990_cmd_plane_bc(plane_b);
        for (bit = 0u; (bit < 8u) && (g_fmsx_v9990.cmd.ny != 0u); ++bit)
        {
            const uint16_t color = ((value & 0x80u) != 0u) ? fg : bg;
            const unsigned dy_linear =
                ((unsigned) g_fmsx_v9990.cmd.dy & 0x07FFu)
                | (plane_b ? 0x0800u : 0u);

            value <<= 1;
            fmsx_v9990_cmd_p1_logical_psetx(
                (unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu,
                dy_linear,
                (unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu,
                color,
                g_fmsx_v9990.cmd.log,
                wm,
                pitch);

            if (fmsx_v9990_cmd_advance_write_cursor(mode))
            {
                fmsx_v9990_cmd_ready();
                return;
            }
        }

        g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_TR;
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

        if (fmsx_v9990_cmd_advance_write_cursor(mode))
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
    const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();
    const unsigned mask = fmsx_v9990_cmd_image_height_mask(mode);

    if (mask != 0u)
    {
        value = (uint16_t) ((g_fmsx_v9990.cmd.sy & ~mask) | ((unsigned) value & mask));
    }
    else
    {
        value &= 0x0FFFu;
    }
    g_fmsx_v9990.cmd.sy = value;
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] =
        (uint8_t) ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] & 0xF0u) | ((value >> 8) & 0x0Fu));
}

static void fmsx_v9990_cmd_store_dy(uint16_t value)
{
    const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();
    const unsigned mask = fmsx_v9990_cmd_image_height_mask(mode);

    if (mask != 0u)
    {
        value = (uint16_t) ((g_fmsx_v9990.cmd.dy & ~mask) | ((unsigned) value & mask));
    }
    else
    {
        value &= 0x0FFFu;
    }
    g_fmsx_v9990.cmd.dy = value;
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] =
        (uint8_t) ((g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] & 0xF0u) | ((value >> 8) & 0x0Fu));
}

static void fmsx_v9990_cmd_store_dx(uint16_t value)
{
    const TFmsxV9990CommandMode mode = fmsx_v9990_cmd_latched_mode();
    const unsigned mask = fmsx_v9990_cmd_image_width_mask(mode);

    if (mask != 0u)
    {
        value = (uint16_t) ((g_fmsx_v9990.cmd.dx & ~mask) | ((unsigned) value & mask));
    }
    else
    {
        value &= 0x07FFu;
    }
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
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_SY1] = (uint8_t) ((value >> 16) & 0x07u);
}

static void fmsx_v9990_cmd_store_da(unsigned value)
{
    value &= 0x7FFFFu;
    g_fmsx_v9990.cmd.dx = (uint16_t) ((g_fmsx_v9990.cmd.dx & 0x0700u) | (value & 0x00FFu));
    g_fmsx_v9990.cmd.dy = (uint16_t) ((value >> 8) & 0x0FFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DX0] = (uint8_t) (value & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY0] = (uint8_t) ((value >> 8) & 0xFFu);
    g_fmsx_v9990.regs[FMSX_V9990_CMD_REG_DY1] = (uint8_t) ((value >> 16) & 0x07u);
}

static void fmsx_v9990_cmd_ready(void)
{
#if MSXBARE_ENABLE_DEBUG_OVERLAY
    if (g_fmsx_v9990_debug_lmmc_trace_active)
    {
        if (g_fmsx_v9990_debug_lmmc_bytes == 0u && g_fmsx_v9990_debug_lmmc_total_bytes != 0u)
        {
            g_fmsx_v9990_debug_lmmc_bytes = g_fmsx_v9990_debug_lmmc_total_bytes;
        }
        fmsx_v9990_debug_trace_lmmc("done");
        g_fmsx_v9990_debug_lmmc_trace_active = FALSE;
        g_fmsx_v9990_debug_lmmc_bytes = 0u;
        g_fmsx_v9990_debug_lmmc_total_bytes = 0u;
        g_fmsx_v9990_debug_lmmc_logs_remaining = 0u;
        g_fmsx_v9990_debug_lmmc_pitch = 0u;
        g_fmsx_v9990_debug_lmmc_image_width = 0u;
        g_fmsx_v9990_debug_lmmc_row_bytes = 0u;
        g_fmsx_v9990_debug_lmmc_mode = 0u;
        g_fmsx_v9990_debug_lmmc_opcode = 0u;
    }
#endif
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
    fmsx_v9990_cmd_normalize_start_coordinates(mode);
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
            fmsx_v9990_debug_begin_linear_trace(g_fmsx_v9990.cmd.opcode, mode, image_width, pitch, total_bytes);
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

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned dest_plane = fmsx_v9990_cmd_p1_dest_plane_offset();
            const uint16_t wm = fmsx_v9990_cmd_plane_wm(fmsx_v9990_cmd_p1_dest_plane_b());
            const uint16_t fc = fmsx_v9990_cmd_plane_fc(fmsx_v9990_cmd_p1_dest_plane_b());
            uint16_t dx_vis = (uint16_t) (dx & 0x00FFu);
            uint16_t dy_vis = (uint16_t) (dy & 0x07FFu);

            for (row = 0u; row < ny; ++row)
            {
                unsigned col;
                uint16_t edx = dx_vis;

                for (col = 0u; col < nx; ++col)
                {
                    fmsx_v9990_cmd_p1_logical_psetx(
                        edx,
                        (unsigned) dy_vis | dest_plane,
                        edx,
                        fc,
                        g_fmsx_v9990.cmd.log,
                        wm,
                        pitch);
                    edx = (uint16_t) ((edx + step_x) & 0x00FFu);
                }
                dy_vis = (uint16_t) ((dy_vis + step_y) & 0x07FFu);
            }

            fmsx_v9990_cmd_store_dy(dy_vis);
            fmsx_v9990_cmd_ready();
            break;
        }

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
            const uint16_t wm = fmsx_v9990_cmd_plane_wm(fmsx_v9990_cmd_p1_dest_plane_b());
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
                        wm,
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
        uint16_t dx = g_fmsx_v9990.cmd.dx;
        uint16_t dy = g_fmsx_v9990.cmd.dy;
        unsigned row;

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        fmsx_v9990_debug_begin_linear_trace(
            g_fmsx_v9990.cmd.opcode,
            mode,
            image_width,
            pitch,
            (uint32_t) ((((uint64_t) nx * (uint64_t) ny) + 7ull) >> 3));
#endif

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned dest_plane = fmsx_v9990_cmd_p1_dest_plane_offset();
            const uint16_t wm = fmsx_v9990_cmd_plane_wm(fmsx_v9990_cmd_p1_dest_plane_b());
            const uint16_t fg = fmsx_v9990_cmd_plane_fc(fmsx_v9990_cmd_p1_dest_plane_b());
            const uint16_t bg = fmsx_v9990_cmd_plane_bc(fmsx_v9990_cmd_p1_dest_plane_b());
            uint16_t dx_vis = (uint16_t) (dx & 0x00FFu);
            uint16_t dy_vis = (uint16_t) (dy & 0x07FFu);
            uint8_t pd = 0u;
            unsigned cp = 0u;

            for (row = 0u; row < ny; ++row)
            {
                unsigned col;
                uint16_t edx = dx_vis;

                for (col = 0u; col < nx; ++col)
                {
                    uint16_t color;
                    if ((cp & 0x07u) == 0u)
                    {
                        pd = fmsx_v9990_read_vram_linear(mode, src_address);
                        src_address = (src_address + 1u) & 0x7FFFFu;
                    }
                    color = ((pd >> (7u - (cp & 0x07u))) & 1u) ? fg : bg;
                    fmsx_v9990_cmd_p1_logical_psetx(
                        edx,
                        (unsigned) dy_vis | dest_plane,
                        edx,
                        color,
                        g_fmsx_v9990.cmd.log,
                        wm,
                        pitch);
                    edx = (uint16_t) ((edx + step_x) & 0x00FFu);
                    ++cp;
                }

                dy_vis = (uint16_t) ((dy_vis + step_y) & 0x07FFu);
            }

            fmsx_v9990_cmd_store_sa(src_address);
            fmsx_v9990_cmd_store_dy(dy_vis);
            fmsx_v9990_cmd_ready();
            break;
        }

        {
            uint8_t data = 0u;
            unsigned bits_left = 0u;

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
        }
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

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        {
            const unsigned bits_per_pixel = (mode == FMSX_V9990_CMD_MODE_BPP16)
                ? 16u
                : ((mode == FMSX_V9990_CMD_MODE_BPP8) ? 8u
                    : ((mode == FMSX_V9990_CMD_MODE_BPP4 || mode == FMSX_V9990_CMD_MODE_P1 || mode == FMSX_V9990_CMD_MODE_P2) ? 4u : 2u));
            const uint32_t total_bytes =
                (uint32_t) ((((uint64_t) nx * (uint64_t) ny * (uint64_t) bits_per_pixel) + 7ull) >> 3);
            fmsx_v9990_debug_begin_linear_trace(g_fmsx_v9990.cmd.opcode, mode, image_width, pitch, total_bytes);
        }
#endif

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned dest_plane = (g_fmsx_v9990.cmd.dx & 0x0200u) ? 0x0800u : 0u;
            const uint16_t wm = fmsx_v9990_cmd_plane_wm(fmsx_v9990_cmd_p1_dest_plane_b());
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
                            wm,
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
                        (uint16_t) fmsx_v9990_read_vram_linear(mode, src_address & 0x7FFFFu)
                        | ((uint16_t) fmsx_v9990_read_vram_linear(mode, (src_address + 1u) & 0x7FFFFu) << 8);
                    src_address = (src_address + 2u) & 0x7FFFFu;
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

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        {
            const unsigned bits_per_pixel = (mode == FMSX_V9990_CMD_MODE_BPP16)
                ? 16u
                : ((mode == FMSX_V9990_CMD_MODE_BPP8) ? 8u
                    : ((mode == FMSX_V9990_CMD_MODE_BPP4 || mode == FMSX_V9990_CMD_MODE_P1 || mode == FMSX_V9990_CMD_MODE_P2) ? 4u : 2u));
            const uint32_t total_bytes =
                (uint32_t) ((((uint64_t) nx * (uint64_t) ny * (uint64_t) bits_per_pixel) + 7ull) >> 3);
            fmsx_v9990_debug_begin_linear_trace(g_fmsx_v9990.cmd.opcode, mode, image_width, pitch, total_bytes);
        }
#endif

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
                    fmsx_v9990_cmd_linear_pcopylx_bpp16(dst_address, cur_sx, sy, pitch, g_fmsx_v9990.cmd.log, g_fmsx_v9990.cmd.wm);
                    dst_address = (dst_address + 2u) & 0x7FFFFu;
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

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        fmsx_v9990_debug_begin_linear_trace(g_fmsx_v9990.cmd.opcode, mode, image_width, pitch, (uint32_t) count);
#endif

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
        else
        {
            const boolean transparent = (g_fmsx_v9990.cmd.log & 0x10u) ? TRUE : FALSE;
            while (count-- != 0u)
            {
                const uint8_t src_color = fmsx_v9990_read_vram_linear(mode, src_address);
                const unsigned dst_direct = dst_address & 0x7FFFFu;
                const uint8_t dst_color = fmsx_v9990_read_vram_linear(mode, dst_direct);
                const uint8_t mask = fmsx_v9990_cmd_wm8_for_addr(g_fmsx_v9990.cmd.wm, dst_address);
                const uint8_t result = fmsx_v9990_cmd_logic_byte(mode, src_color, dst_color, mask, g_fmsx_v9990.cmd.log, transparent);

                fmsx_v9990_write_vram_linear(mode, dst_direct, result);
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

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned dest_plane = fmsx_v9990_cmd_p1_dest_plane_offset();
            const uint16_t wm = fmsx_v9990_cmd_plane_wm(fmsx_v9990_cmd_p1_dest_plane_b());
            const uint16_t fc = fmsx_v9990_cmd_plane_fc(fmsx_v9990_cmd_p1_dest_plane_b());
            uint16_t dx_vis = (uint16_t) (dx & 0x00FFu);
            uint16_t dy_vis = (uint16_t) (dy & 0x07FFu);

            if ((g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_MAJ) == 0u)
            {
                for (;;)
                {
                    fmsx_v9990_cmd_p1_logical_psetx(
                        dx_vis,
                        (unsigned) dy_vis | dest_plane,
                        dx_vis,
                        fc,
                        g_fmsx_v9990.cmd.log,
                        wm,
                        pitch);
                    dx_vis = (uint16_t) ((dx_vis + step_x) & 0x00FFu);
                    if (accumulator < ny)
                    {
                        accumulator = (uint16_t) (accumulator + nx);
                        dy_vis = (uint16_t) ((dy_vis + step_y) & 0x07FFu);
                    }
                    accumulator = (uint16_t) (accumulator - ny);
                    if (count++ == nx)
                    {
                        fmsx_v9990_cmd_store_dx(dx_vis);
                        fmsx_v9990_cmd_store_dy(dy_vis);
                        fmsx_v9990_cmd_ready();
                        break;
                    }
                }
            }
            else
            {
                for (;;)
                {
                    fmsx_v9990_cmd_p1_logical_psetx(
                        dx_vis,
                        (unsigned) dy_vis | dest_plane,
                        dx_vis,
                        fc,
                        g_fmsx_v9990.cmd.log,
                        wm,
                        pitch);
                    dy_vis = (uint16_t) ((dy_vis + step_y) & 0x07FFu);
                    if (accumulator < ny)
                    {
                        accumulator = (uint16_t) (accumulator + nx);
                        dx_vis = (uint16_t) ((dx_vis + step_x) & 0x00FFu);
                    }
                    accumulator = (uint16_t) (accumulator - ny);
                    if (count++ == nx)
                    {
                        fmsx_v9990_cmd_store_dx(dx_vis);
                        fmsx_v9990_cmd_store_dy(dy_vis);
                        fmsx_v9990_cmd_ready();
                        break;
                    }
                }
            }
            break;
        }

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

        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            const unsigned src_plane = fmsx_v9990_cmd_p1_source_plane_offset();
            const uint16_t fc = fmsx_v9990_cmd_plane_fc(fmsx_v9990_cmd_p1_source_plane_b());
            const int step_x_signed = (g_fmsx_v9990.cmd.arg & FMSX_V9990_CMD_ARG_DIX) ? -1 : 1;
            const unsigned stop_x = (step_x_signed > 0) ? fmsx_v9990_cmd_latched_image_width() : (unsigned) -1;
            uint16_t sx_vis = (uint16_t) (sx & 0x00FFu);

            for (;;)
            {
                const uint16_t value = fmsx_v9990_cmd_p1_normal_pgetx(
                    sx_vis,
                    ((unsigned) g_fmsx_v9990.cmd.sy & 0x07FFu) | src_plane,
                    sx_vis,
                    pitch);
                const uint16_t fc_compare = (uint16_t) (fc & (0xF000u >> (((unsigned) sx_vis & 0x0003u) << 2)));
                const boolean match = (value == fc_compare) ? TRUE : FALSE;

                if ((match ^ neq) != 0)
                {
                    g_fmsx_v9990.cmd.status |= FMSX_V9990_CMD_STATUS_BD;
                    g_fmsx_v9990.cmd.border_x = sx_vis;
                    fmsx_v9990_cmd_ready();
                    break;
                }

                sx_vis = (uint16_t) ((sx_vis + step_x) & 0x00FFu);
                if (sx_vis == (uint16_t) stop_x)
                {
                    g_fmsx_v9990.cmd.status &= (uint8_t) ~FMSX_V9990_CMD_STATUS_BD;
                    g_fmsx_v9990.cmd.border_x = sx_vis;
                    fmsx_v9990_cmd_ready();
                    break;
                }
            }
            break;
        }

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
                const uint8_t value = fmsx_v9990_cmd_read_vram_xy(mode, addr);
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
        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            fmsx_v9990_cmd_p1_logical_psetx(
                (unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu,
                ((unsigned) g_fmsx_v9990.cmd.dy & 0x07FFu) | fmsx_v9990_cmd_p1_dest_plane_offset(),
                (unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu,
                fmsx_v9990_cmd_plane_fc(fmsx_v9990_cmd_p1_dest_plane_b()),
                g_fmsx_v9990.cmd.log,
                fmsx_v9990_cmd_plane_wm(fmsx_v9990_cmd_p1_dest_plane_b()),
                pitch);
            fmsx_v9990_cmd_apply_advn();
            g_fmsx_v9990.cmd.dx = (uint16_t) ((g_fmsx_v9990.cmd.dx & 0x0200u) | ((unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu));
            g_fmsx_v9990.cmd.dy &= 0x07FFu;
            fmsx_v9990_cmd_ready();
            break;
        }
        fmsx_v9990_cmd_pset_color(mode, g_fmsx_v9990.cmd.dx, g_fmsx_v9990.cmd.dy, pitch, g_fmsx_v9990.cmd.fg, g_fmsx_v9990.cmd.wm, g_fmsx_v9990.cmd.log);
        fmsx_v9990_cmd_apply_advn();
        fmsx_v9990_cmd_ready();
        break;

    case 0x0Fu:
    {
        fmsx_v9990_cmd_apply_advn();
        if (mode == FMSX_V9990_CMD_MODE_P1)
        {
            g_fmsx_v9990.cmd.dx = (uint16_t) ((g_fmsx_v9990.cmd.dx & 0x0200u) | ((unsigned) g_fmsx_v9990.cmd.dx & 0x00FFu));
            g_fmsx_v9990.cmd.dy &= 0x07FFu;
        }
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
    case FMSX_V9990_CMD_REG_NX1: value &= 0x07u; g_fmsx_v9990.regs[reg] = value; g_fmsx_v9990.cmd.nx = (uint16_t) ((g_fmsx_v9990.cmd.nx & 0x00FFu) | ((uint16_t) value << 8)); break;
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
    fmsx_v9990_debug_reset_codeintruder_windows();
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

static unsigned fmsx_v9990_transform_bx_interleaved_to_linear(unsigned address)
{
    return (((address & 1u) << 18) | ((address & 0x7FFFEu) >> 1)) & (FMSX_V9990_VRAM_BYTES - 1u);
}

static void fmsx_v9990_vram_enter_interleaving(void)
{
    const unsigned half = FMSX_V9990_VRAM_BYTES >> 1;
    unsigned even_src = 0u;
    unsigned odd_src = half;
    unsigned dst;

    memcpy(g_fmsx_v9990_vram_interleave_tmp, g_fmsx_v9990.vram, half);
    for (dst = 0u; dst < FMSX_V9990_VRAM_BYTES; dst += 2u, ++even_src, ++odd_src)
    {
        g_fmsx_v9990.vram[dst + 0u] = g_fmsx_v9990_vram_interleave_tmp[even_src];
        g_fmsx_v9990.vram[dst + 1u] = g_fmsx_v9990.vram[odd_src];
    }
}

static void fmsx_v9990_vram_exit_interleaving(void)
{
    const unsigned half = FMSX_V9990_VRAM_BYTES >> 1;
    unsigned even_dst = 0u;
    unsigned odd_dst = half;
    unsigned src;

    memcpy(g_fmsx_v9990_vram_interleave_tmp, g_fmsx_v9990.vram + half, half);
    for (src = 0u; src < half; src += 2u, ++even_dst, ++odd_dst)
    {
        g_fmsx_v9990.vram[even_dst] = g_fmsx_v9990.vram[src + 0u];
        g_fmsx_v9990.vram[odd_dst] = g_fmsx_v9990.vram[src + 1u];
    }
    for (src = 0u; src < half; src += 2u, ++even_dst, ++odd_dst)
    {
        g_fmsx_v9990.vram[even_dst] = g_fmsx_v9990_vram_interleave_tmp[src + 0u];
        g_fmsx_v9990.vram[odd_dst] = g_fmsx_v9990_vram_interleave_tmp[src + 1u];
    }
}

static void fmsx_v9990_update_vram_interleaving(const char *tag)
{
    /*
     * The physical interleaving experiment regressed boot before UART on real
     * hardware. Keep the storage linear for now and preserve the stable boot
     * baseline; renderer/command helpers still provide the logical mapping.
     */
    (void) tag;
    g_fmsx_v9990.vram_interleaved = FALSE;
}

static unsigned fmsx_v9990_transform_bx(unsigned address)
{
    /*
     * Keep the non-P1 backing store linear end-to-end on the stable hardware
     * baseline. The virtual-interleaved experiment (`map:vil cpu:vil`) made
     * the first useful Bx frames of the title/presentation already corrupt,
     * while not fixing the gameplay holes.
     */
    return address & (FMSX_V9990_VRAM_BYTES - 1u);
}

static unsigned fmsx_v9990_transform_p1(unsigned address)
{
    return address & (FMSX_V9990_VRAM_BYTES - 1u);
}

static unsigned fmsx_v9990_transform_p2(unsigned address)
{
    return fmsx_v9990_transform_bx(address);
}

static TFmsxV9990DisplayMode fmsx_v9990_get_display_mode(void)
{
    const uint8_t screen_mode_0 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0];
    const uint8_t screen_mode_1 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1];
    const boolean csm = fmsx_v9990_is_csm_mode();

    switch (screen_mode_0 & 0xC0u)
    {
    case 0x00u:
        return FMSX_V9990_MODE_P1;
    case 0x40u:
        return FMSX_V9990_MODE_P2;
    case 0x80u:
        if (csm)
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
            case 0x20u:
                switch (screen_mode_1 & 0x41u)
                {
                case 0x01u: return FMSX_V9990_MODE_B5;
                case 0x41u: return FMSX_V9990_MODE_B6;
                case 0x00u:
                case 0x40u:
                default:
                    return FMSX_V9990_MODE_B7;
                }
            default: break;
            }
        }
        break;
    default:
        break;
    }

    return FMSX_V9990_MODE_P1;
}

static const char *fmsx_v9990_mode_name(TFmsxV9990DisplayMode mode)
{
    switch (mode)
    {
    case FMSX_V9990_MODE_P1: return "P1";
    case FMSX_V9990_MODE_P2: return "P2";
    case FMSX_V9990_MODE_B0: return "B0";
    case FMSX_V9990_MODE_B1: return "B1";
    case FMSX_V9990_MODE_B2: return "B2";
    case FMSX_V9990_MODE_B3: return "B3";
    case FMSX_V9990_MODE_B4: return "B4";
    case FMSX_V9990_MODE_B5: return "B5";
    case FMSX_V9990_MODE_B6: return "B6";
    case FMSX_V9990_MODE_B7: return "B7";
    default:                 return "?";
    }
}

static unsigned fmsx_v9990_map_vram_address(unsigned address)
{
    switch (fmsx_v9990_get_display_mode())
    {
    case FMSX_V9990_MODE_P1:
        return fmsx_v9990_transform_p1(address);
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
    return fmsx_v9990_read_vram_direct(address);
}

static unsigned fmsx_v9990_cpu_vram_physical_address(unsigned address)
{
    return fmsx_v9990_map_vram_address(address);
}

static uint8_t fmsx_v9990_read_vram_cpu(unsigned address)
{
    const unsigned phys = fmsx_v9990_cpu_vram_physical_address(address);
    const uint8_t value = fmsx_v9990_read_vram_direct(phys);

    fmsx_v9990_debug_trace_vram_cpu("G9V cpu in", address, phys, value);
    return value;
}

static void fmsx_v9990_write_vram_cpu(unsigned address, uint8_t value)
{
    const unsigned phys = fmsx_v9990_cpu_vram_physical_address(address);
    g_fmsx_v9990.vram[phys] = value;
    fmsx_v9990_debug_trace_codeintruder_vram_out(address, phys, value);
    if (!fmsx_v9990_debug_is_codeintruder_vram_bulk(FMSX_V9990_PORT_VRAM_DATA))
    {
        fmsx_v9990_debug_trace_vram_cpu("G9V cpu out", address, phys, value);
    }
}

static uint16_t fmsx_v9990_rgb555_to_rgb565(uint16_t value)
{
    /*
     * WebMSX decodes V9990 15-bit direct color as GRB:
     *   bits  0.. 4 = blue
     *   bits  5.. 9 = red
     *   bits 10..14 = green
     *
     * The previous local mapping treated this as RGB555, which preserves
     * geometry but scrambles colors badly in B1/BD16 demos such as
     * UNDERWATER.
     */
    const uint16_t b = (uint16_t) (value & 0x1Fu);
    const uint16_t r = (uint16_t) ((value >> 5) & 0x1Fu);
    const uint16_t g = (uint16_t) ((value >> 10) & 0x1Fu);
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
    return (fmsx_v9990_get_active_display_width() > 512u) ? TRUE : FALSE;
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

static int fmsx_v9990_signed6(uint8_t value)
{
    return (value > 31u) ? ((int) value - 64) : (int) value;
}

static uint16_t fmsx_v9990_clamp5_to_rgb565(int r, int g, int b)
{
    uint16_t rr;
    uint16_t gg;
    uint16_t bb;
    uint16_t g6;

    if (r < 0) r = 0; else if (r > 31) r = 31;
    if (g < 0) g = 0; else if (g > 31) g = 31;
    if (b < 0) b = 0; else if (b > 31) b = 31;

    rr = (uint16_t) r;
    gg = (uint16_t) g;
    bb = (uint16_t) b;
    g6 = (uint16_t) ((gg << 1) | (gg >> 4));
    return (uint16_t) ((rr << 11) | (g6 << 5) | bb);
}

static uint16_t fmsx_v9990_decode_byuv_pixel(uint8_t y_value, uint16_t chroma)
{
    const int y = (int) (y_value >> 3);
    const int j = fmsx_v9990_signed6((uint8_t) ((chroma >> 6) & 0x3Fu));
    const int k = fmsx_v9990_signed6((uint8_t) (chroma & 0x3Fu));
    const int r = y + j;
    const int g = (5 * y - (j << 1) - k) >> 2;
    const int b = y + k;
    return fmsx_v9990_clamp5_to_rgb565(r, g, b);
}

static uint16_t fmsx_v9990_decode_byjk_pixel(uint8_t y_value, uint16_t chroma)
{
    const int y = (int) (y_value >> 3);
    const int j = fmsx_v9990_signed6((uint8_t) ((chroma >> 6) & 0x3Fu));
    const int k = fmsx_v9990_signed6((uint8_t) (chroma & 0x3Fu));
    const int r = y + j;
    const int g = y + k;
    const int b = (5 * y - (j << 1) - k) >> 2;
    return fmsx_v9990_clamp5_to_rgb565(r, g, b);
}

static unsigned fmsx_v9990_palette_offset_b_from_control(uint8_t palette_control)
{
    return (unsigned) ((palette_control & 0x0Cu) << 2);
}

static unsigned fmsx_v9990_get_palette_offset(void)
{
    return g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL] & 0x0Fu;
}

static unsigned fmsx_v9990_get_palette_offset_from_control(uint8_t palette_control)
{
    return (unsigned) (palette_control & 0x0Fu);
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
    case FMSX_V9990_MODE_B5:
    case FMSX_V9990_MODE_B6: return 640u;
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
    case FMSX_V9990_MODE_B5:
    case FMSX_V9990_MODE_B6: return 640u;
    case FMSX_V9990_MODE_B7: return 1024u;
    default:                 return fmsx_v9990_image_width();
    }
}

static unsigned fmsx_v9990_frame_height(void)
{
    switch (fmsx_v9990_get_display_mode())
    {
    case FMSX_V9990_MODE_B0:
    case FMSX_V9990_MODE_B2:
    case FMSX_V9990_MODE_B4:
        return 240u;
    case FMSX_V9990_MODE_B5:
        return 400u;
    case FMSX_V9990_MODE_B6:
        return 480u;
    default:
        return 212u;
    }
}

static void fmsx_v9990_reset_scroll_line_state(void)
{
    unsigned y;
    g_fmsx_v9990.scroll_ay_high_frame = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_AY1];
    g_fmsx_v9990.scroll_by_high_frame = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1];
    g_fmsx_v9990.control_frame = g_fmsx_v9990.regs[FMSX_V9990_REG_CONTROL];
    g_fmsx_v9990.display_enabled_frame =
        ((g_fmsx_v9990.control_frame & 0x80u) != 0u) ? TRUE : FALSE;
    g_fmsx_v9990.sprites_enabled_frame =
        ((g_fmsx_v9990.control_frame & 0x40u) == 0u) ? TRUE : FALSE;

    const unsigned scroll_ay = fmsx_v9990_get_scroll_ay();
    const unsigned scroll_by = fmsx_v9990_get_scroll_by();
    const unsigned scroll_ax = fmsx_v9990_get_scroll_ax();
    const unsigned scroll_bx = fmsx_v9990_get_scroll_bx();
    const int16_t scroll_ay_frame = (int16_t) scroll_ay;
    const int16_t scroll_by_frame = (int16_t) scroll_by;
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t priority = g_fmsx_v9990.regs[FMSX_V9990_REG_PRIORITY_CONTROL];
    const uint8_t palette_control = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL];
    const uint8_t backdrop_color = g_fmsx_v9990.regs[FMSX_V9990_REG_BACK_DROP_COLOR];
    const uint8_t ay1 = g_fmsx_v9990.scroll_ay_high_frame;
    const uint8_t by1 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1];

    for (y = 0u; y < height; ++y)
    {
        g_fmsx_v9990.scroll_ay_lines[y] = (uint16_t) scroll_ay;
        g_fmsx_v9990.scroll_by_lines[y] = (uint16_t) scroll_by;
        g_fmsx_v9990.scroll_ax_lines[y] = (uint16_t) scroll_ax;
        g_fmsx_v9990.scroll_bx_lines[y] = (uint16_t) scroll_bx;
        g_fmsx_v9990.scroll_ay_frame_lines[y] = scroll_ay_frame;
        g_fmsx_v9990.scroll_by_frame_lines[y] = scroll_by_frame;
        g_fmsx_v9990.display_ya_lines[y] = (uint16_t) y;
        g_fmsx_v9990.display_yb_lines[y] = (uint16_t) y;
        g_fmsx_v9990.priority_control_lines[y] = priority;
        g_fmsx_v9990.palette_control_lines[y] = palette_control;
        g_fmsx_v9990.backdrop_color_lines[y] = backdrop_color;
        g_fmsx_v9990.control_lines[y] = g_fmsx_v9990.control_frame;
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
    const int16_t scroll_ay_frame = (int16_t) ((int) scroll_ay - (int) split);
    const int16_t scroll_by_frame = (int16_t) ((int) scroll_by - (int) split);
    const uint8_t priority = g_fmsx_v9990.regs[FMSX_V9990_REG_PRIORITY_CONTROL];
    const uint8_t palette_control = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL];
    const uint8_t backdrop_color = g_fmsx_v9990.regs[FMSX_V9990_REG_BACK_DROP_COLOR];
    const uint8_t control = g_fmsx_v9990.control_frame;
    const uint8_t sm0 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0];
    const uint8_t sm1 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_1];
    const uint8_t ay1 = g_fmsx_v9990.scroll_ay_high_frame;
    const uint8_t by1 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1];

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
        g_fmsx_v9990.scroll_ay_frame_lines[y] = scroll_ay_frame;
        g_fmsx_v9990.scroll_by_frame_lines[y] = scroll_by_frame;
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
    case FMSX_V9990_MODE_B5:
    case FMSX_V9990_MODE_B6:
        x = (x_ticks * 640u) / (right - left);
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
    const int16_t scroll_ay_frame = (int16_t) ((int) scroll_ay - (int) split);

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_AY0, (uint16_t) scroll_ay_frame);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_ay_lines[y] = scroll_ay;
        g_fmsx_v9990.scroll_ay_frame_lines[y] = scroll_ay_frame;
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
    const int16_t scroll_by_frame = (int16_t) ((int) scroll_by - (int) split);

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_BY0, (uint16_t) scroll_by_frame);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_by_lines[y] = scroll_by;
        g_fmsx_v9990.scroll_by_frame_lines[y] = scroll_by_frame;
        g_fmsx_v9990.display_yb_lines[y] = (uint16_t) (y - split);
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y by", split, scroll_by);
}

static void fmsx_v9990_note_scroll_ay_high_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t ay1_live = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_AY1];
    const uint8_t ay1_frame =
        (uint8_t) ((g_fmsx_v9990.scroll_ay_high_frame & 0x1Fu) | (ay1_live & 0xC0u));

    /*
     * WebMSX defers SCAY12-8 to the next active-display start. During the
     * current active frame, only the live scroll mask bits (R512/R256) take
     * effect. Recomputing scrollYOffsetFrame here was splitting the frame with
     * the wrong vertical address source.
     */
    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_AY1, ay1_frame);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_ay1_lines[y] = ay1_frame;
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y ay1", split, ay1_frame);
}

static void fmsx_v9990_note_scroll_by_high_write(void)
{
    unsigned y;
    const unsigned split = fmsx_v9990_get_active_display_line();
    const unsigned height = fmsx_v9990_frame_height();
    const uint8_t by1_live = g_fmsx_v9990.regs[FMSX_V9990_REG_SCROLL_CONTROL_BY1];
    const uint8_t by1_frame =
        (uint8_t) ((g_fmsx_v9990.scroll_by_high_frame & 0x01u) | (by1_live & 0xC0u));

    /*
     * WebMSX applies *SDA/*SDB immediately, but SCBY8 is deferred until the
     * next active-display start. Keep the current frame on the old vertical
     * base and only expose the plane-enable bits right away.
     */
    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_BY1, by1_frame);

    for (y = (split + 1u); y < height; ++y)
    {
        g_fmsx_v9990.scroll_by1_lines[y] = by1_frame;
    }

    fmsx_v9990_debug_trace_scroll_split("G9Y by1", split, by1_frame);
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

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL, palette_control);

    for (y = (split + 1u); y < height; ++y)
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

    fmsx_v9990_record_raster_event(FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR, backdrop_color);

    for (y = (split + 1u); y < height; ++y)
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
    return g_fmsx_v9990.sprites_enabled_frame ? TRUE : FALSE;
}

static unsigned fmsx_v9990_bytes_per_line(unsigned image_width, uint8_t *mode_kind)
{
    const uint8_t sm0 = g_fmsx_v9990.regs[FMSX_V9990_REG_SCREEN_MODE_0];
    const uint8_t pal_ctrl = g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL];
    const uint8_t clrm = sm0 & 0x03u;

    if ((sm0 & 0xC0u) != 0x80u)
    {
        *mode_kind = 0u;
        return 0u;
    }

    switch (clrm)
    {
    case 0u:
        *mode_kind = 1u; /* BP2 */
        return image_width >> 2;
    case 1u:
        *mode_kind = 2u; /* BP4 */
        return image_width >> 1;
    case 2u:
        /*
         * WebMSX/openMSX derive CLRM from SCREEN_MODE_0 and only consult
         * PALETTE_CONTROL to distinguish BP6/BD8/BYJK/BYUV families when
         * CLRM==2. Using PALETTE_CONTROL as if it contained CLRM corrupts the
         * Bx title/presentation before gameplay even starts.
         */
        switch (pal_ctrl >> 6)
        {
        case 0u:
            *mode_kind = 3u; /* BP6 */
            break;
        case 1u:
            *mode_kind = 4u; /* BD8 */
            break;
        case 2u:
        case 3u:
            switch (pal_ctrl >> 5)
            {
            case 0x04u:
                *mode_kind = 6u; /* BYJK */
                break;
            case 0x05u:
                *mode_kind = 7u; /* BYJKP */
                break;
            case 0x06u:
                *mode_kind = 8u; /* BYUV */
                break;
            case 0x07u:
                *mode_kind = 9u; /* BYUVP */
                break;
            default:
                *mode_kind = 0u;
                return 0u;
            }
            break;
        default:
            *mode_kind = 0u;
            return 0u;
        }
        return image_width;
    case 3u:
        *mode_kind = 5u; /* BD16 */
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
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    {
        const unsigned base_addr = line_base + (src_x & ~0x03u);
        const uint8_t v1 = fmsx_v9990_read_vram_bx(base_addr + 0u);
        const uint8_t v2 = fmsx_v9990_read_vram_bx(base_addr + 1u);
        const uint8_t v3 = fmsx_v9990_read_vram_bx(base_addr + 2u);
        const uint8_t v4 = fmsx_v9990_read_vram_bx(base_addr + 3u);
        const uint16_t chroma = (uint16_t) (((v4 & 0x07u) << 9)
                                          | ((v3 & 0x07u) << 6)
                                          | ((v2 & 0x07u) << 3)
                                          | (v1 & 0x07u));
        uint8_t value = v1;

        switch (src_x & 0x03u)
        {
        case 1u: value = v2; break;
        case 2u: value = v3; break;
        case 3u: value = v4; break;
        default: break;
        }

        if ((mode_kind == 7u || mode_kind == 9u) && (value & 0x08u))
        {
            const unsigned pal_b = fmsx_v9990_palette_offset_b_from_control(g_fmsx_v9990.regs[FMSX_V9990_REG_PALETTE_CONTROL]);
            const unsigned pal_even = (image_width > 512u) ? (pal_b & ~0x20u) : pal_b;
            const unsigned pal_odd = (image_width > 512u) ? (pal_b | 0x20u) : pal_b;
            const unsigned pal = (src_x & 1u) ? pal_odd : pal_even;
            return fmsx_v9990_palette_color((uint8_t) (pal | (value >> 4)));
        }

        return (mode_kind == 6u || mode_kind == 7u)
            ? fmsx_v9990_decode_byjk_pixel(value, chroma)
            : fmsx_v9990_decode_byuv_pixel(value, chroma);
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
    const unsigned name =
        (unsigned) fmsx_v9990_read_vram_p1(name_addr + 0u)
      | ((unsigned) fmsx_v9990_read_vram_p1(name_addr + 1u) << 8);
    const unsigned within_x = display_x & 7u;
    const unsigned within_y = display_y & 7u;
    const unsigned pattern_addr =
        pattern_base
      + ((name >> 5) << 10)
      + ((name & 0x1Fu) << 2)
      + (within_y << 7)
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
    unsigned blocks;
    unsigned block;
    unsigned name_pos_base;
    unsigned name_pos;
    unsigned patt_pos_base;
    int buff_pos;

    (void) info;
    (void) backdrop;
    (void) draw_backdrop;
    (void) mark_foreground;

    if (start_x >= end_x || start_x >= width)
    {
        return;
    }
    if (end_x > width)
    {
        end_x = width;
    }

    /*
     * WebMSX PP1A/PP1B render by names, not by per-pixel sampling:
     *   - scrollX decides initial byte/nibble phase
     *   - 32 names per line, or 33 when scrollX is misaligned
     *   - name table is read raw from VRAM
     *   - pattern data is read raw from VRAM
     *
     * The previous per-pixel sampler was semantically close, but not literal,
     * and the title screen corruption suggests the remaining divergence is in
     * this fetch path itself.
     */
    blocks = (((end_x - start_x) + (display_x & 7u)) + 7u) >> 3;
    name_pos_base = name_base + (((display_y >> 3) << 6) << 1);
    name_pos = ((display_x >> 3) << 1) & 127u;
    patt_pos_base = pattern_base + ((display_y & 7u) << 7);
    buff_pos = (int) start_x - (int) (display_x & 7u);

    for (block = 0u; block < blocks; ++block)
    {
        const unsigned name =
            (unsigned) fmsx_v9990_read_vram_direct(name_pos_base + name_pos + 0u)
          | ((unsigned) fmsx_v9990_read_vram_direct(name_pos_base + name_pos + 1u) << 8);
        unsigned patt_pos = patt_pos_base + ((name >> 5) << 10) + ((name & 0x1Fu) << 2);
        unsigned i;

        name_pos = (name_pos + 2u) & 127u;

        for (i = 0u; i < 4u; ++i)
        {
            const uint8_t value = fmsx_v9990_read_vram_direct(patt_pos++);
            const uint8_t hi = (uint8_t) (value >> 4);
            const uint8_t lo = (uint8_t) (value & 0x0Fu);

            if (buff_pos >= (int) start_x && buff_pos < (int) end_x && hi != 0u)
            {
                dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (palette_base + hi));
                if (lit_counter != 0)
                {
                    ++*lit_counter;
                }
            }
            ++buff_pos;

            if (buff_pos >= (int) start_x && buff_pos < (int) end_x && lo != 0u)
            {
                dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (palette_base + lo));
                if (lit_counter != 0)
                {
                    ++*lit_counter;
                }
            }
            ++buff_pos;
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
    const unsigned prio_y = ((state->priority & 0x0Cu) == 0u) ? 256u : ((state->priority & 0x0Cu) << 4);
    const boolean plane_a_has_priority = (display_y < prio_y) ? TRUE : FALSE;
    const unsigned scroll_y_max = (state->ay1 & 0x80u) ? 0x01FFu : ((state->ay1 & 0x40u) ? 0x00FFu : 0x01FFu);
    const unsigned display_ay = (unsigned) (((int) display_y + (int) state->scroll_ay_frame) & (int) scroll_y_max);
    const unsigned display_by = (unsigned) (((int) display_y + (int) state->scroll_by_frame) & 0x01FF);
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

    if (plane_a_has_priority)
    {
        if (plane_b_enabled)
        {
            fmsx_v9990_render_p1_plane_pass(
                dst, info, width,
                start_x, end_x,
                (state->scroll_bx + start_x) & 511u, display_by,
                0x7E000u, 0x40000u, pal_b_base, backdrop,
                FALSE, FALSE, plane_b_lit);
        }
        if (plane_a_enabled)
        {
            fmsx_v9990_render_p1_plane_pass(
                dst, info, width,
                start_x, end_x,
                (state->scroll_ax + start_x) & 511u, display_ay,
                0x7C000u, 0x00000u, pal_a_base, backdrop,
                FALSE, TRUE, plane_a_lit);
        }
    }
    else
    {
        if (plane_a_enabled)
        {
            fmsx_v9990_render_p1_plane_pass(
                dst, info, width,
                start_x, end_x,
                (state->scroll_ax + start_x) & 511u, display_ay,
                0x7C000u, 0x00000u, pal_a_base, backdrop,
                FALSE, FALSE, plane_a_lit);
        }
        if (plane_b_enabled)
        {
            fmsx_v9990_render_p1_plane_pass(
                dst, info, width,
                start_x, end_x,
                (state->scroll_bx + start_x) & 511u, display_by,
                0x7E000u, 0x40000u, pal_b_base, backdrop,
                FALSE, TRUE, plane_b_lit);
        }
    }
}

static void fmsx_v9990_apply_p1_raster_event(TFmsxV9990P1LineState *state,
                                             const TFmsxV9990RasterEvent *event,
                                             unsigned line_y)
{
    (void) line_y;
    switch ((TFmsxV9990RasterEventKind) event->kind)
    {
    case FMSX_V9990_RASTER_EVENT_AY0:
        state->scroll_ay_frame = (int16_t) event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_BY0:
        state->scroll_by_frame = (int16_t) event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_AY1:
        state->ay1 = (uint8_t) event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_BY1:
        state->by1 = (uint8_t) event->value;
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
    case FMSX_V9990_RASTER_EVENT_BY1_PLANES:
        state->by1 = (uint8_t) ((state->by1 & ~0xC0u) | ((uint8_t) event->value & 0xC0u));
        break;
    case FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL:
        state->palette_control = (uint8_t) event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR:
        state->backdrop_color = (uint8_t) event->value;
        break;
    default:
        break;
    }
}

static void fmsx_v9990_apply_bx_raster_event(TFmsxV9990BxLineState *state,
                                             const TFmsxV9990RasterEvent *event)
{
    switch ((TFmsxV9990RasterEventKind) event->kind)
    {
    case FMSX_V9990_RASTER_EVENT_AY0:
        state->scroll_ay_frame = (int16_t) event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_AY1:
        state->ay1 = (uint8_t) event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_AX:
        state->scroll_ax = event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL:
        state->palette_control = (uint8_t) event->value;
        break;
    case FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR:
        state->backdrop_color = (uint8_t) event->value;
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
    const unsigned name =
        (unsigned) fmsx_v9990_read_vram_direct(name_addr + 0u)
      | ((unsigned) fmsx_v9990_read_vram_direct(name_addr + 1u) << 8);
    const unsigned within_x = display_x & 7u;
    const unsigned within_y = display_y & 7u;
    const unsigned pattern_addr =
        ((name >> 6) << 11)
      + ((name & 0x3Fu) << 2)
      + (within_y << 8)
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

static void fmsx_v9990_draw_sprite_pixel_direct(uint16_t *dst,
                                                unsigned width,
                                                int x_pos,
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

    dst[x] = fmsx_v9990_palette_color((uint8_t) (palette_base + nibble));
}

static int fmsx_v9990_collect_p1_sprites_on_line(unsigned display_y, int *visible)
{
    unsigned i;
    int visible_count = 0;

    if (!fmsx_v9990_sprites_enabled())
    {
        return 0;
    }

    for (i = 0u; i < 125u && visible_count < (int) FMSX_V9990_MAX_SPRITES_PER_LINE; ++i)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * i);
        const uint8_t sprite_y_base = (uint8_t) (fmsx_v9990_read_sprite_attr_p1(sprite_info) + 1u);
        const uint8_t sprite_y_pos = (uint8_t) (display_y - sprite_y_base);

        if (sprite_y_pos < FMSX_V9990_SPRITE_WIDTH)
        {
            visible[visible_count++] = (int) i;
        }
    }

    return visible_count;
}

static int fmsx_v9990_collect_p2_sprites_on_line(unsigned display_y, int *visible)
{
    unsigned i;
    int visible_count = 0;

    if (!fmsx_v9990_sprites_enabled())
    {
        return 0;
    }

    for (i = 0u; i < 125u && visible_count < (int) FMSX_V9990_MAX_SPRITES_PER_LINE; ++i)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * i);
        const uint8_t sprite_y_base = (uint8_t) (fmsx_v9990_read_sprite_attr_p2(sprite_info) + 1u);
        const uint8_t sprite_y_pos = (uint8_t) (display_y - sprite_y_base);

        if (sprite_y_pos < FMSX_V9990_SPRITE_WIDTH)
        {
            visible[visible_count++] = (int) i;
        }
    }

    return visible_count;
}

static void fmsx_v9990_render_p1_sprites_line_pass(uint16_t *dst, unsigned width, unsigned display_y, uint8_t pri)
{
    int visible[FMSX_V9990_MAX_SPRITES_PER_LINE];
    unsigned sprite_pattern_table;
    int visible_count;
    int place;

    sprite_pattern_table = fmsx_v9990_get_sprite_pattern_address(FMSX_V9990_MODE_P1);
    visible_count = fmsx_v9990_collect_p1_sprites_on_line(display_y, visible);

    for (place = visible_count - 1; place >= 0; --place)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * (unsigned) visible[place]);
        const uint8_t sprite_attr = fmsx_v9990_read_sprite_attr_p1(sprite_info + 3u);
        const uint8_t sprite_pri = (uint8_t) (sprite_attr & 0x30u);
        int sprite_x = (int) fmsx_v9990_read_sprite_attr_p1(sprite_info + 2u);
        uint8_t sprite_y = fmsx_v9990_read_sprite_attr_p1(sprite_info + 0u);
        const uint8_t sprite_no = fmsx_v9990_read_sprite_attr_p1(sprite_info + 1u);
        unsigned pat_addr;
        unsigned x;

        if (sprite_pri != pri)
        {
            continue;
        }

        sprite_x += 256 * (int) (sprite_attr & 0x03u);
        if (sprite_x >= (int) width && sprite_x < 1008)
        {
            continue;
        }
        if (sprite_x >= 1008)
        {
            sprite_x -= 1024;
        }
        sprite_y = (uint8_t) (display_y - (unsigned) (sprite_y + 1u));
        pat_addr = sprite_pattern_table + fmsx_v9990_get_sprite_pattern_offset_p1(sprite_no, sprite_y);

        for (x = 0u; x < FMSX_V9990_SPRITE_WIDTH; x += 2u)
        {
            const uint8_t data = fmsx_v9990_read_sprite_pattern_p1(pat_addr++);
            const uint8_t palette_base = (uint8_t) ((sprite_attr >> 2) & 0x30u);
            fmsx_v9990_draw_sprite_pixel_direct(dst, width, sprite_x + (int) x + 0, palette_base, (uint8_t) (data >> 4));
            fmsx_v9990_draw_sprite_pixel_direct(dst, width, sprite_x + (int) x + 1, palette_base, (uint8_t) (data & 0x0Fu));
        }
    }
}

static void fmsx_v9990_render_p2_sprites_line_pass(uint16_t *dst, unsigned width, unsigned display_y, uint8_t pri)
{
    int visible[FMSX_V9990_MAX_SPRITES_PER_LINE];
    unsigned sprite_pattern_table;
    int visible_count;
    int place;
    sprite_pattern_table = fmsx_v9990_get_sprite_pattern_address(FMSX_V9990_MODE_P2);
    visible_count = fmsx_v9990_collect_p2_sprites_on_line(display_y, visible);

    for (place = visible_count - 1; place >= 0; --place)
    {
        const unsigned sprite_info = FMSX_V9990_SPRITE_TABLE_BASE + (4u * (unsigned) visible[place]);
        const uint8_t sprite_attr = fmsx_v9990_read_sprite_attr_p2(sprite_info + 3u);
        const uint8_t sprite_pri = (uint8_t) (sprite_attr & 0x30u);
        int sprite_x = (int) fmsx_v9990_read_sprite_attr_p2(sprite_info + 2u);
        uint8_t sprite_y = fmsx_v9990_read_sprite_attr_p2(sprite_info + 0u);
        const uint8_t sprite_no = fmsx_v9990_read_sprite_attr_p2(sprite_info + 1u);
        unsigned pat_addr;
        unsigned x;

        if (sprite_pri != pri)
        {
            continue;
        }

        sprite_x += 256 * (int) (sprite_attr & 0x03u);
        if (sprite_x >= (int) width && sprite_x < 1008)
        {
            continue;
        }
        if (sprite_x >= 1008)
        {
            sprite_x -= 1024;
        }
        sprite_y = (uint8_t) (display_y - (unsigned) (sprite_y + 1u));
        pat_addr = sprite_pattern_table + fmsx_v9990_get_sprite_pattern_offset_p2(sprite_no, sprite_y);

        for (x = 0u; x < FMSX_V9990_SPRITE_WIDTH; x += 2u)
        {
            const uint8_t data = fmsx_v9990_read_sprite_pattern_p2(pat_addr++);
            const uint8_t palette_base = (uint8_t) ((sprite_attr >> 2) & 0x30u);
            fmsx_v9990_draw_sprite_pixel_direct(dst, width, sprite_x + (int) x + 0, palette_base, (uint8_t) (data >> 4));
            fmsx_v9990_draw_sprite_pixel_direct(dst, width, sprite_x + (int) x + 1, palette_base, (uint8_t) (data & 0x0Fu));
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

static unsigned fmsx_v9990_get_bx_real_line(unsigned y, const TFmsxV9990BxLineState *state)
{
    const unsigned scroll_y_max = fmsx_v9990_get_roll_mask_from_ay1(state->ay1, 0x1FFFu);
    const boolean double_res = (g_fmsx_v9990.screen_mode_1_lines[y] & 0x04u) ? TRUE : FALSE;
    const unsigned eo_shift = double_res ? 1u : 0u;
    const unsigned eo_add = (double_res && g_fmsx_v9990_video.field_parity_odd) ? 1u : 0u;

    return (unsigned) ((((int) (y << eo_shift) + (int) eo_add) + (int) state->scroll_ay_frame) & (int) scroll_y_max);
}

static void fmsx_v9990_render_bx_segment(uint16_t *dst,
                                         unsigned width,
                                         unsigned y,
                                         unsigned start_x,
                                         unsigned end_x,
                                         unsigned image_width,
                                         uint8_t mode_kind,
                                         const TFmsxV9990BxLineState *state)
{
    const unsigned real_line = fmsx_v9990_get_bx_real_line(y, state);
    const unsigned scroll_x = state->scroll_ax + start_x;
    const unsigned palette_offset = fmsx_v9990_get_palette_offset_from_control(state->palette_control);
    const unsigned segment_width = (end_x > start_x) ? (end_x - start_x) : 0u;

    if (start_x >= end_x || start_x >= width)
    {
        return;
    }
    if (end_x > width)
    {
        end_x = width;
    }

    switch (mode_kind)
    {
    case 1u:
    {
        const unsigned byte_y_base = real_line * (image_width >> 2);
        const unsigned scroll_x_max_bytes = (image_width >> 2) - 1u;
        unsigned byte_x_pos = (scroll_x >> 2) & scroll_x_max_bytes;
        const unsigned left_pixels = scroll_x & 3u;
        const unsigned quant_bytes = (segment_width + left_pixels + 3u) >> 2;
        const unsigned pal_even = (width > 512u) ? (palette_offset & ~0x20u) : palette_offset;
        const unsigned pal_odd = (width > 512u) ? (palette_offset | 0x20u) : palette_offset;
        unsigned b;
        int buff_pos = (int) start_x - (int) left_pixels;

        for (b = 0u; b < quant_bytes; ++b)
        {
            const uint8_t value = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos);
            byte_x_pos = (byte_x_pos + 1u) & scroll_x_max_bytes;

            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (pal_even | (value >> 6))); ++buff_pos;
            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (pal_odd  | ((value >> 4) & 0x03u))); ++buff_pos;
            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (pal_even | ((value >> 2) & 0x03u))); ++buff_pos;
            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (pal_odd  | (value & 0x03u))); ++buff_pos;
        }
        break;
    }
    case 2u:
    {
        const unsigned byte_y_base = real_line * (image_width >> 1);
        const unsigned scroll_x_max_bytes = (image_width >> 1) - 1u;
        unsigned byte_x_pos = (scroll_x >> 1) & scroll_x_max_bytes;
        const unsigned left_pixels = scroll_x & 1u;
        const unsigned quant_bytes = (segment_width + left_pixels + 1u) >> 1;
        const unsigned pal_even = (width > 512u) ? (((palette_offset & 0x0Cu) << 2) & ~0x20u) : ((palette_offset & 0x0Cu) << 2);
        const unsigned pal_odd = (width > 512u) ? ((((palette_offset & 0x0Cu) << 2) | 0x20u)) : ((palette_offset & 0x0Cu) << 2);
        unsigned b;
        int buff_pos = (int) start_x - (int) left_pixels;

        for (b = 0u; b < quant_bytes; ++b)
        {
            const uint8_t value = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos);
            byte_x_pos = (byte_x_pos + 1u) & scroll_x_max_bytes;

            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (pal_even | (value >> 4))); ++buff_pos;
            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = fmsx_v9990_palette_color((uint8_t) (pal_odd  | (value & 0x0Fu))); ++buff_pos;
        }
        break;
    }
    case 3u:
    {
        const unsigned byte_y_base = real_line * image_width;
        const unsigned scroll_x_max_bytes = image_width - 1u;
        unsigned byte_x_pos = scroll_x & scroll_x_max_bytes;
        unsigned x = start_x;

        for (; x < end_x; ++x)
        {
            const uint8_t value = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos);
            byte_x_pos = (byte_x_pos + 1u) & scroll_x_max_bytes;
            dst[x] = fmsx_v9990_palette_color((uint8_t) (value & 0x3Fu));
        }
        break;
    }
    case 4u:
    {
        const unsigned byte_y_base = real_line * image_width;
        const unsigned scroll_x_max_bytes = image_width - 1u;
        unsigned byte_x_pos = scroll_x & scroll_x_max_bytes;
        unsigned x = start_x;

        for (; x < end_x; ++x)
        {
            const uint8_t value = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos);
            byte_x_pos = (byte_x_pos + 1u) & scroll_x_max_bytes;
            dst[x] = fmsx_v9990_decode_bd8_pixel(value);
        }
        break;
    }
    case 5u:
    {
        const unsigned byte_y_base = real_line * (image_width << 1);
        const unsigned scroll_x_max_bytes = (image_width << 1) - 1u;
        unsigned byte_x_pos = (width > 256u)
            ? (((scroll_x & ~1u) << 1) & scroll_x_max_bytes)
            : ((scroll_x << 1) & scroll_x_max_bytes);
        unsigned x = start_x;

        for (; x < end_x; ++x)
        {
            const uint16_t value =
                (uint16_t) fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos)
              | ((uint16_t) fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos + 1u) << 8);
            byte_x_pos = (byte_x_pos + 2u) & scroll_x_max_bytes;
            dst[x] = fmsx_v9990_rgb555_to_rgb565(value);
        }
        break;
    }
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    {
        const unsigned byte_y_base = real_line * image_width;
        const unsigned scroll_x_max_bytes = image_width - 1u;
        unsigned byte_x_pos = (scroll_x & ~0x03u) & scroll_x_max_bytes;
        const unsigned left_pixels = scroll_x & 3u;
        const unsigned quant_groups = (segment_width + left_pixels + 3u) >> 2;
        const unsigned pal_b = fmsx_v9990_palette_offset_b_from_control(state->palette_control);
        const unsigned pal_even = (width > 512u) ? (pal_b & ~0x20u) : pal_b;
        const unsigned pal_odd = (width > 512u) ? (pal_b | 0x20u) : pal_b;
        unsigned b;
        int buff_pos = (int) start_x - (int) left_pixels;

        for (b = 0u; b < quant_groups; ++b)
        {
            const uint8_t v1 = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos + 0u);
            const uint8_t v2 = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos + 1u);
            const uint8_t v3 = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos + 2u);
            const uint8_t v4 = fmsx_v9990_read_vram_bx(byte_y_base + byte_x_pos + 3u);
            const uint16_t chroma = (uint16_t) (((v4 & 0x07u) << 9)
                                              | ((v3 & 0x07u) << 6)
                                              | ((v2 & 0x07u) << 3)
                                              | (v1 & 0x07u));
            const uint16_t p1 = ((mode_kind == 7u || mode_kind == 9u) && (v1 & 0x08u))
                ? fmsx_v9990_palette_color((uint8_t) (pal_even | (v1 >> 4)))
                : ((mode_kind == 6u || mode_kind == 7u)
                    ? fmsx_v9990_decode_byjk_pixel(v1, chroma)
                    : fmsx_v9990_decode_byuv_pixel(v1, chroma));
            const uint16_t p2 = ((mode_kind == 7u || mode_kind == 9u) && (v2 & 0x08u))
                ? fmsx_v9990_palette_color((uint8_t) (pal_odd | (v2 >> 4)))
                : ((mode_kind == 6u || mode_kind == 7u)
                    ? fmsx_v9990_decode_byjk_pixel(v2, chroma)
                    : fmsx_v9990_decode_byuv_pixel(v2, chroma));
            const uint16_t p3 = ((mode_kind == 7u || mode_kind == 9u) && (v3 & 0x08u))
                ? fmsx_v9990_palette_color((uint8_t) (pal_even | (v3 >> 4)))
                : ((mode_kind == 6u || mode_kind == 7u)
                    ? fmsx_v9990_decode_byjk_pixel(v3, chroma)
                    : fmsx_v9990_decode_byuv_pixel(v3, chroma));
            const uint16_t p4 = ((mode_kind == 7u || mode_kind == 9u) && (v4 & 0x08u))
                ? fmsx_v9990_palette_color((uint8_t) (pal_odd | (v4 >> 4)))
                : ((mode_kind == 6u || mode_kind == 7u)
                    ? fmsx_v9990_decode_byjk_pixel(v4, chroma)
                    : fmsx_v9990_decode_byuv_pixel(v4, chroma));

            byte_x_pos = (byte_x_pos + 4u) & scroll_x_max_bytes;

            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = p1; ++buff_pos;
            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = p2; ++buff_pos;
            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = p3; ++buff_pos;
            if (buff_pos >= (int) start_x && buff_pos < (int) end_x) dst[buff_pos] = p4; ++buff_pos;
        }
        break;
    }
    default:
    {
        unsigned x;
        const uint16_t color = fmsx_v9990_palette_color(state->backdrop_color);
        for (x = start_x; x < end_x; ++x)
        {
            dst[x] = color;
        }
        break;
    }
    }
}

static void fmsx_v9990_debug_trace_bx_line_state(unsigned height)
{
#if MSXBARE_ENABLE_DEBUG_OVERLAY && MSXBARE_V9990_UART_TRACE
    char line[256];
    TFmsxV9990TraceBuffer tb;
    unsigned i;
    unsigned emitted = 0u;

    if (g_fmsx_v9990_debug_frame_snapshot_pending == 0u || height == 0u)
    {
        return;
    }

    fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
    fmsx_v9990_tracebuf_push_text(&tb, "G9D bx");

    for (i = 0u; i < g_fmsx_v9990.raster_event_count && emitted < 8u; ++i)
    {
        const TFmsxV9990RasterEvent *event = &g_fmsx_v9990.raster_events[i];
        const char *kind = 0;

        if (event->y >= height)
        {
            continue;
        }

        switch ((TFmsxV9990RasterEventKind) event->kind)
        {
        case FMSX_V9990_RASTER_EVENT_AY0: kind = "ay0"; break;
        case FMSX_V9990_RASTER_EVENT_AY1: kind = "ay1"; break;
        case FMSX_V9990_RASTER_EVENT_AX: kind = "ax"; break;
        case FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL: kind = "pc"; break;
        case FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR: kind = "bd"; break;
        default: break;
        }

        if (kind == 0)
        {
            continue;
        }

        fmsx_v9990_tracebuf_push_text(&tb, emitted == 0u ? " y:" : " |y:");
        fmsx_v9990_tracebuf_push_uint(&tb, event->y);
        fmsx_v9990_tracebuf_push_text(&tb, " x:");
        fmsx_v9990_tracebuf_push_uint(&tb, event->x);
        fmsx_v9990_tracebuf_push_text(&tb, " k:");
        fmsx_v9990_tracebuf_push_text(&tb, kind);
        fmsx_v9990_tracebuf_push_text(&tb, " v:");
        if (event->kind == FMSX_V9990_RASTER_EVENT_AY0)
        {
            fmsx_v9990_tracebuf_push_int(&tb, (int16_t) event->value);
        }
        else if (event->kind == FMSX_V9990_RASTER_EVENT_AY1
              || event->kind == FMSX_V9990_RASTER_EVENT_PALETTE_CONTROL
              || event->kind == FMSX_V9990_RASTER_EVENT_BACKDROP_COLOR)
        {
            fmsx_v9990_tracebuf_push_hex8(&tb, (uint8_t) event->value);
        }
        else
        {
            fmsx_v9990_tracebuf_push_uint(&tb, event->value);
        }
        ++emitted;
    }

    if (emitted == 0u)
    {
        fmsx_v9990_tracebuf_push_text(&tb, " none");
    }
    fmsx_v9990_tracebuf_push_char(&tb, '\n');
    msxbare_uart_write(line);
#else
    (void) height;
#endif
}

static void fmsx_v9990_render_bx_firstlight(unsigned width,
                                            unsigned height,
                                            unsigned image_width,
                                            unsigned bytes_per_line,
                                            uint8_t mode_kind)
{
    TFmsxV9990BxLineState state;
    unsigned event_index = 0u;
    unsigned y;

    (void) bytes_per_line;
    fmsx_v9990_get_bx_frame_initial_state(&state);

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = FMSX_V9990_FRAMEBUFFER + (y * FMSX_V9990_FB_MAX_WIDTH);
        TFmsxV9990BxLineState line_state;
        unsigned line_event_index;
        unsigned cursor_x = 0u;

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        (void) msxbare_debug_timer_irq_binding(0x20u + (y & 0x7Fu));
#endif

        while (event_index < g_fmsx_v9990.raster_event_count
            && g_fmsx_v9990.raster_events[event_index].y < y)
        {
            fmsx_v9990_apply_bx_raster_event(&state, &g_fmsx_v9990.raster_events[event_index]);
            ++event_index;
        }

        line_state = state;
        line_event_index = event_index;

        while (line_event_index < g_fmsx_v9990.raster_event_count
            && g_fmsx_v9990.raster_events[line_event_index].y == y)
        {
            const TFmsxV9990RasterEvent *event = &g_fmsx_v9990.raster_events[line_event_index];
            const unsigned split_x = (event->x < width) ? event->x : width;

            if (cursor_x < split_x)
            {
                fmsx_v9990_render_bx_segment(
                    dst,
                    width,
                    y,
                    cursor_x,
                    split_x,
                    image_width,
                    mode_kind,
                    &line_state);
                cursor_x = split_x;
            }

            fmsx_v9990_apply_bx_raster_event(&line_state, event);
            ++line_event_index;
        }

        if (cursor_x < width)
        {
            fmsx_v9990_render_bx_segment(
                dst,
                width,
                y,
                cursor_x,
                width,
                image_width,
                mode_kind,
                &line_state);
        }

        while (event_index < line_event_index)
        {
            fmsx_v9990_apply_bx_raster_event(&state, &g_fmsx_v9990.raster_events[event_index]);
            ++event_index;
        }
    }

    fmsx_v9990_debug_trace_bx_line_state(height);
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
    TFmsxV9990P1LineState state;
    unsigned event_index = 0u;
    unsigned y;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
    const boolean capture_profile = (g_fmsx_v9990_debug_frame_snapshot_pending != 0u) ? TRUE : FALSE;

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

    /*
     * WebMSX renders PP1 from the live scanline state of the current frame.
     * Rebuilding the whole frame from pre-expanded line arrays was leaving us
     * with a hybrid model: writes were recorded as raster events, but the draw
     * still consumed the already-baked snapshots. For gameplay, that is the
     * wrong semantic boundary.
     *
     * Start from the frame baseline and replay the raster events as we advance
     * through Y. AY/BY/AX/BX/priority/palette/backdrop updates take effect on
     * following scanlines, matching the current write-side behavior
     * (split + 1u) and the scanline-oriented model of WebMSX.
     */
    fmsx_v9990_get_p1_frame_initial_state(&state);

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = FMSX_V9990_FRAMEBUFFER + (y * FMSX_V9990_FB_MAX_WIDTH);
        const uint16_t backdrop = fmsx_v9990_palette_color(state.backdrop_color);
        const unsigned prio_y = ((state.priority & 0x0Cu) == 0u) ? 256u : ((state.priority & 0x0Cu) << 4);
        const boolean plane_a_has_priority = (y < prio_y) ? TRUE : FALSE;
        const unsigned palette_control = state.palette_control;
        const unsigned pal_a_base = (palette_control & 0x03u) << 4;
        const unsigned pal_b_base = (palette_control & 0x0Cu) << 2;
        const unsigned scroll_y_max = (state.ay1 & 0x80u) ? 0x01FFu : ((state.ay1 & 0x40u) ? 0x00FFu : 0x01FFu);
        const unsigned display_ay = (unsigned) (((int) y + (int) state.scroll_ay_frame) & (int) scroll_y_max);
        const unsigned display_by = (unsigned) (((int) y + (int) state.scroll_by_frame) & 0x01FF);
        const boolean plane_a_enabled = ((state.by1 & 0x80u) == 0u) ? TRUE : FALSE;
        const boolean plane_b_enabled = ((state.by1 & 0x40u) == 0u) ? TRUE : FALSE;
        unsigned plane_a_lit = 0u;
        unsigned plane_b_lit = 0u;

        while (event_index < g_fmsx_v9990.raster_event_count
            && g_fmsx_v9990.raster_events[event_index].y < y)
        {
            fmsx_v9990_apply_p1_raster_event(
                &state,
                &g_fmsx_v9990.raster_events[event_index],
                y);
            ++event_index;
        }

        fmsx_v9990_fill_scanline(dst, width, backdrop);

        if (plane_a_has_priority)
        {
            if (plane_b_enabled)
            {
                fmsx_v9990_render_p1_plane_pass(
                    dst, 0, width,
                    0u, width,
                    state.scroll_bx & 511u, display_by,
                    0x7E000u, 0x40000u, pal_b_base, backdrop,
                    FALSE, FALSE, &plane_b_lit);
            }
            fmsx_v9990_render_p1_sprites_line_pass(dst, width, y, 0x20u);
            if (plane_a_enabled)
            {
                fmsx_v9990_render_p1_plane_pass(
                    dst, 0, width,
                    0u, width,
                    state.scroll_ax & 511u, display_ay,
                    0x7C000u, 0x00000u, pal_a_base, backdrop,
                    FALSE, FALSE, &plane_a_lit);
            }
            fmsx_v9990_render_p1_sprites_line_pass(dst, width, y, 0x00u);
        }
        else
        {
            if (plane_a_enabled)
            {
                fmsx_v9990_render_p1_plane_pass(
                    dst, 0, width,
                    0u, width,
                    state.scroll_ax & 511u, display_ay,
                    0x7C000u, 0x00000u, pal_a_base, backdrop,
                    FALSE, FALSE, &plane_a_lit);
            }
            fmsx_v9990_render_p1_sprites_line_pass(dst, width, y, 0x20u);
            if (plane_b_enabled)
            {
                fmsx_v9990_render_p1_plane_pass(
                    dst, 0, width,
                    0u, width,
                    state.scroll_bx & 511u, display_by,
                    0x7E000u, 0x40000u, pal_b_base, backdrop,
                    FALSE, FALSE, &plane_b_lit);
            }
            fmsx_v9990_render_p1_sprites_line_pass(dst, width, y, 0x00u);
        }

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        if (capture_profile && (y < FMSX_V9990_FB_MAX_HEIGHT))
        {
            unsigned x;
            for (x = 0u; x < width && x < 8u; ++x)
            {
                const unsigned ax = (x + state.scroll_ax) & 511u;
                const unsigned bx = (x + state.scroll_bx) & 511u;
                const uint8_t nibble_a = plane_a_enabled ? fmsx_v9990_sample_p1_nibble(ax, display_ay, 0x7C000u, 0x00000u) : 0u;
                const uint8_t nibble_b = plane_b_enabled ? fmsx_v9990_sample_p1_nibble(bx, display_by, 0x7E000u, 0x40000u) : 0u;
                g_fmsx_v9990_debug_p1_sample_a[y][x] = nibble_a;
                g_fmsx_v9990_debug_p1_sample_b[y][x] = nibble_b;
                g_fmsx_v9990_debug_p1_bg_is_backdrop[y][x] = (dst[x] == backdrop) ? 1u : 0u;
                g_fmsx_v9990_debug_p1_final_is_backdrop[y][x] = (dst[x] == backdrop) ? 1u : 0u;
            }
        }
#endif

#if MSXBARE_ENABLE_DEBUG_OVERLAY
        if (capture_profile && (y < FMSX_V9990_FB_MAX_HEIGHT))
        {
            unsigned sprite_lit = 0u;
            unsigned x;
            g_fmsx_v9990_debug_p1_pal_a_base[y] = (uint8_t) pal_a_base;
            g_fmsx_v9990_debug_p1_pal_b_base[y] = (uint8_t) pal_b_base;
            g_fmsx_v9990_debug_p1_backdrop_index[y] = state.backdrop_color;
            g_fmsx_v9990_debug_p1_prio_x[y] = 256u;
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

        fmsx_v9990_fill_scanline(dst, width, backdrop);
        fmsx_v9990_render_p2_sprites_line_pass(dst, width, y, 0x20u);
        for (x = 0u; x < width; ++x)
        {
            unsigned palette_base = 0u;
            const unsigned display_x = (x + scroll_x) & 1023u;
            const uint8_t nibble = fmsx_v9990_sample_p2_nibble(display_x, display_y, &palette_base);
            if (nibble != 0u)
            {
                dst[x] = fmsx_v9990_palette_color((uint8_t) (palette_base + nibble));
            }
        }
        fmsx_v9990_render_p2_sprites_line_pass(dst, width, y, 0x00u);
    }
}

static void fmsx_v9990_render_p1_live_debug_frame(uint16_t *base,
                                                  unsigned width,
                                                  unsigned height,
                                                  TFmsxV9990DebugLiveView view)
{
    TFmsxV9990P1LineState state;
    unsigned event_index = 0u;
    unsigned y;

    if (base == 0)
    {
        return;
    }

    fmsx_v9990_get_p1_frame_initial_state(&state);

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = base + (y * FMSX_V9990_FB_MAX_WIDTH);
        const uint16_t backdrop = fmsx_v9990_palette_color(state.backdrop_color);
        const unsigned prio_y = ((state.priority & 0x0Cu) == 0u) ? 256u : ((state.priority & 0x0Cu) << 4);
        const boolean plane_a_has_priority = (y < prio_y) ? TRUE : FALSE;
        const unsigned palette_control = state.palette_control;
        const unsigned pal_a_base = (palette_control & 0x03u) << 4;
        const unsigned pal_b_base = (palette_control & 0x0Cu) << 2;
        const unsigned scroll_y_max = (state.ay1 & 0x80u) ? 0x01FFu : ((state.ay1 & 0x40u) ? 0x00FFu : 0x01FFu);
        const unsigned display_ay = (unsigned) (((int) y + (int) state.scroll_ay_frame) & (int) scroll_y_max);
        const unsigned display_by = (unsigned) (((int) y + (int) state.scroll_by_frame) & 0x01FF);
        const boolean plane_a_enabled = ((state.by1 & 0x80u) == 0u) ? TRUE : FALSE;
        const boolean plane_b_enabled = ((state.by1 & 0x40u) == 0u) ? TRUE : FALSE;

        while (event_index < g_fmsx_v9990.raster_event_count
            && g_fmsx_v9990.raster_events[event_index].y < y)
        {
            fmsx_v9990_apply_p1_raster_event(
                &state,
                &g_fmsx_v9990.raster_events[event_index],
                y);
            ++event_index;
        }

        if (view == FMSX_V9990_DEBUG_LIVE_VIEW_BG_PROVENANCE)
        {
            unsigned tile_y;
            const unsigned tile_y_base = y & ~7u;
            for (tile_y = tile_y_base; tile_y <= y && tile_y < height; tile_y += 8u)
            {
                break;
            }
            (void) tile_y;
            fmsx_v9990_fill_scanline(dst, width, 0u);
            {
                unsigned tile_x;
                for (tile_x = 0u; tile_x < width; tile_x += 8u)
                {
                    boolean has_a = FALSE;
                    boolean has_b = FALSE;
                    unsigned sx;
                    unsigned sy;
                    uint16_t color = 0x0000u;

                    for (sy = 0u; sy < 8u && (y + sy - (y & 7u)) < height; ++sy)
                    {
                        const unsigned sample_y = (y & ~7u) + sy;
                        const unsigned sample_display_ay =
                            (unsigned) (((int) sample_y + (int) state.scroll_ay_frame) & (int) scroll_y_max);
                        const unsigned sample_display_by =
                            (unsigned) (((int) sample_y + (int) state.scroll_by_frame) & 0x01FF);
                        for (sx = 0u; sx < 8u && (tile_x + sx) < width; ++sx)
                        {
                            const unsigned ax = (state.scroll_ax + tile_x + sx) & 511u;
                            const unsigned bx = (state.scroll_bx + tile_x + sx) & 511u;
                            if (plane_a_enabled
                                && fmsx_v9990_sample_p1_nibble(ax, sample_display_ay, 0x7C000u, 0x00000u) != 0u)
                            {
                                has_a = TRUE;
                            }
                            if (plane_b_enabled
                                && fmsx_v9990_sample_p1_nibble(bx, sample_display_by, 0x7E000u, 0x40000u) != 0u)
                            {
                                has_b = TRUE;
                            }
                            if (has_a && has_b)
                            {
                                break;
                            }
                        }
                        if (has_a && has_b)
                        {
                            break;
                        }
                    }

                    if (has_a && has_b) color = 0x07FFu;
                    else if (has_a)     color = 0x07E0u;
                    else if (has_b)     color = 0x001Fu;
                    else                color = 0xF800u;

                    for (sx = 0u; sx < 8u && (tile_x + sx) < width; ++sx)
                    {
                        dst[tile_x + sx] = color;
                    }
                }
            }
            continue;
        }

        fmsx_v9990_fill_scanline(dst, width, backdrop);

        switch (view)
        {
        case FMSX_V9990_DEBUG_LIVE_VIEW_BG_A:
            if (plane_a_enabled)
            {
                fmsx_v9990_render_p1_plane_pass(
                    dst, 0, width,
                    0u, width,
                    state.scroll_ax & 511u, display_ay,
                    0x7C000u, 0x00000u, pal_a_base, backdrop,
                    FALSE, FALSE, 0);
            }
            break;
        case FMSX_V9990_DEBUG_LIVE_VIEW_BG_B:
            if (plane_b_enabled)
            {
                fmsx_v9990_render_p1_plane_pass(
                    dst, 0, width,
                    0u, width,
                    state.scroll_bx & 511u, display_by,
                    0x7E000u, 0x40000u, pal_b_base, backdrop,
                    FALSE, FALSE, 0);
            }
            break;
        case FMSX_V9990_DEBUG_LIVE_VIEW_BG_COMPOSITE:
            if (plane_a_has_priority)
            {
                if (plane_b_enabled)
                {
                    fmsx_v9990_render_p1_plane_pass(
                        dst, 0, width,
                        0u, width,
                        state.scroll_bx & 511u, display_by,
                        0x7E000u, 0x40000u, pal_b_base, backdrop,
                        FALSE, FALSE, 0);
                }
                if (plane_a_enabled)
                {
                    fmsx_v9990_render_p1_plane_pass(
                        dst, 0, width,
                        0u, width,
                        state.scroll_ax & 511u, display_ay,
                        0x7C000u, 0x00000u, pal_a_base, backdrop,
                        FALSE, FALSE, 0);
                }
            }
            else
            {
                if (plane_a_enabled)
                {
                    fmsx_v9990_render_p1_plane_pass(
                        dst, 0, width,
                        0u, width,
                        state.scroll_ax & 511u, display_ay,
                        0x7C000u, 0x00000u, pal_a_base, backdrop,
                        FALSE, FALSE, 0);
                }
                if (plane_b_enabled)
                {
                    fmsx_v9990_render_p1_plane_pass(
                        dst, 0, width,
                        0u, width,
                        state.scroll_bx & 511u, display_by,
                        0x7E000u, 0x40000u, pal_b_base, backdrop,
                        FALSE, FALSE, 0);
                }
            }
            break;
        default:
            break;
        }
    }
}

static void fmsx_v9990_render_reference_debug_frame(uint16_t *base,
                                                    unsigned width,
                                                    unsigned height,
                                                    TFmsxV9990DisplayMode display_mode)
{
    unsigned y;

    if (base == 0)
    {
        return;
    }

    for (y = 0u; y < height; ++y)
    {
        uint16_t *dst = base + (y * FMSX_V9990_FB_MAX_WIDTH);
        fmsx_v9990_fill_scanline(dst, width, 0u);
    }

#if MSXBARE_ENABLE_DEBUG_OVERLAY && MSXBARE_V9990_UART_TRACE
    if (!g_fmsx_v9990_debug_reference_valid && !g_fmsx_v9990_debug_reference_unavailable_logged)
    {
        char line[96];
        TFmsxV9990TraceBuffer tb;
        g_fmsx_v9990_debug_reference_unavailable_logged = TRUE;
        fmsx_v9990_tracebuf_init(&tb, line, sizeof(line));
        fmsx_v9990_tracebuf_push_text(&tb, "G9D ref unavailable dm:");
        fmsx_v9990_tracebuf_push_uint(&tb, (unsigned) display_mode);
        fmsx_v9990_tracebuf_push_char(&tb, '\n');
        msxbare_uart_write(line);
    }
#else
    (void) display_mode;
#endif
}

static void fmsx_v9990_render_debug_frame(unsigned width,
                                          unsigned height,
                                          TFmsxV9990DisplayMode display_mode,
                                          unsigned image_width,
                                          unsigned bytes_per_line,
                                          uint8_t mode_kind)
{
    g_fmsx_v9990_debug_video = g_fmsx_v9990_video;
    g_fmsx_v9990_debug_video.pixels = FMSX_V9990_FRAMEBUFFER;
    g_fmsx_v9990_debug_video.pitch_pixels = FMSX_V9990_FB_MAX_WIDTH;

    if (g_fmsx_v9990_debug_reference_view != FMSX_V9990_DEBUG_REF_VIEW_OFF)
    {
        fmsx_v9990_render_reference_debug_frame(FMSX_V9990_FRAMEBUFFER, width, height, display_mode);
        g_fmsx_v9990_debug_video.active = TRUE;
        return;
    }

    if (g_fmsx_v9990_debug_live_view == FMSX_V9990_DEBUG_LIVE_VIEW_OFF)
    {
        g_fmsx_v9990_debug_video.active = FALSE;
        return;
    }

    if (display_mode == FMSX_V9990_MODE_P1)
    {
        fmsx_v9990_render_p1_live_debug_frame(
            FMSX_V9990_FRAMEBUFFER,
            width,
            height,
            g_fmsx_v9990_debug_live_view);
    }
    else
    {
        (void) image_width;
        (void) bytes_per_line;
        (void) mode_kind;
    }

    g_fmsx_v9990_debug_video.active = TRUE;
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
        const boolean display_was_enabled = fmsx_v9990_display_enabled_current_frame();
        const boolean display_is_enabled = (value & 0x80u) != 0u ? TRUE : FALSE;

        if (!display_was_enabled && display_is_enabled)
        {
            /*
             * DISP/SPD are latched for the active frame. A mid-frame CONTROL
             * write must not rewrite the current-frame baseline; the new state
             * becomes visible when the next frame baseline is rebuilt.
             */
            fmsx_v9990_debug_rearm_active_window("display-on");
#if MSXBARE_ENABLE_DEBUG_OVERLAY
            msxbare_debug_note_gfx9000_activation();
#endif
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
        fmsx_v9990_update_vram_interleaving("sm0");
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
        else
        {
            fmsx_v9990_reset_scroll_line_state();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_AY1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_ay_high_write();
        }
        else
        {
            fmsx_v9990_reset_scroll_line_state();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_AX0 || reg == FMSX_V9990_REG_SCROLL_CONTROL_AX1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_ax_write();
        }
        else
        {
            fmsx_v9990_reset_scroll_line_state();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_BY0)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_by_low_write();
        }
        else
        {
            fmsx_v9990_reset_scroll_line_state();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_BY1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_by_high_write();
        }
        else
        {
            fmsx_v9990_reset_scroll_line_state();
        }
    }
    else if (reg == FMSX_V9990_REG_SCROLL_CONTROL_BX0 || reg == FMSX_V9990_REG_SCROLL_CONTROL_BX1)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_scroll_bx_write();
        }
        else
        {
            fmsx_v9990_reset_scroll_line_state();
        }
    }
    else if (reg == FMSX_V9990_REG_PRIORITY_CONTROL)
    {
        if (fmsx_v9990_display_enabled_current_frame())
        {
            fmsx_v9990_note_priority_control_write();
        }
        else
        {
            fmsx_v9990_reset_scroll_line_state();
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
    g_fmsx_v9990.vram_interleaved = FALSE;
    memset(&g_fmsx_v9990_video, 0, sizeof(g_fmsx_v9990_video));
    g_fmsx_v9990_video.pixels = FMSX_V9990_FRAMEBUFFER;
    memset(&g_fmsx_v9990_debug_video, 0, sizeof(g_fmsx_v9990_debug_video));
    g_fmsx_v9990_debug_video.pixels = FMSX_V9990_FRAMEBUFFER;
    g_fmsx_v9990_debug_reference_unavailable_logged = FALSE;
#if MSXBARE_ENABLE_DEBUG_OVERLAY
    g_fmsx_v9990_debug_port_logs_remaining = 0u;
    g_fmsx_v9990_debug_cmd_logs_remaining = 0u;
    g_fmsx_v9990_debug_render_logs_remaining = 0u;
    g_fmsx_v9990_debug_reg_logs_remaining = 0u;
    g_fmsx_v9990_debug_active_logs_remaining = 0u;
    g_fmsx_v9990_debug_active_phase = 0u;
    g_fmsx_v9990_debug_frame_snapshot_pending = 0u;
    g_fmsx_v9990_debug_disabled_port_logs_remaining = enabled ? 0u : 64u;
    if (enabled)
    {
        fmsx_v9990_debug_rearm_port_window();
    }
#endif
}

void fmsx_v9990_reset(void)
{
    const boolean enabled = g_fmsx_v9990.enabled;
    const uint32_t io_reads = g_fmsx_v9990.io_reads;
    const uint32_t io_writes = g_fmsx_v9990.io_writes;

    fmsx_v9990_debug_trace_enable("reset", enabled);
    fmsx_v9990_reset_registers_keep_memory();
    fmsx_v9990_update_vram_interleaving("rst");
    g_fmsx_v9990.enabled = enabled;
    g_fmsx_v9990.io_reads = io_reads;
    g_fmsx_v9990.io_writes = io_writes;
    g_fmsx_v9990_video.active = FALSE;
    g_fmsx_v9990_debug_video.active = FALSE;
    fmsx_v9990_reset_scroll_line_state();
    g_fmsx_v9990.raster_event_count = 0u;
    fmsx_v9990_reset_framebuffer_guards();
}

void fmsx_v9990_set_enabled(boolean enabled)
{
    const boolean desired = enabled ? TRUE : FALSE;

    if (desired)
    {
        fmsx_v9990_debug_rearm_port_window();
    }
#if MSXBARE_ENABLE_DEBUG_OVERLAY
    g_fmsx_v9990_debug_disabled_port_logs_remaining = desired ? 0u : 64u;
#endif

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
    fmsx_v9990_render_debug_frame(width, height, display_mode, image_width, bytes_per_line, mode_kind);

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
    if (g_fmsx_v9990_debug_video.active)
    {
        *frame = g_fmsx_v9990_debug_video;
        return;
    }
    *frame = g_fmsx_v9990_video;
}

void fmsx_v9990_set_debug_live_view(TFmsxV9990DebugLiveView view)
{
    g_fmsx_v9990_debug_live_view = view;
    if (view != FMSX_V9990_DEBUG_LIVE_VIEW_OFF)
    {
        g_fmsx_v9990_debug_reference_view = FMSX_V9990_DEBUG_REF_VIEW_OFF;
    }
    g_fmsx_v9990_debug_video.active = FALSE;
}

TFmsxV9990DebugLiveView fmsx_v9990_get_debug_live_view(void)
{
    return g_fmsx_v9990_debug_live_view;
}

void fmsx_v9990_set_debug_reference_view(TFmsxV9990DebugReferenceView view)
{
    g_fmsx_v9990_debug_reference_view = view;
    if (view != FMSX_V9990_DEBUG_REF_VIEW_OFF)
    {
        g_fmsx_v9990_debug_live_view = FMSX_V9990_DEBUG_LIVE_VIEW_OFF;
    }
    g_fmsx_v9990_debug_reference_unavailable_logged = FALSE;
    g_fmsx_v9990_debug_video.active = FALSE;
}

TFmsxV9990DebugReferenceView fmsx_v9990_get_debug_reference_view(void)
{
    return g_fmsx_v9990_debug_reference_view;
}

boolean fmsx_v9990_in_port(uint8_t port, uint8_t *value)
{
    uint8_t out = 0xFFu;
    const uint8_t local_port = (uint8_t) (port - FMSX_V9990_PORT_BASE);

    if (port < FMSX_V9990_PORT_BASE
     || port >= (FMSX_V9990_PORT_BASE + FMSX_V9990_PORT_COUNT))
    {
        return FALSE;
    }

    if (!g_fmsx_v9990.enabled)
    {
        fmsx_v9990_debug_trace_disabled_port("G9P miss-in", port, 0xFFu);
        return FALSE;
    }

    g_fmsx_v9990.io_reads++;
    fmsx_v9990_debug_trace_port("G9P in", port, 0xFFu);

    switch (local_port)
    {
    case FMSX_V9990_PORT_VRAM_DATA:
        out = g_fmsx_v9990.vram_read_buffer;
        fmsx_v9990_debug_trace_port("G9P rd", port, out);
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
        fmsx_v9990_debug_trace_codeintruder_status(out);
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

    if (port < FMSX_V9990_PORT_BASE
     || port >= (FMSX_V9990_PORT_BASE + FMSX_V9990_PORT_COUNT))
    {
        return FALSE;
    }

    if (!g_fmsx_v9990.enabled)
    {
        fmsx_v9990_debug_trace_disabled_port("G9P miss-out", port, value);
        return FALSE;
    }

    g_fmsx_v9990.io_writes++;
    if (fmsx_v9990_debug_is_codeintruder_palette_bulk())
    {
        fmsx_v9990_debug_trace_codeintruder_palette(value);
    }
    else if (fmsx_v9990_debug_is_codeintruder_vram_bulk(local_port))
    {
        /* Compact Code Intruder VRAM upload logging happens after address mapping. */
    }
    else
    {
        fmsx_v9990_debug_trace_port("G9P out", port, value);
    }

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
        fmsx_v9990_update_vram_interleaving("sys");
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
    TFmsxV9990StatePayloadV5 payload;
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
    payload.vram_interleaved = g_fmsx_v9990.vram_interleaved ? 1u : 0u;
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
    TFmsxV9990StatePayloadV5 payload_v5;
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
        g_fmsx_v9990.vram_interleaved = FALSE;
        fmsx_v9990_update_vram_interleaving("ld1");
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
        g_fmsx_v9990.vram_interleaved = FALSE;
        fmsx_v9990_update_vram_interleaving("ld2");
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

    if (header.version == 5u)
    {
        if (header.payload_size != sizeof(payload_v5) + FMSX_V9990_VRAM_BYTES
         || size < sizeof(header) + sizeof(payload_v5) + FMSX_V9990_VRAM_BYTES)
        {
            return 0u;
        }

        memcpy(&payload_v5, in + sizeof(header), sizeof(payload_v5));
        if (payload_v5.vram_bytes != FMSX_V9990_VRAM_BYTES)
        {
            return 0u;
        }

        g_fmsx_v9990.io_reads = payload_v5.io_reads;
        g_fmsx_v9990.io_writes = payload_v5.io_writes;
        g_fmsx_v9990.vram_write_ptr = payload_v5.vram_write_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.vram_read_ptr = payload_v5.vram_read_ptr & (FMSX_V9990_VRAM_BYTES - 1u);
        g_fmsx_v9990.reg_select = payload_v5.reg_select;
        g_fmsx_v9990.status = payload_v5.status;
        g_fmsx_v9990.pending_irqs = payload_v5.pending_irqs;
        g_fmsx_v9990.system_control = payload_v5.system_control;
        g_fmsx_v9990.cmd.sx = payload_v5.cmd_sx;
        g_fmsx_v9990.cmd.sy = payload_v5.cmd_sy;
        g_fmsx_v9990.cmd.dx = payload_v5.cmd_dx;
        g_fmsx_v9990.cmd.dy = payload_v5.cmd_dy;
        g_fmsx_v9990.cmd.nx = payload_v5.cmd_nx;
        g_fmsx_v9990.cmd.ny = payload_v5.cmd_ny;
        g_fmsx_v9990.cmd.wm = payload_v5.cmd_wm;
        g_fmsx_v9990.cmd.fg = payload_v5.cmd_fg;
        g_fmsx_v9990.cmd.bg = payload_v5.cmd_bg;
        g_fmsx_v9990.cmd.border_x = payload_v5.cmd_border_x;
        g_fmsx_v9990.cmd.pitch = payload_v5.cmd_pitch;
        g_fmsx_v9990.cmd.image_width = payload_v5.cmd_image_width;
        g_fmsx_v9990.cmd.arg = payload_v5.cmd_arg;
        g_fmsx_v9990.cmd.log = payload_v5.cmd_log;
        g_fmsx_v9990.cmd.opcode = payload_v5.cmd_opcode;
        g_fmsx_v9990.cmd.data = payload_v5.cmd_data;
        g_fmsx_v9990.cmd.partial = payload_v5.cmd_partial;
        g_fmsx_v9990.cmd.status = payload_v5.cmd_status;
        g_fmsx_v9990.cmd.flags = payload_v5.cmd_flags;
        g_fmsx_v9990.cmd.mode = payload_v5.cmd_mode;
        g_fmsx_v9990.vram_read_buffer = payload_v5.vram_read_buffer;
        memcpy(g_fmsx_v9990.regs, payload_v5.regs, sizeof(g_fmsx_v9990.regs));
        memcpy(g_fmsx_v9990.palette, payload_v5.palette, sizeof(g_fmsx_v9990.palette));
        memcpy(g_fmsx_v9990.vram, in + sizeof(header) + sizeof(payload_v5), FMSX_V9990_VRAM_BYTES);
        g_fmsx_v9990_video.active = FALSE;
        g_fmsx_v9990.vram_interleaved = payload_v5.vram_interleaved ? TRUE : FALSE;
        g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
        g_fmsx_v9990.status_cpu_cycle_frac = 0u;
        fmsx_v9990_update_host_irq();
        return sizeof(header) + header.payload_size;
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
        g_fmsx_v9990.vram_interleaved = FALSE;
        fmsx_v9990_update_vram_interleaving("ld4");
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
    g_fmsx_v9990.vram_interleaved = FALSE;
    fmsx_v9990_update_vram_interleaving("ld3");
    g_fmsx_v9990.status_last_cpu_cycles = fmsx_vdp_cpu_cycles_now();
    g_fmsx_v9990.status_cpu_cycle_frac = 0u;
    fmsx_v9990_update_host_irq();
    return sizeof(header) + header.payload_size;
}
