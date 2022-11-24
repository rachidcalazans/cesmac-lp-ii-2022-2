require 'minitest/autorun'
require './conferencia'


class Test_conferencias < Minitest::Test

    def test_horario
        conferencia = Conferencia.new('../proposals.txt')
        expected_hora = Time.new(2022,11,23,9)

        assert_equal expected_hora, conferencia.palestras[0].horario
    end

    def test_nome
        conferencia = Conferencia.new('../proposals.txt')
        expected_name = "Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min"

        assert_equal expected_name, conferencia.palestras[0].nome
    end

    def test_duracao
        conferencia = Conferencia.new('../proposals.txt')
        expected_duration = 60

        assert_equal expected_duration, conferencia.palestras[0].duracao
    end
end