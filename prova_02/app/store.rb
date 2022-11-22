require './prova_02/app/product'
require './prova_02/app/product_stock'

class Store
    def initialize()
        @goiabaStock = ProductStock.new(Product.new('Goibada', 0.50), 10)
        @morangoStock = ProductStock.new(Product.new('Morango', 0.75),10)
        @macaVerdeStock = ProductStock.new(Product.new('Maça verde', 0.75), 10)
        @nescauComNutella = ProductStock.new(Product.new('Nescau com Nutella', 1), 10)
        @mentaStock = ProductStock.new(Product.new('Menta', 0.50), 10)
    end

    def sell(name, quantity)
        if (name == 'Goiaba')
            @goiabaStock.sold(quantity)

        elsif (name == 'Morango')
            @morangoStock.sold(quantity)
        
        elsif (name == 'Maça verde')
            @macaVerdeStock.sold(quantity)
        
        elsif (name == 'Nescau com Nutella')
            @nescauComNutella.sold(quantity)
       
        elsif (name == 'Menta')
            @mentaStock.sold(quantity)
        end
    end

    def getStock(name)
        if (name == 'Goiaba')
            return @goiabaStock.getStock

        elsif (name == 'Morango')
            return @morangoStock.getStock
        
        elsif (name == 'Maça verde')
            return @macaVerdeStock.getStock
        
        elsif (name == 'Nescau com Nutella')
            return @nescauComNutella.getStock
       
        elsif (name == 'Menta')
            return @mentaStock.getStock
        end
    end

    def calculateTotalAmount
        totalVendidoGoiaba = (10 - @goiabaStock.getStock) * @goiabaStock.getProduct.getValue
        totalVendidoMenta = (10 - @mentaStock.getStock) * @mentaStock.getProduct.getValue
        totalVendidoMorango = (10 - @morangoStock.getStock) * @morangoStock.getProduct.getValue
        totalVendidoNescauComNutella = (10 - @nescauComNutella.getStock) * @nescauComNutella.getProduct.getValue
        totalVendidoMacaVerde = (10 - @macaVerdeStock.getStock) * @macaVerdeStock.getProduct.getValue    
    
        return totalVendidoGoiaba + totalVendidoMenta + totalVendidoMorango + totalVendidoMacaVerde + totalVendidoNescauComNutella
    end
end