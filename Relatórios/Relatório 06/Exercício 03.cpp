#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
public:
    string nome;

    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }
};

class Aluno : public MembroInatel {
public:
    string curso;

    void seApresentar() override {
        cout << "Meu nome e " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

class Professor : public MembroInatel {
public:
    string disciplina;

    void seApresentar() override {
        cout << "Meu nome e " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    Aluno a1;
    a1.nome = "Carlos";
    a1.curso = "Engenharia de Computacao";

    Professor p1;
    p1.nome = "Roberto";
    p1.disciplina = "Programacao Orientada a Objetos";

    a1.seApresentar();
    p1.seApresentar();

    return 0;
}
