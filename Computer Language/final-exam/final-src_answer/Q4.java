import java.util.Scanner;

public class Q4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Input your string: ");
        String input_string = scanner.nextLine();

        String[] words = input_string.split(" "); // split words
        String longest_word = "";
        int longest_word_len = 0;
        for (int i = 0; i < words.length; i++) { // visit every word
            String word = words[i];
            int len = word.length(); // check the length of the word
            if (len >= longest_word_len) { // take a longer one!
                longest_word = word;
                longest_word_len = len;
            }
        }
        System.out.println(longest_word); // finally, print out the longest one
    }
}
