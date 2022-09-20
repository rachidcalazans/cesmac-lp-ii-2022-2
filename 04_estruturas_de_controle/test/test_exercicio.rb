require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def mes_por_int(mes_int)
    case mes_int
    when 1
      mes_int = 'Janeiro'
    when 2
      mes_int = 'Fevereiro'
    when 3
      mes_int = 'Março'
    when 4
      mes_int = 'Abril'
    when 5
      mes_int = 'Maio'
    when 6
      mes_int = 'Junho'
    when 7
      mes_int = 'Julho'
    when 8
      mes_int = 'Agosto'
    when 9
      mes_int = 'Setembro'
    when 10
      mes_int = 'Outubro'
    when 11
      mes_int = 'Novembro'
    when 12
      mes_int = 'Dezembro'
    end
  end

  def test_mes
    assert_equal 'Janeiro', mes_por_int(1)
    assert_equal 'Fevereiro', mes_por_int(2)
    assert_equal 'Março', mes_por_int(3)
    assert_equal 'Abril', mes_por_int(4)
    assert_equal 'Maio', mes_por_int(5)
    assert_equal 'Junho', mes_por_int(6)
    assert_equal 'Julho', mes_por_int(7)
    assert_equal 'Agosto', mes_por_int(8)
    assert_equal 'Setembro', mes_por_int(9)
    assert_equal 'Outubro', mes_por_int(10)
    assert_equal 'Novembro', mes_por_int(11)
    assert_equal 'Dezembro', mes_por_int(12)
    assert_equal 'Dezembro', mes_por_int(14)
  end
  
end
