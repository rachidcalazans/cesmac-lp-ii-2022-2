require "minitest/autorun"
require "./prova_02/app/vendinha"

class TestVendinha < Minitest::Test

  def test_vendinha_inicial
    vendinha = Vendinha.new

    assert_equal 0, vendinha.saldo
    assert_equal 50, vendinha.estoque.size
    assert_equal 10, vendinha.flau_goiaba.size
    assert_equal 10, vendinha.flau_morango.size
    assert_equal 10, vendinha.flau_maca_verde.size
    assert_equal 10, vendinha.flau_nescau_com_nutella.size
    assert_equal 10, vendinha.flau_menta.size
  end

  def test_vendinha_com_vendas
    vendinha = Vendinha.new

    # Venda para Maria
    vendinha.vender('goiaba')
    vendinha.vender('goiaba')
    vendinha.vender('nescau com nutella')
    vendinha.vender('nescau com nutella')
    vendinha.vender('nescau com nutella')
    vendinha.vender('menta')

    assert_equal 4.5, vendinha.saldo
    assert_equal 44, vendinha.estoque.size
    assert_equal 8, vendinha.flau_goiaba.size
    assert_equal 10, vendinha.flau_morango.size
    assert_equal 10, vendinha.flau_maca_verde.size
    assert_equal 7, vendinha.flau_nescau_com_nutella.size
    assert_equal 9, vendinha.flau_menta.size

    # Venda para João
    vendinha.vender('morango')
    vendinha.vender('morango')
    vendinha.vender('maçã verde')
    vendinha.vender('maçã verde')
    vendinha.vender('maçã verde')
    vendinha.vender('maçã verde')
    vendinha.vender('maçã verde')

    assert_equal 9.75, vendinha.saldo
    assert_equal 37, vendinha.estoque.size
    assert_equal 8, vendinha.flau_goiaba.size
    assert_equal 8, vendinha.flau_morango.size
    assert_equal 5, vendinha.flau_maca_verde.size
    assert_equal 7, vendinha.flau_nescau_com_nutella.size
    assert_equal 9, vendinha.flau_menta.size

    # Venda para Pedro
    vendinha.vender('menta')
    vendinha.vender('menta')
    vendinha.vender('maçã verde')
    vendinha.vender('maçã verde')

    assert_equal 12.25, vendinha.saldo
    assert_equal 33, vendinha.estoque.size
    assert_equal 8, vendinha.flau_goiaba.size
    assert_equal 8, vendinha.flau_morango.size
    assert_equal 3, vendinha.flau_maca_verde.size
    assert_equal 7, vendinha.flau_nescau_com_nutella.size
    assert_equal 7, vendinha.flau_menta.size
  end
end
