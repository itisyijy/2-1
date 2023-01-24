package employee;

import utils.Utils;

import java.util.Scanner;

public class EmployeeSet {
	final int MAX_SIZE = 100;
	FullTimeEmp [] ftEmp;		// Array for full-time employees
	PartTimeEmp [] ptEmp;		// Array for part-time employees
	int indexFullTime;			// the number of full-time employees
	int indexPartTime;			// the number of part-time employees

	public EmployeeSet() {
		ftEmp = new FullTimeEmp[MAX_SIZE];
		ptEmp = new PartTimeEmp[MAX_SIZE];

		indexFullTime = 0;
		indexPartTime = 0;
	}

	public void RegisterFullTimeEmp(Scanner s) {
		System.out.println(">>> Full-time Registration <<<");

		int id = Utils.getID(s);
		String name = Utils.getName(s);
		DepartmentEnum department = Utils.getDepartment(s);
		PositionEnum position = Utils.getPosition(s);
		int grade = Utils.getGrade(s);

		ftEmp[indexFullTime] = new FullTimeEmp(id, name, department, position, grade);
		indexFullTime++;
	}

	public void RegisterPartTimeEmp(Scanner s) {
		System.out.println(">>> Part-time Registration <<<");

		int id = Utils.getID(s);
		String name = Utils.getName(s);
		DepartmentEnum department = Utils.getDepartment(s);
		int hours = Utils.getHours(s);

		ptEmp[indexPartTime] = new PartTimeEmp(id, name, department, hours);
		indexPartTime++;
	}

	public void SearchAll() {
		for(int n=0; n<indexFullTime; n++) {
			ftEmp[n].print();
		}

		for(int n=0; n<indexPartTime; n++) {
			ptEmp[n].print();
		}
	}
}
