require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculator
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestChallenge < Minitest::Test

  def calculator(value_a, value_b, operator)
    if value_a.kind_of?(Numeric) && value_b.kind_of?(Numeric)
      if operator == "+"
        return value_a + value_b
      elsif operator == "-"
        return value_a - value_b
      elsif operator == "*"
        return value_a * value_b
      elsif operator == "**"
        return value_a ** value_b
      elsif operator == "/"
        return value_a / value_b.to_f
      elsif operator == "%"
        return value_a % value_b
      elsif operator == "="
        return value_a == value_b
      end
    end

    "Invalid Operation"
  end

  def test_sum
    assert_equal 2, calculator(1, 1, '+')
  end

  def test_subtraction
    assert_equal 5, calculator(8, 3, '-')
  end

  def test_multiplication
    assert_equal 12, calculator(6, 2, '*')
  end

  def test_power
    assert_equal 8, calculator(2, 3, '**')
  end

  def test_division
    assert_equal 2.5, calculator(5, 2, '/')
  end

  def test_modulo
    assert_equal 1, calculator(9, 2, '%')
  end

  def test_comparison
    assert_equal true, calculator(1, 1, '=')
  end
end
