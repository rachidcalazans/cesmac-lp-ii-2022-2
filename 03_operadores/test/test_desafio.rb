require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculator
# Adicionar assert_equal para cada método de teste com seu respectivo operator

class TestDesafio < Minitest::Test

  def calculator(value_a, value_b, operator)
    case operator
    when :+
      return value_a + value_b
    when '-'
      return value_a - value_b
    when '*'
      return value_a * value_b
    when '**'
      return value_a ** value_b
    when '/'
      return value_a / value_b
    when '%'
      return value_a % value_b
    when '>'
      return value_a > value_b
    when '>='
      return value_a >= value_b
    when '<'
      return value_a < value_b
    when '<='
      return value_a <= value_b
    when '=='
      return value_a == value_b
    when '!='
      return value_a != value_b
    when '&&'
      return value_a && value_b
    when '||'
      return value_a || value_b
    end
    
    return nil
  end

  def test_sum
    assert_equal 2, calculator(1, 1, :+) # : Símbolo - estudar
    assert_equal 3, calculator(1, 2, :+)
    assert_equal 3, calculator(2, 1, :+)
    assert_equal 0, calculator(-1, 1, :+)
  end

  def test_subtracao
    assert_equal 1, calculator(2, 1, '-')
    assert_equal -1, calculator(1, 2, '-')
    assert_equal -2, calculator(-1, 1, '-')
    assert_equal 0, calculator(0, 0, '-')
  end

  def test_multiplicacao
    assert_equal 9, calculator(3, 3, '*')
    assert_equal 0, calculator(0, 3, '*')
    assert_equal 0, calculator(3, 0, '*')
    assert_equal 4.5, calculator(3, 1.5, '*')
  end

  def test_exponentiation
    assert_equal 16, calculator(4, 2, '**')
    assert_equal 9, calculator(3, 2, '**')
    assert_equal 1, calculator(4, 0, '**')
    assert_equal 4, calculator(4, 1, '**')
    assert_equal 4, calculator(-2, 2, '**')
  end

  def test_division
    assert_equal 8, calculator(16, 2, '/')
    assert_equal 16, calculator(16, 1, '/')
    assert_equal -8, calculator(16, -2, '/')
    assert_equal 8, calculator(-16, -2, '/')
    #assert_nil calculator(8, 0, '/')  estudar assert_nil
  end

  def test_modulo
    assert_equal 1, calculator(7, 2, '%')
    assert_equal 0, calculator(6, 2, '%')
    assert_equal -1, calculator(7, -2, '%')
    
  end

  def test_comparation
    assert_equal true, calculator(7, 7, '==')
    assert_equal true, calculator(7, 7, '<=')
    assert_equal false, calculator(7, 7, '>')
    assert_equal true, calculator(7, 9, '!=')
  end
  
  def test_boolean
    a, b = 2, 3
    assert_equal true, calculator((a == 2),(b == 3), '&&')
    assert_equal true, calculator((a >= 2),(b >= 3), '&&')
    assert_equal true, calculator((a <= 2),(b <= 3), '&&')
    assert_equal false, calculator((a > 2),(b > 3), '&&')
    assert_equal true, !calculator((a > 2),(b > 3), '&&')
    assert_equal true, calculator((a >= 2),(b > 3), '||')
    assert_equal true, calculator((a > 2),(b >= 3), '||')
  end
end
