class ProductStock
    
    def initialize (product, stock)
        @product = product
        @stock = stock
    end

    def getProduct
        return @product
    end

    def setProduto(produto)        
        @product = produto
    end

    def getStock
        return @stock
    end

    def setStock(stock)
        @stock = stock
    end

    def sold(quantity)
        @stock = @stock - quantity
    end
end