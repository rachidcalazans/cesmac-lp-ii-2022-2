require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    if(valor_a.kind_of?Integer) && (valor_b.kind_of?Integer)
      if operador == '+'
        return valor_a + valor_b
      elsif operador == "-"
        return valor_a - valor_b
      elsif operador == "*"
        return valor_a * valor_b
      elsif operador == "**"
        return valor_a ** valor_b
      elsif operador == "/"
        return valor_a / valor_b.to_f
      elsif operador == "%"
        return valor_a % valor_b
      elsif operador == "="
        return valor_a == valor_b
      end
    end
        "Esta Operação é Invalida!"
  end


  def test_soma
    assert_equal 2, calculadora (1, 1, '+')
  end

  def test_subtracao
    assert_equal 5, calculadora (10, 5, '-')
  end

  def test_multiplicacao
    assert_equal 49, calculadora (7, 7, '*')
  end

  def test_potencia
    assert_equal 16, calculadora (4, 2, '**')
  end

  def test_divisao
    assert_equal 20.5, calculadora (41, 2, '/')
  end

  def test_modulo
    assert_equal 1, calculadora (7, 3, '%')
  end

  def test_comparacao
    assert_equal false, calculadora (15, 20, '=')
  end

end
