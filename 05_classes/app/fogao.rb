class Stove
  attr_accessor :brand, :burner_qty
  attr_writer :on

  def initialize(brand, burner_qty)
    @brand = brand
    @burner_qty = burner_qty
    @on = nil
  end

  def on?
    @on
  end

  def turnOn
    @on = true
  end
  
  def turnOff
    @on = false
  end
end
