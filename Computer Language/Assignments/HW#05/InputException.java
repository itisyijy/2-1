package Assignment.HW05;

import java.util.InputMismatchException;
import java.util.Scanner;

public class InputException extends Throwable {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Input three integer numbers!");
        int sum = 0, n = 0;
        for (int i=0; i<3; i++) {
            System.out.print(i+">>");
            try {
                n = scanner.nextInt();
            }
            catch (InputMismatchException e) {
                System.out.println("Not integer number. Please input again!");
                scanner.next();
                n = 0;
                i--;
            }
            sum = sum + n;
        }
        System.out.println("Sum is " + sum);
        scanner.close();
    }
}
