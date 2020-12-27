
# 实现一个简单的垃圾回收器

http://www.craftinginterpreters.com/garbage-collection.html

# Reachability （可达性）

```
var a = "first value";
a = "updated";
// GC here.
print a;
```
一个值是否**可达**(reachable)是指用户程序是否以某种方式引用它，例如上面的字符串"first value"就是**不可达**的。

在虚拟机的运行过程中是有很多值是直接访问的。

```
var global = "string";
{
  var local = "another";
  print global + local;
}
```

**root**是虚拟机不需要通过引用直接获取到的对象。大部分root是全局变量或者栈上的值，但是VM也有一些其他的地方存放着root。

垃圾回收器的基本算法就是，所有其他的算法都是在此基础做优化：

1. 从root开始，遍历它的引用对象找出所有的可达对象集合。
2. 释放掉所有不在可达对象集合的值。

# Mark-Sweep Garbage Collection

- Marking 标记可达对象
- Sweeping 清除未标记对象

# The tri-clor abstraction

(该算法也可用于spring ioc循环依赖检测，包管理器中的循环依赖检测等等)

每个对象有一个颜色的属性标识对象的状态和接下来要怎么做：

- White 垃圾回收工作开始之前，所有的对象都是白色的
- Gray  开始标记状态，在我们到达一个对象，我们将它置灰。这个颜色意味着该对象自身也是可达的，不会被回收。但是如何没有看到其他的对象在引用它。在图算法中术语中称为 *worklist* - 没有处理完全处理的对象集合。
- Black 在处理完一个Grap对象的所有引用之后，我们再将Gray置成block。这个颜色意味着一个对象处理完毕。

