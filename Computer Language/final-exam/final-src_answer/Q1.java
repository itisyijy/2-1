import java.util.Scanner;

public class Q1 {
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        System.out.println("Input your number: ");
        int num = scn.nextInt();

        for (int i = 2; i < 10; i++) {
            if (num % i == 0) System.out.println(num + " is a multiple of " + i);
        }
    }
}
