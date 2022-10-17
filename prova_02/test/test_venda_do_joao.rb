require "minitest/autorun"
require "./teste_01/test/prova_02"

class TestVendas < Minitest::Test
    def test_maria
        produto = Produtos.new
        produto.comprar_goiaba(2)
        produto.comprar_nescal_nutella(3)
        produto.comprar_menta(1)

        assert_equal 8, produto.goiaba
        assert_equal 10, produto.morango
        assert_equal 10, produto.maca_verde
        assert_equal 7, produto.nescal_nutella
        assert_equal 9, produto.menta

        assert_equal 4.5, produto.valor_total
    end

    def test_joao
        produto = Produtos.new
        produto.comprar_morango(3)
        produto.comprar_maca_verde(5)

        assert_equal 10, produto.goiaba
        assert_equal 7, produto.morango
        assert_equal 5, produto.maca_verde
        assert_equal 10, produto.nescal_nutella
        assert_equal 10, produto.menta

        assert_equal 6, produto.valor_total
    end

    def test_pedro
        produto = Produtos.new
        produto.comprar_maca_verde(2)
        produto.comprar_menta(2)

        assert_equal 10, produto.goiaba
        assert_equal 10, produto.morango
        assert_equal 8, produto.maca_verde
        assert_equal 10, produto.nescal_nutella
        assert_equal 8, produto.menta

        assert_equal 2.5, produto.valor_total
    end

end