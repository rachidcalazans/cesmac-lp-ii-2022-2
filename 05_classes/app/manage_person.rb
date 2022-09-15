require './05_classes/app/person'

class ManagePerson
    def initialize(people)
        @people = people
    end

    def add_person(person)
        @people.push(person)
    end

    def people
        @people
    end

    def get_person(full_name)
        for person in @people do
            if person.full_name == full_name
                return person.full_name
            end
        end
        nil
    end
    
end