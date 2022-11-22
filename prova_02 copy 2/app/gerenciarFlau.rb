require './prova_02 copy 2/app/flau'

class Shop

    attr_reader :flavorStock
  
    def initialize
      @value = 0
      @flavorStock = []
    end
  
    def buy(product)
      if not (product.stock > 0)
        return 'No stock'
      end
      product.stock -= 1
      @value += product.value
    end
  
  
    def totalValue
      @value
    end
  
    def addStock(flavor)
      @flavorStock.push flavor
    end
  end