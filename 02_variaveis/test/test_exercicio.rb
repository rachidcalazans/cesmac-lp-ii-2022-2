require "minitest/autorun"

class TestExercicio < Minitest::Test

  def test_booleanos
    boolean1 = false
    boolean2 = true

    assert_equal false, boolean1
    assert_equal true, boolean2

    assert boolean1 != boolean2
  end

  def test_inteiros

    inteiro = 2
    inteiro2 = 3

    assert_equal 1, inteiro2 - inteiro
    assert_equal 2, inteiro
    assert inteiro != inteiro2
    assert  inteiro.to_s, "#{inteiro2}"
  end

  def test_flutuantes

    flutuante = 105
    flutuante2 = 1.05

    assert_equal 1.05, flutuante2
    assert_equal 1.05, flutuante2
    assert_equal flutuante2, flutuante2
  end

  def test_strings

    string1 = 'Uma nova string'
    string2 = 'Uma outra string' + ' com' + ' oncatenação'
    string3 = ''
    string3 << 'Outra '
    string3 << 'nova '
    string3 << 'string'

    assert_equal 'Uma nova string', string1
    assert_equal 'Uma outra string com oncatenação', string2
    assert_equal 'Outra nova string', string3
  end

  def test_inicializar_array
    

    array = [1, 2, 3, 4]

    assert_equal [1, 2, 3, 4], array
    assert_equal 3, array[2]

    string_array = ['a', 'b', 'c']

    assert_equal ['a', 'b', 'c', 'D'], string_array << 'D'
    assert_equal 4, string_array.size
  end

  def test_pegar_primeiro_elemento_array
   

    string_array = ['a', 'b', 'c']

    assert_equal 'c', string_array[2]
    assert_equal 'a', string_array.first
  end

  def test_pegar_ultimo_elemento_array
 

    string_array = ['a', 'b', 'c']

    assert_equal 'c', string_array[2]
    assert_equal ['a', 'b', 'c'], string_array
    assert_equal 'b', string_array[-2]
  end

  def test_passar_index_que_nao_existe_array

    string_array = ['a', 'b', 'c']

    assert_nil string_array[3]
  end

  def test_adicionar_elemento_no_array
  

    string_array = ['a', 'b']
    assert_equal ['a', 'b'], string_array

    string_array = 'b'
    assert_equal 'b', string_array

    string_array << 'C' 
    assert_equal 'bC', string_array 
  end

  def test_se_element_existe_no_array

    string_array = ['a', 'b', 'c']

    assert_equal false, string_array.include?('d')
    assert_equal true, !string_array.include?('z')
    assert_equal true, !string_array.include?('A')
  end
end
