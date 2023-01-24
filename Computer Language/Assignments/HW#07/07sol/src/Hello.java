import java.util.*;

public class Hello {

    public static void main(String[] args) {

// Question No.1

        Scanner scanner = new Scanner(System.in);
        while(true) {
            String s = scanner.nextLine();
            if(s.equals("exit")) {
                System.out.println("Exit.");
                break;
            }

            System.out.println("The number of words is " + s.split(" ").length);
        }
        scanner.close();

// Question No.2

        Scanner scanner = new Scanner(System.in);
        String exp = scanner.nextLine();
        StringTokenizer st = new StringTokenizer(exp, "+");
        int sum = 0;
        while(st.hasMoreTokens()) {
            String s = st.nextToken();
            s = s.trim();
            sum += Integer.parseInt(s);
        }

        System.out.println("Result is " + sum);
        scanner.close();

// Question No.3

        HashMap<String, Integer> map = new HashMap<String, Integer>();
        System.out.println("** Point Management System **");
        Scanner scanner = new Scanner(System.in);
        while(true) {
            System.out.print("Input your name and point>> ");
            String name = scanner.next();
            if(name.equals("exit"))
                break;
            int point = scanner.nextInt();
            Integer n = map.get(name);
            if(n != null) {
                point += n;
            }
            map.put(name, point);
            printMap(map);
        }
        System.out.println("Exit the program.");
        scanner.close();

// Question No.4

//
        Scanner scn = new Scanner(System.in);
        Vector<Student> vs = new Vector<>(4);

        for(int i=0;i<4;i++){
            System.out.print("Input S"+i+"'s grade: ");
            vs.add(new Student(scn.nextInt()));
        }

        StuduentComparator stucomp = new StuduentComparator();
        System.out.println("Minimum grade: "+ Collections.min(vs,stucomp).grade);

    }

    static void printMap(HashMap<String, Integer> map) {
        Set<String> keys = map.keySet();
        Iterator<String> it = keys.iterator();
        while(it.hasNext()) {
            String name = it.next();
            int point = map.get(name);
            System.out.print("("+name+","+point+")");
        }
        System.out.println();
    }

}


class Student{
    int grade=0;
    Student(int grade){
        this.grade = grade;
    }
}

class StuduentComparator implements Comparator<Student>{
    @Override
    public int compare(Student o1, Student o2) {
        return o1.grade - o2.grade;
    }

    // This class must be implemented
    // Search for how Comparator<T> works!

}
