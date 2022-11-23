require 'time'

class Conferencias

    def initialize(arch)

        @arch = arch

        @palestra = File.readlines(@arch)

        @tempo

        @horas = Time.new(2022,11,22,9)

    end

    def mostrar_palestra

        @palestra

    end

    def mostrar_tempo_palestra

        @tempo = @palestra.map do |minutes|

            if (minutes.match(/lightning/))

                minutes = '5'

            end

            minutes.match(/\d+/)[0].to_i

        end

        @tempo

    end

    def mostrar_horarios

        list_horarios = []

        list_horarios.push(@horas.strftime("%k:%M").strip)

        return list_horarios
    end
end