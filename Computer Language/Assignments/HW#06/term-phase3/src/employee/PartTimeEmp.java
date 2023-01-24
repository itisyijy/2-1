package employee;

public class PartTimeEmp {
	// declare fields here
	private int id;
	private String name;
	private DepartmentEnum department;
	private int hours;
	
	public PartTimeEmp() {
// implement here
	}

	public PartTimeEmp(int id, String name, DepartmentEnum department, int hours) {
// implement here
		this.id = id;
		this.name = name;
		this.department = department;
		this.hours = hours;
	}
	
	public void print() {
// implement here
		System.out.println("==============================");
		System.out.println("ID : "+id);
		System.out.println("Name : "+name);
		System.out.println("Department : "+department.getMessage());
		System.out.println("Hours : "+hours);
	}
}
