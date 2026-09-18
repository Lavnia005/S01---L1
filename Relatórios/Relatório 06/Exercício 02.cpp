#include <iostream>
#include <string>

using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    void setNome(string n) {
        nome = n;
    }

    void setArcana(string a) {
        arcana = a;
    }

    void setRank(int r) {
        rank = r;
    }

    string getNome() {
        return nome;
    }

    string getArcana() {
        return arcana;
    }

    int getRank() {
        return rank;
    }

    void subirRank() {
        rank++;
    }
};

int main() {
    LinkSocial aliado;

    aliado.setNome("Yosuke");
    aliado.setArcana("Magician");
    aliado.setRank(1);

    cout << "Nome inicial: " << aliado.getNome() << endl;
    cout << "Arcana: " << aliado.getArcana() << endl;
    cout << "Rank inicial: " << aliado.getRank() << endl;

    aliado.subirRank();

    cout << "\nApos subir de rank:" << endl;
    cout << "Nome: " << aliado.getNome() << endl;
    cout << "Arcana: " << aliado.getArcana() << endl;
    cout << "Rank atual: " << aliado.getRank() << endl;

    return 0;
}
