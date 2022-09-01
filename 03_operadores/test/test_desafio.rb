require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test

  def calculadora(valor_a, valor_b, operador)
    case operador
    when "+" then return valor_a + valor_b
    when "-" then return valor_a - valor_b
    when "*" then return valor_a * valor_b
    when "/" then return valor_a / valor_b.to_f
    when "**" then return valor_a ** valor_b
    when "%" then return valor_a % valor_b
    when "==" then return valor_a == valor_b
    end
    return nil
  end

  def test_soma
    assert_equal 2, calculadora(1, 1, "+")
  end

  def test_subtracao
    assert_equal 10, calculadora(20, 10, "-")
  end

  def test_multiplicacao
    assert_equal 25, calculadora(5, 5, "*")

  end

  def test_potencia
    assert_equal 125, calculadora(5, 3, "**")
  end

  def test_divisao
    assert_equal 193.5, calculadora(774, 4, "/")
  end

  def test_modulo
    assert_equal 0, calculadora(10, 2, "%")
  end

  def test_comparacao
    assert_equal true, calculadora(5, 5, "==")
  end
end
