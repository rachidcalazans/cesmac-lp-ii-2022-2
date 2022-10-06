class Concessionary

  attr_reader :cars, :value

  def initialize()
    @value = 0
    @cars = {corolla: 2, yaris:3}
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
end