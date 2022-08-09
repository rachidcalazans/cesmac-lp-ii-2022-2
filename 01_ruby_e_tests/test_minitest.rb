require 'minitest/autorun'

class TestMinitest < MiniTest::Test
    def test_thiago
        nome = 'Thiago'
        assert_equal 'Thiago', nome
    end

    def test_caio
        nome = 'Caio'
        assert_equal 'Caio', nome
    end
end