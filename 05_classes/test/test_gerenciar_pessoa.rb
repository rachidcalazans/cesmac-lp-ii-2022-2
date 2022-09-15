require "minitest/autorun"

require './05_classes/app/pessoa'
require './05_classes/app/gerenciar_pessoa'

class TestGerenciarPessoa <Minitest::Test
    
    def test_gerenciar_pessoa
        pessoa = Pessoa.new('savyo', 'almeida')
        
        assert_equal 'savyo', pessoa.nome()
        assert_equal 'almeida', pessoa.sobrenome()
        assert_equal "savyo almeida", pessoa.nome_completo()
    end

    def test_gerenciar_add_pessoa
        gp = GerenciarPessoa.new('cristiano ronaldo')
                
        pessoa = Pessoa.new('cristiano', 'ronaldo') 
        gp.add_pessoa(pessoa)
        
        assert_equal "cristiano", gp.nova_pessoa()
        assert_equal 'cristiano', pessoa.nome()
        assert_equal 'ronaldo', pessoa.sobrenome()
        assert_equal "cristiano ronaldo", pessoa.nome_completo()

    end

end