require './prova_02/app/produto'
require './prova_02/app/estoque'


class Venda

    attr_accessor :sabor, :estoque, :valor

    def initialize()

        @morango = Estoque.new(Produto.new('Morango', 0.75),10)
        @goiaba = Estoque.new(Produto.new('Goiaba', 0.50), 10)
        @nescauNutella = Estoque.new(Produto.new('Nescau com Nutella', 1), 10)
        @macaVerde = Estoque.new(Produto.new('Maça verde', 0.75), 10)
        @menta = Estoque.new(Produto.new('Menta', 0.50), 10)
    end

    def saida(sabor, quantidade)
        if (sabor == 'Morango')
            @morango.venda(quantidade)

        elsif (sabor == 'Goiaba')
            @goiaba.venda(quantidade)

        elsif (sabor == 'Menta')
            @menta.venda(quantidade)

        elsif (sabor == 'Nescau com Nutella')
            @nescauNutella.venda(quantidade)

        elsif (sabor == 'Maça verde')
            @macaVerde.venda(quantidade)
        end
    end

    def estoque(sabor)
        if (sabor == 'Goiaba')
            return @goiaba.estoque

        elsif (sabor == 'Morango')
            return @morango.estoque

        elsif (sabor == 'Maça verde')
            return @macaVerde.estoque

        elsif (sabor == 'Menta')
            return @menta.estoque

        elsif (sabor == 'Nescau com Nutella')
            return @nescauNutella.estoque
        end
    end

    def total
        totalGoiaba = (10 - @goiaba.estoque) * @goiaba.produto.valor  
        totalMenta = (10 - @menta.estoque) * @menta.produto.valor  
        totalMorango = (10 - @morango.estoque) * @morango.produto.valor  
        totalNescauNutella = (10 - @nescauNutella.estoque) * @nescauNutella.produto.valor  
        totalMacaVerde = (10 - @macaVerde.estoque) * @macaVerde.produto.valor    

        return totalGoiaba + totalMenta + totalMorango + totalNescauNutella + totalMacaVerde
    end
end