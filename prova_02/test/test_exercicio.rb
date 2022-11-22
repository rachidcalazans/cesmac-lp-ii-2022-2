require "minitest/autorun"
require './prova_02/test/test_exercicio'
require './prova_02/app/sabores'

class TestLoja < Minitest::Test

  def itens()
  @goiaba = Sabores.new('goiaba', 10, 0.50)
  @morango = Sabores.new('morango', 10, 0.75)
  @macaVerde = Sabores.new('maca verde', 10, 0.75)
  @nescauComnutela = Sabores.new('nescau', 10, 1.0)
  @hortela = Sabores.new('hortela', 10, 0.50)

  @loja = Loja.new

  @itensEmestoque = [@goiaba, @morango, @macaVerde, @nescauComnutela, @hortela]
  @loja.addEstoque(@ItensEmestoque)
  end
   
   def test_valor_total

     def Total
        assert_equal 0, @loja.Total()
    
        for produto in 1..5 do
        @loja.compra(@goiaba)
        end
    
        assert_equal 2.50, @loja.Total()
     end
   end

   def test_compra

     def compra 
        @Loja.compra(@goiaba)
        assert_equal 0.50, @loja.Total
        assert_equal 8, @goiaba.estoque     
     end
   end
   


 def test_cliente_loja
    #Maria e joão
  def compra
    for macaVerde in 1..7 do
        @Loja.compra(@macaVerde)
    end

    
    for hortela in 1..3 do
        @loja.compra(@hortela)
    end

    for morango in 1..3 do
        @morango.compra(@morango)
    end

    for nescauComnutela in 1..3 do
        @loja.compra(@nescauComnutela)
    end

    for goiaba in 1..2 do
        @loja.compra(@goiaba)
    end
    
    assert_equal 3, @macaVerde.estoque
    assert_equal 7, @hortela.estoque
    assert_equal 7, @morango.estoque
    assert_equal 7, @nescauComnutella.estoque
    assert_equal 8, @goiaba.estoque
  end

   end

  def test_sem_estoque

    def estoque
        @goiaba.estoque = 0
        assert_equal 'Em falta', @loja.compra(@goiaba)
    end
  end

end