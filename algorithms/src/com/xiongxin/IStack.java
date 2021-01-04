package com.xiongxin;

public interface IStack<T> {
    boolean empty();
    void push(T item);
    T pop();
}
