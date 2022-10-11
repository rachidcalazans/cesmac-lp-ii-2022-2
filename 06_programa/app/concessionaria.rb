class Concessionaria
  def initialize 
    @total = 0
    @carros = 
    [
      Carro.new("Corolla", 150000),
      Carro.new("Corolla", 150000),
      Carro.new("Yaris", 120000),
      Carro.new("Yaris", 120000),
      Carro.new("Yaris", 120000)
    ]
  end

  def realizar_venda nome_carro
    @carros.each_with_index do |carro, index|
      if carro.nome == nome_carro
        @total += carro.valor
        @carros.delete_at index
        break
      end
    end
    self
  end

  def total
    @total
  end
  
  def carros 
    @carros
  end
end

class Carro
  def initialize nome, valor
    @nome = nome
    @valor = valor
  end

  def nome
    @nome
  end

  def valor
    @valor
  end
end

concessionaria = 
Concessionaria.new
  .realizar_venda("Corolla")
  .realizar_venda("Corolla")
  .realizar_venda("Yaris")

puts concessionaria.total