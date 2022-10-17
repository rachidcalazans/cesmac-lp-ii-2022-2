require "minitest/autorun"
require './prova_02/test/test_prova'
require './prova_02/app/prova_sabores'

class TestComercio < Minitest::Test

  def flaus()
  @FlauDeGoiaba = Saboresdosflaus.new('goiaba', 10, 0.50)
  @FlauDeMorango = Saboresdosflaus.new('morango', 10, 0.75)
  @FlauDeMacaVerde = Saboresdosflaus.new('maca verde', 10, 0.75)
  @FlauDeNescauComNutella = Saboresdosflaus.new('nescau', 10, 1.0)
  @FlauDeHortela = Saboresdosflaus.new('hortela', 10, 0.50)

  @Comercio = Comercio.new

  @FlausEmEstoque = [@FlauDeGoiaba, @FlauDeMorango, @FlauDeMacaVerde, @FlauDeNescauComNutella, @FlauDeHortela]
  @Comercio.addestoquedeflaus(@FlausEmEstoque)
  end

   def test_valor_total_dos_flaus

     def Total
        assert_equal 0, @Comercio.Total()

        for produto in 1..5 do
        @Comercio.compra_de_flaus(@FlauDeGoiaba)
        end

        assert_equal 2.50, @Comercio.Total()
     end
   end

   def test_compra_de_flaus

     def compra_de_flaus 
        @Comercio.compra_de_flaus(@FlauDeGoiaba)
        assert_equal 0.50, @Comercio.Total
        assert_equal 8, @FlauDeGoiaba.estoquedeflaus     
     end
   end



 def test_cliente_Comercio
    #Maria e João
  def compra_de_flaus
    for macaVerde in 1..7 do
        @Comercio.compra_de_flaus(@FlauDeMacaVerde)
    end


    for hortela in 1..3 do
        @Comercio.compra_de_flaus(@FlauDeHortela)
    end

    for morango in 1..3 do
        @morango.compra_de_flaus(@FlauDeMorango)
    end

    for nescauComnutela in 1..3 do
        @Comercio.compra_de_flaus(@FlauDeNescauComNutella)
    end

    for goiaba in 1..2 do
        @Comercio.compra_de_flaus(@FlauDeGoiaba)
    end

    assert_equal 3, @FlauDeMacaVerde.estoquedeflaus
    assert_equal 7, @FlauDeHortela.estoquedeflaus
    assert_equal 7, @FlauDeMorango.estoquedeflaus
    assert_equal 7, @flaudenescauComnutella.estoquedeflaus
    assert_equal 8, @FlauDeGoiaba.estoquedeflaus
  end

   end

  def test_sem_estoquedeflaus

    def estoquedeflaus
        @FlauDeGoiaba.estoquedeflaus = 0
        assert_equal 'Em falta', @Comercio.compra_de_flaus(@FlauDeGoiaba)
    end
  end

end