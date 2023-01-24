import java.util.Scanner;

public class Q1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Input you number:");
        int input = scanner.nextInt();
        scanner.close();
        for (int i=2; i<10; i++) {
            if (input%i==0) {
                System.out.printf("%d is a multiple of %d\n", input, i);
            }
        }
    }
}
