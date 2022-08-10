require 'minitest/autorun'

class TestMinitest < Minitest::Test
        def test_sucesso
            nome = 'Lucas'
            assert_equal 'Lucas' , nome
        end
end