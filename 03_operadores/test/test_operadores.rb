require "minitest/autorun"

class TestOperadores < Minitest::Test

  def test_aritmetica
    i1, i2 = 1, 2

    assert_equal 3, i1 + i2
    assert_equal 1, i2 - i1
    assert_equal 2, i2 * i1
    assert_equal 8, 2 ** 3
    assert_equal 0, i1 / i2, 'int/int retorna int'
    assert_equal 0.5, i1 / i2.to_f, '1/2.0'
  end

  def test_modulo
    assert_equal 2, 11 % 3
  end

  def test_comparacao
    assert_equal false, 3 == 2
    assert_equal true, 3 != 2
    assert_equal true, 3 > 2
    assert_equal false, 3 < 2
    assert_equal true, 2 <= 2
    assert_equal true, 2 >= 2
  end

  def test_booleanos
    assert_equal false, (3 > 2) && (2 > 3)
    assert_equal true, (3 > 2) || (2 > 3)
    assert_equal true, !(3 == 2)
  end

  def test_incremental
    x = 1
    assert_equal 2, x += 1, 'x = x + 1 => 2'
    assert_equal 1, x -= 1, 'x = x - 1 => 1'
    assert_equal 1, x /= 1, 'x = x / 1 => 1'
    assert_equal 1, x ||= 2, 'x = x || 2 => 1'
    x = nil
    assert_equal 2, x ||= 2, 'x = x || 2 => 2'
  end
end
