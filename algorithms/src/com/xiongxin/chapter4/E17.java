package com.xiongxin.chapter4;

import com.xiongxin.ArrayStack;
import com.xiongxin.IStack;

import java.util.ArrayList;

public class E17 {

    public static void main(String[] args) {

        var source = "(x = 1) (y = (x + 1)) (((x + y) * 3) + (4 * x))".toCharArray();
        var charArray = new ArrayList<Character>();
        var N = source.length;
        IStack<Character> stack = new ArrayStack<>(100);

        for (var i = 0; i < source.length; i++) {
            if (source[i] >= '0' && source[i] <= '9') {
                charArray.add(source[i]);
            } else if (source[i] == ')') {
                charArray.add(charArray.size(), stack.pop());
            } else if (source[i] == '+' || source[i] == '*') {
                stack.push(source[i]);
            } else if (source[i] == '(' || source[i] == ' ') { // ignore

            } else { // var
                stack.push(source[i]);
                if (source[i+1] == '=') {
                    i++;
                }
            }
        }

        System.out.println("result = " + charArray);
    }
}
