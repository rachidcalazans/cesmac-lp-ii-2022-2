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

  def test_get_person_by_full_name
    people = [Person.new('Mark', 'Elliot Zuckeberg'), Person.new('William', 'Henry Gates III'), Person.new('Alan', 'Mathison Turing'), Person.new('John', 'von Neumann')]
    manager_people = ManagePerson.new(people)
    assert_equal 'William Henry Gates III', manager_people.get_person('William Henry Gates III')
    assert_nil manager_people.get_person('Elon Reeve Musk')
  end

  def test_add_person
    new_person = Person.new('Steven', 'Paul Jobs')
    p1 = Person.new('Mark', 'Elliot Zuckeberg')
    p2 = Person.new('William', 'Henry Gates III')
    p3 = Person.new('Alan', 'Mathison Turing')
    p4 = Person.new('John', 'von Neumann')
    people = [p1, p2, p3, p4]
    manager_people = ManagePerson.new(people)
    manager_people.add_person(new_person)
    assert_equal [p1, p2, p3, p4, new_person], manager_people.people
  end

  def test_list_people
    p1 = Person.new('Mark', 'Elliot Zuckeberg')
    p2 = Person.new('William', 'Henry Gates III')
    p3 = Person.new('Alan', 'Mathison Turing')
    p4 = Person.new('John', 'von Neumann')
    people = [p1, p2, p3, p4]
    manager_people = ManagePerson.new(people)
    assert_equal [p1, p2, p3, p4], manager_people.people
  end

 end
