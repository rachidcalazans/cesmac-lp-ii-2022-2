require "minitest/autorun"
require './prova_02/app/venda'


class TestVenda < Minitest::Test

    def test_venda
        venda = Venda.new

        # Maria
        venda.saida('Goiaba', 2)
        venda.saida('Nescau com Nutella', 3)
        venda.saida('Menta', 1)

        #João
        venda.saida('Morango', 3)
        venda.saida('Maça verde', 5)

        #Pedro
        venda.saida('Menta', 2)
        venda.saida('Maça verde', 2)

        assert_equal 8, venda.estoque('Goiaba')
        assert_equal 7, venda.estoque('Menta')
        assert_equal 7, venda.estoque('Morango')
        assert_equal 3, venda.estoque('Maça verde')
        assert_equal 7, venda.estoque('Nescau com Nutella')

        assert_equal 13, venda.calculateTotalAmount
    end
end