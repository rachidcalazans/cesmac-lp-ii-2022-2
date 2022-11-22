require "minitest/autorun"
require './prova_02/app/flau'
require './prova_02/app/gerenciarFlau'


class TestFlau < Minitest::Test

    def test_sabor
        flau = Flau.new('Goiaba', 2)

        assert_equal 'Goiaba', flau.sabor()
    end

    def test_quantidade
        flau = Flau.new('Goiaba', 2)

        assert_equal 2, flau.quantidade()
    end
        
    def test_precoUnitario
        goiaba = Flau.new('Goiaba', 2)
        morango = Flau.new('Morango', 5)
        assert_equal 0.5, goiaba.precoUnitario()
        assert_equal 0.75, morango.precoUnitario()
    end

    def test_valorVenda
        goiaba = GerenciarFlau.new('Goiaba', 2)
        morango = GerenciarFlau.new('Morango', 2)
        maca_verde = GerenciarFlau.new('Maçã Verde', 2)
        nescau_com_nutella = GerenciarFlau.new('Nescau com Nutella', 2)
        menta = GerenciarFlau.new('Menta', 2)

        assert_equal 1, goiaba.valorVenda(2)
        assert_equal 1.5, morango.valorVenda(2)
        assert_equal 1.5, maca_verde.valorVenda(2)
        assert_equal 5, nescau_com_nutella.valorVenda(5)
        assert_equal 3.5, menta.valorVenda(7)


    end
end