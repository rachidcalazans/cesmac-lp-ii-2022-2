require "minitest/autorun"

class TestExercicio < Minitest::Test
  # Funcionalidade 1:
  # Retornar nome do mês do ano para qualquer número do mês passado.
  # Caso seja um número inválido, retornar message de erro


  def mes(mesf)
    mes = 19
    case (mesf)
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
        return "ERRO: MÊS NÂO ENCONTRADO!"
      end
    end

  def test_mes
    
    assert_equal "Janeiro", mes(1)
    assert_equal "Fevereiro", mes(2)
    assert_equal "Março", mes(3)
    assert_equal "Abril", mes(4)
    assert_equal "Maio", mes(5)
    assert_equal "Junho", mes(6)
    assert_equal "Julho", mes(7)
    assert_equal "Agosto", mes(8)
    assert_equal "Setembro", mes(9)
    assert_equal "Outubro", mes(10)
    assert_equal "Novembro", mes(11)
    assert_equal "Dezembro", mes(12)

  end
  
end
