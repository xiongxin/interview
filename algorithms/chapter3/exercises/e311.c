#include <stdio.h>

int main(int argc, char const *argv[])
{
    int i, a[99];
    for (i = 0; i < 99; i++)
        a[i] = 98 - i;
    for (i = 0; i < 99; i++)
        printf("%2d ", a[i]);
    printf("\n");
    for (i = 0; i < 99; i++)
        a[i] = a[a[i]];
    for (i = 0; i < 99; i++)
        printf("%2d ", a[i]);

    return 0;
}
