require './prova_02/app/produto'
require './prova_02/app/estoque'


class Venda

    attr_accessor :sabor, :estoque, :valor

    def initialize()
        @goiaba = Estoque.new(Produto.new('Goiaba', 0.50), 10)
        @morango = Estoque.new(Produto.new('Morango', 0.75),10)
        @macaVerde = Estoque.new(Produto.new('Maçã verde', 0.75), 10)
        @nescauNutella = Estoque.new(Produto.new('Nescau com Nutella', 1), 10)
        @menta = Estoque.new(Produto.new('Menta', 0.50), 10)
    end

    def saida(sabor, quantidade)
        if (sabor == 'Goiaba')
            @goiaba.venda(quantidade)

        elsif (sabor == 'Morango')
            @morango.venda(quantidade)
        
        elsif (sabor == 'Maça verde')
            @macaVerde.venda(quantidade)
        
        elsif (sabor == 'Nescau com Nutella')
            @nescauNutella.venda(quantidade)
       
        elsif (sabor == 'Menta')
            @menta.venda(quantidade)
        end
    end

    def estoque(sabor)
        if (sabor == 'Goiaba')
            return @goiaba.estoque

        elsif (sabor == 'Morango')
            return @morango.estoque
        
        elsif (sabor == 'Maça verde')
            return @macaVerde.estoque
        
        elsif (sabor == 'Nescau com Nutella')
            return @nescauNutella.estoque
       
        elsif (name == 'Menta')
            return @menta.estoque
        end
    end

    def calculateTotalAmount
        totalVendidoGoiaba = (10 - @goiaba.estoque) * @goiaba.produto.valor  
        totalVendidoMenta = (10 - @menta.estoque) * @menta.produto.valor  
        totalVendidoMorango = (10 - @morango.estoque) * @morango.produto.valor  
        totalVendidoNescauComNutella = (10 - @nescauNutella.estoque) * @nescauNutella.produto.valor  
        totalVendidoMacaVerde = (10 - @macaVerde.estoque) * @macaVerde.produto.valor    
    
        return totalVendidoGoiaba + totalVendidoMenta + totalVendidoMorango + totalVendidoMacaVerde + totalVendidoNescauComNutella
    end
end