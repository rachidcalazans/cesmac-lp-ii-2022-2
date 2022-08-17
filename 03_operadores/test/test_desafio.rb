require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    return nil

      if operador == '+'
        return valor_a.to_f + valor_b

      elsif operador == '-'
        return valor_a - valor_b

      elsif operador == '*'
        return valor_a  * valor_b

      elsif operador == "**"
        return valor_a ** valor_b

      elsif operador == '/'
        return valor_a.to_f / valor_b

      elsif operador == '%'
        return valor_a % valor_b

      elsif operador == "=="
        return valor_a = valor_b
      end
  end

  def test_soma
    assert_equal 2, calculadora(1, 1, '+')
    assert_equal 3.5, calculadora(2, 1.5, '+')
    assert_equal 4, calculadora(2, 2, '+')
  end

  def test_subtracao
    assert_equal 3, calculadora(4, 1, '-')
    assert_equal 1, calculadora(3, 2, '-')

  end

  def test_multiplicacao
    assert_equal 10, calculadora(2, 5, '*')
    assert_equal 30, calculadora(15, 2, '*')
  end

  def test_potencia
    assert_equal 25, calculadora(5, 2, '**')
    assert_equal 4, calculadora(2, 2, '**')
  end

  def test_divisao
    assert_equal 30, calculadora(60, 2, '/')
    assert_equal 7.5, calculadora(30, 4, '/')
  end

  def test_modulo
    assert_equal 0, calculadora(20, 2, '%')
    assert_equal 1, calculadora(26, 5, '%')
  end

  
  def test_comparacao
    assert_equal 10, calculadora(10, 10, '==')
    assert_equal 15.5, calculadora(15.5, 15.5, '==')
  end
end