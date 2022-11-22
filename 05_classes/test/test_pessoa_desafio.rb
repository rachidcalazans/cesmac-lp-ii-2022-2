require "minitest/autorun"

require './05_classes/app/pessoa'

class TestPessoa < Minitest::Test

    def test_pessoa

        pessoa = Pessoa.new('Thiago', 'Matheus', @nome_completo)
        assert_equal 'Thiago',pessoa.nome()
        assert_equal 'Matheus', pessoa.sobrenome()
        assert_equal'Thiago Matheus', pessoa.nome_completo()

     end
   end
