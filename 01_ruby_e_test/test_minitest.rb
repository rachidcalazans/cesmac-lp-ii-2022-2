require 'minitest/autorun' #Require serve para chaamr uma biblioteca para o arquivo

class TestMinitest < Minitest::Test
    def test_compara #def = definição, função
        nome = 'Kleber e Felipe'
        assert_equal 'Kleber e Felipe', nome
    
    end
end