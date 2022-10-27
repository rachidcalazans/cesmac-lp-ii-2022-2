require "minitest/autorun"
require './prova_02/app/venda'


class TestVenda < Minitest::Test

    def test_venda
        venda = Venda.new

        # Maria- compras
        venda.saida('Goiaba', 2)
        venda.saida('Nescau com Nutella', 3)
        venda.saida('Menta', 1)

        #Pedro- compras
        venda.saida('Menta', 2)
        venda.saida('Maça verde', 2)
       

        #João- comrpas
        venda.saida('Morango', 3)
        venda.saida('Maça verde', 5)

        assert_equal 3, venda.estoque('Maça verde')
        assert_equal 8, venda.estoque('Goiaba')
        assert_equal 7, venda.estoque('Morango')
        assert_equal 7, venda.estoque('Menta')
        assert_equal 7, venda.estoque('Nescau com Nutella')

        assert_equal 13, venda.total
    end
end







