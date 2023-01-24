import java.util.Scanner;

class Grade{
    int math=0;
    int science=0;
    int english=0;

    Grade(int math, int science, int english){
        this.math = math;
        this.science = science;
        this.english = english;
    }

    public int average(){
        return (math+science+english)/3;
    }
}



public class HW03 {
    public static void main(String[] args) {

//        Scanner sc = new Scanner(System.in);
//        System.out.print("Input your number: ");
//        int num = sc.nextInt();
//
//        System.out.print("Result: ");
//        while(num>0){
//            System.out.print(num%10);
//            num=num/10;
//        }

        Scanner scanner = new Scanner(System.in);
        System.out.print("Input the score of Math, Science, and English subject >> ");
        int math = scanner.nextInt();
        int science = scanner.nextInt();
        int english = scanner.nextInt();

        Grade me = new Grade(math, science, english);

        System.out.println("Average is " + me.average());
        scanner.close();

    }
}
