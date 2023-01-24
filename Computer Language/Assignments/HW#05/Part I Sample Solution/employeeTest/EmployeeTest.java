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
				while(true){
					RegisterMenuEnum mr = menu.RegisterMenu(scanner);
					if(mr == RegisterMenuEnum.FULL){
						System.out.println(">>> Fulltime Registration <<<");
					}
					else if(mr == RegisterMenuEnum.PART){
						System.out.println(">>> Parttime Registration <<<");
					}
					else if(mr == RegisterMenuEnum.EXIT){
						break;
					}
				}
			}
			else if(mm == MainMenuEnum.SEARCH) {
				while(true){
					SearchMenuEnum mr = menu.SearchMenu(scanner);
					if(mr == SearchMenuEnum.SEARCH){
						System.out.println(">>> Full Search <<<");
					}
					else if(mr == SearchMenuEnum.EXIT){
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
