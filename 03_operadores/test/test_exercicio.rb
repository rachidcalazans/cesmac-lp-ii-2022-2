require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Regras
  # 1. Não pode alterar os valores das expectativas (primeiro valor do assert_equal)
  # 2. Não pode alterar nos valores das variáveis definidas

  def test_exercicio01
    i1, i2 = 1, 2

    assert_equal 4, i1 + i2
    assert_equal 0.5, i2 - i1
    assert_equal -2, i2 * i1
    assert_equal 5, i1 / i2
    assert_equal 0.5, i1 / i2.to_f
  end

  def test_exercicio02
    assert_equal 0, 10 % 3
  end

  def test_exercicio03
    i1, i2 = 3, 5

    assert_equal true, i1 == 2
    assert_equal true, i2 == i1
    assert_equal true, i1 > 3
    assert_equal false, i2 < i1
    assert_equal false, i1 <= 4
    assert_equal false, i2 >= 4
  end

  def test_exercicio04
    i1, i2 = 3, 5

    assert_equal true, (i1 < 2) && (i2 > 6)
    assert_equal true, (i1 > 4) || (i1 > i2)
    assert_equal true, i1 == i2
  end

  def test_exercicio05
    i = 0

    assert_equal 2, i += 1
    assert_equal -2, i -= 1
    assert_equal 1, i ||= 2
    assert_equal 2, i ||= 2
  end
end
