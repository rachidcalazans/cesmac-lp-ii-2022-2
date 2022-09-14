require "minitest/autorun"

class TestExercicio < Minitest::Test  
  
  def mes_por_int(mes_int)
    'janeiro'
  end
  
  def test_mes
    
    
    assert_equal 'Janeiro',mes_por_int(1)
    assert_equal 'fevereiro',mes_por_int(2)
    assert_equal 'março',mes_por_int(3)
    assert_equal 'abril',mes_por_int(4)
    assert_equal 'maio',mes_por_int(5)
    assert_equal 'junho',mes_por_int(6)
    assert_equal 'julho',mes_por_int(7)
    assert_equal 'agosto',mes_por_int(8)
    assert_equal 'setembro',mes_por_int(9)
    assert_equal 'outubro',mes_por_int(10)
    assert_equal 'novembro',mes_por_int(11)
    assert_equal 'dezembro',mes_por_int(12)
    

    assert_equal 'numero invalido', mes_final
  end
end
