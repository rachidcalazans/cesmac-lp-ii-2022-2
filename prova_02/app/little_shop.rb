class Shop

  attr_reader :flavorStock

  def initialize
    @value = 0
    @flavorStock = []
  end

  def buy(product)
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