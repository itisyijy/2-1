package menus;

import utils.Utils;
import java.util.Scanner;

public class Menu {
	public MainMenuEnum MainMenu(Scanner s) {
		System.out.println("");
		System.out.println("======== Main Menu ===");
		for(MainMenuEnum m : MainMenuEnum.values()) {
			System.out.println("  " + m.getCode() + ". " + m.getMessage());
		}

		int n;
		MainMenuEnum select = null;
		while(true) {
			n = Utils.checkInputInteger(s, "Select >>> ");

			boolean valid = false;
			for(MainMenuEnum m : MainMenuEnum.values()) {
				if(n == m.getCode()) {
					valid = true;
					select = m;
					break;
				}
			}
			
			if(valid) {
				break;
			}
		}
		
		return select;
	}

	public RegisterMenuEnum RegisterMenu(Scanner s) {
		System.out.println("");
		System.out.println("======== Register Menu ===");
		for (RegisterMenuEnum r : RegisterMenuEnum.values()) {
			System.out.println("  " + r.getCode() + ". " + r.getMessage());
		}

		int n;
		RegisterMenuEnum select = null;
		while (true) {
			n = Utils.checkInputInteger(s, "Select >>> ");

			boolean valid = false;
			for (RegisterMenuEnum r : RegisterMenuEnum.values()) {
				if (n == r.getCode()) {
					valid = true;
					select = r;
					break;
				}
			}
			if (valid) {
				break;
			}
		}
		return select;
	}

	public SearchMenuEnum SearchMenu(Scanner sc) {
		System.out.println("");
		System.out.println("======== Search Menu ===");
		for (SearchMenuEnum s : SearchMenuEnum.values()) {
			System.out.println("  " + s.getCode() + ". " + s.getMessage());
		}

		int n;
		SearchMenuEnum select = null;
		while (true) {
			n = Utils.checkInputInteger(sc, "Select >>> ");

			boolean valid = false;
			for (SearchMenuEnum s : SearchMenuEnum.values()) {
				if (n == s.getCode()) {
					valid = true;
					select = s;
					break;
				}
			}
			if (valid) {
				break;
			}
		}
		return select;
	}
}