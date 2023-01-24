import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class Q6 {
    public static void main(String[] args) {
        try {
            Scanner input = new Scanner(System.in);
            System.out.println("Input your string:");
            String seek = input.nextLine().toLowerCase();
            File file = new File("file.txt");
            Scanner fileScan = new Scanner(file);
            int count = 0;
            int exist = 0;
            while (fileScan.hasNext()) {
                String singleLine = fileScan.nextLine().toLowerCase();
                count++;
                if (singleLine.contains(seek)) {
                    System.out.println("Included in Line #"+count);
                    exist++;
                }
            }
            if (exist==0) {
                System.out.println("The given word is not present in the file");
            }
        }
        catch (IOException e) {
            System.out.println("Error");
        }


    }
}
