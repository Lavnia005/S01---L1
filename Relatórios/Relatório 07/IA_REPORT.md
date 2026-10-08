# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

* **Identificação:** Lavínia Silva Andrade
* **Matrícula / Inatel:** 788
* **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

Prompt 1:

* **Prompt enviado:**
  > Me ajuda a entender e resolver o exercício de Combatente de Gondor em C#, seguindo o estilo dos exemplos apresentados em aula?

* **Resposta obtida:** O ChatGPT ajudou a **estruturar a classe `CombatenteDeGondor`**, explicando como utilizar **encapsulamento com `private set`**, construtor, propriedades e métodos. Também orientou na criação do método `Equipar()` e na exibição das informações do combatente por meio de `ApresentarUnidade()`.

---

Prompt 2:

* **Prompt enviado:**
  > Me ajuda a fazer o exercício de Pokémon usando herança, virtual, override e polimorfismo, seguindo o exemplo da aula?

* **Resposta obtida:** O ChatGPT explicou como criar a **classe base `Pokemon`** e as classes derivadas `TipoPlanta` e `TipoEletrico`, mostrando como utilizar **herança**, `virtual`, `override` e `base.Atacar()`. Também ajudou a entender o uso de uma **`List<Pokemon>`** para armazenar diferentes tipos de Pokémon e demonstrar o **polimorfismo** com `foreach`.

---

Prompt 3:

* **Prompt enviado:**
  > Me ajuda a montar o exercício da Maga Frieren usando composição e agregação, seguindo os exemplos que vimos em aula?

* **Resposta obtida:** O ChatGPT ajudou a **organizar as classes `Grimorio`, `Companheiro` e `Maga`**, explicando a diferença entre **composição e agregação**. Também orientou sobre a criação do `Grimorio` dentro da classe `Maga`, a utilização de uma lista privada de companheiros e o método `Recrutar()` para adicionar companheiros já existentes.

---

Prompt 4:

* **Prompt enviado:**
  > Me ajuda com o exercício de Entidades Cósmicas e verifica se o código está seguindo o que o enunciado pede?

* **Resposta obtida:** O ChatGPT ajudou a **interpretar o enunciado e organizar a solução**, explicando a criação da classe base `EntidadeCosmica`, das classes derivadas `Profundo` e `MiGo` e da classe `Pesquisador`. Também esclareceu a diferença entre os dois usos de `Manifestar()`: no `Profundo`, o método é sobrescrito sem chamar a classe pai, enquanto no `MiGo` é utilizado `base.Manifestar()` antes do comportamento específico. Além disso, ajudou a corrigir a propriedade `Origem` para que fosse possível definir uma origem conhecida na `Main`.

---

## 2. Relatório de Aprendizado

* **Como a resposta ajudou na solução do problema:** A inteligência artificial foi utilizada como **apoio durante o desenvolvimento dos quatro exercícios**, principalmente para interpretar os enunciados, esclarecer dúvidas sobre a estrutura das classes e verificar se os conceitos pedidos estavam sendo aplicados corretamente. A orientação foi baseada nos exemplos utilizados em aula, mantendo uma estrutura simples e compatível com o conteúdo estudado.

* **De que forma ela solucionou as minhas dúvidas:** As explicações ajudaram a entender, na prática, conceitos de **Orientação a Objetos em C#**, como encapsulamento, construtores, herança, `virtual`, `override`, `base`, polimorfismo, composição, agregação e utilização de listas. Também ajudaram a identificar pequenos detalhes do código que precisavam ser ajustados para atender exatamente ao enunciado.

* **O que aprendi para aplicar em problemas futuros:** Aprendi a identificar qual conceito de Orientação a Objetos está sendo solicitado em cada problema e a estruturar as classes de acordo com essa necessidade. Também compreendi melhor como **herança e polimorfismo** permitem reutilizar e modificar comportamentos, como `private set` ajuda no encapsulamento e como diferenciar **composição de agregação** pela forma como os objetos são criados e relacionados. Dessa forma, consigo utilizar esses conceitos com mais autonomia em exercícios futuros.
