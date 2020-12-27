## 1.2 


### 如何实现 find union 操作

读取一个新的 p-q 时，我们使用 *find* 处理数值对中的每个数字。如果数值对的成员在相同的集合中，
接着处理下一个，如果不在，使用 *union* 操作并写下数值对。集合代表连接的组件：子集合对象属性
是每个组件的任意两个对象是连接的。


### Exercises

1.1

0-2 0-2
1-4 1-4
2-5 2-5
3-6 3-6
0-4 0-4
6-0 6-0
1-3     1-4-0-6-3

## 1.3 Union-Find Alorithms

### Property 1.1 

The quick-find algorithm executes at least MN instructions to solve
a connectivity problem with N objects that involves M union operations.

### Propert 1.2

For M > N, the quick-union algorithm could take more than MN/2 instructions
to slove a connectivity problem with M pairs of N objects.