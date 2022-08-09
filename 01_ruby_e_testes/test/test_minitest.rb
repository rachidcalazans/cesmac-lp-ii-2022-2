require "minitest/autorun"

class TestMinitest < Minitest::Test

  def test_com_prefixo
    # primeiro é a expectativa
    # segundo é o resultado
    assert_equal true, 1 == 1

    # espera apenas o resultado
    assert_nil nil
  end

  def test_skipped
    skip

    assert_equal true, 1 == 2
  end
end
