require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_01
        nome = 'Savyo'
        assert_equal 'Savyo', nome
    end
end
