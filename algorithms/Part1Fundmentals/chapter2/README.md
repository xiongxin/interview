## 2.3 Growth of Functions

- 1: 
- logN: 将一个大的问题分解成很小的问题。当N翻倍时，logN增加常数，直到N^2时，才会使得logN翻倍
- N:
- NlogN: 将一个大的问题分解成很小的问题，然后组合所有的答案。当N时1 000 000时,NlogN是6 000 000, 当N翻倍时运行时比翻倍要大
- N^2：经常出现于双重循环,当N时1 000时，运行时是1 000 000,当N翻倍时，运行时翻4倍。
- N^3: 三重循环，当N是100时，运行时是1000 000,当N翻倍时，运行时翻8倍
- 2^N:当N时20时，运行时就是1 000 000了 ,当N翻倍时，运行时需要平方

### 时间转换

### 解决巨大问题的时间

*一个快速的算法可以保证在很慢的机器上执行，但是一个快速的机器不能帮助我们使用慢的算法解决问题*


lgN表示大于lgN的最小整数是N的bits位表示，例如最小的整数大于log10N是N的十进制位数需要。



## 2.4 Big-Oh Notation

### Definition 2.1

A function g(N) is said to be O(f(N)) if there exist constants c0 and N0 such that 
g(N) < c0f(N) for all N > N0;

使用O-notation的三个目的：
- 误差界限，当我们忽略了数学公式中的很小的项
- 误差界限，当我们在分析时忽略程序中对于总数贡献比较小的部分
- 允许我们根据程序运行时的上边界将算法分类


## 2.5 Basic Recurrences

### Formula 2.1

This formula arises for a program that loops through the input to eliminate one item:
`CN = C(N-1) + N, for N >= 2 with C1 = 1.`

*Solution: `CN` is about `N^2 / 2`.


### Formula 2.2

This recurrence arises for a recursive program that halves the input in one step:
`Cn = Cn/2 + 1, for N >= 2 with C1 = 1`

*Solution: `Cn` is about `lgN`*

### Formula 2.3

This recurrence arises for recursive program that halves the input,but
perhaps must examine every item in the input.
`Cn = Cn/2 + N, for N >= 2 with C1 = 0`

*Solution: Cn is about 2N*

### Formula 2.4

This recurrence arises for a recursive program that has to make a linear pass through the input, before, during, or after splitting that input into two halves:
`Cn = 2Cn/2 + n,  for n >= 2 with C1 = 0`

*Solution: nlgn*.

### Formula 2.5

This recurrence arises for a recursive program that splits the input into two halves and then does a constant amount of other work:
`Cn = 2Cn/2 + 1, for N >= 2 with C1 = 1`

*Solution: Cn is about 2N*.


## 2.6 Examples of Algorithm Analysis

### Property 2.1

*Sequential search examines N numbers for each unsuccessful search and about N/2 numbers for each successful search on the average.*