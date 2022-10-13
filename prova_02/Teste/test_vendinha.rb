require "minitest/autorun"
require './prova_02/prova/vendinha'
require './prova_02/prova/sabores'

class Testvendinha < Minitest::Test

  def loja()
    @goiaba = Sabores.new('goiaba', 10, 0.50)

    @morango = Sabores.new('morango', 10, 0.75)

    @maçaverde = Sabores.new('maça verde', 10, 0.75)

    @nescauCnutella = Sabores.new('nescau com nutella', 10, 1.0)

    @menta = Sabores.new('menta', 10, 0.50)


    @venda = vendinha.new

    @estoqueFruta = [@goiaba, @morango, @maçaverde, @nescauCnutella, @menta]

    @venda.adicionaEstoque(@estoqueFruta)
  end

  def test_valor_total
    assert_equal 0, @venda.valorTotal()
    for produto in 1..5 do 
      @venda.compra(@goiaba)
    end

    assert_equal 2.50, @venda.valorTotal()
  end

  def test_compra
    @venda.compra(@goiaba)
    assert_equal 0.50, @venda.valorTotal
    assert_equal 9, @goiaba.estoque
  end

  def test_venda_cliente

    for maçaverde in 1..7 do
      @venda.compra(@maçaverde)
    end

    for menta in 1..3 do
      @venda.compra(@menta)
    end

    for morango in 1..3 do
      @venda.compra(@morango)
    end
    
    for nescauCnutella in 1..3 do
      @venda.compra(@nescauCnutella)
    end

    for goiaba in 1..2 do
      @venda.compra(@goiaba)
    end

    assert_equal 3, @maçaverde.estoque
     assert_equal 7, @menta.estoque
     assert_equal 7, @morango.estoque
     assert_equal 7, @nescauCnutella.estoque
     assert_equal 8, @goiaba.stock

  assert_equal 13, @venda.valorTotal
end
end



