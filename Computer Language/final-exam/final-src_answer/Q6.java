import java.io.*;
import java.util.Scanner;

public class Q6 {
    public static void main(String[] args) throws IOException {

        File f1 = new File("file.txt"); //Creation of File Descriptor for input file
        FileReader fr = new FileReader(f1);  //Creation of File Reader instance
        Scanner sr = new Scanner(fr);
        String s;
        System.out.println("Input your string: ");
        Scanner scn = new Scanner(System.in);
        String input = scn.nextLine().toLowerCase();   // Input word to be searched
        // by nextLine() we support multi-word seach
        // by toLowerCase() we support case-insensitive search

        int count = 0; // to check if a certain word is found or not
        int line = 1;  // for line counting

        while (sr.hasNext())   //Reading lines from the file
        {
            s = sr.nextLine().toLowerCase(); // to support case-insensitve search
            if (s.contains(input)) { // to search for a line containing the user query
                System.out.println("Included in Line #" + line);
                count++;    //If Present increase the count by one
            }

            line++;
        }
        if (count == 0)  //Check for count not equal to zero
        {
            System.out.println("The given word is not present in the file");
        }

        fr.close();

    }
}



