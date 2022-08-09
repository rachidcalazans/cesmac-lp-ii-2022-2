require 'minitest/autorun'

class Test < Minitest::Test
    def test_sucesso
        nome = 'Neto'
        assert_equal 'Neto', nome
        assert_equal 'Neto 2', nome
    end
    def test_skipped
        skip 

        nome = 'Neto'
        assert_equal 'Neto', nome
    end 
end
        