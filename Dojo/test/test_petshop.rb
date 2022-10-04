require "minitest/autorun"

class TestPetshop < Minitest::Test
    def test_banho
        assert_equal 1, petshop.banho 
    end     
end  