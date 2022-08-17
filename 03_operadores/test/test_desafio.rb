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
    end
  
    def test_soma
      assert_equal 9, calculadora(2, 7, '+')
    end
  
    def test_subtracao
      assert_equal -5, calculadora(4, 9, '-')
  
    end
  
    def test_multiplicacao
      assert_equal 50, calculadora(10, 5, '*')
    end
  
    def test_potencia
      assert_equal 9765625, calculadora(5, 10, '**')
    end
  
    def test_divisao
      assert_equal 5, calculadora(10, 2, '/')
    end
  
    def test_modulo
      assert_equal 0, calculadora(10000, 2, '%')
    end
  
    
    def test_comparacao
      assert_equal 10101010, calculadora(10101010, 10101010, '==')
    end
  end