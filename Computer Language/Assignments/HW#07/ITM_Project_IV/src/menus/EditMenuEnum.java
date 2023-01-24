package menus;

public enum EditMenuEnum {
    //Implement here
    EDIT_BY_ID(31, "Edit employee information (by ID)"),
    BACK(39, "Back");

    int code;
    String message;

    EditMenuEnum(int code, String message) {
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
