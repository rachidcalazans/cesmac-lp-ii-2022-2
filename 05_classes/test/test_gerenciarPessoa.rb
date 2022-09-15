require "minitest/autorun"
# Importando a class Fogao que está nesse path
require './05_classes/app/gerenciarPessoa'

class TestgerenciarPessoa < Minitest::Test

  def test_pessoas
    pessoas = Pessoas.new('Marcio Maia', 32)
    pessoas2 = Pessoas.new('Renato Lopes', 38)

    assert_equal 'Marcio Maia',pessoas.nome_completo()
    assert_equal 32, pessoas.idade()

    assert_equal 'Renato Lopes', pessoas2.nome_completo()
    assert_equal 38, pessoas2.idade()
  end

  def test_lista
    grupo_pessoas = ['Marcio Maia', 'Renato Lopes']   
    assert_equal grupo_pessoas = ['Marcio Maia', 'Renato Lopes'], grupo_pessoas
  end


end

