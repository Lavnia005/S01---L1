# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

* Identificação: Lavínia Silva Andrade
* Matrícula / Inatel: 788
* Modelo Utilizado: Gemini (Google)

## 1. Histórico de Prompts e Respostas Obtidas

Prompt 1:

* **Prompt enviado:**
  > Preciso de ajuda para criar a função recursiva `combinar_equipes(int n)` em C++ para um torneio eliminatório, seguindo as regras com base em n=0 e n=1, além de somar os dois níveis anteriores.

* **Resposta obtida:** O Gemini apresentou a estrutura completa da função recursiva com os casos base para n=0 e n=1, aplicando a soma `combinar_equipes(n - 1) + combinar_equipes(n - 2)` e mostrando como capturar o valor do usuário na main sem o uso de acentos.

---

Prompt 2:

* **Prompt enviado:**
  > Como faço a função em C++ para calcular a confiabilidade de um sistema em série multiplicando as probabilidades de um array, e como estruturar a leitura dos componentes na main?

* **Resposta obtida:** Detalhou a criação da função do tipo float que percorre o array acumulando a multiplicação das probabilidades, além de orientar na criação dinâmica do array e na exibição formatada do resultado com a porcentagem correspondente.

---

Prompt 3:

* **Prompt enviado:**
  > Me ajude a montar o gerenciador de carga de um drone em C++ com um menu interativo utilizando do-while, verificando limites máximos de carga e permitindo adicionar ou remover pacotes.

* **Resposta obtida:** Forneceu o código estruturado com laço de repetição, validando se a adição de novos pacotes ultrapassava a capacidade máxima informada e garantindo o tratamento correto ao descarregar valores superiores ao peso atual.

---

Prompt 4:

* **Prompt enviado:**
  > Como estruturar a matriz 5x5 para o painel solar em C++, validando a ativação de células que já estão ligadas e exibindo o relatório final com a porcentagem de ocupação ao sair?

* **Resposta obtida:** Organizou a lógica da matriz bidimensional inicializada com zeros, implementou as travas de segurança para evitar reativações, gerou o mapa visual com laços aninhados e calculou o balanço final de células ativas e inativas no encerramento.

## 2. Relatório de Aprendizado

* **Como a resposta ajudou na solução do problema:** A inteligência artificial foi essencial para estruturar os algoritmos em C++ de forma limpa, garantindo o atendimento a todas as restrições dos slides e evitando o uso de caracteres acentuados que pudessem gerar incompatibilidade nos compiladores da faculdade.

* **De que forma ela solucionou a sua dúvida:** Esclareceu dificuldades pontuais que tive em alguns códigos, especialmente na lógica de recursividade para o chaveamento de equipes, no manuseio de arrays dinâmicos para o cálculo de confiabilidade e na validação de limites condicionais para o controle de carga e matrizes.

* **O que você aprendeu para aplicar em problemas futuros:** Aprendi a estruturar melhor menus interativos robustos com do-while, a manipular matrizes bidimensionais para mapeamento de estados e a implementar checagens de segurança mais eficientes contra estouros de capacidade e coordenadas inválidas em C++.
