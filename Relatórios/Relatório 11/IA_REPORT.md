# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

- **Identificação:** Lavínia Silva Andrade
- **Matrícula / Inatel:** 788
- **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1 — Exercício 1: O Castelo Animado

**Prompt enviado:**

> por que a classe Morador precisa ser abstrata e por que não posso criar um objeto dela diretamente no main? Qual a diferença entre usar `extends` e `super(nome)` nesse caso?

**Resposta obtida:**

A classe `Morador` é abstrata porque representa uma ideia geral de morador, mas não deve ser instanciada diretamente. Os moradores do castelo precisam ser de tipos específicos, como `Mago` ou `DemonioDoFogo`.

O `extends` indica que uma classe herda de outra. Já `super(nome)` chama o construtor da classe-mãe, permitindo inicializar o atributo `nome` que pertence à classe `Morador`.

### Prompt 2 — Exercício 2: Café Leblanc

**Prompt enviado:**

> no método `precoFinal()` do ComboLeblanc preciso usar `getPreco() * 0.9` em vez de acessar o atributo preco diretamente? E o que o @Override faz nesse método?

**Resposta obtida:**

O atributo `preco` foi declarado como `private` na classe `ItemDoCardapio`. Por isso, não pode ser acessado diretamente pela classe filha `ComboLeblanc`.

O método `getPreco()` permite consultar esse valor de maneira adequada. A multiplicação por `0.9` representa o desconto de 10% solicitado no exercício.

A anotação `@Override` indica que o método `precoFinal()` está sobrescrevendo um método que já existe na classe-mãe.

### Prompt 3 — Exercício 3: Dandadan

**Prompt enviado:**

> HashMap recebe String e Sobrenatural nos tipos e como funciona o `get(local)` quando vou investigar um lugar? 

**Resposta obtida:**

O `HashMap<String, Sobrenatural>` utiliza dois tipos: `String` representa a chave, que corresponde ao nome do local, enquanto `Sobrenatural` representa o objeto armazenado como valor.

O método `get(local)` procura no mapa o elemento associado à chave informada. Se encontrar, retorna o objeto correspondente. Caso não exista um registro naquele local, retorna `null`.

Por isso, é necessário verificar se o resultado é `null` antes de chamar o método `manifestar()`.

### Prompt 4 — Exercício 4: Dungeon Meshi

**Prompt enviado:**

> fiquei com dúvida na diferença entre criar a Panela dentro do construtor do Cozinheiro e criar os monstros antes dele. Por que isso representa composição e agregação?

**Resposta obtida:**

A composição acontece quando um objeto é criado e controlado dentro de outro. No exercício, a `Panela` é criada diretamente no construtor de `Cozinheiro`, representando uma parte que pertence a ele.

Já a agregação acontece quando objetos são criados separadamente e depois associados a outra classe. Os monstros são instanciados antes do cozinheiro e adicionados posteriormente pelo método `adicionarIngrediente()`.

Assim, o exemplo apresenta duas formas diferentes de relacionamento entre objetos.

## 2. Relatório de Aprendizado

- **Como a resposta ajudou na solução dos problemas:** A inteligência artificial foi utilizada como apoio para esclarecer algumas dúvidas pontuais que surgiram durante a implementação dos exercícios, principalmente em relação à herança, ao uso de interfaces, aos métodos sobrescritos e aos relacionamentos entre classes.

- **De que forma ela solucionou as minhas dúvidas:** As explicações ajudaram a compreender melhor o funcionamento de `super()`, `@Override`, `getPreco()`, `HashMap`, além da diferença entre composição e agregação.

- **O que aprendi para aplicar em problemas futuros:** Consegui revisar conceitos importantes de Orientação a Objetos em Java, entendendo melhor como organizar classes, utilizar herança e interfaces e trabalhar com coleções de objetos.

- **Como utilizei a inteligência artificial:** O ChatGPT foi utilizado como ferramenta de consulta para esclarecer dúvidas específicas sobre alguns detalhes da implementação. As consultas serviram como apoio ao conteúdo estudado em aula, enquanto a organização e o desenvolvimento dos exercícios foram realizados com base nos conhecimentos adquiridos na disciplina.
