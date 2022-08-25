require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  
  
  def month_test(month)

    $months = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}

    case month
    when 1
      m_final = "January"
    when 2
      m_final = "February"
    when 3
      m_final = "March"
    when 4
      m_final = "April"
    when 5
      m_final = "May"
    when 6
      m_final = "June"
    when 7
      m_final = "July"
    when 8
      m_final = "August"
    when 9
      m_final = "September"
    when 10
      m_final = "October"
    when 11
      m_final = "November"
    when 12
      m_final = "December"
    else
      m_final = "This month dosent exsist"
    end
  end

  def test_for_loop
    for i in 1..15
      if i <= 12
      assert_equal month_test(i), $months[i]
      else
      assert_equal month_test(i), "This month dosent exsist"
      end
    end
  end
end
