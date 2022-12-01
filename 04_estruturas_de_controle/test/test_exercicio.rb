require "minitest/autorun"

#class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

def mes_por_int(mes)
  
if mes == 1
  'jan'
elsif mes == 2
  'Fev'
elsif mes == 3
  'Mar'
elsif mes == 4
  'Abril'
elsif mes == 5
  'Maio'
elsif mes == 6
  'Jun'
elsif mes == 7
  'Jul'
elsif mes == 8
  'Agosto'
elsif mes == 9
  'Set'
elsif mes == 10
  'Out'
elsif mes == 11
  'Nov'
elsif mes == 12
  'Dez'
end

def test_mes_valido
  assert_equal 'Jan', mes_por_int(1) 
  assert_equal 'Fev', mes_por_int(2) 
  assert_equal 'Mar', mes_por_int(3) 
  assert_equal 'Abril', mes_por_int(4) 
  assert_equal 'Maio', mes_por_int(5) 
  assert_equal 'Jun', mes_por_int(6) 
  assert_equal 'Jul', mes_por_int(7) 
  assert_equal 'Agosto', mes_por_int(8) 
  assert_equal 'Set', mes_por_int(9) 
  assert_equal 'Out', mes_por_int(10) 
  assert_equal 'Nov', mes_por_int(11) 
  assert_equal 'Dez', mes_por_int(12) 
end

end
