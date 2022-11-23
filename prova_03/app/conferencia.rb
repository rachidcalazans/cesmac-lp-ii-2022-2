require 'time'

    class Conferencia
        def initialize 
            @palestra
            @tempo_falas
            @tempo 
        end
            
            def palestra_lista
                @palestra
            end 
            
            def tempo_falas
                @tempo_falas
                @talkt = @lecture.map do |minutos|
                    if (minutos.match(/lightning/))
                        minutos = '5'
                    end
            minutos.match(/\d+/)[0].to_i
        end
            def lista_hora
                    lista_hora = []
                    lista_hora.push(@hora.strftime("%k:%M").strip)
    
            return lista_hora
        end
    end
        