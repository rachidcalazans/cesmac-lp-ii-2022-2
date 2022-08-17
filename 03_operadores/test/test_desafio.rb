require "minitest/autorun"
require "app/calculator"

# Challenge
# It's worth 1.5 points if the PR is created until 17/08/2022 23:59:59
#
# Implement the method #calculator
# Add an assert_equal to each test method with his respective operator

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    return nil
  end

  def test_sum
    assert_equal 2, calculadora(1, 1, :+)
  end

  def test_subtraction
  end

  def test_multiplication
  end

  def test_power
  end

  def test_division
  end

  def test_remainder
  end

  def test_comparsion
  end
end
