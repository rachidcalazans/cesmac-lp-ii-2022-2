require "minitest/autorun"

class TestPalestra < Minitest::test
    
    def test_palestra
        palestra = Palestra.new('Diminuindo tempo de execução de testes em aplicações Rails enterprise', 60)

        assert_equal 'Diminuindo tempo de execução de testes em aplicações Rails enterprise', palestra.tema()
        assert_equal 60, palestra.tempo()
    end


end