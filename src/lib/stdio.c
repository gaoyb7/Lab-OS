#include "stdio.h"
#define MAX_BUF_LEN 256
char buf[MAX_BUF_LEN];

char getch() {
    char ch;
    asm volatile(
            "int $0x16;"
            : "=a"(ch) : "a"(0x10 << 8) :
            );
    return ch;
}

void putch(char ch) {
    asm volatile(
            "int $0x10;"
            : : "a"((0x0e << 8) + ch), "b"(0x00) :
            );
}

void put_color_ch(char ch, uint16_t attr) {
    asm volatile(
            "int $0x10;"
            : : "a"((0x09 << 8) + ch), "b"(attr), "c"(1) :
            );
}

void put_color_str(char *str, uint16_t attr) {
    while (*str) {
        put_color_ch(' ', attr);
        if (*str == '\n') putch('\r');
        putch(*str);
        ++str;
    }
}

void puts(char *s) {
    while (*s) {
        if (*s == '\n')
            putch('\r');
        putch(*s);
        ++s;
    }
}

uint16_t _from_stdin() {
    uint16_t cnt = 0;
    char ch;
    while (ch = getch(), ch != '\r') {
        if (ch == '\b') {
            if (cnt == 0) continue;
            --cnt;
            puts("\b \b");
            buf[cnt] = ' ';
        } else {
            putch(ch);
            buf[cnt++] = ch;
        }
    }
    buf[cnt] = 0;
    puts("\n");
    return cnt;
}

void gets(char *s) {
    uint16_t len = _from_stdin(), i = 0;
    char *ptr = s;
    for (i = 0; i < len; ++i)
        *ptr++ = buf[i];
    *ptr = 0;
}

void printint(int num, int base) {
    if (num == 0) {
        putch('0');
    } else {
        uint8_t len = 0;
        if (num < 0) {
            putch('-');
            num = -num;
        }
        while (num) {
            if (num % base < 10) 
                buf[len++] = '0' + num % base;
            else
                buf[len++] = 'A' + (num % base - 10);
            num /= base;
        }
        while (len--)
            putch(buf[len]);
    }
}

void printf(const char *fmt, ...) {
    int ptr = &fmt;
    int data;
    while (*fmt) {
        if (*fmt == '%') {
            ++fmt;
            ptr += 4;
            asm volatile(
                    "movl %%ss:(%%eax), %%ebx;"
                    : "=b"(data): "a"(ptr) :
                    );
            switch (*fmt) {
                case 'c': putch((char)data); break;
                case 'd': printint(data, 10); break;
                case 'x': printint(data, 16); break;
                case 's': puts((char *)data); break;
            }
        } else {
            if (*fmt == '\n')
                putch('\r');
            putch(*fmt);
        }
        ++fmt;
    }
}

void scanf(const char *fmt, ...) {
    int ptr = &fmt;
    int *data;
    char ch;
    uint8_t len = _from_stdin(), cnt = 0;
    while (*fmt) {
        if (*fmt == '%') {
            ++fmt;
            ptr += 4;
            asm volatile(
                    "movl %%ss:(%%eax), %%ebx;"
                    : "=b"(data): "a"(ptr) :
                    );
            while (buf[cnt] == ' ') ++cnt;
            if (*fmt == 'c') {
                *data = buf[cnt++];
            } else if (*fmt == 's') {
                char *tmp = data;
                while (buf[cnt] && buf[cnt] != ' ') {
                    *tmp = buf[cnt++];
                    ++tmp;
                }
                *tmp = 0;
            } else if (*fmt == 'd') {
                int num = 0;
                while ('0' <= buf[cnt] && buf[cnt] <= '9') {
                    num = num * 10 + (buf[cnt++] - '0');
                }
                *data = num;
            }
        }
        ++fmt;
    }
}
