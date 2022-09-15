require "minitest/autorun"
# Importando a class Fogao que está nesse path
require './05_classes/app/pessoa'
class TestPessoa < Minitest::Test

    def test_pessoa

        pessoa = Pessoa.new('Junior', 'Silva', @nome_completo)
        assert_equal 'Junior',pessoa.nome()
        assert_equal 'Silva', pessoa.sobrenome()
        assert_equal'Junior Silva', pessoa.nome_completo()

     end
   end
  