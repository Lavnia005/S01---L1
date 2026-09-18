#include <iostream>
#include <string>

using namespace std;

class Hobbit {
public:
    string nome;

    virtual void fazerAtividade() {
        cout << "O hobbit " << nome << " esta aproveitando um dia tranquilo na Comarca." << endl;
    }
};

class Jardineiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O jardineiro " << nome << " esta cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

class Cozinheiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O cozinheiro " << nome << " esta preparando o segundo cafe da manha para os convidados!" << endl;
    }
};

class Fazendeiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O fazendeiro " << nome << " esta colhendo vegetais e hortaliças em suas terras!" << endl;
    }
};

int main() {
    Jardineiro h1;
    h1.nome = "Samwise";

    Cozinheiro h2;
    h2.nome = "Peregrin";

    Fazendeiro h3;
    h3.nome = "Frodo";

    Hobbit* hobbits[3] = {&h1, &h2, &h3};

    for (int i = 0; i < 3; i++) {
        hobbits[i]->fazerAtividade();
    }

    return 0;
}
