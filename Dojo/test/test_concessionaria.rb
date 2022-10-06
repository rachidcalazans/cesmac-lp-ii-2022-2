require "minitest/autorun"

class TestConcessionaria < Minitest::Test
   
    def initialize
       

        def qtd
           corolla = corolla.new['2']
           yaris = yaris.new['3']
           saldo = saldo.new['0']
            
           assert_equal 2, corolla.qtd()
           assert_equal 3, yaris.qtd()

        end

        def preco
            @corolla = 150000
            @yaris = 120000
                   
        end
        

        def venda
            assert_equal 1,"corolla"
        end
        
        corolla
            

    end


end