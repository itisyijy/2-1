package menus;

public enum MainMenuEnum {
	REGISTER(1, "Register"),
	SEARCH(2, "Search"),
	EXIT(9, "Exit");
	
	int code;
	String message;
	
	MainMenuEnum(int code, String message) {
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
