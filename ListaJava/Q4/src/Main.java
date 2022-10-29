public class Main {
    public static void main(String[] args) throws NotEnoughSaldo {
        Client client = new Client("Harry Potter", "Pena de Phoenix", 0);
        Store store = new Store();
        Item item = new Item(2, 5, "Capa da invisibilidade");

        store.insertClient(client);
        store.database.inserir(item);

        store.venda("Harry Potter", "Capa da invisibilidade");
    }
}