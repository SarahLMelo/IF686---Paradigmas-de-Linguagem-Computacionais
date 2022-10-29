public interface DataBase {
    public void inserir(Item item);
    public void remover(String nome);
    public void atualizar(String nome, int qntd);
    public void atualizar(String nome, float preco);
    public void atualizar(String nome, int qntd, float preco);
}
