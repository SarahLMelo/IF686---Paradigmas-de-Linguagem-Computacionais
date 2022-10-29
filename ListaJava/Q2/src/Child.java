public class Child extends Human{
    private String favToy;

    public Child(){
        this.name = "";
        this.address = "";
        this.CEP = -1;
        this.favToy = "";
    }

    public Child(String name, String address, int CEP, String favToy){
        this.name = name;
        this.address = address;
        this.CEP = CEP;
        this.favToy = favToy;
    }

    public String getToy(){ return favToy; }
    public void changeToy(String toy) { favToy = toy; }

    @Override
    public void greet(Citizen c){
        super.greet(c);
        System.out.println("Quer brincar com meu "+favToy+"?");
    }
}
