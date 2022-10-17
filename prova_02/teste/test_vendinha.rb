require "minitest/autorun"
require "./prova_02/app/vendinha.rb"

class TestVendinha < Minitest::Test
    def test_clientes
        venda = Venda.new
        #Maria
        .vender("Goiaba")
        .vender("Goiaba")
        .vender("Nescau com Nutela")
        .vender("Nescau com Nutela")
        .vender("Nescau com Nutela")
        .vender("Menta")
        #João
        .vender("Morango")
        .vender("Morango")
        .vender("Morango")
        .vender("Maçã Verde")
        .vender("Maçã Verde")
        .vender("Maçã Verde")
        .vender("Maçã Verde")
        .vender("Maçã Verde")
        #Pedro
        .vender("Menta")
        .vender("Menta")
        .vender("Maçã Verde")
        .vender("Maçã Verde")
    
    
        assert_equal 8, venda.obter_estoque("Goiaba")
        assert_equal 7, venda.obter_estoque("Morango")
        assert_equal 7, venda.obter_estoque("Nescau com Nutela")
        assert_equal 7, venda.obter_estoque("Menta")
        assert_equal 3, venda.obter_estoque("Maçã Verde")
        assert_equal 13, venda.caixa
    
      end
end