public class Main {

    public static void main(String[] args) {

        ItemDoCardapio cafe = new ItemDoCardapio("Café", 8.00);
        ItemDoCardapio curry = new ItemDoCardapio("Curry", 25.00);
        ComboLeblanc combo = new ComboLeblanc("Combo Café e Curry", 33.00);

        CafeLeblanc leblanc = new CafeLeblanc();

        leblanc.adicionar(cafe);
        leblanc.adicionar(curry);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}
