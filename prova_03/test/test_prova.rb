require 'minitest/autorun'

class TestProva < Minitest::Test
    def test_leitura
        arq = File.new("./prova_03/proposals.txt", "r")
        assert_equal true, File.exist?("./prova_03/proposals.txt")

        lista = File.readlines("./prova_03/proposals.txt")
        assert_equal "Apresentando Lua para as massas 30min\n", lista[2]

        puts lista
    end
end

