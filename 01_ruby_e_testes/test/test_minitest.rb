require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_name_compare
        nome = 'valter'
        assert_equal 'valter', nome
    end
    
    def test_skipped
        skip

        nome = 'Valter'
        assert_equal 'Valter', nome
    end
end