class Fogao
  def initialize(marca, qtd_bocas)
    @marca = marca
    @qtd_bocas = qtd_bocas
    @ligado = false
  end

  def marca ()
    @marca  
  end

  def qtd_bocas()
    @qtd_bocas
  end

  def ligado?()
    @ligado
  end 

  def ligar()
    if !@ligado
      @ligado = true
    end
  end

  def desligar()
    if @ligado
      @ligado = false
    end
  end
end

