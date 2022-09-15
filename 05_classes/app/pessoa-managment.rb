class PersonManagment
    
    attr_accessor :persons

    def initialize
        @persons = []
    end

    def add_person(name)
        @persons << name
    end

    def show_person
        @persons.map do |person| 
            "#{person.full_name}"
        end
    end

    def get_full_name(person_full_name)
        if show_person.include? person_full_name
            @persons.select {|person| person.full_name == person_full_name}
        else
            "Couldn't find #{person_full_name}"
        end
    end
end