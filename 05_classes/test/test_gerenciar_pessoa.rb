require "minitest/autorun"

require './05_classes/app/pessoa'
require './05_classes/app/gerenciar_pessoa'

class TestGerenciarPessoa <Minitest::Test

    def test_gerenciar_pessoa_robert_fragoso
        pessoa = Pessoa.new('Robert', 'Fragoso')

        assert_equal 'Robert', pessoa.nome()
        assert_equal 'Fragoso', pessoa.sobrenome()
        assert_equal "Robert Fragoso", pessoa.nome_completo()
    end

    def test_gerenciar_pessoa_eddie_munson
        pessoa = Pessoa.new('Eddie', 'Munson')

        assert_equal 'Eddie', pessoa.nome()
        assert_equal 'Munson', pessoa.sobrenome()
        assert_equal "Eddie Munson", pessoa.nome_completo()
    end

    def test_gerenciar_add_pessoa
        nova_pessoa = Pessoa.new('Dustin Henderson', 'Max Mayfield')
        p1 = Pessoa.new('Robert', 'Fragoso')
        p2 = Pessoa.new('Eddie', 'Munson')

        pessoa = [p1, p2]

        gerenciar_pessoa = GerenciarPessoa.new(pessoa)
        gerenciar_pessoa.add_pessoa(nova_pessoa)

        assert_equal [p1, p2, nova_pessoa], gerenciar_pessoa.pessoa()

    end

    def test_listar_pessoas
        p1 = Pessoa.new('Robert', 'Fragoso')
        p2 = Pessoa.new('Eddie', 'Munson')
        p3 = Pessoa.new('Dustin Henderson', 'Max Mayfield')
        pessoa = [p1, p2, p3]
        gerenciar_pessoa = GerenciarPessoa.new(pessoa)
        assert_equal [p1, p2, p3], gerenciar_pessoa.pessoa()

        assert_equal [p1], gerenciar_pessoa.filtrar_pessoa('Robert Fragoso')
    end

    def test_filtrar_pessoas
        p1 = Pessoa.new('Robert', 'Fragoso')
        p2 = Pessoa.new('Eddie', 'Munson')
        p3 = Pessoa.new('Dustin Henderson', 'Max Mayfield')
        pessoa = [p1, p2, p3]

        gerenciar_pessoa = GerenciarPessoa.new(pessoa)

        assert_equal [p1], gerenciar_pessoa.filtrar_pessoa('Robert Fragoso')
        assert_equal [p2], gerenciar_pessoa.filtrar_pessoa('Eddie Munson')
        assert_equal [], gerenciar_pessoa.filtrar_pessoa('Nancy Wheeler')
    end

end