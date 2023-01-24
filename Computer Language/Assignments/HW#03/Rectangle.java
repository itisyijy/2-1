public class Rectangle {
    private int x, y, width, height;

    public Rectangle(int x, int y, int width, int height) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    public void show() {
        System.out.print("coordinate: (" + x + "," + y + ")");
        System.out.println(" area: " + width + "x" + height );
    }

    public int getArea() {
        return width * height;
    }

    public boolean contains(Rectangle r) {
        if (x <= r.x && y <= r.y
                && x + width >= r.x + r.width
                && y + height >= r.y + r.height) return true;
        else
            return false;
    }

    public static void main(String[] args) {
        Rectangle r = new Rectangle(2,2,9,7);
        Rectangle s = new Rectangle(5,5,7,7);
        Rectangle t = new Rectangle(1,1,10,10);

        r.show();
        System.out.println("s's area is "+ s.getArea());
        if (t.contains(r)) System.out.println("t contrains r");
        if (t.contains(s)) System.out.println("t contrains s");
    }

}
