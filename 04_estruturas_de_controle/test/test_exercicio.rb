require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro

  def test_case
    
      mes = 8

      case mes
      when 1
        mes_final = 'Janeiro'
      when 2
        mes_final = 'Fevereiro'
      when 3
        mes_final = 'Março'
      when 4
        mes_final = 'Abril'
      when 5
        mes_final = 'Maio'
      when 6
        mes_final = 'Junho'
      when 7
        mes_final = 'Julho'
      when 8
        mes_final = 'Agosto'
      when 9
        mes_final = 'Setembro'
      when 10
        mes_final = 'Outubro'
      when 11
        mes_final = 'Novembro'
      when 12
        mes_final = 'Dezembro'  
      when mes > 12
        mes_final = 'Valor acima do número de meses'
      when mes < 12
        mes_final = 'Valor negativo'
      else
        mes_final = 'Valor invalido'
      end

    assert_equal 'Agosto', mes_final
  end

end