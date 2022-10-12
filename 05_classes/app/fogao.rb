class Fogao
  def initialize(marca, qtd_bocas)
    @marca = marca
    @qtd_bocas = qtd_bocas
    @ligado = nil
  end

  def marca
    @marca
  end

  def qtd_bocas
    @qtd_bocas
  end

  def ligar
    @ligado = true
  end

  def desligar
    @ligado = false
  end

  def ligado?
    @ligado
  end

end
