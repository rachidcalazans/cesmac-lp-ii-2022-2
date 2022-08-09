require 'minitest/autorun'

class TestMinitest < minitest::Test
    def test_sucesso
        nome = 'Aldo'
        assert_equal 'Aldo', nome
        assert_equal 'Aldo 2', nome
    end
    def test_skipped
        skip
        nome = 'Aldo'
        assert_equal 'Aldo', nome
    end
end