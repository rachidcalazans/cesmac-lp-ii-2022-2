class Sabores
    attr_accessor :nome, :estoque, :valor
    def initialize(nome, estoque, valor)
      @valor = valor
      @nome = nome
      @estoque = estoque
    end
  end
  class Vendinha
    attr_reader :estoques
    def initialize
      @valor = 0
      @estoques = []
    end
    def compra(sabor)
      sabor.estoque -= 1
      @valor += sabor.valor
    end
    def total
      @valor
    end
    def add(sabor)
      @estoques.push sabor
    end
  end