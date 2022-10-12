require './prova_02/app/flau'

class Venda
    def initialize
      @total_venda = 0
      @flaus = 
      [
        Flau.new("Goiaba", 0.50),
        Flau.new("Morango", 0.75),
        Flau.new("Maçã Verde", 0.75),
        Flau.new("Nescau com Nutela", 1.00),
        Flau.new("Menta", 0.50)
      ]

      for flau in @flaus
        9.times do 
          
        end
      end
    end
  
    def total_venda 
      @total_venda
    end
  
    def flaus 
      @flaus
    end
  
    def vender sabor
      @flaus.each_with_index do |flau, index|
        if flau.sabor == sabor
          @total_venda += flau.preco
          @flaus.delete_at index
          break
        end
      end
      self
    end
end 