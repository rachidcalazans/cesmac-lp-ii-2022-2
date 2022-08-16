require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    if (operador == '+')
      return valor_a + valor_b
    elsif(operador == '-')
      return valor_a - valor_b
    elsif (operador == '*')
      return valor_a * valor_b
    elsif (operador == '**')
      return valor_a ** valor_b
    elsif (operador == '/')
      return valor_a / valor_b
    elsif (operador == '%')
      return valor_a % valor_b
    elsif (operador == '>')
      return valor_a > valor_b
    elsif (operador == '>=')
      return valor_a >= valor_b
    elsif (operador == '<')
      return valor_a < valor_b
    elsif (operador == '<=')
      return valor_a <= valor_b
    elsif (operador == '==')
      return valor_a == valor_b
    elsif (operador == '!=')
      return valor_a != valor_b
    end
    return nil
  end

  def test_soma
    assert_equal 2, calculadora(1, 1, '+')
    assert_equal 3, calculadora(1, 2, '+')
    assert_equal 3, calculadora(2, 1, '+')
    assert_equal 0, calculadora(-1, 1, '+')
  end

  def test_subtracao
    assert_equal 1, calculadora(2, 1, '-')
    assert_equal -1, calculadora(1, 2, '-')
    assert_equal -2, calculadora(-1, 1, '-')
    assert_equal 0, calculadora(0, 0, '-')
  end

  def test_multiplicacao
    assert_equal 9, calculadora(3, 3, '*')
    assert_equal 0, calculadora(0, 3, '*')
    assert_equal 0, calculadora(3, 0, '*')
    assert_equal 4.5, calculadora(3, 1.5, '*')
  end

  def test_potencia
    assert_equal 16, calculadora(4, 2, '**')
    assert_equal 9, calculadora(3, 2, '**')
    assert_equal 1, calculadora(4, 0, '**')
    assert_equal 4, calculadora(4, 1, '**')
    assert_equal 4, calculadora(-2, 2, '**')
  end

  def test_divisao
    assert_equal 8, calculadora(16, 2, '/')
    assert_equal 16, calculadora(16, 1, '/')
    assert_equal -8, calculadora(16, -2, '/')
    assert_equal 8, calculadora(-16, -2, '/')
  end

  def test_modulo
    assert_equal 1, calculadora(7, 2, '%')
    assert_equal 0, calculadora(6, 2, '%')
    assert_equal -1, calculadora(7, -2, '%')
    
  end

  def test_comparacao
    assert_equal true, calculadora(7, 7, '==')
    assert_equal true, calculadora(7, 7, '<=')
    assert_equal false, calculadora(7, 7, '>')
    assert_equal true, calculadora(7, 9, '!=')
  end
end
