class Vendinha


  attr_reader :estoqueSabores
  
  def initialize
    @valor = 0
    @estoqueSabores = []
  end

  def compra(produto)
    produto.estoque -= 1
    @valor += produto.valor
  end

  def valorTotal
    @valor
  end

  def adicionaEstoque(sabor)
    @estoqueSabores.push sabor
  end
end


