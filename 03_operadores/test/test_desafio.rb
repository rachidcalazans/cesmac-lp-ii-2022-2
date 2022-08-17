require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    
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

      return nil
  end

  def test_soma
    assert_equal 5, calculadora(3, 2, '+')
    assert_equal 78.5, calculadora(70, 8.5, '+')
  end

  def test_subtracao
    assert_equal 1, calculadora(2, 1, '-')
  end

  def test_multiplicacao
    assert_equal 9, calculadora(3, 3, '*')
  end

  def test_potencia
    assert_equal 9, calculadora(3, 2, "**")
  end

  def test_divisao
    assert_equal 3, calculadora(6, 2, '/')
    assert_equal 2.5, calculadora(5, 2, '/')
  end

  def test_modulo
    assert_equal 0, calculadora(10, 2, '%')
  end

  
  def test_comparacao
    assert_equal 1, calculadora(1, 1, "==")
  end
end
