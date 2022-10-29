public class Wizard {
    protected String nome, varinha;

    Wizard(){
        this.nome = "";
        this.varinha = "";
    }
    Wizard(String nome, String varinha){
        this.nome = nome;
        this.varinha = varinha;
    }
    public String getNome() { return nome; }
    public String getVarinha() { return varinha; }
}
