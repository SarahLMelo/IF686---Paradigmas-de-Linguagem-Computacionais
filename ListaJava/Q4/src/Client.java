public class Client extends Wizard{
    private float saldo;
    private int pontuacao;

    Client(String nome, String varinha, float saldo){
        this.nome = nome;
        this.varinha = varinha;
        this.saldo = saldo;
        this.pontuacao = 0;

    }

    public int getPontuacao() { return pontuacao; }
    public float getSaldo() { return saldo; }

    public void changePontuacao(int val){
        pontuacao += val;
    }

    public void changeSaldo(float val){
        saldo += val;
    }
}
