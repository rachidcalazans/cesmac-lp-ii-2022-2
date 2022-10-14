class Product

    def initialize(name, value)
        @name = name
        @value = value
    end

    def getName
        return @name 
    end

    def setName(name)
        @name = name
    end

    def getValue
        return @value 
    end

    def setValue(value)
        @value = value
    end
end