class Shop

  def initialize
    @value = 0
  end

  def buy(product)
    product.stock -= 1
    @value += product.value
  end

  def totalValue
    @value
  end
end