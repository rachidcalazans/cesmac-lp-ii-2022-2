require "minitest/autorun"

require './prova_03/app/conferencia'


class TestConferencia < Minitest::Test

    def test_conferencia
        arq = File.readlines("./prova_03/proposals.txt", chomp: true)
        conferencia = Conferencia.new('A', '14:00', arq[0])
    
        assert_equal 'Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min', conferencia.get_palestra()
    end
end