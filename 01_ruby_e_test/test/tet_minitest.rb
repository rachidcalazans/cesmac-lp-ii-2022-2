require 'minitest/autorun'

class TestMinitest < Minitest::Test
    def test_sucesso
        nome = 'higor'
        assert_equal 'higor', nome
       
    end


    def test_skipped
        skip 
        nome = 'higor'
        assert_equal 'higor', nome
    end
end