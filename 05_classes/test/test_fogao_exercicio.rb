require "minitest/autorun"
# Importando a class Fogao que está nesse path
require './05_classes/app/fogao'

# Exercício:
# - Fazer todos os testes passarem. Não é para alterar nada nesse arquivo de teste.
# - Criar todos os métodos necessários
class TestFogao < Minitest::Test

  def test_stove_lg
    stove = Stove.new('LG', 6)

    assert_equal 'LG', stove.brand()
    assert_equal 6, stove.qtd_burners()
  end

  def test_stove_brastemp
    stove = Stove.new('Brastemp', 4)

    assert_equal 'Brastemp', stove.brand()
     assert_equal 4, stove.qtd_burners()
  end

   def test_on
     stove = Stove.new('Brastemp', 4)

     stove.on()

     assert_equal true, stove.on?()
   end

   def test_off
     stove = Stove.new('Brastemp', 4)

     stove.off()

     assert_equal false, stove.on?()
   end
 end
