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
  @membros <<
