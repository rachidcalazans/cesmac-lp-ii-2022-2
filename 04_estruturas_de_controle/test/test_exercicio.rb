require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro


 def mes_por_int(mes)
  case mes
  
  when 1
    mes_final = 'January'
  when 2
    mes_final = 'February'
  when 3
    mes_final = 'March'
  when 4
    mes_final = 'April'
  when 5
    mes_final = 'May'
  when 6
    mes_final = 'June'  
  when 7
    mes_final = 'July'
  when 8
    mes_final = 'August'
  when 9
    mes_final = 'september'
  when 10
    mes_final = 'October'
  when 11
    mes_final = 'November'
  when 12
    mes_final = 'December'      

 end



 def mes_test(mes)

    assert_equal 'january', mes_int(1)
    assert_equal 'february', mes_int(2)
    assert_equal 'March', mes_int(3)
    assert_equal 'April', mes_int(4)
    assert_equal 'May', mes_int(5)
    assert_equal 'June', mes_int(6)
    assert_equal 'July', mes_int(7)
    assert_equal 'August', mes_int(8)
    assert_equal 'september', mes_int(9)
    assert_equal 'October', mes_int(10)
    assert_equal 'November', mes_int(11)
    assert_equal 'December', mes_int(12)


  end
  
  
  
end

