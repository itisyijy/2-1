package employeeTest;

import menus.MainMenuEnum;
import menus.Menu;
import menus.RegisterMenuEnum;
import menus.SearchMenuEnum;

import java.util.Scanner;

public class EmployeeTest {

	public static void main(String[] args) {
		Menu menu = new Menu();

		Scanner scanner = new Scanner(System.in);
		while(true) {
			MainMenuEnum mm = menu.MainMenu(scanner);
			if(mm == MainMenuEnum.REGISTER) {
				System.out.println("Register");
				while (true) {
					RegisterMenuEnum rr = menu.RegisterMenu(scanner);
					if (rr == RegisterMenuEnum.FULLTIME) {
						System.out.println(">>> Fulltime Registration <<<");
					}
					else if (rr == RegisterMenuEnum.PARTTIME) {
						System.out.println(">>> Parttime Registration <<<");
					}
					else if (rr == RegisterMenuEnum.BACK) {
						break;
					}
				}
			}
			else if(mm == MainMenuEnum.SEARCH) {
				System.out.println("Search");
				while (true) {
					SearchMenuEnum ss = menu.SearchMenu(scanner);
					if (ss == SearchMenuEnum.SEARCH) {
						System.out.println(">>> Full Search <<<");
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