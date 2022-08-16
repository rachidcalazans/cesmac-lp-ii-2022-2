require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Regras
  # 1. You are not allowed to change the expectations (the first value of assert_equal)
  # 2. You are not allowed to change the value of the defined variables

  def test_exercice01

    i1, i2 = 1, 2

    assert_equal 4, i1 + i2 + i1
    assert_equal 0.5, i2 - i1 - i1.to_f
    assert_equal -2, i2 * (-i1)
    assert_equal 5, (i1 + 9) / i2
    assert_equal 0.5, i1 / i2.to_f
  end

  def test_exercice02

    assert_equal 0, 10 % 2
  end

  def test_exercice03

    i1, i2 = 3, 5

    assert_equal true, i1 == 3
    assert_equal true, !(i2 == i1)
    assert_equal true, i1 >= 3
    assert_equal false, i2 < i1
    assert_equal false, i1 >= 4
    assert_equal false, i2 <= 4
  end

  def test_exercice04

    i1, i2 = 3, 5

    assert_equal true, (i1 > 2) && (i2 < 6)
    assert_equal true, (i1 < 4) || (i1 < i2)
    assert_equal true, i1 != i2
  end

  def test_exercice05
    
    i = 0

    assert_equal 2, i += 2
    assert_equal -2, i *= -1
    i += 3
    assert_equal 1, i ||= 2
    i = nil
    assert_equal 2, i ||= 2
  end
end
