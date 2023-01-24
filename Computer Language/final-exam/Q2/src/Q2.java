import java.util.Scanner;

public class Q2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Input you number:");
        int n = scanner.nextInt();
        scanner.close();

        for (int i=0; i<n; i++) {
            if (i==0 || i==n-1) {
                for (int j=0; j<n; j++) {
                    System.out.print(j+1);
                    System.out.print(" ");
                }
                System.out.println();
            }
            else {
                for (int j=0; j<2*(n-i)-2; j++) {
                    System.out.print(" ");
                }
                System.out.print(n-i);
                System.out.println();
            }
        }
    }
}
