require './prova_02/app/flau'

class Vendinha

  def initialize
    @saldo = 0
    @estoque = [
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('goiaba', 0.5),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('morango', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('maçã verde', 0.75),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('nescau com nutella', 1.0),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5),
      Flau.new('menta', 0.5)
    ]
  end

  def saldo
    @saldo
  end

  def estoque
    @estoque
  end

  def flau_goiaba
    flau_por_sabor('goiaba')
  end

  def flau_morango
    flau_por_sabor('morango')
  end

  def flau_maca_verde
    flau_por_sabor('maçã verde')
  end

  def flau_nescau_com_nutella
    flau_por_sabor('nescau com nutella')
  end

  def flau_menta
    flau_por_sabor('menta')
  end

  def vender(sabor)
    @estoque.each do |flau|
      if flau.sabor == sabor
        @saldo += flau.valor
        @estoque.delete(flau)
        return
      end
    end
  end

  private

  def flau_por_sabor(sabor)
    flau_estoque = []

    @estoque.each do |flau|
      if flau.sabor == sabor
        flau_estoque << flau
      end
    end

    flau_estoque
  end
end
