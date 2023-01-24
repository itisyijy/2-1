package employee;

public enum PositionEnum {
// implement here
    DIRECTOR(1,"Director"),
    GENERAL(2,"General Manager"),
    MANAGER(3, "Manager"),
    ASSISTANT(4,"Assistant Manager"),
    STAFF(5, "Staff");

    int code;
    String message;

    PositionEnum(int code, String message) {
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
