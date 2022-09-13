

class Stove
  def initialize(brand, qtd_burners)
    @brand = brand
    @qtd_burners = qtd_burners
    @on = nil
  end

  def brand
    @brand
  end

  def qtd_burners
    @qtd_burners
  end

  def on?
    @on
  end

  def on
    @on = true
  end

  def off
    @on = false
  end
end
