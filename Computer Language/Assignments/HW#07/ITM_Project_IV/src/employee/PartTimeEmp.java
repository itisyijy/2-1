package employee;

public class PartTimeEmp extends Employee{
	private int hours;

	public PartTimeEmp(int id, String name, DepartmentEnum department, int hours) {
		super.id = id;
		super.name = name;
		super.department = department;
		this.hours = hours;
	}
	
	public void print() {
		System.out.println("==============================");
		System.out.println("ID : "+id);
		System.out.println("Name : "+name);
		System.out.println("Department : "+department.getMessage());
		System.out.println("Hours : "+hours);
	}

	public int getHours() {
		return hours;
	}
	public void setHours(int hours) {
		this.hours = hours;
	}
}
