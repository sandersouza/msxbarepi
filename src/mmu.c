#include "mmu.h"

#include <stdint.h>

/* 4KB granule translation tables:
 * - L1 (4 entries) covers 0..4GB via 1GB regions
 * - 4x L2 tables with 2MB block descriptors
 *
 * Identity mapping:
 * - Normal cacheable memory by default
 * - RPi3 MMIO windows marked Device-nGnRnE:
 *   - 0x3F000000..0x3FFFFFFF (peripherals)
 *   - 0x40000000..0x41FFFFFF (local peripherals / safety window)
 */

#define L1_ENTRIES 512u
#define L2_ENTRIES 512u
#define L1_USED    4u

#define BLOCK_2MB_SHIFT 21u
#define BLOCK_1GB_SHIFT 30u

#define DESC_VALID       (1ull << 0)
#define DESC_TABLE       (1ull << 1)
#define DESC_BLOCK       (0ull << 1)
#define DESC_AF          (1ull << 10)
#define DESC_SH_INNER    (3ull << 8)
#define DESC_ATTRIDX(x)  ((uint64_t)(x) << 2)
#define DESC_UXN         (1ull << 54)
#define DESC_PXN         (1ull << 53)

#define ATTRIDX_DEVICE   0u
#define ATTRIDX_NORMAL   1u

/* MAIR slots:
 * Attr0 = Device-nGnRnE
 * Attr1 = Normal WB/WA/RA cacheable
 */
#define MAIR_VALUE       ((0x00ull << 0) | (0xFFull << 8))

/* TCR (4KB granule, inner-shareable WB cacheable, 4GB VA space) */
#define TCR_T0SZ_4GB     32ull
#define TCR_IRGN_WBWA    (1ull << 8)
#define TCR_ORGN_WBWA    (1ull << 10)
#define TCR_SH0_INNER    (3ull << 12)
#define TCR_TG0_4K       (0ull << 14)
#define TCR_PS_4GB       (0ull << 16) /* 32-bit physical addr space is enough here */

static uint64_t l1_table[L1_ENTRIES] __attribute__((aligned(4096)));
static uint64_t l2_tables[L1_USED][L2_ENTRIES] __attribute__((aligned(4096)));
static uint8_t g_mmu_enabled;

static inline uint64_t normal_block_desc(uint64_t pa)
{
    return (pa & ~((1ull << BLOCK_2MB_SHIFT) - 1ull)) |
           DESC_VALID | DESC_BLOCK | DESC_AF |
           DESC_SH_INNER | DESC_ATTRIDX(ATTRIDX_NORMAL);
}

static inline uint64_t device_block_desc(uint64_t pa)
{
    return (pa & ~((1ull << BLOCK_2MB_SHIFT) - 1ull)) |
           DESC_VALID | DESC_BLOCK | DESC_AF |
           DESC_ATTRIDX(ATTRIDX_DEVICE) |
           DESC_UXN | DESC_PXN;
}

static inline uint64_t table_desc(const void *table)
{
    return ((uint64_t)(uintptr_t)table & ~0xFFFull) | DESC_VALID | DESC_TABLE;
}

static inline uint64_t read_currentel(void)
{
    uint64_t v;
    __asm__ volatile("mrs %0, CurrentEL" : "=r"(v));
    return (v >> 2) & 0x3u;
}

