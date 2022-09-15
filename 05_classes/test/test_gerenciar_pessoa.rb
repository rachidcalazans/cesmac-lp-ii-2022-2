require "minitest/autorun"

require './05_classes/app/pessoa'
require './05_classes/app/gerenciar_pessoa'

class TestGerenciarPessoa <Minitest::Test

    def test_gerenciar_pessoa_savyo_almeida
        pessoa = Pessoa.new('savyo', 'almeida')

        assert_equal 'savyo', pessoa.nome()
        assert_equal 'almeida', pessoa.sobrenome()
        assert_equal "savyo almeida", pessoa.nome_completo()
    end
    
    def test_gerenciar_pessoa_cristiano_ronaldo
        pessoa = Pessoa.new('cristiano', 'ronaldo')

        assert_equal 'cristiano', pessoa.nome()
        assert_equal 'ronaldo', pessoa.sobrenome()
        assert_equal "cristiano ronaldo", pessoa.nome_completo()
    end

    def test_gerenciar_add_pessoa
        nova_pessoa = Pessoa.new('neymar', 'junior')
        p1 = Pessoa.new('savyo', 'almeida')
        p2 = Pessoa.new('cristiano', 'ronaldo')

        pessoa = [p1, p2]

        gerenciar_pessoa = GerenciarPessoa.new(pessoa)
        gerenciar_pessoa.add_pessoa(nova_pessoa)

        assert_equal [p1, p2, nova_pessoa], gerenciar_pessoa.pessoa()

    end

    def test_listar_pessoas
        p1 = Pessoa.new('savyo', 'almeida')
        p2 = Pessoa.new('cristiano', 'ronaldo')
        p3 = Pessoa.new('neymar', 'junior')
        pessoa = [p1, p2, p3]
        gerenciar_pessoa = GerenciarPessoa.new(pessoa)
        assert_equal [p1, p2, p3], gerenciar_pessoa.pessoa()
      end

      #não sei como fazer parte 3 do desafio "get_pessoa_pelo_nome_ompleto(nome_completo) 
      #-> Retorna uma pessoa filtrada pelo nome completo" :c
end