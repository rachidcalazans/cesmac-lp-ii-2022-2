require "minitest/autorun"

require './05_classes/app/gerenciar_pessoa'
class TestGerenciar_Pessoa < Minitest::Test

    def test_pessoa

        gerenciar_pessoa = Gerenciar_Pessoa.new(@nome_completo, @lista, @add_pessoa, @get_pessoa_pelo_nome_completo)
        assert_equal "Thiago Matheus", gerenciar_pessoa.nome_completo()
        assert_equal "Thiago", gerenciar_pessoa.lista()
        assert_equal "Thiago Matheus", gerenciar_pessoa.add_pessoa()
        assert_equal "Thiago Matheus", gerenciar_pessoa.get_pessoa_pelo_nome_completo()


    end



end
