import java.util.Scanner;

public class Q3 {
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        System.out.print("Input your number: ");
        int num = scn.nextInt();

        boolean isArm = isArmstrong(num);

        if (isArm) System.out.println("Armstrong Number!");
        else System.out.println("Not Armstrong Number!");
    }

    static boolean isArmstrong(int num) {
        int sum = 0;
        int value = num;
        while (num > 0) {
            int digit = num % 10; // take the number for each digit
            sum += Math.pow(digit, 3); // take the cube and then add it to sum
            num = num / 10; // move to the next digit
        }
        if (value == sum) return true;
        else return false;
    }
}
