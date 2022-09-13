class Stove
  def initialize(brand, number_of_burners)
    @brand = brand
    @number_of_burners = number_of_burners
    @switched_on = nil
  end

  def brand
    @brand
  end

  def number_of_burners
    @number_of_burners
  end

  def switched_on?
    @switched_on
  end

  def turn_on
    @switched_on = true
  end

  def turn_off 
    @switched_on = false
  end

end
