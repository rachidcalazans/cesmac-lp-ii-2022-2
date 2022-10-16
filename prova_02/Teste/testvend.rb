require "minitest/autorun"
require './prova_02/prova/vend'
require './prova_02/prova/sabor'

class Testvend < Minitest::Test

  def loja()
    @goiaba = Sabores.new('goiaba', 10, 0.50)

    @morango = Sabores.new('morango', 10, 0.75)

    @maçaverde = Sabores.new('maça verde', 10, 0.75)

    @nescauComnutella = Sabores.new('nescau com nutella', 10, 1.0)

    @menta = Sabores.new('menta', 10, 0.50)


    @vendas = vendinhas.new

    @estoquef = [@goiaba, @morango, @maçaverde, @nescauComnutella, @menta]

    @vendas.adicionaEstoque(@estoquef)
  end

  def test_valor_total
    assert_equal 0, @vendas.valorTotal()
    for produto in 1..5 do 
      @vendas.compra(@goiaba)
    end

    assert_equal 2.50, @vendas.valorTotal()
  end

  def test_compra
    @vendas.compra(@goiaba)
    assert_equal 0.50, @vendas.valorTotal
    assert_equal 9, @goiaba.estoque
  end

  def test_venda_cliente

    for maçaverde in 1..7 do
      @vendas.compra(@maçaverde)
    end

    for menta in 1..3 do
      @vendas.compra(@menta)
    end

    for morango in 1..3 do
      @vendas.compra(@morango)
    end

    for nescauCnutella in 1..3 do
      @vendas.compra(@nescauComnutella)
    end

    for goiaba in 1..2 do
      @vendas.compra(@goiaba)
    end

    assert_equal 3, @maçaverde.estoque
     assert_equal 7, @menta.estoque
     assert_equal 7, @morango.estoque
     assert_equal 7, @nescauComnutella.estoque
     assert_equal 8, @goiaba.stock

  assert_equal 13, @vendas.valorTotal
end
end
