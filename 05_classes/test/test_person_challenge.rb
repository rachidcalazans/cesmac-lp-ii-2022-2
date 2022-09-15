require "minitest/autorun"
require './05_classes/app/person'
require './05_classes/app/manage_person'

class TestPerson < Minitest::Test

  def test_full_name_Mark_Zuckeberg
    full_name = Person.new('Mark', 'Elliot Zuckeberg')
    assert_equal 'Mark Elliot Zuckeberg', full_name.full_name()
  end

  def test_full_name_Bill_Gates
    full_name = Person.new('William', 'Henry Gates III')
    assert_equal 'William Henry Gates III', full_name.full_name()
  end

  def test_full_name_Alan_Turing
    full_name = Person.new('Alan', 'Mathison Turing')
    assert_equal 'Alan Mathison Turing', full_name.full_name()
  end

  def test_full_name_von_Neumann
    full_name = Person.new('John', 'von Neumann')
    assert_equal 'John von Neumann', full_name.full_name()
  end

  def test_list_people
    people = [Person.new(), Person.new()]
    manager_people = ManagePerson.new(['John von Neumann', 'Alan Mathison Turing', 'William Henry Gates III', 'Mark Elliot Zuckeberg'])
    assert_equal ['John von Neumann', 'Alan Mathison Turing', 'William Henry Gates III', 'Mark Elliot Zuckeberg'], manager_people.people
  end

  def test_add_person
    new_person = Person.new('Steven', 'Paul Jobs')
    full_name = new_person.full_name
    people = ManagePerson.new(['John von Neumann', 'Alan Mathison Turing', 'William Henry Gates III', 'Mark Elliot Zuckeberg'])
    people.add_person(full_name)
    assert_equal ['John von Neumann', 'Alan Mathison Turing', 'William Henry Gates III', 'Mark Elliot Zuckeberg', 'Steven Paul Jobs'], people.people
  end

  def test_get_person_by_full_name
    people = ManagePerson.new(['John von Neumann', 'Alan Mathison Turing', 'William Henry Gates III', 'Mark Elliot Zuckeberg', 'Steven Paul Jobs'])
    assert_equal 'William Henry Gates III', people.get_person('William Henry Gates III')
    assert_equal false, people.get_person('Elon Reeve Musk')
  end

 end
