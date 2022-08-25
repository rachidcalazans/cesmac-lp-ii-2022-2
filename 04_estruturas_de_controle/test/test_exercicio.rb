require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def month_check(month)

    $months = {1 => "January", 2 => "February", 3 => "March", 4 => "May"}

    case month
    when 1
      final_month = "January"
    when 2
      final_month = "February"
    when 3
      final_month = "March"
    when 4
      final_month = "May"
    when 5
      final_month = "April"
    when 6
      final_month = "June"
    when 7
      final_month = "July"
    when 8
      final_month = "August"
    when 9
      final_month = "September"
    when 10 
      final_month = "October"
    when 11
      final_month = "November"
    when 12
      final_month = "December"
    else
      final_month = "This month doesn't exist"
    end 
  end

  def test_loop_month
    for i in 1..9
      assert_equal month_check(i), $months[i]
    end
    for i in 1..8
      assert_equal month_check(i), $months[i]
    end
  end
end