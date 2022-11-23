require 'time'

class Conferencia
    def initialize(arqui)
        
        @arqui = arqui

        @palestra = File.readlines(@arqui)

        @tempo

        @hora = Time.new(2022,11,22,9)
    end

    def list_palestra
        @palestra
    end

    def list_temp_palestra

        @tempo = @palestra.map do |minu|

            if (minu.match(/lightning/))

                minu = '5'
            end
            minutes.match(/\d+/)[0].to_i
        end
        @tempo
    end

    def list_horas

        list_horas = []

        list_horas.push(@horas.strftime("%k:%M").strip)

        return list_horas
    end
end
 

