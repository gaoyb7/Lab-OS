#include "comm_head.h"
#include "stdio.h"
#include "stdlib.h"

int a, b;
char ch, str[256];

struct mytype {
    int a;
    char b;
    int c;
};

struct mytype ta, tb;

int main() {
    //ta.a = 1; ta.b = 'c', ta.c = 11;
    //memcpy(&tb, &ta, sizeof(struct mytype));
    //printf("%d %c %d\n", tb.a, tb.b, tb.c);
    printf("Please input a char: "); scanf("%c", &ch);
   	printf("Please input a string: "); gets(str);
    printf("Please input num a and b: "); scanf("%d %d", &a, &b);
    printf("======================\n");
    printf("char = %c, string = %s\n", ch, str);
    printf("a = %d, b = %d, a + b = %d\n", a, b, a + b);
}
