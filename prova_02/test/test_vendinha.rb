require "minitest/autorun"
require './prova_2/app/vendinha'



class TestVendinha < Minitest::Test

    def test_cliente_maria
        venda = 
          Venda.new
          .vender("Goiaba")
          .vender("Goiaba")
          .vender("Nescau com Nutela")
          .vender("Nescau com Nutela")
          .vender("Nescau com Nutela")
          .vender("Menta")
      
        assert_equal 44, venda.flaus.count
      end
      
      def test_cliente_joao
          venda = 
          Venda.new
          .vender("Morango")
          .vender("Morango")
          .vender("Morango")
          .vender("Maça Verde")
          .vender("Maça Verde")
          .vender("Maça Verde")
          .vender("Maça Verde")
          .vender("Maça Verde")
      
          assert_equal 42, venda.flaus.count
      end
      
      def test_cliente_pedro
          venda = 
          Venda.new
          .vender("Menta")
          .vender("Menta")
          .vender("Maça Verde")
          .vender("Maça Verde")
      
          assert_equal 46, venda.flaus.count
      end
        
      for flau in venda.flaus  
        puts(" Sabor: #{flau.sabor} 
               Preço: #{flau.preco} 
            ")
      end
  
      puts "\tTotal: R$ #{venda.total_venda}"

end