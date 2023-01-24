package utils;

import employee.DepartmentEnum;
import employee.PositionEnum;

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
				System.out.println("Please input the number.");
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
	
	public static int getID(Scanner s) {
		int id = Utils.checkInputInteger(s, ">> id: ");

		return id;
	}
	
	public static String getName(Scanner s) {
		String name=null;

		// Implement here

		return name;
	}

	public static DepartmentEnum getDepartment(Scanner s) {
		int dept;
		DepartmentEnum department = null;
		while(true) {
			System.out.print("== List of Dept.: ");
			for(DepartmentEnum d : DepartmentEnum.values()) {
				System.out.print(d.getMessage() + "(" + d.getCode() + ") ");
			}
			System.out.println("");
			dept = Utils.checkInputInteger(s, ">> Department: ");

			boolean valid = false;
			for(DepartmentEnum d : DepartmentEnum.values()) {
				if(dept == d.getCode()) {
					valid = true;
					department = d;
					break;
				}
			}

			if(valid) {
				break;
			}
		}
		
		return department;
	}
	
	public static PositionEnum getPosition(Scanner s) {
		int pos;
		PositionEnum position = null;

		// Implement here

		return position;
	}
	
	public static int getGrade(Scanner s) {
		int grade = -1;

		// Implement here

		return grade;
	}

	public static int getHours(Scanner s) {
		int hours = -1;

		// Implement here

		return hours;
	}
}
