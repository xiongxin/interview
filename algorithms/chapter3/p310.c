#include <stddef.h>

#include "link.h"

link reverse(link x)
{
    link t, y = x, r = NULL;
    while (y->next != NULL)
    {
        t = y->next;
        y->next = r;
        r = y;
        y = t;
    }

    return r;
}