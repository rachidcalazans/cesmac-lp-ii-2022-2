require "minitest/autorun"
require "./05_classes/app/gerenciar_pessoa"

class TestGerenciarPessoa < Minitest::Test
    def test_pessoas
        gerenciar_pessoa = GerenciarPessoa.new
        assert_equal [], gerenciar_pessoa.pessoas
    end
end