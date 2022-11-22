require "minitest/autorun"
require './prova_02 copy 2/app/flau'
require './prova_02 copy 2/app/gerenciarFlau'

class TestLittleShop < Minitest::Test 

  def setup()
    @guava = Flavors.new('guava', 10, 0.50)
    @strawberry = Flavors.new('strawberry', 10, 0.75)
    @greenApple = Flavors.new('green apple', 10, 0.75)
    @nescauNutella = Flavors.new('nescau and nutella', 10, 1.0)
    @mint = Flavors.new('mint', 10, 0.50)

    @littleShop = Shop.new
    
    @fruitStock = [@guava, @strawberry, @greenApple, @nescauNutella, @mint]
    @littleShop.addStock(@fruitStock)
  end

  def test_total_value
    assert_equal 0, @littleShop.totalValue()

    for product in 1..5 do
      #product = @guava
      @littleShop.buy(@guava)
    end

    assert_equal 2.50, @littleShop.totalValue()
  end

  def test_buy
    @littleShop.buy(@guava)
    assert_equal 0.50, @littleShop.totalValue
    assert_equal 9, @guava.stock
  end

  def test_client_shop
     # Maria, João and Pedro purchase

     for greenApple in 1..7 do
      @littleShop.buy(@greenApple)
     end

     for mint in 1..3 do
      @littleShop.buy(@mint)
     end

     for strawberry in 1..3 do
      @littleShop.buy(@strawberry)
     end

     for nescauNutella in 1..3 do
      @littleShop.buy(@nescauNutella)
     end

     for guava in 1..2 do
      @littleShop.buy(@guava)
     end

     # Stock Check
     assert_equal 3, @greenApple.stock
     assert_equal 7, @mint.stock
     assert_equal 7, @strawberry.stock
     assert_equal 7, @nescauNutella.stock
     assert_equal 8, @guava.stock

     # Billing
     assert_equal 13, @littleShop.totalValue
  end

  def test_zero_stock_purchase
    @guava.stock = 0
    assert_equal 'No stock', @littleShop.buy(@guava)
  end
end