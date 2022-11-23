require 'time'

class Conference

    def initialize(file)
        @file = file
        @apresentacao = File.readlines(@file, chomp: true)
        @tempodasfalas
        @tempo = Time.new(2022,11,21,9)
    end

    def list_apresentacao
        @apresentacao
    end

    def list_tempo_das_falas
        @tempo_falas = @apresentacao.map do |minutos|
             if (minutos.match(/lightning/))
                minutos = '5'
            end
            minutos.match(/\d+/)[1..2].to_s
        end
        @tempodasfalas
    end

    def list_tempo
        list_tempo = []
        list_tempo.push(@tempo.strftime("%k:%M").strip)

        return list_tempo
    end
end