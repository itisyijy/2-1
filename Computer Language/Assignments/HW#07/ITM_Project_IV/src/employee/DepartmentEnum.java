package employee;

public enum DepartmentEnum {
	GENERAL_AFFAIR(1, "General Affair"),
	PERSONNEL(2, "Personnel"),
	PLANNING(3, "Planning"),
	PRODUCTION(4, "Production"),
	SALES(5, "Sales");

	int code;
	String message;
	
	DepartmentEnum(int code, String message) {
		this.code = code;
		this.message = message;
	}
	
	public int getCode() {
		return code;
	}
	
	public String getMessage() {
		return message;
	}
}
