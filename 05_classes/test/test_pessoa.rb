require "minitest/autorun"
require './05_classes/app/pessoa'

class TestPessoa < Minitest::Test
    def test_nome_completo
        pessoa = Pessoa.new("Alan", "Goto") 

        assert_equal('Alan Goto', pessoa.nome_completo)
    end
end
