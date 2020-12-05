#include <stdio.h>
#define N 1000

int main(int argc, char const *argv[])
{
    int i, j, p, q, id[N];
    for (i = 0; i < N; i++)
        id[i] = i;

    while (scanf("%d %d", &p, &q) == 2)
    {
        for (i = p; i != id[i]; i = id[i])
            ;
        for (j = q; j != id[i]; j = id[j])
            ;
        if (i == j)
            continue;
        id[i] = j; // 这里就是union操作,故称为quick union
        printf(" %d %d\n", p, q);
    }

    return 0;
}
