class Fogao
  def initialize(marca, qtd_bocas)
    @marca = marca
    @qtd_bocas = qtd_bocas
    @ligado = nil
  end

   def qtd_bocas()
    return @qtd_bocas
  end

   def marca()
    return @marca
  end
   
   def ligado?()
    return @ligado
   end

  def ligar()
    @ligado = true
  end

  def desligar()
    @ligado = false
  end
end