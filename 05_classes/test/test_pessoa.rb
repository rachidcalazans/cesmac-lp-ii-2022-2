require "minitest/autorun"
require './05_classes/app/pessoa'
require './05_classes/app/GerenciarPessoa'

class TestPessoa < Minitest::Test

  def test_nome_completo
    p1 = Pessoa.new('Joao', 'Gomes')
    assert_equal 'Joao Gomes', p1.nome_completo()
  end

  def test_pessoas
    p1 = Pessoa.new('Joao', 'Gomes')  
    p1 = GerenciarPessoa.add_pessoa('Joao', 'Gomes')
    assert_equal 'Joao Gomes', pessoas()
  end

  def test_add_pessoa
  #skip 
  end

  def test_get_pessoa_pelo_nome_completo
  #skip
  end
end