
class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "Drink: #{nome} | Preço: R$ #{preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} | Homenagem a: #{lenda}"
  end
end

drink1 = CoquetelAfterlife.new("Cerveja Night City", 15)
drink2 = DrinkDeLenda.new("Johnny Silverhand", 80, "Johnny Silverhand")
drink3 = DrinkDeLenda.new("David Martinez", 100, "David Martinez")

drinks = [drink1, drink2, drink3]

drinks.each do |drink|
  puts drink.ficha
end

puts "\n--- Alterando preco ---"

drink2.preco = 500
drink2.preco = 80

puts drink2.ficha

# drink2.nome = "Novo nome"
