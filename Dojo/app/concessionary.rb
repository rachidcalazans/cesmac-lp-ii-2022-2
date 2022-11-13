class Concessionary

  attr_reader :cars, :value, :stock

  def initialize()
    @value = 0
    @cars = {corolla: 2, yaris:3}
    @stock = []
  end
  
  def buy(option)
    if(option == 'yaris' && cars[:yaris] >= 1)
      @value += 120000
      @cars[:yaris] -= 1
    end

    if(option == 'corolla' && cars[:corolla] >= 1)
      @value += 150000
      @cars[:corolla] -= 1
    end
  end

  def valor_total
    @value
  end

  def add_stock(car)
    @stock << car
  end
end