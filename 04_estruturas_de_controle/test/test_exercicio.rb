require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def mes_ano(mes)
    case mes
    when 1 then return mes_escolhido = 'Janeiro'
    when 2 then return mes_escolhido = 'Fevereiro'
    when 3 then return mes_escolhido = 'Março'
    when 4 then return mes_escolhido = 'Abril'
    when 5 then return mes_escolhido = 'Maio'
    when 6 then return mes_escolhido = 'Junho'
    when 7 then return mes_escolhido = 'Julho'
    when 8 then return mes_escolhido = 'Agosto'
    when 9 then return mes_escolhido = 'Setembro'
    when 10 then return mes_escolhido = 'Outubro'
    when 11 then return mes_escolhido = 'Novembro'
    when 12 then return mes_escolhido = 'Dezembro'
    else
      mes_escolhido = 'Mes invalido'
    end 
  end

    def test_mes
      assert_equal 'Janeiro', mes_ano(1)
      assert_equal 'Fevereiro', mes_ano(2)
      assert_equal 'Março', mes_ano(3)
      assert_equal 'Abril', mes_ano(4)
      assert_equal 'Maio', mes_ano(5)
      assert_equal 'Junho', mes_ano(6)
      assert_equal 'Julho', mes_ano(7)
      assert_equal 'Agosto', mes_ano(8)
      assert_equal 'Setembro', mes_ano(9)
      assert_equal 'Outubro', mes_ano(10)
      assert_equal 'Novembro', mes_ano(11)
      assert_equal 'Dezembro', mes_ano(12)
      assert_equal 'Setembro', mes_ano(42)
      assert_equal 'Março', mes_ano(6)
      assert_equal 'Setembro', mes_ano(16)

      
    end


end