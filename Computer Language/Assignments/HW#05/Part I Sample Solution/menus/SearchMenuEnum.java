package menus;

public enum SearchMenuEnum {
	SEARCH(21, "Full Search"),
	EXIT(29, "Back");
	
	int code;
	String message;
	
	SearchMenuEnum(int code_, String message_){
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
