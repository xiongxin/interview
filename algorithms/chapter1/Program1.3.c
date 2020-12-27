#include <stdio.h>
#define N 1000

// Weighted version of quick union
// 记录每颗树的节点数量，保持连接小的树到大的树
// 减少根节点高度

// 优化点：路径压缩,减少树高度

int main(int argc, char const *argv[])
{

    int i, j, p, q, id[N], sz[N];
    for (i = 0; i < N; i++)
    {
        id[i] = i;
        sz[i] = 1;
    }

    while (scanf("%d %d", &p, &q) == 2)
    {
        for (i = p; id[i] != i; i = id[i])
            ; //遍历时可以做路径压缩 id[i] = id[id[i]]; 下面的类似
        for (j = q; id[j] != j; j = id[j])
            ;
        if (i == j)
            continue;

        if (sz[i] < sz[j])
        {
            id[i] = j;
            sz[j] += sz[i];
        }
        else
        {
            id[j] = i;
            sz[i] += sz[j];
        }

        printf(" %d %d\n", p, q);
    }

    return 0;
}
