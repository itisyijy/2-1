package menus;

public enum SearchMenuEnum {
    SEARCH(21,"Full Search"),
    FULL_SEARCH(22,"Fulltime search"),
    PART_SEARCH(23,"Partime search"),
    NAME_SEARCH(24,"Name search"),
    BACK(29, "Back");

    int code;
    String message;
    SearchMenuEnum(int code, String message) {
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