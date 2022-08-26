require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro
  def mes_por_int(mes_int)
    case mes_int
    when 1
      return 'Janeiro'
    when 2
      return 'Fevereiro'
    when 3
      return 'Março'
    when 4
      return 'Abril'
    when 5
      return 'Maio'
    when 6
      return 'Junho'
    when 7
      return 'Julho'
    when 8
      return 'Agosto'
    when 9
      return 'Setembro'
    when 10
      return 'Outubro'
    when 11
      return 'Novembro'
    when 12
      return 'Dezembro'
    else
      return 'Mês Inválido'
    end
  end

  def test_mes
    mes_int = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro']
    for i in 0..10
      assert_equal mes_int[i], mes_por_int(i+1)
    end
  end

  def test_mes_invalido
    assert_equal 'Mês Inválido', mes_por_int(0)
    assert_equal 'Mês Inválido', mes_por_int(13)
    assert_equal 'Mês Inválido', mes_por_int('13')
    assert_equal 'Mês Inválido', mes_por_int(nil)
  end
  
end