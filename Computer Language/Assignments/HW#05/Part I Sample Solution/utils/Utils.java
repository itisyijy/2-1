package utils;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Utils {
	static public int checkInputInteger(Scanner s, String msg) {
		int n=0;
		while(true) {
			boolean valid = true;
			System.out.print(msg);

			try {
				n = s.nextInt();
			}
			catch(InputMismatchException e) {
				System.out.println("Please input the number.");
				s.next();
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
