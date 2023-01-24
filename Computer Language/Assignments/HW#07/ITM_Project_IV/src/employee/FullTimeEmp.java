package employee;

public class FullTimeEmp extends Employee{
	private PositionEnum position;
	private int grade;

	public FullTimeEmp(int id, String name, DepartmentEnum department, PositionEnum position, int grade) {
		super.id = id;
		super.name = name;
		super.department = department;
		this.position = position;
		this.grade = grade;
	}

	public void print() {
		System.out.println("==============================");
		System.out.println("ID : "+id);
		System.out.println("Name : "+name);
		System.out.println("Department : "+department.getMessage());
		System.out.println("Position : "+position.getMessage());
		System.out.println("Grade : "+grade);
	}

	public PositionEnum getPosition() {
		return position;
	}
	public void setPosition(PositionEnum position) {
		this.position = position;
	}

	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
}
