class Person
    def initialize(name, surname)
        @name = name
        @surname = surname
        @full_name = "#{name} #{surname}"
    end

    def full_name
        @full_name
    end
    
end