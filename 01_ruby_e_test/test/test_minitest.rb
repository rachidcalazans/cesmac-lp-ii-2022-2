require 'minitest/autorun'

class TestMinitest < Minitest::Test
        def test_sucesso
        nome = 'Roger'
        assert_equal 'Roger', nome
    end
    def test_skipped
        skip
        nome = 'Roger'
        assert_equal 'Roger', nome
    end
end
