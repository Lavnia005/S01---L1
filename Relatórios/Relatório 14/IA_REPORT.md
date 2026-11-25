# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

- **Identificação:** Lavínia Silva Andrade
- **Matrícula / Inatel:** 788
- **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1 — Exercício 1: Aprendiz de Elite e Exercício 2: Ninja Versátil

**Prompt enviado:**

> Me ajuda a conferir a lógica das regras de aprendiz de elite e ninja versátil. Tenho algumas dúvidas sobre a utilização dos operadores lógicos e a comparação.

**Resposta obtida:**

Na construção das regras em Prolog, a vírgula (`,`) representa o operador lógico E, enquanto o ponto e vírgula (`;`) representa o operador OU.

Também foi explicado que o operador `\=` permite verificar se dois valores são diferentes. No exercício do ninja versátil, ele é utilizado para garantir que as duas naturezas de chakra encontradas não sejam iguais.

### Prompt 2 — Exercício 3: Rivais de Treino

**Prompt enviado:**

> na regra de rivais, por que preciso utilizar duas consultas ao predicado `mestre/2`? Como faço para que os dois ninjas tenham o mesmo mestre, mas sejam de clãs diferentes?

**Resposta obtida:**

As duas consultas ao predicado `mestre/2` permitem verificar se os ninjas possuem o mesmo mestre. Para isso, é utilizada a mesma variável para representar o mestre nas duas consultas.

Já o predicado `cla/2` permite consultar o clã de cada ninja. Com o operador `\=`, é possível verificar se os clãs encontrados são diferentes.

### Prompt 3 — Exercício 4: Linhagem

**Prompt enviado:**

> qual é a diferença entre o caso base e o passo recursivo? Como a recursividade consegue encontrar os discípulos indiretos?

**Resposta obtida:**

O caso base verifica se existe uma relação direta entre o mestre e o discípulo, utilizando o predicado `mestre/2`.

Já o passo recursivo verifica se existe um intermediário entre eles, realizando uma nova chamada da própria regra `linhagem/2`.

Dessa forma, o Prolog consegue percorrer diferentes relações de treinamento e encontrar tanto os discípulos diretos quanto os indiretos.

## 2. Relatório de Aprendizado

- **Como a resposta ajudou na solução dos problemas:** A inteligência artificial auxiliou em algumas dúvidas que surgiram durante a realização dos exercícios, principalmente em relação à organização das regras e ao funcionamento de determinados operadores da linguagem Prolog. A maior parte da atividade foi desenvolvida por mim, utilizando como base o banco de dados disponibilizado pelo monitor e os exemplos apresentados nas aulas.

- **De que forma ela solucionou as minhas dúvidas:** As explicações contribuíram para esclarecer a utilização dos operadores lógicos, a comparação de valores e o funcionamento da recursividade. Os exemplos apresentados também ajudaram a compreender melhor como essas estruturas poderiam ser aplicadas nos exercícios.

- **O que aprendi para aplicar em problemas futuros:** Aprendi a construir regras utilizando diferentes fatos, combinar condições lógicas, comparar informações e utilizar recursividade para representar relações indiretas. Também compreendi melhor como realizar consultas para encontrar informações dentro de um banco de dados em Prolog.

- **Como utilizei a inteligência artificial:** O ChatGPT foi utilizado como ferramenta complementar durante a atividade, principalmente para esclarecer dúvidas pontuais e conferir a lógica de algumas regras. O desenvolvimento dos exercícios foi realizado principalmente por mim, com base no conteúdo estudado em aula e nos exemplos disponibilizados pelo monitor.
