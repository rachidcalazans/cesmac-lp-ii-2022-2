class Programacao

    def initialize(file)
        @file = file
        @palestra = File.readlines(@file, chomp: true)
        @tempo_falas
        @tempo = Time.new(2022,11,21,9)
    end

    def list_palestra 
        @palestra
    end

    def list_tempo_das_falas
        @tempo_falas = @palestra.map do |minutos|
             if (minutos.match(/lightning/))
                minutos = '5'
            end
            minutos.match(/\d+/)[1..2].to_s
        end
        @tempo_falas
    end

    def list_tempo
        list_tempo = []
        list_tempo.push(@tempo.strftime("%k:%M").strip)

        return list_tempo
    end
end