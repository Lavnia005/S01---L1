# Relatório de Uso de Inteligência Artificial (IA_REPORT.md)

- **Identificação:** Lavínia Silva Andrade
- **Matrícula / Inatel:** 788
- **Modelo Utilizado:** ChatGPT (OpenAI)

## 1. Histórico de Prompts e Respostas Obtidas

### Prompt 1 — Exercício 1: Farmácia da Maomao

**Prompt enviado:**

> em `classifica-erva`, por que utilizo `cond` em vez de vários `if`? E como funciona a comparação dos níveis de toxicidade?

**Resposta obtida:**

O `cond` permite verificar várias condições em sequência, funcionando de maneira semelhante a uma estrutura de `if` e `else if`. As condições são avaliadas de cima para baixo, e a primeira condição verdadeira determina o resultado.

No código, por exemplo:

```lisp
(cond
  ((>= (erva-toxicidade erva) 7) "veneno")
  ((>= (erva-toxicidade erva) 4) "use com cuidado")
  (t "segura"))
```

Primeiro, é verificado se a toxicidade é maior ou igual a 7. Caso contrário, verifica-se se é maior ou igual a 4. Se nenhuma das condições anteriores for verdadeira, o `t` funciona como uma condição padrão.

### Prompt 2 — Exercício 2: Scanner 4546B

**Prompt enviado:**

> na função `abaixo-de`, como funciona o `remove-if-not` junto com a expressão lambda? Por que utilizo `>` para comparar a profundidade?

**Resposta obtida:**

O `remove-if-not` percorre a lista e mantém somente os elementos para os quais a condição definida retorna verdadeiro.

A expressão lambda cria uma função sem nome que recebe uma criatura e verifica sua profundidade:

```lisp
(remove-if-not
 (lambda (criatura)
   (> (criatura-profundidade criatura) profundidade))
 catalogo)
```

O operador `>` é utilizado porque, nesse exercício, uma profundidade maior representa uma localização mais profunda. Assim, são mantidas apenas as criaturas que estão abaixo do limite informado.

### Prompt 3 — Exercício 3: Joias da Alma

**Prompt enviado:**

> em `escuridao-total`, por que preciso utilizar `null`, `car` e `cdr`? Como funciona a soma dos valores da lista?

**Resposta obtida:**

A função `null` verifica se a lista está vazia, representando o caso base da recursão. Quando isso acontece, a função retorna `0`, encerrando as chamadas recursivas.

O `car` acessa o primeiro elemento da lista, enquanto o `cdr` retorna o restante dela.

Um exemplo da estrutura utilizada é:

```lisp
(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))
```

Dessa forma, a função soma a escuridão da primeira garota mágica com o resultado da chamada recursiva para as demais garotas.

### Prompt 4 — Exercício 4: Domínios de Teyvat

**Prompt enviado:**

>  quando utiliza `copy-dominio` e `setf`, por que a alteração do valor de mora na cópia não modifica o domínio original?

**Resposta obtida:**

A função `copy-dominio` cria uma cópia da estrutura, permitindo modificar seus campos sem alterar os valores da estrutura original.

O `setf` é utilizado para modificar o valor de um campo específico. Por exemplo:

```lisp
(let ((copia (copy-dominio (first dominios))))
  (setf (dominio-mora copia) 5000)
  (format t "Mora da copia: ~a~%" (dominio-mora copia))
  (format t "Mora do original: ~a~%" (dominio-mora (first dominios))))
```

Nesse caso, o valor de mora é alterado somente na variável `copia`, enquanto o domínio original continua com seu valor anterior.

## 2. Relatório de Aprendizado

- **Como a resposta ajudou na solução dos problemas:** A inteligência artificial auxiliou no esclarecimento de dúvidas específicas durante o desenvolvimento dos exercícios, principalmente em relação ao funcionamento de algumas funções e estruturas da linguagem Common Lisp.

- **De que forma ela solucionou as minhas dúvidas:** As explicações contribuíram para compreender melhor a utilização de `cond`, `lambda`, `remove-if-not`, recursão, manipulação de listas, `copy-dominio` e `setf`. Os pequenos exemplos de código também ajudaram a visualizar como esses recursos funcionam na prática.

- **O que aprendi para aplicar em problemas futuros:** Aprendi a utilizar estruturas condicionais, funções de ordem superior e recursão para manipular dados, além de compreender melhor a criação e a modificação de estruturas em Common Lisp.

- **Como utilizei a inteligência artificial:** O ChatGPT foi utilizado como ferramenta de apoio para esclarecer dúvidas sobre detalhes da implementação dos exercícios. As explicações e os trechos de código auxiliaram na compreensão dos conceitos apresentados nas aulas, mantendo como referência o exemplo disponibilizado pelo monitor.
