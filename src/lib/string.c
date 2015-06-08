#include "string.h"

int strncmp(char *stra, char *strb, int len) {
    int i;
    for (i = 0; i < len; ++i) {
        if (*stra < *strb) return -1;
        if (*stra > *strb) return 1;
        stra++; strb++;
    }
    return 0;
}

int strcmp(char *stra, char *strb) {
    while (1) {
        if (*stra == 0 && *strb == 0) return 0;
        if (*stra < *strb) return -1;
        if (*stra > *strb) return 1;
        stra++; strb++;
    }
    return 0;
}

void strncpy(char *stra, char *strb, int len) {
    while (len--)
        *strb++ = *stra++;
    *strb = 0;
}

void strcat(char *stra, char *strb) {
    int len = __builtin_strlen(stra);
    stra += len;
    while (*strb)
        *stra++ = *strb++;
    *stra = 0;
}

void to_upper(char *str) {
    while (*str) {
        if ('a' <= *str && *str <= 'z')
            *str = *str - 'a' + 'A';
        ++str;
    }
}

void to_lower(char *str) {
    while (*str) {
        if ('a' <= *str && *str <= 'z')
            *str = *str - 'A' + 'a';
        ++str;
    }
}
