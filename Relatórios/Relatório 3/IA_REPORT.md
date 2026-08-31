# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

Identificação: Lavínia Silva Andrade
Matrícula / Inatel: 788
Modelo Utilizado: Gemini (Google)

## 1. Histórico de Prompts e Respostas Obtidas

* **Prompt 1:**
  * **Prompt enviado:** "Como eu faço aquela função `validar_placa` em Rust? Queria usar o `chars()` para passar por cada letra/número da string e contar as maiúsculas e os números, montar o loop com break para continuar pedindo a placa até dar certo."
  * **Resposta obtida:** O Gemini me ajudou a montar o laço `for c in placa.chars()`, usando os métodos de validação de caracteres (`is_ascii_uppercase()` e `is_numeric()`) e a estruturar a leitura do teclado com `io::stdin()` e `loop`.

* **Prompt 2:**
  * **Prompt enviado:** "Me ajuda a calcular a diferença absoluta no exercício do número secreto. Preciso que o programa fique rodando no loop até o usuário acertar o número dentro da tolerância de 5 unidades."
  * **Resposta obtida:** Mostrou como usar o `.abs()` para calcular essa distância numérica e me explicou a estruturação certa do tratamento de erros com `match` na hora de ler o palpite.

* **Prompt 3:**
  * **Prompt enviado:** "Como faço para filtrar e mostrar só os números que terminam com um dígito específico dentro daquele intervalo em Rust? Tô apanhando um pouco da lógica do resto da divisão."
  * **Resposta obtida:** Explicou a lógica de iteração com o operador de intervalo inclusivo e demonstrou como aplicar a operação de módulo (`% 10`) para pegar o último dígito certinho.

* **Prompt 4:**
  * **Prompt enviado:** "Como que eu calculo a média ponderada das provas com a redação numa função em Rust e retorno esse valor para a main, mostrando as mensagens de aprovada ou não dependendo da nota final?"
  * **Resposta obtida:** Detalhou a sintaxe de cálculo com ponto flutuante (`f64`), o fluxo de decisão com `if/else` e o retorno implícito de valores na última linha da função sem ponto e vírgula.

## 2. Relatório de Aprendizado

* **Como a resposta ajudou na solução do problema:** A inteligência artificial foi fundamental como um suporte de depuração e estruturação lógica. Na minha opinião, Rust tem sido disparada a linguagem mais difícil até agora, principalmente pelas exigências pesadas de tipagem, manipulação de entrada e sintaxe específica. Ter esse apoio quebrou muito o galho para eu conseguir entender a matéria.
* **De que forma ela solucionou a sua dúvida:** Tirou minhas dúvidas pontuais sobre mexer com strings (`.trim()`, `.chars()`), converter tipos com `parse()` e `unwrap_or()`, além de me guiar na construção das funções e dos laços (`loop` e `for`) do jeito certo.
* **O que você aprendeu para aplicar em problemas futuros:** Aprendi a lidar bem melhor com a entrada e saída de dados (`std::io`), a inspecionar caracteres um por um e a estruturar funções que retornam valores de forma limpa em Rust, o que vai me ajudar muito nos próximos códigos.
