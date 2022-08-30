require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def name_of_month(month)
    return 'invalid' if month.nil? || month.is_a?(String) || month < 1 || month > 12

    months = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']
    return months[month - 1]
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
