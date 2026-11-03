public class Main {

    public static void main(String[] args) {

        Morador mago = new Mago("Howl", "Magia das estrelas");
        Morador demonio = new DemonioDoFogo("Calcifer");

        mago.apresentar();
        demonio.apresentar();
    }
}
