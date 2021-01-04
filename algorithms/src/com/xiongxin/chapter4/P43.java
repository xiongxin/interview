package com.xiongxin.chapter4;


import com.xiongxin.ArrayStack;
import com.xiongxin.IStack;

import java.util.ArrayList;
import java.util.Arrays;

/**
 * infix to postfix conversion
 */
public class P43 {

    public static void main(String[] args) {

        var source = "( 5 * ( ( 9 * 8 ) + ( 7 * ( 4 + 6 ) ) ) )".toCharArray();
        var charArray = new ArrayList<Character>();
        var N = source.length;
        IStack<Character> stack = new ArrayStack<>(100);

        for (char c : source) {
            if (c >= '0' && c <= '9') {
                charArray.add(c);
            } else if (c == ')') {
                charArray.add(charArray.size(), stack.pop());
            } else if (c == '+' || c == '*') {
                stack.push(c);
            }
        }

        System.out.println("result = " + charArray);
    }
}
