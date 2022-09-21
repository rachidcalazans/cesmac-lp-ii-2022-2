require "minitest/autorun"

class TestPessoa < Minitest::Test
    def test_nome_completo
        pessoa = Pessoa.new() 

        assert_equal('Alan Goto', pessoa.nome_completo)
    end
end
