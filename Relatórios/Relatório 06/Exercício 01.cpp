#include <iostream>
#include <string>

using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) {
        cout << "\n--- HORA DO DUELO! ---" << endl;
        cout << nome << " esta se apresentando com tudo contra " << rival.nome << "!" << endl;
        rival.energia -= potenciaSom;
    }

    void exibirStatus() {
        cout << "Banda: " << nome << " | Integrantes: " << integrantes 
             << " | Potencia: " << potenciaSom << " | Energia da Plateia: " << energia << endl;
    }
};

int main() {
    Banda banda1;
    Banda banda2;

    banda1.nome = "Rockeiros do Asfalto";
    banda1.integrantes = 4;
    banda1.potenciaSom = 25.5;
    banda1.energia = 100;

    banda2.nome = "Sinfonia Eletrica";
    banda2.integrantes = 5;
    banda2.potenciaSom = 30.0;
    banda2.energia = 100;

    cout << "--- STATUS INICIAL ---" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    banda1.duelar(banda2);

    cout << "\n--- STATUS APOS O CONFRONTO ---" << endl;
    banda1.exibirStatus();
    banda2.exibirStatus();

    return 0;
}
