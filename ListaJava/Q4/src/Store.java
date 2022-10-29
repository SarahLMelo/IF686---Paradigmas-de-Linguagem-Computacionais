import java.lang.reflect.Executable;

public class Store {
    public DataBaseWesleys database;
    private Client clients[];
    private int qntdClients;
    
    public Store(){
        qntdClients = 0;
        clients = new Client[1];
    }

    public void insertClient(Client client){
        Client aux[] = new Client[qntdClients+1];
        for(int i = 0; i < qntdClients; i++){
            aux[i] = clients[i];
        }
        clients[qntdClients] = client;
        clients = aux;
        qntdClients++;
    }

    private void brinde(){
        int id = 0;

        for(int i = 1; i < database.produtos.length; i++){
            if(database.produtos[i].preco < database.produtos[id].preco) id = i;
        }

        database.produtos[id].qntd--;
        if(database.produtos[id].qntd == 0) database.remover(database.produtos[id].nome);
    }

    public void venda(String nomeCliente, String nomeProduto) throws NotEnoughSaldo {
        int idProduto = -1;
        for(int i = 0; i < database.produtos.length; i++){
            if(database.produtos[i].nome == nomeProduto){
                idProduto = i;
                break;
            }
        }

        for(int i = 0; i < qntdClients; i++){
            if(clients[i].getNome() == nomeCliente){
                if(clients[i].getSaldo() < database.produtos[idProduto].preco){
                    throw new NotEnoughSaldo();
                }
                else{
                    clients[i].changeSaldo(-database.produtos[idProduto].preco);
                    clients[i].changePontuacao((int) (0.1 * database.produtos[idProduto].preco));
                    if(clients[i].getPontuacao() >= 500){
                        clients[i].changePontuacao(-500);
                        brinde();
                    }
                    database.produtos[idProduto].qntd--;
                    if(database.produtos[idProduto].qntd == 0){
                        database.remover(database.produtos[idProduto].nome);
                    }
                }

                return;
            }
        }

    }

}
