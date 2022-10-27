require "minitest/autorun"
require "./prova_02/app/vendinha.rb"
class TestVendinha < Minitest::Test
    def placeholder()
        @maçaVerde = Sabores.new('maça verde', 10, 0.75)
        @goiaba = Sabores.new('goiaba', 10, 0.50)
        @menta = Sabores.new('menta', 10, 0.50)
        @morango = Sabores.new('morango', 10, 0.75)  
        @nescauComNutella = Sabores.new('nescau com nutella', 10, 1.0)
        @vendinha = Vendinha.new
        @estoques = [@goiaba, @morango, @maçaVerde, @nescauComNutella, @menta]
        @vendinha.add(@estoques)
      end
      def test_total
        assert_equal 0, @vendinha.total()
        for sabor in 1..5 do
          @vendinha.compra(@goiaba)
        end
        assert_equal 2.50, @vendinha.total()
      end
      def test_compra
        @vendinha.compra(@goiaba)
        assert_equal 0.50, @vendinha.total
        assert_equal 9, @goiaba.estoque
      end
      def test_vendas
         
         for menta in 1..3 do
          @vendinha.compra(@menta)
         end
         for maçaVerde in 1..7 do
          @vendinha.compra(@maçaVerde)
         end
         for morango in 1..3 do
          @vendinha.compra(@morango)
         end
         for nescauComNutella in 1..3 do
          @vendinha.compra(@nescauComNutella)
         end
         for goiaba in 1..2 do
          @vendinha.compra(@goiaba)
         end
         assert_equal 3, @maçaVerde.estoque
         assert_equal 7, @menta.estoque
         assert_equal 7, @morango.estoque
         assert_equal 7, @nescauComNutella.estoque
         assert_equal 8, @goiaba.estoque 
         assert_equal 13, @vendinha.total
      end
    end

