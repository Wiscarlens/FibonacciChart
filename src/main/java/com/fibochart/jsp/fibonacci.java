package com.fibochart.jsp;

/**
 * @author Wiscarlens Lucius
 * @since 6/11/2023
 * 
 * 
 * */

public class fibonacci {
	public static int fibonacciRecursive(int n) {
        if (n <= 1) {
            return n;
        } else {
            return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
        }
    }

    public static int fibonacciIterative(int n) {
        if (n <= 1) {
            return n;
        } else {
            int a = 0, b = 1;
            for (int i = 2; i <= n; i++) {
                int temp = a + b;
                a = b;
                b = temp;
            }
            return b;
        }


    }
    
    public static String fibonacciIterativeDeux(int n) {
        StringBuilder result = new StringBuilder();

        if (n <= 1) {
            result.append("<td>").append(1).append("</td>\n");
        } else {
            int a = 0, b = 1;
            for (int i = 2; i <= n; i++) {
                long startTime = System.nanoTime();
                int temp = a + b;

                a = b;
                b = temp;
                long endTime = System.nanoTime();
                result.append("<td>").append(endTime - startTime).append("ns</td>\n");
            }
        }

        return result.toString();
    }



    
    
    public static long timeRecursive(int n){
        long startTime = System.nanoTime();
        int result = fibonacciRecursive(n);
        long endTime = System.nanoTime();

        return endTime - startTime;
    }

    public static long timeIterative(int n){
        long startTime = System.nanoTime();
        int result = fibonacciIterative(n);
        long endTime = System.nanoTime();

        return endTime - startTime;
    }

}
