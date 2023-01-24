package employeeTest;
import employee.EmployeeSet;

import java.util.Scanner;

public class EmployeeTest {

	public static void main(String[] args) {
		EmployeeSet set = new EmployeeSet(); // for your Test only

		Scanner scanner = new Scanner(System.in); // for your Test only

		set.RegisterFullTimeEmp(scanner); // for your Test only
		set.RegisterFullTimeEmp(scanner); // for your Test only
		set.RegisterPartTimeEmp(scanner); // for your Test only
		set.RegisterPartTimeEmp(scanner); // for your Test only
		
		set.SearchAll(); // for your Test only

		scanner.close(); // for your Test only
	}
}
