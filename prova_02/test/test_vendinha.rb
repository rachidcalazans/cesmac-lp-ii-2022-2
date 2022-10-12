require "minitest/autorun"
require './prova_02/app/vendinha'

class TestVendinha < Minitest::Test

  def test_cliente_joao
    venda = 
    Venda.new
    .vender("Morango")
    .vender("Morango")
    .vender("Morango")
    .vender("Maça Verde")
    .vender("Maça Verde")
    .vender("Maça Verde")
    .vender("Maça Verde")
    .vender("Maça Verde")

    assert_equal 10, venda.obter_quantidade("Goiaba")

    assert_equal 7, venda.obter_quantidade("Morango")
  
    assert_equal 10, venda.obter_quantidade("Nescau com Nutela")

    assert_equal 10, venda.obter_quantidade("Menta")

    assert_equal 4.5, venda.valor_total
  end

  def test_cliente_pedro
    venda = 
    Venda.new
    .vender("Menta")
    .vender("Menta")
    .vender("Maça Verde")
    .vender("Maça Verde")
  end

end