require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    if (operador == '+') then
      return valor_a + valor_b
    elsif (operador == '-') then
      return valor_a - valor_b
    elsif (operador == '*') then
      return valor_a * valor_b
    elsif (operador == '**') then
      return valor_a ** valor_b
    elsif (operador == '/') then
      return valor_a / valor_b
    elsif (operador == '%') then
      return (valor_a % valor_b)
    elsif (operador == '==') then
      return (valor_a == valor_b)

    end
      return nil
  end

  def test_soma
    assert_equal 2, calculadora(1, 1, '+')
    end

  def test_subtracao
    assert_equal 1, calculadora(2, 1, '-')
  end

  def test_multiplicacao
    assert_equal 2, calculadora( 1, 2, '*')
  end

  def test_potencia
    assert_equal 8, calculadora( 2, 3, '**')
  end

  def test_divisao
    assert_equal 4, calculadora( 8, 2, '/')
  end

  def test_modulo
    assert_equal 1, calculadora( 7, 2, '%')
  end

  def test_comparacao
    assert_equal true, calculadora( 2, 2, '==')
  end
end
