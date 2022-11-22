require "minitest/autorun"

require "./Dojo/app1/petshop"

class TestPetshop < Minitest::Test
    def test_banho
        petshop = Petshop.new
        petshop.banho("frufru")
        assert_equal 1, petshop.lista.size
        assert_equal "frufru", petshop.lista[0]
    end

    def test_tosa
        petshop = Petshop.new
        petshop.tosa("belinha")
        assert_equal 1, petshop.lista.size
        assert_equal ["belinha"], petshop.lista
    end
end

