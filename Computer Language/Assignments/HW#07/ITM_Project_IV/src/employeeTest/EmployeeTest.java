package employeeTest;

import employee.EmployeeSet;
import menus.*;

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
					else if (ss == SearchMenuEnum.FULL_SEARCH) {
						set.SearchFull();
					}
					else if (ss == SearchMenuEnum.PART_SEARCH) {
						set.SearchPart();
					}
					else if (ss == SearchMenuEnum.NAME_SEARCH) {
						set.SearchName(scanner);
					}
					else if (ss == SearchMenuEnum.BACK) {
						break;
					}
				}
			}
			else if (mm == MainMenuEnum.EDIT) {
				while (true) {
					EditMenuEnum ee = menu.EditMenu(scanner);
					if (ee == EditMenuEnum.EDIT_BY_ID) {
						set.EditByID(scanner);
					}
					else if (ee == EditMenuEnum.BACK) {
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