require 'minitest/autorun'

class TestMinitest < Minitest::Test
        def test_sucesso
            nome = 'Bruno'
            assert_equal 'Bruno',nome
        end
        def test_skipped
            skip 
            nome = 'Bruno'
            assert_equal 'Bruno',nome
        end
end
        