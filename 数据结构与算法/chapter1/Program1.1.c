#include <stdio.h>
#define N 1000

int main(int argc, char const *argv[])
{
    int i, p, q, t, id[N];
    for (i = 0; i < N; i++)
        id[i] = i;

    while (scanf("%d %d", &p, &q) == 2)
    {
        // 这里就是quick find,仅仅比较两值位置是否相等
        if (id[p] == id[q])
            continue;

        // 这里是union操作，遍历数组
        for (t = id[p], i = 0; i < N; i++)
            if (id[i] == t)
                id[i] = id[q];
        printf(" %d %d\n", p, q);
    }

    return 0;
}
