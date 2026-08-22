# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

* **Identificação:** Lavínia Silva Andrade
* **Matrícula / Inatel:** 788
* **Modelo Utilizado:** Gemini (Google)

---

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1:
* **Prompt enviado:** 
  > Dúvida sobre a sintaxe do operador de potência e a estrutura de repetição para gerar a tabela de potências em Lua (`gerarTabelaPotencias(inicio, fim, base)`).
* **Resposta obtida:** 
  O modelo esclareceu que em Lua o operador de exponenciação é o `^` (substituindo funções como `pow` ou operadores de outras linguagens) e auxiliou na formatação correta da interpolação de strings com o operador `..`.

---

### Prompt 2:
* **Prompt enviado:** 
  > Como organizar e mover arquivos de diretórios incorretos (com barras no nome) diretamente pela interface web do GitHub sem perder o histórico.
* **Resposta obtida:** 
  Descreveu o passo a passo para utilizar a edição de arquivos e o redirecionamento de caminhos no repositório remoto para estruturar corretamente as pastas dos relatórios.

---

### Prompt 3:
* **Prompt enviado:** 
  > Dúvida conceitual sobre a inicialização de tabelas e o uso de `table.insert` em loops para preenchimento dinâmico de dados informados pelo usuário.
* **Resposta obtida:** 
  Explicou que a tabela vazia deve ser declarada fora do escopo do loop para evitar a sobrescrita dos dados e demonstrou a aplicação da função `table.insert()`.

---

### Prompt 4:
* **Prompt enviado:** 
  > Como implementar a lógica de filtragem de elementos em uma tabela (`filtrarMaiores(tabela, limite)`) garantindo que o comando `return` não encerre o laço de repetição prematuramente.
* **Resposta obtida:** 
  Orientou a criar uma tabela auxiliar interna para acumular os valores válidos antes de retornar a estrutura completa ao programa principal.

---

### Prompt 5:
* **Prompt enviado:** 
  > Estruturação de subfunções modulares e validação de strings de operação em uma função principal (`analisarNumeros`) em Lua.
* **Resposta obtida:** 
  Ajudou a organizar o código em blocos lógicos separados para cálculo de média, maior valor e diferença absoluta, implementando condicionais (`if/elseif/else`) para tratar entradas inválidas.

---

## 2. Relatório de Aprendizado

* **Como a resposta ajudou na solução do problema:**
  A IA funcionou como um revisor técnico e copiloto de programação. Durante a transição de conceitos de C++ para a linguagem Lua, o suporte ajudou a identificar rapidamente pequenas diferenças sintáticas (como a concatenação de strings com `..` e o cálculo de tamanho com `#`) e a estruturar modularmente as funções exigidas nos exercícios.

* **De que forma ela solucionou a sua dúvida:**
  Auxiliou na correção de lógica de escopo e fluxo de controle — especialmente na compreensão de que o comando `return` finaliza a execução da função, o que exigiu o uso de tabelas auxiliares para armazenar múltiplos resultados filtrados. Também facilitou a resolução de problemas práticos de versionamento e organização de diretórios no GitHub.

* **O que você aprendeu para aplicar em problemas futuros:**
  Aprendi a manipular dinamicamente tabelas em Lua utilizando `table.insert` e a dimensioná-las corretamente. Além disso, compreendi a importância de desacoplar o código em subfunções especializadas chamadas por uma função centralizadora, o que torna o código muito mais limpo, reutilizável e fácil de manter em projetos futuros de engenharia de software. modular em Lua, compreendendo o escopo de variáveis locais (`local`). Em relação ao versionamento, aprendi a manipular caminhos de arquivos diretamente pelo ecossistema do Git/GitHub para manter os relatórios organizados conforme as diretrizes acadêmicas exigidas.
