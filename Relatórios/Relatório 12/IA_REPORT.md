# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

- **Identificação:** Lavínia Silva Andrade
- **Matrícula / Inatel:** 788
- **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1 — Exercício 1: O Café do Leblanc

**Prompt enviado:**

> No descrever Cafe -> String, por que utilizo Cafe nome preco para separar os campos? E nos guards, o otherwise funciona como um else? 

**Resposta obtida:**

O `Cafe nome preco _` utiliza pattern matching para separar os campos posicionais do tipo `Cafe`. Nesse caso, `nome` recebe o primeiro campo, `preco` recebe o segundo e `_` ignora o terceiro campo, pois ele não é necessário nessa função.

Nos guards, as condições são verificadas de cima para baixo. O `otherwise` funciona como uma condição padrão, equivalente ao `else`, sendo utilizado quando nenhuma das condições anteriores é verdadeira.

### Prompt 2 — Exercício 2: As Entregas da Kiki

**Prompt enviado:**

> Na expressão filter (\enc -> peso enc <= pesoMaximo), como funciona essa lambda? E por que preciso utilizar map frete antes de sum para calcular o total?

**Resposta obtida:**

A expressão lambda `\enc -> peso enc <= pesoMaximo` cria uma função sem nome que recebe uma encomenda e verifica se seu peso está dentro do limite permitido.

O `filter` utiliza essa função para selecionar somente as encomendas que atendem à condição.

Já o `map frete` percorre a lista e extrai o valor do frete de cada encomenda. Depois, `sum` soma os valores obtidos, retornando o total arrecadado.

### Prompt 3 — Exercício 3: O Caderno de Esboços

**Prompt enviado:**

> Qual a diferença entre (e:_) e (_:resto) no pattern matching de listas? E por que na recursão preciso colocar 0 no caso da lista vazia?

**Resposta obtida:**

O padrão `(e:_)` separa o primeiro elemento da lista e ignora os demais. Já `(_:resto)` ignora o primeiro elemento e armazena o restante da lista na variável `resto`.

O caso base com `[]` é necessário para interromper a recursão. Sem ele, a função continuaria tentando processar listas menores indefinidamente.

Na contagem de elementos, o caso base retorna `0`, enquanto o caso recursivo acrescenta `1` à contagem do restante da lista. Na soma das horas, o caso base também retorna `0`, e cada chamada acrescenta as horas do primeiro esboço ao resultado dos demais.

### Prompt 4 — Exercício 4: A Casa de Banhos da Yubaba

**Prompt enviado:**

> Na expressão at { etapa = Concluido }, por que isso não altera o atendimento original? E como funciona o filter com == Concluido antes do map?

**Resposta obtida:**

A expressão `at { etapa = Concluido }` utiliza a cópia de registros para criar um novo atendimento, mantendo os demais campos iguais e modificando somente a etapa. Como Haskell trabalha com imutabilidade, o registro original permanece inalterado.

O `filter` seleciona somente os atendimentos cuja etapa é igual a `Concluido`. Em seguida, `map valor` extrai os valores desses atendimentos e `sum` realiza a soma, considerando apenas aqueles que já foram concluídos.

## 2. Relatório de Aprendizado

- **Como a resposta ajudou na solução dos problemas:** A inteligência artificial auxiliou no esclarecimento de dúvidas pontuais durante a implementação dos exercícios, contribuindo para a compreensão da sintaxe e do funcionamento de alguns recursos da linguagem Haskell.

- **De que forma ela solucionou as minhas dúvidas:** As explicações ajudaram a entender melhor a utilização de pattern matching, guards, expressões lambda, recursão e manipulação de listas com `filter` e `map`, além da imutabilidade dos dados e da atualização de registros.

- **O que aprendi para aplicar em problemas futuros:** Aprendi a aplicar esses recursos na construção de funções, na manipulação de listas e na definição de tipos personalizados, ampliando minha compreensão sobre os conceitos de programação funcional.

- **Como utilizei a inteligência artificial:** O ChatGPT foi utilizado como ferramenta de apoio para esclarecer detalhes específicos de sintaxe e funcionamento dos recursos apresentados nas aulas. As consultas contribuíram para revisar a implementação e compreender melhor os conceitos, mantendo como referência o exemplo disponibilizado pelo monitor.
