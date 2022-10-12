require './prova_02/app/flau'

class Venda
  attr_accessor :total_venda
  attr_accessor :flaus
  
  def initialize
    @total_venda = 0
    @flaus = 
    [
      Flau.new("Goiaba", 0.50, 10),
      Flau.new("Morango", 0.75, 10),
      Flau.new("Maçã Verde", 0.75, 10),
      Flau.new("Nescau com Nutela", 1.00, 10),
      Flau.new("Menta", 0.50, 10)
    ]
  end

  def vender sabor
    @flaus.map do |flau|
      if flau.sabor == sabor and flau.quantidade >= 1       
          flau.quantidade -=  1
          @total_venda += flau.preco 
      end
      flau
    end
    self
  end

  def obter_quantidade sabor
    flau = self.flaus.select { |flau| flau.sabor == sabor 
    } 

    flau.first.quantidade
  end
end