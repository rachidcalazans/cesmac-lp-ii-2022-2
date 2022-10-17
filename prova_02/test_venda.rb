require "minitest/autorun"
require './prova_02/app/flau'

class Testprova02 < Minitest::Test

    def test_vendas
        goiaba = Flau.new('Goiaba', 0.50, 10)
        morango = Flau.new('Morango', 0.75, 10)
        maçaV = Flau.new('Maça Verde', 0.75, 10)
        nescauNutella = Flau.new('Nescau com Nutella', 1, 10)
        menta = Flau.new('Menta', 0.50, 10)
        lucroTotal = 0
        
        #Cliente Maria
        goiaba.estoque -= 2
        nescauNutella.estoque -= 3
        menta.estoque -= 1
        lucroTotal = goiaba.preço*2 + nescauNutella.preço*3 + menta.preço * 1
        
        #Cliente João
        morango.estoque -= 3
        maçaV.estoque -=5
        lucroTotal += morango.preço*3 + maçaV.preço*5

        #cliente Pedro
        menta.estoque -= 2
        maçaV.estoque -= 2
        lucroTotal = lucroTotal + menta.preço*2 + maçaV.preço*2

        assert_equal goiaba.estoque, 8
        assert_equal morango.estoque, 7
        assert_equal maçaV.estoque, 3
        assert_equal nescauNutella.estoque, 7
        assert_equal menta.estoque, 7
        assert_equal lucroTotal, 13

    end
end
    

