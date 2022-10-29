public class DataBaseWesleys implements DataBase{
    protected Item produtos[];
    private int qntdItens;

    public DataBaseWesleys(){
        produtos = new Item[1];
        qntdItens = 0;
    }

    @Override
    public void inserir(Item item) {
        if(qntdItens == 50) return;

        Item aux[] = new Item[qntdItens+1];
        aux[qntdItens] = item;

        for(int i = 0; i < qntdItens; i++){
            aux[i] = produtos[i];
        }

        produtos = aux;
        qntdItens++;
    }

    @Override
    public void atualizar(String nome, int qntd) {
        for(int i = 0; i < qntdItens; i++){
            if(produtos[i].nome == nome){
                produtos[i].qntd = qntd;
            }
        }
    }

    @Override
    public void atualizar(String nome, float preco) {
        for(int i = 0; i < qntdItens; i++){
            if(produtos[i].nome == nome){
                produtos[i].preco = preco;
            }
        }
    }

    @Override
    public void atualizar(String nome, int qntd, float preco) {
        for(int i = 0; i < qntdItens; i++){
            if(produtos[i].nome == nome){
                produtos[i].preco = preco;
                produtos[i].qntd = qntd;
            }
        }
    }

    @Override
    public void remover(String nome) {
        Item aux[] = new Item[qntdItens-1];

        int cnt = 0;
        for(int i = 0; i < qntdItens; i++){
            if(nome == produtos[i].nome) continue;
            aux[cnt] = produtos[i];
            cnt++;
        }

        produtos = aux;
    }
}
