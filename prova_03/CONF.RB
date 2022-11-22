require 'time'

class Conf
    def initialize(arq)
        @arq = arq
        @palestras = File.readlines(@arq)
        @temp
        @hora = Time.new(2022,11,22,9)
    end

    def list_palestras
        @palestras
    end

    def list_temp_palestras
        @temp = @palestras.map do |min|
            if (min.match(/lightning/))
                min = '5'
            end
            minutes.match(/\d+/)[0].to_i
        end
        @temp
    end

    def list_hora
        list_hora = []
        list_hora.push(@hora.strftime("%k:%M").strip)

        return list_hora
    end
end