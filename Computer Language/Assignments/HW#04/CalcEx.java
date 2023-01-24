public class CalcEx  {

    public static void main(String [] args) {

        Assignment.HW04.Calculator[] calcs = {
                new Assignment.HW04.NormalCalculator("Seoultech_ITM"),
                new Assignment.HW04.AbsCalculator("IE_ITM")
        };

        for(Assignment.HW04.Calculator myCalc : calcs) {
            myCalc.boot();
            myCalc.turnOn();
            myCalc.printLogo();

            System.out.println("Add: "+myCalc.add(2, -3));
            System.out.println("Subtract: "+myCalc.subtract(2, -3));
            System.out.println("Average: "+myCalc.average(new int[]{2, -3, 4}));

            myCalc.refund();
            myCalc.shutdown();
        }
    }
}

interface Bootable{
    public abstract void boot();
    default void shutdown() {
        System.out.println("---Shutdown---");
    }
}

interface Refundable{
    public abstract void refund();
}

abstract class Device {
    private String vendor;
    public Device(String name) {
        vendor = name;
    }
    public String vendorGetter() {
        return vendor;
    }
    abstract void printLogo();
    public void turnOn() {
        System.out.print(vendorGetter()+" is on now...");
    }
}

abstract class Calculator extends Assignment.HW04.Device implements Assignment.HW04.Bootable, Assignment.HW04.Refundable {
    public Calculator(String name) {
        super(name);
    }
    public void boot() {
        System.out.println("<<< Calculator Bootup >>>");
    }
    public void refund() {
        System.out.println(vendorGetter()+" Refunded!");
    }
    public abstract int add(int num1, int num2);
    public abstract int subtract(int num1, int num2);
    public abstract double average(int[] nums);
}

class NormalCalculator extends Assignment.HW04.Calculator {
    NormalCalculator(String name) {
        super(name);
    }
    public void printLogo() {
        System.out.println("!I!T!M!");
    }
    public int add(int a, int b) {
        return a+b;
    }
    public int subtract(int a, int b) {
        int result = a-b;
        if (result < 0){
            result = -result;
        }
        return result;
    }
    public double average(int[] a) {
        int sum = 0;
        for (int i : a) {
            sum = sum + i;
        }
        int avg = sum/a.length;
        return avg;
    }
}

class AbsCalculator extends Assignment.HW04.Calculator {

    AbsCalculator(String name) {
        super(name);
    }
    public void printLogo() {
        System.out.println("*ITM*");
    }
    public int add(int a, int b) {
        if (a < 0){
            a = -a;
        }
        if (b < 0){
            b = -b;
        }
        return a+b;
    }
    public int subtract(int a, int b) {
        if (a < 0){
            a = -a;
        }
        if (b < 0){
            b = -b;
        }
        int result = a-b;
        if (result < 0){
            result = -result;
        }
        return result;
    }
    public double average(int[] a) {
        int sum = 0;
        for (int i : a) {
            if (i < 0){
                i = -i;
            }
            sum = sum + i;
        }
        int result = sum/a.length;
        return result;
    }
}