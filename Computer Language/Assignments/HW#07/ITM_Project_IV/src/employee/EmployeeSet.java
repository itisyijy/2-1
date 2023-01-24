package employee;

import utils.Utils;

import java.util.Scanner;

public class EmployeeSet {
	final int MAX_SIZE = 100;
	Employee[] Emp;
	int index;

	public EmployeeSet() {
		Emp = new Employee[MAX_SIZE];
		index = 0;
	}

	public void RegisterFullTimeEmp(Scanner s) {
		System.out.println(">>> Full-time Registration <<<");

		int id = Utils.getID(s);
		String name = Utils.getName(s);
		DepartmentEnum department = Utils.getDepartment(s);
		PositionEnum position = Utils.getPosition(s);
		int grade = Utils.getGrade(s);

		Emp[index] = new FullTimeEmp(id, name, department, position, grade);
		index++;
	}

	public void RegisterPartTimeEmp(Scanner s) {
		System.out.println(">>> Part-time Registration <<<");

		int id = Utils.getID(s);
		String name = Utils.getName(s);
		DepartmentEnum department = Utils.getDepartment(s);
		int hours = Utils.getHours(s);

		Emp[index] = new PartTimeEmp(id, name, department, hours);
		index++;
	}

	public void SearchAll() {
		for(int n=0; n<index; n++) {
			Emp[n].print();
		}
	}

	public void SearchFull() {
		for (Employee e : Emp) {
			if (e instanceof FullTimeEmp) {
				e.print();
			}
		}
	}

	public void SearchPart() {
		for (Employee e : Emp) {
			if (e instanceof PartTimeEmp) {
				e.print();
			}
		}
	}

	public void SearchName(Scanner s) {
		s.nextLine();
		System.out.print("Input Name : ");
		String seekName = s.nextLine();
		try {
			for (Employee e : Emp) {
				if (e.getName().equals(seekName)) {
					e.print();
					break;
				}
			}
		}
		catch (Exception e) {
			System.out.println("Could not find such an employee: "+seekName);
		}
	}

	public void EditByID(Scanner s) {
		System.out.print("Input id : ");
		int seekID = s.nextInt();
		try {
			for (Employee e : Emp) {
				if (e.getId() == seekID) {
					System.out.println("ID matched. Please edit the employee's info.");
					e.id = Utils.getID(s);
					e.name = Utils.getName(s);
					e.department = Utils.getDepartment(s);
					if (e instanceof FullTimeEmp) {
						PositionEnum p = Utils.getPosition(s);
						int g = Utils.getGrade(s);
						((FullTimeEmp) e).setPosition(p);
						((FullTimeEmp) e).setGrade(g);
					}
					if (e instanceof PartTimeEmp) {
						int h = Utils.getHours(s);
						((PartTimeEmp) e).setHours(h);
					}
					System.out.println("Updated as follows.");
					e.print();
					break;
				}
			}
		}
		catch (Exception e) {
			System.out.println("Could not find such an employee.");
		}





	}
}
