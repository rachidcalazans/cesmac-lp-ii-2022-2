class Calculator #superclass

    attr_reader :value

    def initialize(*args)
        @value = args
        @result = calc
    end

    def result
        @result
    end
end

class Sum < Calculator # It'll sum the values
    
    def calc
        @value.inject(:+)
    end
end

# Sum.new(2,10,4).result
# = 16

class Sub < Calculator # It'll subtract the values

    def calc
        @value.inject(:-)
    end
end

# Sub.new(2,10).result
# = -8

class Mult < Calculator # It'll multiply the values

    def calc
        @value.inject(:*)
    end
end

# Mult.new(2,10,3).result
# = 60

class Div < Calculator # It'll divide the values

    def calc
        @value.inject(:/)
    end
end

# Div.new(20,2).result
# = 10

class Pow < Calculator # It'll power the values
    
    def calc
        @value.inject(:**)
    end
end

# Pow.new(8,2).result
# = 64

class Rem < Calculator

    def calc
        @value.inject(:%)
    end
end

class Compairson # A new class to make the compairsons
    def value
        @value
    end

    def result
        @result 
    end

    def initialize(*args)
        @value = args
        @result = compare
    end
end 

class BiggerThan < Compairson
    def compare
        @value.inject(:>)
    end
end

class BiggerEqualThan < Compairson
    def compare
        @value.inject(:>=)
    end
end

class LowerThan < Compairson
    def compare
        @value.inject(:<)
    end
end

class LowerEqualThan < Compairson
    def compare
        @value.inject(:<=)
    end
end

class Equal < Compairson
    def compare
        @value.inject(:==)
    end
end

class Increments

    def self.increment(arg,arg2)
        arg += arg2
    end

    def self.decrement(arg, arg2)
        arg -= arg2
    end

    def self.division(arg, arg2)
        arg /= arg2
    end

    def self.multiplication(arg, arg2)
        arg *= arg2
    end

    def self.double_pipe(arg, arg2)
        arg ||= arg2
    end
end