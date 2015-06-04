#include "comm_head.h"
#include "stdio.h"

int a, b;
char ch, str[256];

int main() {
    printf("Please input a char: "); scanf("%c", &ch);
   	printf("Please input a string: "); gets(str);
    printf("Please input num a and b: "); scanf("%d %d", &a, &b);
    printf("======================\n");
    printf("char = %c, string = %s\n", ch, str);
    printf("a = %d, b = %d, a + b = %d\n", a, b, a + b);
}
