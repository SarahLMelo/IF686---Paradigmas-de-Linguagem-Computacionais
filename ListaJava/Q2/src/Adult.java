public class Adult extends Human{
    private String profession;
    private Child[] children;
    private int nChildren;

    public Adult(String name, String address, int CEP, String profession){
        nChildren = 0;
        children = new Child[4];
        this.profession = profession;
        this.name = name;
        this.address = address;
        this.CEP = CEP;
    }

    public void addKid(Child child){
        if(nChildren >= 4){ return; }

        children[nChildren] = child;
        nChildren++;
    }
}
