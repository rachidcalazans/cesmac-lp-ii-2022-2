require "minitest/autorun"

class Sabores
  

  def initialize(nome, estoque, valor)
    
    @nome = nome
    @estoque = estoque
    @valor = valor
  end
end

class Loja

  def initialize
    @valor = 0
    @SaboresEmestoque = []
  end

  def compra(produto)
    if not (produto.estoque > 0)
      return 'Fora do estoque'
    end
    
    produto.estoque -= 1
    @valor += produto.valor
  end

  def Total
    @valor
  end

  def adicionarEstoque(sabores)
    @SaboresEmestoque.push sabores
  end
end