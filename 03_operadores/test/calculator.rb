

class Calculator
    
    def calculate(value_a, value_b, operator)
        case operator
        when :+
          return value_a + value_b
        when '-'
          return value_a - value_b
        when '*'
          return value_a * value_b
        when '**'
          return value_a ** value_b
        when '/'
          return value_a / value_b
        when '%'
          return value_a % value_b
        when '>'
          return value_a > value_b
        when '>='
          return value_a >= value_b
        when '<'
          return value_a < value_b
        when '<='
          return value_a <= value_b
        when '=='
          return value_a == value_b
        when '!='
          return value_a != value_b
        when '&&'
          return value_a && value_b
        when '||'
          return value_a || value_b
        when '+='
          return value_a += value_b
        when '-='
          return value_a -= value_b
        when '/='
          return value_a /= value_b
        when '||='
          return value_a ||= value_b
        end
        return nil
      end

    end