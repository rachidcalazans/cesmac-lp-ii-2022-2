require "minitest/autorun"
require "./Dojo/app/petshop"
class TestPetshop < Minitest::Test
    def test_banho
        petshop = Petshop.new
        petshop.banho("zeus")
        assert_equal 1, petshop.lista.size 
        assert_equal "zeus", petshop.lista[0]
    end
    def test_tosa
        petshop = Petshop.new
        petshop.tosa("bolsonaro")
        assert_equal 1, petshop.lista.size
        assert_equal ["bolsonaro"], petshop.lista
    end     
    def test_banho_tosa
        petshop = Petshop.new
        petshop.banho_tosa("lula")
        assert_equal 1, petshop.lista.size
        assert_equal ["lula"], petshop.lista
    end   
    def test_valor_total
        petshop = Petshop.new
        petshop.banho("zeus")
        petshop.tosa("simba")
        petshop.banho_tosa("dom")
        assert_equal 83.25, petshop.valor_total
    end
end  