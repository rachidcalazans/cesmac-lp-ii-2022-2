require 'minitest/autorun' #Require serve para chaamr uma biblioteca para o arquivo

class TestMinitest < Minitest::Test
    def test_compara #def = definição, função
        nome = 'Kleber'
        assert_equal 'kleber', nome
    end
end