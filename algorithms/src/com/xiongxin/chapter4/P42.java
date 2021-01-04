package com.xiongxin.chapter4;

import com.xiongxin.ArrayStack;
import com.xiongxin.IStack;

public class P42 {

    public static void main(String[] args) {

        var source = "1 20 +".toCharArray();
        var N = source.length;
        IStack<Integer> stack = new ArrayStack<>(100);

        for (var j = 0; j < N; j++) {

            if (source[j] == '+') {
                stack.push(stack.pop() + stack.pop());
            }

            if (source[j] == '*') {
                stack.push(stack.pop() * stack.pop());
            }

            if (source[j] >= '0' && source[j] <= '9')
                stack.push(0);
            while (source[j] >= '0' && source[j] <= '9')
                stack.push(10 * stack.pop() + (source[j++] - '0'));
        }

        System.out.println("result = " + stack.pop());
    }
}
