public class Robot {
    private String nome;
    private  int nCamisa;
    private int posX;
    private int posY;

    public Robot(){ //Instanciação do robô vazio (inexistente)
        this.nome = "";
        this.nCamisa = -1;
        this.posX = -1;
        this.posY = -1;
    }

    public Robot(String nome){ //Instanciação do robô reserva
        this.nome = nome;
        this.nCamisa = -1;
        this.posX = -1;
        this.posY = -1;
    }

    public Robot(String nome, int nCamisa, int posX, int posY){ //Instanciação do robô titular
        this.nome = nome;
        this.nCamisa = nCamisa;
        this.posX = posX;
        this.posY = posY;
    }

    public String getNome(){ return this.nome; }
    public void changeName(String nome) { this.nome = nome; }
    public void changePos (int posX, int posY){
        this.posX = posX;
        this.posY = posY;
    }

    public void printRobot(){
        System.out.println("Nome: "+nome);
        System.out.println("Camisa: "+nCamisa);
        System.out.println("Pos: "+posX+" "+posY);
    }
}
