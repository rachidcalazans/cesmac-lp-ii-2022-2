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
      return valor_a % valor_b
    elsif (operador == '==') then
      return valor_a == valor_b
    elsif (operador == '<') then 
      return valor_a < valor_b
    elsif (operador == '>') then 
      return valor_a < valor_b
      return nil
    end
    end
  
    def test_soma
      assert_equal 2, calculadora(1, 1, '+')
      assert_equal 15, calculadora(7,8, '+')

    end
  
    def test_subtracao
      assert_equal 14, calculadora(20, 6, '-')
      assert_equal 50, calculadora(100, 50, '-')
    end
  
    def test_multiplicacao
      assert_equal 25, calculadora(5, 5, '*')
      assert_equal 16, calculadora(4, 4, '*')
    end
  
    def test_potencia
      assert_equal 9, calculadora(3, 2, '**')
      assert_equal 4, calculadora(2, 2, '**')
    end
  
    def test_divisao
      assert_equal 7, calculadora(14, 2, '/')
      assert_equal 10, calculadora(20, 2, '/')
    end
  
    def test_modulo
      assert_equal 1, calculadora(11, 2, '%')
    end
  
    def test_comparacao
      assert_equal true, calculadora(3, 3, '==')
      assert_equal false, calculadora(4, 2, '<')
    end
  end  