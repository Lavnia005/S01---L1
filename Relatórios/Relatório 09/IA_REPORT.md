# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

- **Identificação:** Lavínia Silva Andrade
- **Matrícula / Inatel:** 788
- **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1 — Exercício 1: Cyberpunk 2077

**Prompt enviado:**

> No exercício de Cyberpunk 2077, como faço para criar um setter manual para o preço que aceite somente valores entre 5 e 200? Se eu tentar colocar 500, como faço para mostrar a mensagem de preço inválido sem alterar o preço que já estava salvo? E como uso `super` no método `ficha` da classe `DrinkDeLenda` para aproveitar o texto da classe pai?

**Resposta obtida:**

Em Ruby, o setter manual pode ser criado com o método `preco=(valor)`. Dentro dele, basta verificar se o valor está entre 5 e 200. Se estiver dentro do intervalo, o atributo é atualizado; caso contrário, a mensagem solicitada é exibida e o preço anterior é mantido.

```ruby
def preco=(valor)
  if valor >= 5 && valor <= 200
    @_preco = valor
  else
    puts "Preço inválido!"
  end
end
```

Para reaproveitar o texto produzido pelo método `ficha` da classe pai, pode-se utilizar `super` na classe `DrinkDeLenda`:

```ruby
def ficha
  "#{super} | Homenagem a: #{lenda}"
end
```

Dessa forma, a classe filha mantém as informações do drink definidas na classe base e acrescenta a lenda homenageada, sem precisar repetir todo o texto do método original.

### Prompt 2 — Exercício 2: Your Lie in April

**Prompt enviado:**

> No exercício de Your Lie in April, por que as classes `Solista` e `Acompanhador` não precisam de um `initialize` próprio? E como o método `reger(peca)` consegue chamar `interpretar(peca)` para os dois tipos de instrumentistas usando o mesmo código?

**Resposta obtida:**

As classes `Solista` e `Acompanhador` herdam de `Instrumentista`. Como ambas utilizam os atributos `nome` e `instrumento` definidos na classe pai, não precisam de um construtor próprio. O construtor herdado pode ser utilizado diretamente.

O método `reger(peca)` percorre o array de instrumentistas com `.each` e chama `interpretar(peca)` para cada objeto:

```ruby
def reger(peca)
  puts "#{@nome} rege a peca #{peca}."

  @orquestra.each do |instrumentista|
    instrumentista.interpretar(peca)
  end
end
```

Cada classe filha possui sua própria implementação de `interpretar`. Assim, o solista apresenta a melodia principal, enquanto o acompanhador segue o ritmo do solista. Esse comportamento é um exemplo de polimorfismo.

Já o método `escalacao` utiliza `.map` para criar um novo array com o nome da classe e o nome de cada instrumentista:

```ruby
def escalacao
  @orquestra.map do |instrumentista|
    "#{instrumentista.class}: #{instrumentista.nome}"
  end
end
```

### Prompt 3 — Exercício 3: Steins;Gate

**Prompt enviado:**

> No exercício de Steins;Gate, como posso diferenciar a composição da agregação no código? Por que o `PhoneWave` é criado dentro do `initialize` de `LaboratorioDeGadgets`, enquanto os objetos `MembroDoLab` são criados antes e depois adicionados pelo método `admitir`?

**Resposta obtida:**

A composição é representada pela criação do `PhoneWave` dentro do construtor de `LaboratorioDeGadgets`:

```ruby
def initialize
  @phonewave = PhoneWave.new
  @membros = []
end
```

O aparelho é criado como parte da estrutura interna do laboratório, conforme solicitado no enunciado.

A agregação aparece no relacionamento entre o laboratório e os membros. Os objetos `MembroDoLab` são criados separadamente e depois adicionados ao array por meio de `admitir`:

```ruby
def admitir(membro)
  @membros << membro
  puts "Membro #{membro.numero} - #{membro.nome} admitido!"
end
```

Na parte principal do programa, os membros são instanciados antes do laboratório e passados ao método `admitir`. Isso representa a agregação porque os membros existem independentemente do laboratório.

O método `experimento(mensagem)` utiliza `.each` para percorrer os membros registrados e, em seguida, chama `enviar_dmail(mensagem)` no `PhoneWave` armazenado em `@phonewave`.

### Prompt 4 — Exercício 4: Sherlock Holmes

**Prompt enviado:**

> No exercício de Sherlock Holmes, como faço para identificar quais objetos podem ser detidos sem precisar verificar diretamente se são da classe `SuspeitoDoCrime`? E qual é a diferença entre o módulo `Depoente` e o módulo `Detivel` nesse caso?

**Resposta obtida:**

O método `respond_to?(:ser_detido)` permite verificar se um objeto possui o método `ser_detido`. Com isso, o método `acionar_scotland_yard` pode selecionar somente os envolvidos que possuem essa capacidade:

```ruby
def acionar_scotland_yard
  puts "\n--- Acionando Scotland Yard ---"

  detidos = @envolvidos.select do |envolvido|
    envolvido.respond_to?(:ser_detido)
  end

  detidos.each do |envolvido|
    envolvido.ser_detido
  end
end
```

O método `.select` cria um novo array com os objetos que atendem à condição. Depois, `.each` percorre esse array e chama `ser_detido` para cada um deles.

O módulo `Depoente` define um método que lança `NotImplementedError`, indicando que as classes que utilizarem esse comportamento devem fornecer sua própria implementação de `depor`.

Já o módulo `Detivel` possui uma implementação pronta de `ser_detido`, que utiliza o atributo `nome` disponibilizado pela classe `Envolvido`.

A classe `TestemunhaOcular` inclui somente `Depoente`, enquanto `SuspeitoDoCrime` inclui `Depoente` e `Detivel`. Por isso, somente os suspeitos são selecionados para serem detidos.

## 2. Relatório de Aprendizado

- **Como a resposta ajudou na solução dos problemas:** A inteligência artificial foi utilizada como apoio para esclarecer dúvidas específicas que surgiram durante a implementação dos exercícios. As orientações ajudaram a compreender melhor alguns detalhes da sintaxe Ruby e a conferir se os métodos estavam de acordo com os requisitos dos enunciados.

- **De que forma ela solucionou as minhas dúvidas:** As respostas esclareceram a criação de getters e setters manuais, a utilização de `super`, a herança de construtores, o funcionamento do polimorfismo e o uso de métodos como `.each`, `.map`, `.select` e `respond_to?`. Também ajudaram a diferenciar composição e agregação e a entender a finalidade dos módulos.

- **O que aprendi para aplicar em problemas futuros:** Aprendi a reaproveitar métodos e construtores por meio da herança, a sobrescrever comportamentos nas classes filhas e a controlar o acesso aos atributos. Também compreendi como organizar objetos relacionados, definir comportamentos por meio de módulos e utilizar o polimorfismo para executar ações diferentes por meio de uma mesma chamada de método.

- **Como utilizei a inteligência artificial:** O ChatGPT foi utilizado como ferramenta de consulta para esclarecer dúvidas pontuais sobre os conceitos de Orientação a Objetos em Ruby. As respostas serviram como apoio ao estudo e à compreensão dos exemplos, relacionando os conceitos teóricos com as situações apresentadas nos exercícios.
