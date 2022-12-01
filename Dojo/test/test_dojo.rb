require 'minitest/autorun'
require 'sqlite3'
require './Dojo/app/functions'

class TestDb < Minitest::Test

  def test_name
    student1 = Student.new('Aldo1', '001')
    student2 = Student.new('Maria', '002')
    student3 = Student.new('  ', '003')
    student4 = Student.new('', '004')

    expected_result_student1 = 'Invalid name.'
    expected_result_student3 = 'You must insert a name.'
    expected_result_student4 = 'You must insert a name.'

    assert_equal expected_result_student1, student1.check_name
    assert_nil student2.check_name
    assert_equal expected_result_student3, student3.check_name
    assert_equal expected_result_student4, student4.check_name
  end

  def test_registration_number
    student1 = Student.new('Aldo', '0a01')
    student2 = Student.new('Maria', '002')
    student3 = Student.new('Jimmy', '  ')
    student4 = Student.new('Harry', '')

    expected_result_student1 = 'Invalid registration number.'
    expected_result_student3 = 'You must insert a registration number.'
    expected_result_student4 = 'You must insert a registration number.'

    assert_equal expected_result_student1, student1.check_registration_number
    assert_nil student2.check_name
    assert_equal expected_result_student3, student3.check_registration_number
    assert_equal expected_result_student4, student4.check_registration_number
  end

  def test_registration_number_exists
    student1 = Student.new('Aldo', '001')
    student2 = Student.new('Maria', '002')

    expected_result = 'This registration number already exists.'

    assert_equal expected_result, student1.check_registration_number_exists
    assert_nil student2.check_registration_number_exists
  end

  def test_save_data
    student1 = Student.new('Aldo', '001')
    student2 = Student.new('Maria', '002')
    student3 = Student.new('Jimmy', '003')
    student4 = Student.new('1Harry', 'a004')

    expected_result_student1 = 'Something went wrong. Try again.'
    expected_result_student2 = 'Registration saved.'
    expected_result_student3 = 'Registration saved.'
    expected_result_student4 = 'Something went wrong. Try again.'

    assert_equal expected_result_student1, student1.save_data
    assert_equal expected_result_student2, student2.save_data
    assert_equal expected_result_student3, student3.save_data
    assert_equal expected_result_student4, student4.save_data
  end
end
