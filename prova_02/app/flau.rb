class Flau
  attr_accessor :sabor
  attr_accessor :preco
  attr_accessor :quantidade
  
  def initialize(sabor, preco, quantidade)
    @sabor = sabor
    @preco = preco
    @quantidade = quantidade
  end
end