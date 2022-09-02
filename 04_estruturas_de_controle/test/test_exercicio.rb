require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro


def mes_nome(numero_mes)
  case numero_mes
  when 1 
    return 'janeiro'
  
  when 2
    return 'fevereiro'
  
  when 3
    return 'março'

  when 4
     return 'abril'

  when 5
    return 'maio'

  when 6
    return 'junho'

  when 7
    return 'julho'

  when 8
    return 'agosto'

  when 9
    return 'setembro'

  when 10
    return 'outubro'

  when 11
    return 'novembro'

  when 12
    return 'dezembro'

  else 
    return nil
end
return nil
end

def test_meses_validos
  assert_equal 'janeiro', mes_nome(1)
  assert_equal 'fevereiro', mes_nome(2)
  assert_equal 'março', mes_nome(3)
  assert_equal 'abril', mes_nome(4)
  assert_equal 'maio', mes_nome(5)
  assert_equal 'junho', mes_nome(6)
  assert_equal 'julho', mes_nome(7)
  assert_equal 'agosto', mes_nome(8)
  assert_equal 'setembro', mes_nome(9)
  assert_equal 'outubro', mes_nome(10)
  assert_equal 'novembro', mes_nome(11)
  assert_equal 'dezembro', mes_nome(12)
end

def test_meses_invalidos
  assert_nil mes_nome(13)
  assert_nil mes_nome(15)

end
end