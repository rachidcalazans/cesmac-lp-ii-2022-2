require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro
  def mes(mes_int)
    case mes_int
    when 1 then return numero_do_mes_escolhido = "Janeiro"
    when 2 then return numero_do_mes_escolhido = "Fevereiro"
    when 3 then return numero_do_mes_escolhido = "Março"
    when 4 then return numero_do_mes_escolhido = "Abril" 
    when 5 then return numero_do_mes_escolhido = "Maio"
    when 6 then return numero_do_mes_escolhido = "Junho"
    when 7 then return numero_do_mes_escolhido = "Julho"
    when 8 then return numero_do_mes_escolhido = "Agosto"
    when 9 then return numero_do_mes_escolhido = "Setembro"
    when 10 then return numero_do_mes_escolhido = "Outubro"
    when 11 then return numero_do_mes_escolhido = "Novembro"
    when 12 then return numero_do_mes_escolhido = "Dezembro"
    else
     numero_do_mes_escolhido = "invalido"
    end
  end

  def test_mes 
     assert_equal "Janeiro", mes(1)
     assert_equal "Fevereiro",mes(2)
     assert_equal "Março", mes(3)
     assert_equal "Abril", mes(4)
     assert_equal "Maio", mes(5)
     assert_equal "Junho", mes(6)
     assert_equal "Julho" ,mes(7)
     assert_equal "Agosto" ,mes(8)
     assert_equal "Setembro", mes(9)
     assert_equal "Outubro" ,mes(10)
     assert_equal "Novembro" ,mes(11)
     assert_equal "Dezembro" ,mes(12)
  end

  def test_invalido
   assert_equal "invalido", mes(13)
   assert_equal "invalido", mes(14)
   assert_equal "invalido", mes(15)
  end
end