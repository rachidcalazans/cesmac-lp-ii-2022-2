require "minitest/autorun"

class TestEstruturasDeControle < Minitest::Test

  def test_if_else
    j = 10

    if j == 10
      resultado_final = 'É igual a 10'
    elsif j > 10
      resultado_final = 'É maior que 10'
    else
      resultado_final = 'É menor que 10'
    end

    assert_equal 'É igual a 10', resultado_final
  end

  def test_while_loop
    i = 1
    resultado_final = 0

    while i < 100 do
      puts i
      # Incrementa o contador
      # Percorrendo 100 vezes, i 1,2...99
      i += 1

      resultado_final = i
    end

      assert_equal 100, resultado_final
    end

    def test_for_loop
      resultado_final = 0;

      for i in 1..5
        puts i
        # Percorrendo 5 vezes, i 1->5

        resultado_final = i
      end

      assert_equal 5, resultado_final
    end

    def test_for_each_loop
      resultado_final = 0

      (1..5).each do |i|
        puts i
        # Percorrendo 5 vezes, i 1->5

        resultado_final = i
      end

      assert_equal 5, resultado_final


      array = [1, 2, 3, 4, 5]
      resultado_final = 0;


      array.each do |i|
        puts i
        # Percorrendo 5 vezes, i 1->5

        resultado_final = i
      end

      assert_equal 5, resultado_final
    end

    def test_switch_case
      mes = 3

      case mes
      when 1
        mes_final = 'Janeiro'
      when 2
        mes_final = 'Fevereiro'
      when 3
        mes_final = 'Março'
      else
        mes_final = 'Algum outro mês'
      end

      assert_equal 'Março', mes_final
    end
end
