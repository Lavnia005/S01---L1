public class Alienigenas implements Sobrenatural {

    private String nome;

    public Alienigenas(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " apareceu com sua tecnologia alienígena!");
    }
}
