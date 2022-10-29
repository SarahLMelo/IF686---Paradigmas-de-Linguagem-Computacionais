public class Robot extends Citizen{
    public Robot(String name, String address, int CEP){
        this.name = name;
        this.address = address;
        this.CEP = CEP;
    }

    public void greet(Citizen c){
        if(this.CEP == c.CEP) super.greet(c);
    }
}
