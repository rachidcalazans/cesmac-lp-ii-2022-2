require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_sucesso
        nome = 'Jardiel'
        assert_equal 'Jardiel', nome
    end
end