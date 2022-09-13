require "minitest/autorun"
# Importando a class Fogao que está nesse path
require './05_classes/app/stove'

# Exercício:
# - Fazer todos os testes passarem. Não é para alterar nada nesse arquivo de teste.
# - Criar todos os métodos necessários
class TestStove < Minitest::Test

  def test_stove_lg
    stove = Stove.new('LG', 6)

    assert_equal 'LG', stove.brand()
    assert_equal 6, stove.number_of_burners()
  end

  def test_stove_brastemp
    stove = Stove.new('Brastemp', 4)

    assert_equal 'Brastemp', stove.brand()
    assert_equal 4, stove.number_of_burners()
  end

   def test_turn_on
     stove = Stove.new('Brastemp', 4)

     stove.turn_on()

     assert_equal true, stove.switched_on?()
   end

   def test_turn_off
     stove = Stove.new('Brastemp', 4)

     stove.turn_off()

     assert_equal false, stove.switched_on?()
   end
 end
