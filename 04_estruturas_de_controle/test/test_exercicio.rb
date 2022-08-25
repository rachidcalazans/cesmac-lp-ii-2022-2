require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def name_of_month(month)
    case month
    when 1
      return 'january'
    when 2
      return 'february'
    when 3
      return 'march'
    when 4
      return 'april'
    when 5
      return 'may'
    when 6
      return 'june'
    when 7
      return 'july'
    when 8
      return 'august'
    when 9
      return 'september'
    when 10
      return 'october'
    when 11
      return 'november'
    when 12
      return 'december'
    else
      return 'invalid'
    end
  end

  def test_valid_month
    months = ['january','february','march','april','may','june',
            'july','august','september','october','november','december']
    for i in 0..11
      assert_equal months[i], name_of_month(i+1)
    end
  end

  def test_invalid_month
    assert_equal 'invalid', name_of_month(0)
    assert_equal 'invalid', name_of_month(13)
    assert_equal 'invalid', name_of_month('13')
    assert_equal 'invalid', name_of_month(nil)
  end
  
end
