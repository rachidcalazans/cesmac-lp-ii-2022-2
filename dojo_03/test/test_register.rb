require "minitest/autorun"
require "./dojo_03/app/register"

class TestRegister < Minitest::Test
  def test_register_instance
    person1 = Register.new('Daniel', 102034)
    assert_equal true, person1.instance_of?(Register)
    person2 = Register.new('Brunna', 102035)

    assert_equal 'Daniel', person1.name
    assert_equal 00010230, person1.register

    assert_equal [{'name' => 'Daniel', 'register' => 102034}], person1.student
    assert_equal [{'name' => 'Brunna', 'register' => 102035}], person2.student
  end

  def test_error
    assert_raises { person2 = Register.new('Joao', 102034) } 
    assert_raises { person3 = Register.new('2asdf', 0032230) } 
    assert_raises { person4 = Register.new('2asd53f', 102034) } 
  end

end