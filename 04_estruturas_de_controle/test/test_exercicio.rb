require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def month(month_number)
    ##month_number = 'Invalid month'

    case month_number
    when 1
      return month_number = 'January'
    when 2
      return month_number = 'February'
    when 3
      return month_number = 'March'
    when 4
      return month_number = 'April'    
    when 5
      return month_number = 'May'
    when 6
      return month_number = 'June'    
    when 7
      return month_number = 'July'
    when 8
      return month_number = 'August'
    when 9
      return month_number = 'September'
    when 10
      return month_number = 'October'
    when 11
      return month_number = 'November'
    when 12
      return month_number = 'December'
    else
      return month_number = 'Invalid month'
    end                
end

  def test_moth_name

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
    assert_equal "Invalid month", month(13)
    assert_equal "Invalid month", month(0)


  end
end
