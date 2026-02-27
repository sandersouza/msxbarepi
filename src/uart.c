#include "common.h"
#include "platform.h"
#include "uart.h"

#define GPIO_BASE (MMIO_BASE + 0x200000)
#define GPFSEL1 (GPIO_BASE + 0x04)
#define GPPUD (GPIO_BASE + 0x94)
#define GPPUDCLK0 (GPIO_BASE + 0x98)

#define UART0_BASE (MMIO_BASE + 0x201000)
#define UART0_DR (UART0_BASE + 0x00)
#define UART0_FR (UART0_BASE + 0x18)
#define UART0_IBRD (UART0_BASE + 0x24)
#define UART0_FBRD (UART0_BASE + 0x28)
#define UART0_LCRH (UART0_BASE + 0x2C)
#define UART0_CR (UART0_BASE + 0x30)
#define UART0_IMSC (UART0_BASE + 0x38)
#define UART0_ICR (UART0_BASE + 0x44)

void uart_init(void)
{
    uint32_t selector;

    mmio_write(UART0_CR, 0);

    selector = mmio_read(GPFSEL1);
    selector &= ~((7u << 12) | (7u << 15));
    selector |= (4u << 12) | (4u << 15);
    mmio_write(GPFSEL1, selector);

    mmio_write(GPPUD, 0);
    platform_delay_us(150);
    mmio_write(GPPUDCLK0, (1u << 14) | (1u << 15));
    platform_delay_us(150);
    mmio_write(GPPUDCLK0, 0);

    mmio_write(UART0_ICR, 0x7FF);
    mmio_write(UART0_IBRD, 1);
    mmio_write(UART0_FBRD, 40);
    mmio_write(UART0_LCRH, (3u << 5));
    mmio_write(UART0_IMSC, 0);
    mmio_write(UART0_CR, (1u << 0) | (1u << 8) | (1u << 9));
}

void uart_putc(char c)
{
    while (mmio_read(UART0_FR) & (1u << 5)) {
    }

    mmio_write(UART0_DR, (uint32_t)c);
}

void uart_puts(const char *text)
{
    char c;

    while (*text != '\0') {
        c = *text++;
        if (c == '\n') {
            uart_putc('\r');
        }
        uart_putc(c);
    }
}

void uart_put_hex32(uint32_t value)
{
    static const char hex[] = "0123456789ABCDEF";
    int shift;

    for (shift = 28; shift >= 0; shift -= 4) {
        uart_putc(hex[(value >> shift) & 0xFu]);
    }
}