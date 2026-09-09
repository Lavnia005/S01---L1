# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

* Identificação: Lavínia Silva Andrade
* Matrícula / Inatel: 788
* Modelo Utilizado: Gemini (Google)

## 1. Histórico de Prompts e Respostas Obtidas

Prompt 1:

* **Prompt enviado:**
  > Como eu faço aquela função `ValidarCodigoRastreio` em Go? Queria checar o tamanho da string com `len(codigo) == 10` e montar o loop com `!valido` para continuar pedindo o código até dar certo.

* **Resposta obtida:** O Gemini me ajudou a ajustar a função utilizando o retorno duplo `(bool, string)`, corrigindo o uso de ponteiros no `fmt.Scanln(&codigo)` e estruturando o laço `for !valido` para repetir a leitura até o acerto.

---

Prompt 2:

* **Prompt enviado:**
  > Me ajuda a calcular a soma das vendas dos três trimestres e usar o `switch` sem expressão para classificar o bônus do vendedor conforme as faixas de valores da empresa.

* **Resposta obtida:** Mostrou como corrigir o erro de digitação do pacote (`fmt.Scanln`), removeu a declaração duplicada da variável `soma` e organizou as condições sequenciais no bloco `switch`.

---

Prompt 3:

* **Prompt enviado:**
  > Como faço a função `gerarEscalaPlantao(n int)` para calcular os dias dos plantões que ocorrem a cada 4 dias, começando no dia 1 do mês?

* **Resposta obtida:** Validou a lógica matemática com a fórmula `1 + (i-1)*4` dentro de um laço `for`, confirmando a estrutura correta da função e sua integração com a `main`.

---

Prompt 4:

* **Prompt enviado:**
  > Como que eu estruturo a validação de ingresso com setor e código num laço infinito usando `break` quando o usuário acertar os dados?

* **Resposta obtida:** Corrigiu pequenos erros de digitação, como o nome da variável booleana (`valido` em vez de `valid`) e o comando de saída do laço (`break` em vez de `brea`).

## 2. Relatório de Aprendizado

* **Como a resposta ajudou na solução do problema:** A inteligência artificial foi fundamental como um suporte de depuração e estruturação lógica em Go. Ter esse apoio ajudou a identificar erros rápidos de sintaxe, escopo de variáveis e digitação que impediam a compilação dos exercícios.

* **De que forma ela solucionou a sua dúvida:** Tirou dúvidas pontuais sobre a manipulação de ponteiros (`&`), o uso correto de funções com múltiplos retornos, a estruturação de blocos `switch` sem expressão e o controle de fluxo com laços de repetição.

* **O que você aprendeu para aplicar em problemas futuros:** Aprendi a lidar melhor com a entrada e saída de dados via teclado usando os ponteiros do pacote `fmt`, a organizar funções de validação mais limpas e a estruturar fluxos lógicos eficientes em Go, o que vai me ajudar muito nos próximos códigos.
