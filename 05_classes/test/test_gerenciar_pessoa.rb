require "minitest/autorun"
require "./05_classes/app/gerenciar_pessoa"
require "./05_classes/app/pessoa"

class TestGerenciarPessoa < Minitest::Test
    def test_pessoas
        lista = []
        gerenciar_pessoa = GerenciarPessoa.new(lista)

        assert_equal [], gerenciar_pessoa.pessoas

        p1 = Pessoa.new('Abraao', 'Inexistente')
        gerenciar_pessoa = GerenciarPessoa.new([p1])
        assert_equal [p1], gerenciar_pessoa.pessoas
    end

    def test_add_pessoa
        p1 = Pessoa.new('Afranio', 'Collor')
        gerenciar_pessoa = GerenciarPessoa.new([])
        gerenciar_pessoa.add_pessoa(p1)
        assert_equal [p1], gerenciar_pessoa.pessoas
    end

    def test_get_pessoa_pelo_nome_completo
        p1 = Pessoa.new("Silvio", "Romero")
        p2 = Pessoa.new("Mefius", "Pacifico")
        gerenciar_pessoa = GerenciarPessoa.new([p1, p2])
        assert_equal p2, gerenciar_pessoa.get_pessoa_pelo_nome_completo("Mefius Pacifico")
    end

end