class Calculator

    attr_reader :value

    def initialize(*args)
        @value = args
        @result = calc
    end

    def result
        @result
    end
end

class Sum < Calculator
    
    def calc
        @value.inject(:+)
    end
end

class Sub < Calculator 

    def calc
        @value.inject(:-)
    end
end

class Mult < Calculator

    def calc
        @value.inject(:*)
    end
end

class Div < Calculator

    def calc
        @value.inject(:/)
    end
end

class Pow < Calculator
    
    def calc
        @value.inject(:**)
    end
end

class Rem < Calculator

    def calc
        @value.inject(:%)
    end
end

class Compairson < Calculator

    def calc
        @value.inject(:>=)
    end 
end


