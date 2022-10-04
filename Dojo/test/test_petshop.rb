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
        petshop.banho_tosa("luladrao")
        assert_equal 1, petshop.lista.size
    end     
end  