import java.util.ArrayList;

public class Cozinheiro {

    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome);
        System.out.println("Material da panela: " + panela.getMaterial());

        for (Monstro monstro : ingredientes) {
            System.out.println(monstro.getNome() + " - " + monstro.receita());
        }
    }
}
