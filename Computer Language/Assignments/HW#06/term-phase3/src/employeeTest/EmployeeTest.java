package employeeTest;

import employee.EmployeeSet;
import menus.MainMenuEnum;
import menus.Menu;
import menus.RegisterMenuEnum;
import menus.SearchMenuEnum;
import java.util.Scanner;

public class EmployeeTest {

	public static void main(String[] args) {
		Menu menu = new Menu();
		EmployeeSet set = new EmployeeSet();
		Scanner scanner = new Scanner(System.in);

		while(true) {
			MainMenuEnum mm = menu.MainMenu(scanner);
			if(mm == MainMenuEnum.REGISTER) {
				while (true) {
					RegisterMenuEnum rr = menu.RegisterMenu(scanner);
					if (rr == RegisterMenuEnum.FULLTIME) {
						set.RegisterFullTimeEmp(scanner);
					}
					else if (rr == RegisterMenuEnum.PARTTIME) {
						set.RegisterPartTimeEmp(scanner);
					}
					else if (rr == RegisterMenuEnum.BACK) {
						break;
					}
				}
			}
			else if(mm == MainMenuEnum.SEARCH) {
				while (true) {
					SearchMenuEnum ss = menu.SearchMenu(scanner);
					if (ss == SearchMenuEnum.SEARCH) {
						set.SearchAll();
					}
					else if (ss == SearchMenuEnum.BACK) {
						break;
					}
				}
			}
			else if(mm == MainMenuEnum.EXIT) {
				System.out.print("Good BYE!");
				scanner.close();
				break;
			}
		}
		
		scanner.close();
	}
}