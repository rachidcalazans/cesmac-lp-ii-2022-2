require 'minitest/autorun'

class Testminitest < Minitest::Test
    def test_sucesso
    nome = 'Harrison'
    assert_equal 'Harrison', nome
    end 

end

