require "minitest/autorun"

# Desafio
# Vale 1.5 pontos válido se criar PR até 17/08/2022 23:59:59
#
# Implementar o método #calculadora
# Adicionar assert_equal para cada método de teste com seu respectivo operador

class TestDesafio < Minitest::Test
  def calculadora(valor_a, valor_b, operador)
    return nil
  end

  def test_soma
    assert_equal 2, calculadora(1, 1, "+")
  end

  def test_subtracao
  end

  def test_multiplicacao
  end

  def test_potencia
  end

  def test_divisao
  end

  def test_modulo
  end

  def test_comparacao
  end
end
