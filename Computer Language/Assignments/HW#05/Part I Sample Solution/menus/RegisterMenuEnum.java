package menus;

public enum RegisterMenuEnum {
	
	FULL(11, "Registration of Full-Time Employees"),
	PART(12, "Registration of Part-Time Employees"),
	EXIT(19, "Back");
	
	int code;
	String message;
	
	RegisterMenuEnum(int code_, String message_){
		this.code = code_;
		this.message = message_;
	}
	
	public int getCode() {
		return code;
	}
	
	public String getMessage() {
		return message;
	}

}
