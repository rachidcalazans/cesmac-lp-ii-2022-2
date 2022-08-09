require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_sucess
        nome = "Daniel"
        assert_equal "Daniel2", nome
    end

    def test_skip
        nome = "Daniels"
        assert_equal "Daniel", nome
    end
end
