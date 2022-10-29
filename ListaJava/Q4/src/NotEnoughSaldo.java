public class NotEnoughSaldo extends Exception{
    public NotEnoughSaldo(){
        super("Não há saldo suficiente");
    }
}
