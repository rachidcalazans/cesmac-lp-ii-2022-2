class Flavors

  attr_accessor :name, :stock, :value

  def initialize(name, stock, value)
    @name = name
    @stock = stock
    @value = value
  end
end