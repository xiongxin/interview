#include <stdlib.h>
#include <stdio.h>

#include "link.h"

int main(int argc, char const *argv[])
{
    int i, N = 9, M = 5;
    link t = malloc(sizeof *t), x = t;

    x->item = 1;
    t->next = t;
    for (i = 2; i <= N; i++)
    {
        x = (x->next = malloc(sizeof *x));
        x->item = i;
        x->next = t;
    }

    while (x != x->next)
    {
        for (i = 1; i < M; i++)
            x = x->next;
        x->next = x->next->next;
    }

    printf("%d\n", x->item);

    return 0;
}
