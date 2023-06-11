public class Main {
    public static void main(String[] args) {
    	int n = 10;

        long startTime = System.nanoTime();
        int result = fibonacciRecursive(n);
        long endTime = System.nanoTime();

        long recursiveExecutionTime = endTime - startTime;
        System.out.println("Fibonacci number at position " + n + ": " + result);
        System.out.println("Recursive Execution Time: " + recursiveExecutionTime + " nanoseconds");

        startTime = System.nanoTime();
        result = fibonacciIterative(n);
        endTime = System.nanoTime();

        long iterativeExecutionTime = endTime - startTime;
        System.out.println("Fibonacci number at position " + n + ": " + result);
        System.out.println("Iterative Execution Time: " + iterativeExecutionTime + " nanoseconds");
    }


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
}