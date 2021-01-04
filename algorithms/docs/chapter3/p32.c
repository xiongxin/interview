#include <math.h>
#include <stdlib.h>
#include <stdio.h>

#include "Num.h"
#include "point.h"

int main(int argc, char const *argv[])
{
    //int i, N = atoi(argv[1]);

    point p1 = {1.0, 2.0};

    printf("RandomMAX %f ============= %d\n", p1.x, randNum());
    return 0;
}
