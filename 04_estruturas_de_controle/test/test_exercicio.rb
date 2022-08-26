require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro


 def nome_do_mes(mes)

  case(mes)
  when 1
    return "Janeiro"
  when 2
    return "Fevereiro"
  when 3
    return "Março"
  when 4
    return "Abril"
  when 5
    return "Maio"
  when 6
    return "Junho"
  when 7
    return "Julho"
  when 8
    return "Agosto"
  when 9
    return "Setembro"
  when 10
    return "Outubro"
  when 11
    return "Novembro"
  when 12
    return "Dezembro"
  else
    return "Mês Inválido" 
  end
end
  
  def test_mes

    assert_equal "Janeiro", nome_do_mes(1)
    assert_equal "Fevereiro", nome_do_mes(2)
    assert_equal "Março", nome_do_mes(3)
    assert_equal "Abril", nome_do_mes(4)
    assert_equal "Maio", nome_do_mes(5)
    assert_equal "Junho", nome_do_mes(6)
    assert_equal "Julho", nome_do_mes(7)
    assert_equal "Agosto", nome_do_mes(8)
    assert_equal "Setembro", nome_do_mes(9)
    assert_equal "Outubro", nome_do_mes(10)
    assert_equal "Novembro", nome_do_mes(11)
    assert_equal "Dezembro", nome_do_mes(12)
  end
  

  


end
