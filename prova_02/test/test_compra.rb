require "minitest/autorun"
require './prova_02/app/vendinha'
require './prova_02/app/flavor'

class TestVendinha < Minitest::Test

  def test_littleShop_stock
    vendinha = Shop.new
  end

  def test_total_value
    littleShop = Shop.new
    assert_equal 0, littleShop.totalValue()
  end

  def test_buy
    goiaba = Flavors.new(10, 0.50)
    littleShop = Shop.new

    littleShop.buy(goiaba)
    assert_equal 0.50, littleShop.totalValue
    assert_equal 9, goiaba.stock
  end
end