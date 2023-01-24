import java.util.Scanner;

public class Q4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Input your string:");
        String sentence = scanner.nextLine();
        String[] words = sentence.split(" ");
        int max = 0;
        String longest = "";
        for (String s : words) {
            if (s.length() >= max) {
                max = s.length();
                longest = s;
            }
        }
        System.out.println(longest);
    }
}
