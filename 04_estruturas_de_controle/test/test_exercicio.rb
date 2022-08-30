require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def mes_por_int(mes)
    return 'Mes invalido' if mes.nil? || mes.is_a?(String) || mes < 1 || mes > 12

    meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
    
    meses[mes -1]
  end

  def test_mes_valido
    meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']

    meses.each_with_index do |mes, index|
      assert_equal mes, mes_por_int(index + 1)
    end
  end

  def test_mes_invalido
    assert_equal 'Mes invalido', mes_por_int(0)
    assert_equal 'Mes invalido', mes_por_int(13)
    assert_equal 'Mes invalido', mes_por_int(nil)
    assert_equal 'Mes invalido', mes_por_int('1')
  end
end
