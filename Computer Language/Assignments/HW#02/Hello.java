import java.util.Scanner;

public class Hello {
    public static void main(String[] args) {

        // Solution for #1
//        int i=1;
//
//        switch(i) {
//            case 1:
//                System.out.println("!");
//                break;
//            case 2:
//                System.out.println("@");
//                break;
//            case 3:
//                System.out.println("#");
//                break;
//            default:
//                System.out.println("*");
//
//        }


        // Solution for #2
//        Scanner scanner = new Scanner(System.in);
//        System.out.print("Input 2digit number (10~99): ");
//        int n = scanner.nextInt();
//        int ten = n/10;
//        int one = n%10;
//
//        if(ten == one)
//            System.out.println("Yes! two numbers are same!");
//        else
//            System.out.println("No! two numbers are NOT same!");
//        scanner.close();


        // Solution for #3
//        Scanner scanner = new Scanner(System.in);
//        System.out.print("Operation >>");
//        int op1 = scanner.nextInt();
//        String op = scanner.next();
//        int op2 = scanner.nextInt();
//
//        int res = 0;
//        switch(op) {
//            case "+":
//                res = op1 + op2;
//                break;
//            case "-":
//                res = op1 - op2;
//                break;
//            case "*":
//                res = op1 * op2;
//                break;
//            case "/":
////                if(op2 == 0) {
////                    System.out.print("cannot divide by 0.");
////                    scanner.close();
////                    return;
////                }
//                res = op1 / op2;
//                break;
//            default :
//                System.out.print("Not arithmetic operation!");
//                scanner.close();
//                return;
//        }
//        System.out.print(op1 + op + op2 + "= " + res);
//        scanner.close();


        // Solution for #4

//        int n [][] = { {1}, {1,2,3}, {1}, {1,2,3,4}, {1,2}};
//        for(int i=0; i<n.length; i++) {
//            switch(i){
//                case 0: System.out.print("1st row: ");break;
//                case 1: System.out.print("2nd row: ");break;
//                case 2: System.out.print("3rd row: ");break;
//                default: System.out.print((i+1)+"th row: ");break;
//
//            }
//            for (int j = 0; j < n[i].length; j++) {
//                System.out.print(n[i][j] + "\t");
//            }
//            System.out.println();
//
//        }


        // Solution for #5
//        System.out.print("Input your number (decimal): ");
//        Scanner scn = new Scanner(System.in);
//        int num = scn.nextInt();
//
//        String test = "";
//
//        while (num > 0) {
//            test = (num % 8) + test;
//            num = num / 8;
//        }
//
//        System.out.println(Integer.toOctalString(num));
//        System.out.println("Your number in Octal system: " + test);



        // Solution for #6
//        System.out.print("Enter the number of rows: ");
//        Scanner scanner = new Scanner(System.in);
//        int rows = scanner.nextInt();
//        for (int i = 1; i <= rows; i++) {
//            // Print star in decreasing order
//            for (int k = rows; k >= i; k--) {
//                System.out.print("*");
//            }
//            System.out.println();
//        }



        // Solution for #7
//        System.out.print("Enter the number of rows: ");
//        Scanner scanner = new Scanner(System.in);
//        int rows = scanner.nextInt();
//        for (int i = 1; i <= rows; i++) {
//            // Print star in decreasing order
//            for (int j = rows; j >= i; j--) {
//                if (i == 1 || j == i || j == rows)
//                    System.out.print("*");
//                else
//                    System.out.print(" ");
//            }
//
//            System.out.println();
//        }



        // Solution for #8
//        Scanner scanner = new Scanner(System.in);
//        System.out.print("Number please~ (1~99)");
//        int n = scanner.nextInt();
//        int array[] = new int[n];
//
//        for (int i = 0; i < array.length; i++) {
//            boolean found = false;
//            int r = (int) (Math.random() * 100 + 1);
//
//            for (int j = 0; j < array.length; j++) {
//                if (array[j] == r) {
//                    i--;
//                    found = true;
//                    break;
//                }
//            }
//            if (!found) {
//                array[i] = r;
//                System.out.println(r + " ");
//            }
//        }


        // Solution for #9
//        System.out.println("Input your string: ");
//        Scanner scanner = new Scanner(System.in);
//        String tmp = scanner.next();
//
//        for(int i=0;i<tmp.length();i++){
//            char t = tmp.charAt(i);
//            if(t<97) System.out.print((char)(t+32));
//            else System.out.print((char)(t-32));
//        }
//
//        scanner.close();



    }
}

