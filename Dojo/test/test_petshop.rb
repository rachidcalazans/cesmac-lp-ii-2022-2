require "minitest/autorun"

class TestPetshop < Minitest::Test
    def test_banho
        petshop = Petshop.new
        petshop.banho
        assert_equal 1, petshop.lista.size 
    end     
end  