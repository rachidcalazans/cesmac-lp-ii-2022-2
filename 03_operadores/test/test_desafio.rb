require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    if operador == '+'
      return valor_a + valor_b
    elsif operador == '-'
      return valor_a - valor_b
    elsif operador == '*'
      return valor_a * valor_b
    elsif operador == '**'
      return valor_a ** valor_b
    elsif operador == '/'
      return valor_a / valor_b
    elsif operador == '%'
      return valor_a % valor_b
    elsif operador == '=='
      return valor_a == valor_b
    end

    return nil
  end

  def test_soma
    assert_equal 2, calculadora(1, 1, '+')
  end

  def test_subtracao
    assert_equal 0, calculadora(1, 1, '-')
  end

  def test_multiplicacao
    assert_equal 2, calculadora(1, 2, '*')
  end

  def test_potencia
    assert_equal 2, calculadora(2, 1, '**')
  end

  def test_divisao
    assert_equal 10, calculadora(20, 2, '/')
  end

  def test_modulo
    assert_equal 1, calculadora(3, 2, '%') 
  end

  def test_comparacao
    assert_equal true, calculadora(2, 2, '==')
  end
end
