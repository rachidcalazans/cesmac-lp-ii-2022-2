class Fogao
  def initialize(marca, qtd_bocas)
    @marca = marca
    @qtd_bocas = qtd_bocas
    @ligado
    @desligar
  end

  def marca
    @marca
  end

  def qtd_bocas
    @qtd_bocas
  end

  def ligar
    @ligado
  end

  def ligado?
    @ligado = true
  end

  def desligar
    @desligado = false
  end
  
end
