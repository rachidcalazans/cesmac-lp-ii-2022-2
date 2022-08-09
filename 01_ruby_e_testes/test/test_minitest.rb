require 'minitest/autorun'

class TestMiniTest < Minitest::Test
    def test_name_compare
        nome = 'Gustavo'
        assert_equal 'Gustavo', nome
        assert_equal 'Gustavo 2', nome
    end

    def test_skipped
        skip
        
        nome = 'Gustavo'
        assert_equal 'Gustavo', nome
    end
end