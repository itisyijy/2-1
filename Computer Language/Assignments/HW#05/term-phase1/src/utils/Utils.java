package utils;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Utils {
	static public int checkInputInteger(Scanner s, String msg) {
		int n=0;
		while(true) {
			boolean valid = true; // check valid
			System.out.print(msg);

			try {
				n = s.nextInt(); // take integer from the user
			}
			catch(InputMismatchException e) { // if error
				System.out.println("Please input the number");
				s.next(); // throws non-integer tokens in the input stream
				valid = false;
			}
			finally {
				if(valid) {
					break;
				}
			}
		}
		
		return n;
	}
}
