#ifndef _STRING_H_
#define _STRING_H_

int strncmp(char *stra, char *strb, int len);

int strcmp(char *stra, char *strb);

void strncpy(char *stra, char *strb, int len);

void strcpy(char *stra, char *strb);

int strchr(char *str, char cc);

void strcat(char *stra, char *strb);

void to_upper(char *str);

void to_lower(char *str);

int del_blank(char *str);

void memset(char *addr, char val, int size);

#endif
