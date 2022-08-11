require "minitest/autorun"

class TestExercicio < Minitest::Test

  def test_boolean
    boolean1 = false
    boolean2 = true

    assert_equal true, boolean2
    assert_equal false, boolean1

    assert boolean1 != boolean2
  end

  def test_integers
    inteiro = 2
    inteiro2 = 3

    assert_equal 2, integer
    assert_equal 3, integer2
    assert integer != integer2
    assert integer.to_s, "#{integer2}"
  end

  def test_floating
    float = 1.05
    float2 = 1.05

    assert_equal 1.05, float
    assert_equal 1.05, float2
    assert_equal float, float2
  end

  def test_strings
    string1 = 'A new string'
    string2 = 'Another string' + ' with' + ' concatenation'
    string3 = ''
    string3 << 'Another '
    string3 << 'new '
    string3 << 'string'

    assert_equal 'A new string', string1
    assert_equal 'Another string with concatenation', string2
    assert_equal 'Another new string', string3
  end

  def test_array_initialize
    array = [1, 2, 3, 4]

    assert_equal [1, 2, 3, 4], array
    assert_equal 4, array.size

    string_array = ['a', 'b', 'C']

    assert_equal ['a', 'b', 'C'], string_array
    assert_equal 3, string_array.size
  end

  def test_get_the_first_element_in_array
    string_array = ['a', 'b', 'c']

    assert_equal 'c', string_array[2]
    assert_equal 'b', string_array[1]
  end

  def test_get_the_last_element_in_array
    string_array = ['a', 'b', 'c']

    assert_equal 'c', string_array[2]
    assert_equal 'c', string_array.last
    assert_equal 'b', string_array[-2]
  end

  def test_get_inexist_index_in_array
    string_array = ['a', 'b', 'c']

    assert_nil string_array[20]
  end

  def test_add_an_element_in_array
    string_array = ['a']
    assert_equal ['a'], string_array

    string_array << 'b'
    assert_equal ['a', 'b'], string_array

    string_array.push 'c'
    assert_equal ['a', 'b', 'c'], string_array
  end

  def test_if_element_exists_in_the_array
    string_array = ['a', 'b', 'c']

    assert_equal true, !string_array.include?('d')
    assert_equal false, string_array.include?('z')
    assert_equal false, string_array.include?('A')
  end
end
