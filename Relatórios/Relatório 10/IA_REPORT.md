# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

- **Identificação:** Lavínia Silva Andrade
- **Matrícula / Inatel:** 788
- **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1 — Exercício 1: Pokémon

**Prompt enviado:**

> por que preciso declarar `#vida` como atributo privado e criar `get vida()` em vez de acessar a vida diretamente? Como faço para garantir que ela não fique negativa no método `sofrerDano(pontos)`?

**Resposta obtida:**

O atributo `#vida` é privado e só pode ser acessado diretamente de dentro da classe `Pokemon`. O getter `get vida()` permite consultar a vida usando `pokemon.vida`, sem permitir que ela seja alterada diretamente de fora da classe.

No método `sofrerDano(pontos)`, depois de subtrair os pontos recebidos, é necessário verificar se o valor ficou abaixo de zero:

```javascript
sofrerDano(pontos) {
    this.#vida -= pontos;

    if (this.#vida < 0) {
        this.#vida = 0;
    }

    console.log(`${this.apelido} ficou com ${this.#vida} de vida.`);
}
```

Assim, quando o dano ultrapassa a vida restante, ela é ajustada para zero. O getter continua permitindo consultar o resultado sem expor o atributo privado.

### Prompt 2 — Exercício 2: Valorant

**Prompt enviado:**

> o método `entrarEmCombate()` consegue acessar o modelo da pistola se o atributo `#pistola` é privado? E por que `usarHabilidade()` na classe `AgenteProtocolo` lança um erro, enquanto as classes filhas retornam um texto?

**Resposta obtida:**

Como `#pistola` é um atributo privado de `AgenteProtocolo`, o método `entrarEmCombate()` consegue acessá-lo porque está definido dentro da própria classe. Assim, ele pode consultar `this.#pistola.modelo` e exibir o modelo da arma sem tornar o atributo público.

O método `usarHabilidade()` da classe base lança um erro para indicar que o comportamento deve ser implementado pelas classes filhas. `Controlador`, `Iniciador` e `Duelista` sobrescrevem esse método e retornam textos próprios. Dessa forma, quando `entrarEmCombate()` chama `this.usarHabilidade()`, é executada a implementação correspondente ao tipo real do agente.

### Prompt 3 — Exercício 3: Gravity Falls

**Prompt enviado:**

> no exercício de Gravity Falls, por que a ficha é criada dentro do método `anotar()` do diário, mas os funcionários são criados antes da Cabana do Mistério? Como isso representa composição e agregação?

**Resposta obtida:**

A ficha é criada dentro de `anotar()` com `new FichaDeCriatura(...)` e depois adicionada ao array privado `#fichas` usando `push`. Isso representa a composição apresentada no exercício: as fichas são criadas e armazenadas como partes internas do diário.

Já os funcionários são instanciados separadamente antes da cabana e depois entregues ao método `contratar(funcionario)`, que os adiciona ao array `#funcionarios`. Isso representa agregação, pois os objetos `Funcionario` não precisam ser criados pela classe `CabanaDoMisterio` para fazer parte dela.

### Prompt 4 — Exercício 4: Hunter x Hunter

**Prompt enviado:**

> como o método `buscarAranha(numero)` pode encontrar uma Aranha pelo número usando `find`? E o que acontece se nenhuma Aranha tiver o número informado?

**Resposta obtida:**

O método `find()` percorre o array e retorna o primeiro objeto que satisfaz a condição indicada. Neste caso, a condição compara o número de cada Aranha com o número recebido como parâmetro:

```javascript
buscarAranha(numero) {
    return this.#aranhas.find(aranha => aranha.numero === numero);
}
```

Se houver uma Aranha com o número informado, o método retorna esse objeto. Se nenhuma corresponder, `find()` retorna `undefined`. Por isso, no `main`, é possível verificar se o resultado foi encontrado antes de chamar `atacar()` com esse alvo.

## 2. Relatório de Aprendizado

- **Como a resposta ajudou na solução dos problemas:** A inteligência artificial foi utilizada para esclarecer dúvidas específicas sobre alguns trechos de código e sobre como aplicar os conceitos solicitados nos enunciados.

- **De que forma ela solucionou as minhas dúvidas:** As respostas ajudaram a entender o uso de atributos privados e getters, a sobrescrita de métodos, o acesso a atributos dentro da própria classe, a diferença entre composição e agregação e o funcionamento do método `find()`.

- **O que aprendi para aplicar em problemas futuros:** Aprendi a controlar o acesso aos atributos, a entender como chamadas de métodos podem utilizar a implementação sobrescrita nas classes filhas e a identificar quando objetos são criados dentro de outra classe ou quando já existem antes de serem associados a ela. Também revisei como tratar um resultado `undefined` ao procurar um objeto em um array.

- **Como utilizei a inteligência artificial:** O ChatGPT foi utilizado como ferramenta de consulta para esclarecer dúvidas pontuais de JavaScript e de Orientação a Objetos. As respostas serviram como apoio para compreender detalhes da implementação e relacioná-los aos exemplos estudados em aula.
