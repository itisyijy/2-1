import java.util.Scanner;

public class Q2 {
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        System.out.println("Input your number: ");
        int height = scn.nextInt();

        for (int i = 0; i < height; i++)
            System.out.print(i + 1 + " "); // the first line
        System.out.println();

        // Main Loop for the rows from (2 to n-1)
        for (int i = 1; i < height - 1; i++) {
            for (int j = 0; j < height - i - 1; j++) // print spaces first
                System.out.print("  ");
            System.out.print(height - i); // then, print the number for the row
            System.out.println();
        }

        for (int i = 0; i < height; i++)
            System.out.print(i + 1 + " "); // the last line
        System.out.println();
    }
}
