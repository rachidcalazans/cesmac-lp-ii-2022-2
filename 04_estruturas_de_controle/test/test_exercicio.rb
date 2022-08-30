require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro
  def month_check(month)
    $months = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "Octuber", 11 => "November", 12 => "December"}
  
    case month
    when 1
      final_m = "January"
    when 2
      final_m = "February"
    when 3
      final_m = "March"
    when 4
      final_m = "April"
    when 5
      final_m = "May"
    when 6
      final_m = "June"
    when 7
      final_m = "July"
    when 8
      final_m = "August"
    when 9
      final_m = "September"
    when 10
      final_m = "Octuber"
    when 11
      final_m = "November"
    when 12
      final_m = "December"
    else
      final_m = "Insert a valid month"
    end
  end

  def test_loop_month
    for i in 1..15
      if (i <= 12)
        assert_equal month_check(i), $months[i]
      else
        assert_equal "Insert a valid month", month_check(i)
      end
    end
  end
end
