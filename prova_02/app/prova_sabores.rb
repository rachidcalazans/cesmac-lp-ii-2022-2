require "minitest/autorun"

class Sabores_Dos_Flaus


  def initialize(nome, estoque, valor_flau)

    @nome = nome
    @estoque = estoque
    @valor_flau = valor_flau
  end

end

 class Vendinha_Do_Seu_Joao

  def initialize
    @valor_flau = 0
    @SaboresEmEstoque = []
  end

  def compra(flau)
    if not (flau.estoque > 0)
      return 'Fora de estoque'
    end

    flau.estoque -= 1
    @valor_flau += flau.valor_flau
  end

  def Total
    @valor_flau
  end

  def Adicionar_sabores_em_estoque(sabores)
    @SaboresEmEstoque.push 
  end

 end