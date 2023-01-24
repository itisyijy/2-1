public class myClass {
    int objAttribute;
    static int staticAttribute;

    void myMethod() {
        objAttribute = 10;                			//( 1 )
        staticAttribute = 20;               	//	( 2 )
        System.out.println("print!");
    }
    static void yourMethod() {
        objAttribute = 30;               			//( 3 )
        staticAttribute = 40;              		//( 4 )
        System.out.println("static print!");
    }
    public static void main(String[] args) {
        myClass mc = new myClass();
        myClass.myMethod();                   		//( 5 )
        myClass.yourMethod();                 	//	( 6 )
        mc.myMethod();                  		//	( 7 )
        mc.yourMethod();                  		//	( 8 )
        mc.objAttribute = 100;              	//	( 9 )
        mc.staticAttribute = 200;           	//	( 10 )
        myClass.objAttribute = 300;              //  	( 11 )
        myClass.staticAttribute = 400;          //  	( 12 )

    }
}
