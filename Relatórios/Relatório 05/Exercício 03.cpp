#include <iostream>

using namespace std;

int main() {
    float capacidade_maxima = 0.0;
    float carga_atual = 0.0;
    int opcao = 0;
    
    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> capacidade_maxima;
    
    do {
        cout << "\n=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;
        
        if (opcao == 1) {
            float espaco_disponivel = capacidade_maxima - carga_atual;
            cout << "Carga Atual: " << carga_atual << " kg / " << capacidade_maxima << " kg" << endl;
            cout << "Espaco Disponivel: " << espaco_disponivel << " kg" << endl;
        } 
        else if (opcao == 2) {
            float peso_pacote;
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> peso_pacote;
            
            if ((carga_atual + peso_pacote) > capacidade_maxima) {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            } else {
                carga_atual += peso_pacote;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
        } 
        else if (opcao == 3) {
            float peso_remover;
            cout << "Digite o peso a ser removido (kg): ";
            cin >> peso_remover;
            
            if (peso_remover > carga_atual) {
                cout << "Erro: Nao e possivel remover mais peso do que o carregado!" << endl;
            } else {
                carga_atual -= peso_remover;
                cout << "Pacote removido com sucesso!" << endl;
            }
        } 
        else if (opcao == 4) {
            cout << "Encerrando sistema de carga..." << endl;
        } 
        else {
            cout << "Opcao invalida! Tente novamente." << endl;
        }
        
    } while (opcao != 4);
    
    return 0;
}
