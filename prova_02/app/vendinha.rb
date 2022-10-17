class Flau
    attr_accessor :sabor, :estoque, :valor

    def initialize(sabor,estoque,valor)
        @sabor = sabor
        @estoque = estoque
        @valor = valor
    end
end
class Venda
    attr_accessor :caixa, :flaus

    def initialize
      @caixa = 0
      @flaus = 
      [
        Flau.new("Goiaba", 10, 0.50),
        Flau.new("Morango", 10, 0.75),
        Flau.new("Maçã Verde", 10, 0.75),
        Flau.new("Nescau com Nutela", 10, 1.0),
        Flau.new("Menta", 10, 0.50)
      ]
    end
  
    def vender (sabor)
      @flaus.map do |flau|
        if flau.sabor == sabor  
            flau.estoque -=  1
            @caixa += flau.valor
        end
        flau
      end
      self
    end
  
    def obter_estoque (sabor)
      flau = self.flaus.select { |flau| flau.sabor == sabor } 
      flau.first.estoque
    end
  end