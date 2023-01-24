package employee;

public class FullTimeEmp {
	// declare fields here
	private int id;
	private String name;
	private DepartmentEnum department;
	private PositionEnum position;
	private int grade;

	
	public FullTimeEmp() {
	// implement here
	}

	public FullTimeEmp(int id, String name, DepartmentEnum department, PositionEnum position, int grade) {
// implement here
		this.id = id;
		this.name = name;
		this.department = department;
		this.position = position;
		this.grade = grade;


	}
	

	public void print() {
// implement here
		System.out.println("==============================");
		System.out.println("ID : "+id);
		System.out.println("Name : "+name);
		System.out.println("Department : "+department.getMessage());
		System.out.println("Position : "+position.getMessage());
		System.out.println("Grade : "+grade);
	}
}
