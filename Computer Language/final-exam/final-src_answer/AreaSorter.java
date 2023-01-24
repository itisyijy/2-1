import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AreaSorter {
    public static void main(String[] args) {
        List<Shape> list = new ArrayList<Shape>();
        list.add(new Circle(2.0, "A"));
        list.add(new Rectangle(2.0,2.0,"B"));
        list.add(new Square(3.0,"C"));
        list.add(new Square(2.5,"D"));
        list.add(new Rectangle(2.0,3.0,"E"));

        System.out.println(list);
        Collections.sort(list);
        System.out.println(list);
    }

}

class Shape implements Comparable<Shape>{
    double area = 0;
    String name="";

    public Shape(double num){
        this.area = num;
    }
    public Shape(String name) {this.name = name;}

    @Override
    public int compareTo(Shape o) {
        if (this.area < o.area) return -1;
        else if (this.area > o.area) return 1;
        return 0;
        // this is to implement Comparable interface
        // working mechanism is same! remember Comparator interface!
    }

    @Override
    public String toString() {
        return name+"("+Double.toString(area)+")";
    }
    // you can customize string representation of a custom object by overriding this method defined in Object class
}
class Circle extends Shape {
    public Circle(double num,String name){
        super(name);
        area = 3.14*num*num; // area setting
    }
}
class Rectangle extends Shape {
    public Rectangle(double w, double h,String name){
        super(name);
        area = w*h; // area setting
    }
}

class Square extends Shape {
    public Square(double num,String name){
        super(name);
        area = num*num; // area seting
    }
}
