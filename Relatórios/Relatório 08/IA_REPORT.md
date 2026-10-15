# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

- **Identificação:** Lavínia Silva Andrade
- **Matrícula / Inatel:** 788
- **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1 — Exercício 1: Dark Souls

**Prompt enviado:**

> No exercício de Dark Souls, por que preciso usar `super().__init__(nome, almas, estus)` na classe `Clerigo`? E como faço para sobrescrever `mostrar_status()` sem precisar repetir todo o texto da classe `MortoVivo`?

**Resposta obtida:**

O `super().__init__(nome, almas, estus)` chama o construtor da classe pai, `MortoVivo`, inicializando os atributos `nome`, `_almas` e `__estus`. Dessa forma, não é necessário repetir a inicialização desses atributos na classe filha.

Para sobrescrever o método `mostrar_status()` e reaproveitar o texto da classe pai, pode-se utilizar `super().mostrar_status()`:

```python
class Clerigo(MortoVivo):

    def __init__(self, nome: str, almas: int, estus: int,
                 milagre: str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        return (f"{super().mostrar_status()} | "
                f"Milagre: {self.milagre}")
```

Assim, o clérigo apresenta as informações herdadas de `MortoVivo` e acrescenta seu atributo exclusivo, `milagre`.

Outra dúvida importante é a validação do Estus. O setter deve alterar o valor somente quando a quantidade estiver entre 0 e 10. Caso contrário, deve exibir a mensagem solicitada e manter o valor anterior:

```python
def set_estus(self, quantidade):
    if quantidade >= 0 and quantidade <= 10:
        self.__estus = quantidade
    else:
        print("Quantidade de Estus inválida!")
```

### Prompt 2 — Exercício 2: Overwatch

**Prompt enviado:**

> No exercício de Overwatch, as classes `HeroiTanque` e `HeroiSuporte` precisam ter um `__init__` próprio? E como faço para chamar `curar_equipe()` somente quando o herói for um suporte?

**Resposta obtida:**

As classes filhas não precisam ter um `__init__` próprio quando podem utilizar diretamente o construtor herdado de `HeroiOverwatch`. Nesse caso, os atributos `codinome` e `funcao` são inicializados pelo construtor da classe pai.

Para chamar `curar_equipe()` somente nos suportes, utiliza-se `isinstance()`, que verifica se o objeto pertence à classe `HeroiSuporte`:

```python
for heroi in herois:
    heroi.usar_suprema()

    if isinstance(heroi, HeroiSuporte):
        heroi.curar_equipe()
```

O método `usar_suprema()` é chamado para todos os heróis. Como cada classe possui sua própria implementação, o comportamento depende do tipo do objeto. Isso demonstra o polimorfismo.

Já o método `curar_equipe()` é executado apenas quando a condição identifica um herói da classe `HeroiSuporte`.

### Prompt 3 — Exercício 3: Persona 5

**Prompt enviado:**

> No exercício de Persona 5, qual é a diferença entre composição e agregação no código? Por que devo criar os aliados antes do líder e a Persona dentro do `__init__` de `Lider`?

**Resposta obtida:**

A composição ocorre quando o objeto que faz parte de outro é criado dentro da própria classe que o contém. No exercício, a Persona é criada no construtor de `Lider`:

```python
self.persona = Persona("Arsène", "Louco")
```

Isso representa a relação de composição solicitada, pois a Persona é criada como parte da estrutura do líder.

A agregação acontece com os aliados, que são criados independentemente do líder e depois adicionados à equipe:

```python
def recrutar(self, aliado: Aliado):
    self._equipe.append(aliado)
    print(f"{aliado.codinome} foi recrutado!")
```

Por isso, na `main`, os aliados são instanciados antes do líder:

```python
aliado1 = Aliado("Ryuji Sakamoto", "Skull")
aliado2 = Aliado("Ann Takamaki", "Panther")

joker = Lider("Joker")

joker.recrutar(aliado1)
joker.recrutar(aliado2)
```

Dessa forma, o líder recebe referências para objetos `Aliado` que já existem. Os aliados podem continuar existindo independentemente do líder, enquanto a Persona é criada dentro dele, conforme solicitado no exercício.

### Prompt 4 — Exercício 4: Cyberpunk

**Prompt enviado:**

> No exercício de Cyberpunk, por que a classe `IUnidadeDeRede` herda de `ABC` e utiliza `@abstractmethod`? E como o método `executar_invasao()` demonstra polimorfismo na classe `CelulaHacker`?

**Resposta obtida:**

A classe `IUnidadeDeRede` herda de `ABC` para funcionar como uma classe abstrata. O decorador `@abstractmethod` indica que as classes concretas que implementarem essa interface precisam fornecer uma implementação de `executar_invasao()`.

```python
from abc import ABC, abstractmethod


class IUnidadeDeRede(ABC):

    @abstractmethod
    def executar_invasao(self):
        pass
```

A classe `OperadorNetrunner` implementa esse método para descrever a quebra do gelo (ICE) de um servidor, enquanto `DroneDeVigilancia` implementa o método para descrever a interceptação do sinal da rede.

Na classe `CelulaHacker`, o polimorfismo aparece quando o mesmo método é chamado para cada membro:

```python
def iniciar_ataque(self):
    print(f"--- Célula Hacker: {self.nome} ---")

    for membro in self._membros:
        membro.executar_invasao()
```

Embora todos os membros sejam tratados como objetos do tipo `IUnidadeDeRede`, cada um executa sua própria implementação de `executar_invasao()`.

A composição também aparece na classe `OperadorNetrunner`, que cria seu próprio `Cyberdeck`:

```python
self.cyberdeck = Cyberdeck(modelo)
```

Já a agregação ocorre na classe `CelulaHacker`, que recebe uma lista de membros previamente criados. Por fim, uma instância de `IUnidadeDeRede` não pode ser criada diretamente enquanto existir um método abstrato não implementado.

## 2. Relatório de Aprendizado

- **Como a resposta ajudou na solução dos problemas:** A inteligência artificial foi utilizada como apoio para esclarecer dúvidas específicas que surgiram durante a implementação dos exercícios. As orientações ajudaram a conferir alguns detalhes do código e a compreender melhor como aplicar os conceitos solicitados nos enunciados.

- **De que forma ela solucionou as minhas dúvidas:** As respostas esclareceram a utilização de `super()`, a sobrescrita de métodos, a validação de atributos por meio de setters, a verificação de tipos com `isinstance()` e a implementação de classes abstratas. Também ajudaram a diferenciar composição e agregação e a entender como o polimorfismo funciona na prática.

- **O que aprendi para aplicar em problemas futuros:** Aprendi a identificar quando é possível reaproveitar o construtor e os métodos de uma classe pai, quando é necessário sobrescrever um comportamento e como organizar objetos relacionados por composição ou agregação. Também compreendi melhor a importância de verificar os tipos dos objetos e de utilizar classes abstratas para definir métodos que devem ser implementados pelas classes concretas.

- **Como utilizei a inteligência artificial:** O ChatGPT foi utilizado como ferramenta de consulta para esclarecer dúvidas pontuais e conferir detalhes das implementações. As respostas serviram como apoio ao estudo dos conceitos de Orientação a Objetos em Python, permitindo relacionar os exemplos com o conteúdo apresentado em aula.
