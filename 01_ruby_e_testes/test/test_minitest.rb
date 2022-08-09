require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_nome_sucesso
        nome = 'Silvio'
        assert_equal 'Silvio', nome
        assert_equal 'abcd', nome
    end

    def test_skkiped
        skip
        nome = 'Silvio'
        assert_equal 'Silvio', nome
    end
end