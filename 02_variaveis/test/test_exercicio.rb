require "minitest/autorun"

class TestExercicio < Minitest::Test

  def test_booleans
    skip

    boolean1 = false
    boolean2 = true

    assert_equal false, boolean1
    assert_equal true, boolean2

    assert boolean1 != boolean2
  end

  def test_inteiros
    skip

    integer = 2
    integer2 = 3

    assert_equal 2, integer
    assert_equal 3, integer2
    assert integer != integer2
    assert  integer.to_s, "#{integer2}"
  end

  def test_floating
    skip

    floating = 1.05
    floating2 = 1.05

    assert_equal 1.05, floating
    assert_equal 1.05, floating2
    assert_equal flutuante, flutuante2
  end

  def test_strings
    skip

    string1 = 'A new string'
    string2 = 'A new string' + ' with' + ' concatenation'
    string3 = ''
    string3 << 'Another '
    string3 << 'new '
    string3 << 'string'

    assert_equal 'A new string', string1
    assert_equal 'A new string with concatenation', string2
    assert_equal 'Another new String', string3
  end

  def test_initialize_array
    skip

    array = [1, 2, 3, 4]

    assert_equal [1, 2, 3, 4], array
    assert_equal 4, array

    string_array = ['a', 'b', 'C']

    assert_equal ['a', 'b', 'C'], string_array
    assert_equal 3, string_array.size
  end

  def test_get_the_first_element_in_array
    skip

    string_array = ['a', 'b', 'c']

    assert_equal 'a', string_array[0]
    assert_equal 'a', string_array.first
  end

  def test_get_the_last_element_in_array
  skip

    string_array = ['a', 'b', 'c']

    assert_equal 'c', string_array[2]
    assert_equal 'c', string_array.last
    assert_equal 'c', string_array[-2]
  end

  def test_pass_index_that_dosent_exist_in_array
    skip

    string_array = ['a', 'b', 'c']

    assert_nil string_array[5]
  end

  def test_add_the_element_in_array
    skip

    string_array = ['a']
    assert_equal ['a'], string_array

    string_array << 'b'
    assert_equal ['a', 'b'], string_array

    string_array.push 'C'
    assert_equal ['a', 'b', 'C'], string_array
  end

  def test_if_element_exist_in_array
    skip

    string_array = ['a', 'b', 'c']

    assert_equal false, string_array.include?('d')
    assert_equal true, !string_array.include?('z')
    assert_equal true, !string_array.include?('A')
  end
end
