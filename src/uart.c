#include "uart.h"

#define MMIO_BASE       0x3F000000UL
#define GPIO_BASE       (MMIO_BASE + 0x200000)
#define UART0_BASE      (MMIO_BASE + 0x201000)

#define GPFSEL1         ((volatile unsigned int *)(GPIO_BASE + 0x04))
#define GPPUD           ((volatile unsigned int *)(GPIO_BASE + 0x94))
#define GPPUDCLK0       ((volatile unsigned int *)(GPIO_BASE + 0x98))

#define UART0_DR        ((volatile unsigned int *)(UART0_BASE + 0x00))
#define UART0_FR        ((volatile unsigned int *)(UART0_BASE + 0x18))
#define UART0_IBRD      ((volatile unsigned int *)(UART0_BASE + 0x24))
#define UART0_FBRD      ((volatile unsigned int *)(UART0_BASE + 0x28))
#define UART0_LCRH      ((volatile unsigned int *)(UART0_BASE + 0x2C))
#define UART0_CR        ((volatile unsigned int *)(UART0_BASE + 0x30))
#define UART0_IMSC      ((volatile unsigned int *)(UART0_BASE + 0x38))
#define UART0_ICR       ((volatile unsigned int *)(UART0_BASE + 0x44))

static void delay(int count) {
    while (count--) {
        __asm__ volatile("nop");
    }
}

void uart_init(void) {
    unsigned int r;

    // Desabilita UART0 durante configuração
    *UART0_CR = 0x00000000;

    // Configura GPIO14/15 para ALT0 (TXD0/RXD0)
    r = *GPFSEL1;
    r &= ~((7u << 12) | (7u << 15));
    r |=  (4u << 12) | (4u << 15);
    *GPFSEL1 = r;

    // Desativa pull-up/down
    *GPPUD = 0x00000000;
    delay(150);
    *GPPUDCLK0 = (1u << 14) | (1u << 15);
    delay(150);
    *GPPUDCLK0 = 0x00000000;

    // Limpa interrupções pendentes
    *UART0_ICR = 0x7FF;

    // 115200 bps (clock 48MHz)
    *UART0_IBRD = 26;
    *UART0_FBRD = 3;

    // 8N1, FIFO habilitado
    *UART0_LCRH = (1u << 4) | (3u << 5);

    // Mascara interrupções
    *UART0_IMSC = 0;

    // Habilita UART, TX, RX
    *UART0_CR = (1u << 0) | (1u << 8) | (1u << 9);
}

void uart_putc(char c) {
    while (*UART0_FR & (1u << 5)) {
    }
    *UART0_DR = (unsigned int)c;
}

void uart_puts(const char *s) {
    while (*s) {
        if (*s == '\n') {
            uart_putc('\r');
        }
        uart_putc(*s++);
    }
}
