class Person
    
    attr_accessor :name, :lastName

    def initialize(name, lastName)
        @name = name
        @lastName = lastName
    end

    def full_name
        @fullName = "#{@name} #{@lastName}"
    end
end