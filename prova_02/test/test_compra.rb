require "minitest/autorun"
require './prova_02/app/vendinha'
require './prova_02/app/flavor'

class TestVendinha < Minitest::Test 

  def setup()
    @guava = Flavors.new('guava', 10, 0.50)
    @strawberry = Flavors.new('strawberry', 10, 0.75)
    @greenApple = Flavors.new('green aplee', 10, 0.75)
    @nescauNutella = Flavors.new('nescau and nutella', 10, 1.0)
    @mint = Flavors.new('mint', 10, 0.50)

    @littleShop = Shop.new
    
    @fruitStock = [@guava, @strawberry, @greenApple, @nescauNutella, @mint]
  end

  def test_total_value
    assert_equal 0, @littleShop.totalValue()

    for a in 1..5 do
      a = @guava
      @littleShop.buy(a)
    end

    assert_equal 2.50, @littleShop.totalValue()
  end

  def test_buy
    @littleShop.buy(@guava)
    assert_equal 0.50, @littleShop.totalValue
    assert_equal 9, @guava.stock
  end
end