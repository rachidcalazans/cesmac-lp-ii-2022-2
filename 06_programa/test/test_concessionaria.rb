require "minitest/autorun"
require "./06_programa/app/concessionaria"

 class TestConcessionaria  < Minitest::Test
 
    def test_realizar_venda
        @concessionaria = Concessionaria.new
        assert_equal 5, @concessionaria.carros.count
        assert_equal 0, @concessionaria.total
    end 

    def test_vendido
        @concessionaria = Concessionaria.new
        @concessionaria.realizar_venda "Corolla"
        @concessionaria.realizar_venda "Corolla"
        @concessionaria.realizar_venda "Yaris"

        assert_equal 2, @concessionaria.carros.count
        assert_equal 420000, @concessionaria.total
    end 
 end

    