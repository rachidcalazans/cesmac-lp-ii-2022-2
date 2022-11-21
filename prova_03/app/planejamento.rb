require 'time'

class Planejamento
    def initialize(file)
        @file = file
        @palestra = File.readlines(@file, chomp: true)
        @falas_tempo
        @tempo = Time.new(2022,11,21,9)
    end

    def list_palestra 
        @palestra
    end

    def list_tempo_das_falas
        @falas_tempo = @palestra.map do |minutos|
             if (minutos.match(/lightning/))
                minutos = '5'
            end
            minutos.match(/\d+/)[0].to_i
        end
        @falas_tempo
    end

    def list_tempo
        list_tempo = []
        list_tempo.push(@tempo.strftime("%k:%M").strip)

        return list_tempo
    end
end