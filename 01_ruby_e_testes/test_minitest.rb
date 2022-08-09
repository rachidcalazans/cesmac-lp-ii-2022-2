require 'minitest/autorun'

class TestMinitest < Minitest::Test
        def test_sucesso
            nome = 'Rachid'
            assert_equal 'Rachid' , nome
        end
end