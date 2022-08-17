require "minitest/autorun"
require_relative "app/calculator"

# Challenge
# It's worth 1.5 points if the PR is created until 17/08/2022 23:59:59
#
# Implement the method #calculator
# Add an assert_equal to each test method with his respective operator

class TestChallenge < Minitest::Test

  def test_sum
    assert_equal 3, Sum.new(1, 1, 1).result
  end

  def test_subtraction
    assert_equal 5, Sub.new(10,5).result
  end

  def test_multiplication
    assert_equal 20, Mult.new(1,10,2).result
  end

  def test_power
    assert_equal 64, Pow.new(8,2).result
  end

  def test_division
    assert_equal 5, Div.new(25,5).result
  end

  def test_remainder
    assert_equal 0, Rem.new(20,4).result
  end

  def test_comparsion
    assert_equal true, Compairson.new(120, 30).result
  end

  def test_boolean
  end
end
