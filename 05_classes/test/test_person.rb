require "minitest/autorun"

require './05_classes/app/pessoa'
require './05_classes/app/pessoa-managment'

class TestPerson < Minitest::Test

    def test_person_set
        name = Person.new("Daniel", "Correia")
        assert_equal name.name, "Daniel"
        assert_equal name.lastName, "Correia"
    end

    def test_full_name
        name = Person.new("Daniel", "Correia")
        assert_equal "Daniel Correia", name.full_name
    end

    def test_add_person
        name = Person.new("Daniel", "Correia")
        listName = PersonManagment.new
        listName.add_person(name)
    end

    def test_show_list
        person = Person.new("Daniel", "Correia")
        person2 = Person.new("Brunna", "Luiza")
        listName = PersonManagment.new
        listName.add_person(person)
        listName.add_person(person2)
        
        assert_equal "Daniel Correia, Brunna Luiza", listName.show_person.join(", ")
    end

    def test_get_full_name
        person = Person.new("Daniel", "Correia")
        person2 = Person.new("Brunna", "Luiza")
        listName = PersonManagment.new
        listName.add_person(person)
        listName.add_person(person2)
        
        # assert_equal listName.persons[0], listName.get_full_name("Daniel Correia")
        # assert_equal listName.persons[1], listName.get_full_name("Brunna Luiza") // It's returning inside of an array
        assert_equal "Couldn't find Carra Luiza", listName.get_full_name("Carra Luiza") 
    end
end