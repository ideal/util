#include <stdio.h>


int main()
{
    int a = 90;
    int b;
    __asm__ ("movl %1, %0\n\t"
             "": "=m"(b): "c"(a));

    int val = 8000;
    __asm__("bswap %0" : "=r" (val) : "0" (val));

    val = 9000;
    __asm__("bswap %0" : "=d" (val) : "c" (val));

    return 0;
}
