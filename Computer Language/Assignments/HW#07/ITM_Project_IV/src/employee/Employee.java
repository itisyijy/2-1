package employee;

abstract class Employee {
    protected int id;
    protected String name;
    protected DepartmentEnum department;

    abstract public void print();

    public int getId() {
        return id;
    }
    public void setID(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public DepartmentEnum getDepartment() {
        return department;
    }
    public void setDepartment(DepartmentEnum department) {
        this.department = department;
    }

}
