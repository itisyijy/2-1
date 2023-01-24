import java.util.Scanner;

class Phone {
    private String name;
    private String tel;
    public Phone(String name, String tel) {
        this.name = name; this.tel = tel;
    }
    public String getName() { return name; }
    public String getTel() { return tel; }
}

public class PhoneBook {
    private Scanner scanner;
    private Phone [] pArray;
    public PhoneBook() {
        scanner = new Scanner(System.in);
    }

    void read() {
        System.out.print("Number of person to store? >> ");
        int n = scanner.nextInt();

        pArray = new Phone [n];
        for(int i=0; i<pArray.length; i++) {
            System.out.print("Name and Tel. No. >> ");
            String name = scanner.next();
            String tel = scanner.next();
            pArray[i] = new Phone(name, tel);
        }

        System.out.println("Saved.");
    }

    String search(String name) {
        for(int i=0; i<pArray.length; i++) {
            if(pArray[i].getName().equals(name))
                return pArray[i].getTel();
        }
        return null;
    }

    void run() {
        read();
        while(true) {
            System.out.print("Who do you wanna search for? >> ");
            String name = scanner.next();
            if(name.equals("stop"))
                break;
            String tel = search(name);
            if(tel == null)
                System.out.println(name + " does not exist.");
            else
                System.out.println(name + "'s telephone no. is " + tel);
        }

        scanner.close();
    }

    public static void main(String[] args) {
        new PhoneBook().run();
    }
}
