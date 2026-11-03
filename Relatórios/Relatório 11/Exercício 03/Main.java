public class Main {

    public static void main(String[] args) {

        Alienigenas alien = new Alienigenas("Serpo");
        EspiritoYoukai espirito = new EspiritoYoukai("Turbo Vovó");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Escola", alien);
        mapa.registrar("Túnel", espirito);

        mapa.investigar("Escola");
        mapa.investigar("Túnel");
        mapa.investigar("Parque");
    }
}
