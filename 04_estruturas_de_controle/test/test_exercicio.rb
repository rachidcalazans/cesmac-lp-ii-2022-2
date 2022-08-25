require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Functionality 1:
  # Return the month's name of the year to any number passed.
  # In case is an invalid number, return an error message.

  def month_check(month)

    $months = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}

    case month
      when 1
        final_month = "January"
      when 2
        final_month = "February"
      when 3
        final_month = "March"
      when 4
        final_month = "April"
      when 5
        final_month = "May"
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
        final_month ="This month doesn't exist"
      end 
  end

  def test_loop_month
    for i in 1..12
      if(i <= 12)
        assert_equal month_check(i), $months[i]
      else
        assert_equal month_check(i), "This month doesn't exist"
      end
    end
  end
end