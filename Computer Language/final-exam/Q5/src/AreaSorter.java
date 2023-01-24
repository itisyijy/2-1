import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class Shape implements Comparable<Shape>{
    double area=0;
    String name="";
    public Shape(String name) {
        this.name = name;
    }


    // Implement here
    @Override
    public int compareTo(Shape o) {
            if (this.area > o.area) {
            return 1;
        }
        else if (this.area == area) {
            return 0;
        }
        else {
            return -1;
        }
    }
}

// Implement Circle, Rectangle, Square classes here
class Circle extends Shape {
    double radius;
    public Circle(double radius, String name) {
        super(name);
        this.radius = radius;
        area = radius*radius*3.14;
    }
}
class Rectangle extends Shape {
    double width;
    double height;
    public Rectangle(double width, double height, String name) {
        super(name);
        this.width = width;
        this.height = height;
        area = width*height;
    }
}
class Square extends Shape {
    double sideLength;
    public Square(double sideLength, String name) {
        super(name);
        this.sideLength = sideLength;
        area = sideLength*sideLength;
    }
}

public class AreaSorter{
    public static void main(String[] args) {
        List<Shape> list = new ArrayList<Shape>(); // creation of the list<Shape>
        list.add(new Circle(2.0, "A")); // adding elements to the list
        list.add(new Rectangle(2.0,2.0,"B"));
        list.add(new Square(3.0,"C"));
        list.add(new Square(2.5,"D"));
        list.add(new Rectangle(2.0,3.0,"E"));

        System.out.println(list); // before sorting
        Collections.sort(list);
        System.out.println(list); // after sorting
    }
}


