require "minitest/autorun"
# Importando a class Fogao que está nesse path
require './05_classes/app/fogao'

# Exercício:
# - Fazer todos os testes passarem. Não é para alterar nada nesse arquivo de teste.
# - Criar todos os métodos necessários
class TestFogao < Minitest::Test

  def test_fogao_lg
    fogao = Fogao.new('LG', 6)

    assert_equal 'LG', fogao.marca()
    assert_equal 6, fogao.qtd_bocas()
  end

  def test_fogao_brastemp
    fogao = Fogao.new('Brastemp', 4)

    assert_equal 'Brastemp', fogao.marca()
     assert_equal 4, fogao.qtd_bocas()
  end

   def test_ligar
     fogao = Fogao.new('Brastemp', 4)

     fogao.ligar()

     assert_equal true, fogao.ligado?()
   end

   def test_desligar
     fogao = Fogao.new('Brastemp', 4)

     fogao.desligar()

     assert_equal false, fogao.ligado?()
   end
 end