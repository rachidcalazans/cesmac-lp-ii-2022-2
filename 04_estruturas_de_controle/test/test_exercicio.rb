require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def month(month_number)
    case month_number
    when 1
      return "January"
    when 2
      return "February"
    when 3
      return "March"
    when 4
      return "April"
    when 5
      return "May"
    when 6
      return "June"
    when 7
      return "July"
    when 8
      return "August"
    when 9
      return "September"
    when 10
      return "October"
    when 11
      return "November"
    when 12
      return "December"
    else
      return nil
    end
    return nil
  end

  def test_valid_month
    assert_equal "January", month(1)
    assert_equal "February", month(2)
    assert_equal "March", month(3)
    assert_equal "April", month(4)
    assert_equal "May", month(5)
    assert_equal "June", month(6)
    assert_equal "July", month(7)
    assert_equal "August", month(8)
    assert_equal "September", month(9)
    assert_equal "October", month(10)
    assert_equal "November", month(11)
    assert_equal "December", month(12)
    assert_nil month(-2)
    assert_nil month(0)
    assert_nil month(13)
  end

end
