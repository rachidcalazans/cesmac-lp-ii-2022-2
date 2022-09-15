class ManagePerson
    def initialize(people)
        @people = people
    end

    def add_person(full_name) #(person)
        people.push(full_name)
    end

    def people
        @people
    end

    def get_person(full_name)
        for person in @people do
            if person.full_name() == full_name
                return person
            end
        end
        false
    end
    
end