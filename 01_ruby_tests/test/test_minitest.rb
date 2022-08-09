require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_nome_sucesso
        name = 'Mateus'
        assert_equal 'Mateus', name
        assert_equal 'Mateus 2', name
    end

    def test_skipped
        skip
        name = 'Mateus'
        assert_equal 'Mateus', name
    end
end