static void build_identity_tables(void)
{
    for (uint32_t i = 0; i < L1_ENTRIES; i++) {
        l1_table[i] = 0;
    }

    for (uint32_t l1 = 0; l1 < L1_USED; l1++) {
        uint64_t region_base = ((uint64_t)l1) << BLOCK_1GB_SHIFT;
        l1_table[l1] = table_desc(&l2_tables[l1][0]);

        for (uint32_t l2 = 0; l2 < L2_ENTRIES; l2++) {
            uint64_t pa = region_base + (((uint64_t)l2) << BLOCK_2MB_SHIFT);
            uint64_t desc = normal_block_desc(pa);

            /* RPi3 peripheral window at 0x3F000000..0x3FFFFFFF */
            if (pa >= 0x3F000000ull && pa < 0x40000000ull) {
                desc = device_block_desc(pa);
            }
            /* Safety: local peripheral window / GPU-adjacent area */
            if (pa >= 0x40000000ull && pa < 0x42000000ull) {
                desc = device_block_desc(pa);
            }

            l2_tables[l1][l2] = desc;
        }
    }
}

static void enable_el1(uint64_t ttbr0)
{
    uint64_t tcr = TCR_T0SZ_4GB | TCR_IRGN_WBWA | TCR_ORGN_WBWA | TCR_SH0_INNER | TCR_TG0_4K;
    uint64_t sctlr;

    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("isb");
    __asm__ volatile("tlbi vmalle1");
    __asm__ volatile("dsb sy");
    __asm__ volatile("isb");
    __asm__ volatile("msr mair_el1, %0" :: "r"(MAIR_VALUE));
    __asm__ volatile("msr tcr_el1, %0" :: "r"(tcr));
    __asm__ volatile("msr ttbr0_el1, %0" :: "r"(ttbr0));
    __asm__ volatile("dsb sy");
    __asm__ volatile("isb");
    __asm__ volatile("ic iallu");
    __asm__ volatile("dsb sy");
    __asm__ volatile("isb");
    __asm__ volatile("mrs %0, sctlr_el1" : "=r"(sctlr));
    sctlr |= (1ull << 0);  /* M  : MMU enable */
    sctlr |= (1ull << 2);  /* C  : data cache */
    sctlr |= (1ull << 12); /* I  : instruction cache */
    sctlr &= ~(1ull << 28); /* clear WXN if set by firmware */
    __asm__ volatile("msr sctlr_el1, %0" :: "r"(sctlr));
    __asm__ volatile("isb");
}

static void enable_el2(uint64_t ttbr0)
{
    uint64_t tcr = TCR_T0SZ_4GB | TCR_IRGN_WBWA | TCR_ORGN_WBWA | TCR_SH0_INNER | TCR_TG0_4K | TCR_PS_4GB;
    uint64_t sctlr;

    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("isb");
    __asm__ volatile("tlbi alle2");
    __asm__ volatile("dsb sy");
    __asm__ volatile("isb");
    __asm__ volatile("msr mair_el2, %0" :: "r"(MAIR_VALUE));
    __asm__ volatile("msr tcr_el2, %0" :: "r"(tcr));
    __asm__ volatile("msr ttbr0_el2, %0" :: "r"(ttbr0));
    __asm__ volatile("dsb sy");
    __asm__ volatile("isb");
    __asm__ volatile("ic iallu");
    __asm__ volatile("dsb sy");
    __asm__ volatile("isb");
    __asm__ volatile("mrs %0, sctlr_el2" : "=r"(sctlr));
    sctlr |= (1ull << 0);  /* M */
    sctlr |= (1ull << 2);  /* C */
    sctlr |= (1ull << 12); /* I */
    sctlr &= ~(1ull << 28);
    __asm__ volatile("msr sctlr_el2, %0" :: "r"(sctlr));
    __asm__ volatile("isb");
}

void mmu_enable_identity_map(void)
{
#ifndef MSXBARE_ENABLE_MMU
    return;
#else
    if (g_mmu_enabled) {
        return;
    }

    build_identity_tables();

    /* Make page tables visible before enabling caches/MMU. */
    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("isb");

    uint64_t ttbr0 = (uint64_t)(uintptr_t)&l1_table[0];
    uint64_t el = read_currentel();

    if (el == 2u) {
        enable_el2(ttbr0);
    } else {
        enable_el1(ttbr0);
    }

    g_mmu_enabled = 1;
#endif
}
