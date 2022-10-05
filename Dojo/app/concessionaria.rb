class Concessionaria

  def initialize()
    @value = 0
    @cars = {corolla: 2, yaris:3}
  end
  
  def compra(option)
    if(option == 'yaris' && cars[:corolla] >= 1)
      @value += 120000
      @cars[:yaris] -= 1
    end

    if(option == 'corolla' && cars[:corolla] >= 1)
      @value += 150000
      @cars[:corolla] -= 1
    end
  end

  def 
end