require "minitest/autorun"
require "./Dojo/concessionaria/concessionaria"

class TestConcessionaria < Minitest::Test

    def test_yaris
        concessionaria = Concessionaria.new
        concessionaria.yaris
        assert_equal 3, concessionaria.yaris 
    end
    def test_corolla
        concessionaria = Concessionaria.new
        concessionaria.corolla
        assert_equal 2, concessionaria.corolla
    end
    def test_saldo_inicial
        concessionaria = Concessionaria.new
        concessionaria.yaris
        concessionaria.corolla
        assert_equal 00,00, concessionaria.saldo_inicial
    end
    def test_vendas
        concessionaria = Concessionaria.new
        concessionaria.yaris
        concessionaria.corolla
        assert_equal 420.000,00, concessionaria.vendas
    end
    def test_estoque_yaris
        concessionaria = Concessionaria.new
        concessionaria.yaris
        assert_equal 2, concessionaria.yaris
    end
    def test_estoque_corolla
        concessionaria = Concessionaria.new
        concessionaria.corolla
        assert_equal 0, concessionaria.corolla
    end
    end