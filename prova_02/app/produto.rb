class Produto

  attr_accessor :sabor, :estoque, :valor

  def initialize(sabor, valor)
      @sabor = sabor
      @valor = valor
  end

  def getsabor
      return @sabor
  end

  def setsabor(sabor)
      @sabor = sabor
  end

  def valor
      return @valor 
  end

  def selecionarValor(valor)
      @valor = valor
  end
end