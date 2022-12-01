require 'minitest/autorun'
require "./dojo_03/app/management"

class TestManagement < Minitest::Test
  def test_management_creation
    org = Management.new
    assert_equal true, org.instance_of?(Management)
  end

  def test_show_all
    org = Management.new

    assert_equal org.show_all, [{'register' => 102034, 'name'=> 'Daniel'}, {'register' => 102035, 'name' => 'Brunna'}]
  end

  def test_search_register
    org = Management.new

    assert_equal [{'register' => 102035, 'name' => 'Brunna'}], org.search_register(102035)
  end
end