#include <iostream>

using namespace std;

int main() {
    int matriz_solar[5][5];
    int opcao = 0;
    
    for(int i = 0; i < 5; i++) {
        for(int j = 0; j < 5; j++) {
            matriz_solar[i][j] = 0;
        }
    }
    
    do {
        cout << "\n=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;
        
        if (opcao == 1) {
            int f, c;
            cout << "Digite a fileira (0-4): ";
            cin >> f;
            cout << "Digite a coluna (0-4): ";
            cin >> f == 2 ? c : c; 
        }
        
        if (opcao == 1) {
            int f, c;
            cout << "Digite a fileira (0-4): ";
            cin >> f;
            cout << "Digite a coluna (0-4): ";
            cin >> c;
            
            if (f >= 0 && f < 5 && c >= 0 && c < 5) {
                if (matriz_solar[f][c] == 0) {
                    matriz_solar[f][c] = 1;
                    cout << "Sucesso: Celula solar ativada!" << endl;
                } else {
                    cout << "Erro: Celula solar ja esta em operacao!" << endl;
                }
            } else {
                cout << "Erro: Coordenadas invalidas!" << endl;
            }
        } 
        else if (opcao == 2) {
            cout << "\n--- Mapa da Matriz Solar ---" << endl;
            for(int i = 0; i < 5; i++) {
                for(int j = 0; j < 5; j++) {
                    cout << "[" << matriz_solar[i][j] << "] ";
                }
                cout << endl;
            }
        } 
        else if (opcao == 3) {
            // 3. Relatorio Final (Pos-Menu)
            int celulas_ativas = 0;
            int celulas_inativas = 0;
            int total_celulas = 25;
            
            for(int i = 0; i < 5; i++) {
                for(int j = 0; j < 5; j++) {
                    if (matriz_solar[i][j] == 1) {
                        celulas_ativas++;
                    } else {
                        celulas_inativas++;
                    }
                }
            }
            
            float percentual = ((float)celulas_ativas / total_celulas) * 100.0;
            
            cout << "\n=== RELATORIO FINAL DE OPERACAO ===" << endl;
            cout << "Total de celulas ATIVAS: " << celulas_ativas << endl;
            cout << "Total de celulas INATIVAS: " << celulas_inativas << endl;
            cout << "Capacidade Operacional: " << percentual << "%" << endl;
        } 
        else {
            cout << "Opcao invalida! Tente novamente." << endl;
        }
        
    } while (opcao != 3);
    
    return 0;
}
