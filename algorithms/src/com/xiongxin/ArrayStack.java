package com.xiongxin;

public class ArrayStack<T> implements IStack<T> {

    private final T[] array;
    private int length;

    @SuppressWarnings("unchecked")
    public ArrayStack(int length) {
        this.length = 0;
        this.array = (T[]) new Object[length];
    }

    @Override
    public boolean empty() {
        return length == 0;
    }

    @Override
    public void push(T item) {
        this.array[this.length++] = item;
    }

    @Override
    public T pop() {
        return this.array[--this.length];
    }
}
