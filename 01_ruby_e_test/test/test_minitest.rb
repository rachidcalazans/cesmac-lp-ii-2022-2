require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_sucesso
        nome = 'Aldo'
        assert_equal 'Aldo', nome
    end
    def test_skipped
        skip
        nome = 'Aldo'
        assert_equal 'Aldo', nome
    end
end
