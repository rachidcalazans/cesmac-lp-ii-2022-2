require "minitest/autorun"
require './prova_02 copy/app/flau'
require './prova_02 copy/app/gerenciarFlau'


class TestFlau < Minitest::Test

    def test_sabor
        goiaba = Flau.new('Goiaba', 10)
        morango = Flau.new('Morango', 10)
        maca_verde = Flau.new('Maçã Verde', 10)
        nescau_com_nutella = Flau.new('Nescau com Nutella', 10)
        menta = Flau.new('Menta', 10)

        assert_equal 'Goiaba', goiaba.sabor()
        assert_equal 'Morango', morango.sabor()
        assert_equal 'Maçã Verde', maca_verde.sabor()
        assert_equal 'Nescau com Nutella', nescau_com_nutella.sabor()
        assert_equal 'Menta', menta.sabor()
    end

    def test_quantidade
        goiaba = Flau.new('Goiaba', 10)
        morango = Flau.new('Morango', 10)
        maca_verde = Flau.new('Maçã Verde', 10)
        nescau_com_nutella = Flau.new('Nescau com Nutella', 10)
        menta = Flau.new('Menta', 10)

        assert_equal 10, goiaba.quantidade()
        assert_equal 10, morango.quantidade()
        assert_equal 10, maca_verde.quantidade()
        assert_equal 10, nescau_com_nutella.quantidade()
        assert_equal 10, menta.quantidade()
    end
        
    def test_precoUnitario
        goiaba = Flau.new('Goiaba', 10)
        morango = Flau.new('Morango', 10)
        maca_verde = Flau.new('Maçã Verde', 10)
        nescau_com_nutella = Flau.new('Nescau com Nutella', 10)
        menta = Flau.new('Menta', 10)

        assert_equal 0.5, goiaba.precoUnitario(goiaba.sabor)
        assert_equal 0.75, morango.precoUnitario(morango.sabor)
        assert_equal 0.75, maca_verde.precoUnitario(maca_verde.sabor)
        assert_equal 1.0, nescau_com_nutella.precoUnitario(nescau_com_nutella.sabor)
        assert_equal 0.5, menta.precoUnitario(menta.sabor)
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

    def test_estoque
        goiaba = GerenciarFlau.new('Goiaba', 10)
        morango = GerenciarFlau.new('Morango', 10)
        maca_verde = GerenciarFlau.new('Maçã Verde', 10)
        nescau_com_nutella = GerenciarFlau.new('Nescau com Nutella', 10)
        menta = GerenciarFlau.new('Menta', 10)

        assert_equal 10, goiaba.estoque
        assert_equal 10, morango.estoque
        assert_equal 10, maca_verde.estoque
        assert_equal 10, nescau_com_nutella.estoque
        assert_equal 10, menta.estoque

    end

    def test_venda
        goiaba = GerenciarFlau.new('Goiaba', 10)
        morango = GerenciarFlau.new('Morango', 10)
        maca_verde = GerenciarFlau.new('Maçã Verde', 10)
        nescau_com_nutella = GerenciarFlau.new('Nescau com Nutella', 10)
        menta = GerenciarFlau.new('Menta', 10)

        #Pedido de Maria
        goiaba.venda(2)
        nescau_com_nutella.venda(3)
        menta.venda(1)

        #Pedido de João
        morango.venda(3)
        maca_verde.venda(5)

        #Pedido de Pedro
        menta.venda(2)
        maca_verde.venda(2)

        #Verificar o Estoque após as vendas
        
        assert_equal 3, menta.quantidadeVendida
        assert_equal 8, goiaba.estoque
        assert_equal 7, nescau_com_nutella.estoque
        assert_equal 7, menta.estoque
        assert_equal 7, morango.estoque
        assert_equal 3, maca_verde.estoque


    end
end
