public class Citizen {
    protected String name;
    protected String address;
    protected int CEP;

    protected Citizen(){
        name = "";
        address = "";
        CEP = 0;
    }

    protected void greet(Citizen c){
        System.out.println("Oi, "+c.getName()+"!");
    }

    String getName(){ return name; }
}
