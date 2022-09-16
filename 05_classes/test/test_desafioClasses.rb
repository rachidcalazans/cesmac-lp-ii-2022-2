require "minitest/autorun"
# Importando a class Fogao que está nesse path
require './05_classes/app/desafioClasses'

class TestPessoa < Minitest::Test

  def test_pessoa
    pessoa = Pessoa.new('Rogerio', 'Oliveira', @nome_completo)

    assert_equal 'Rogerio', pessoa.nome()
    assert_equal 'Oliveira', pessoa.sobrenome()
    assert_equal 'Rogerio Oliveira', pessoa.nome_completo()
  end
end