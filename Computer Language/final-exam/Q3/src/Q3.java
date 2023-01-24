import java.util.Scanner;

public class Q3 {
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        System.out.println("Input your number: ");
        int num = scn.nextInt();

        boolean isArm = isArmstrong(num);

        if(isArm) System.out.println("Armstrong Number!");
        else System.out.println("Not Armstrong Number!");
    }

    static boolean isArmstrong(int num){
        // you must implement this method
        int one = num%10;
        int two = (num-one)%100/10;
        int three = (num-one-two*10)/100;
        int armstrong = one*one*one + two*two*two + three*three*three;
        if (num == armstrong) {
            return true;
        }
        else {
            return false;
        }
    }
}
