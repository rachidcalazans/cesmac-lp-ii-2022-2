
require 'time'

class Workshop
    def initialize(lista_palestra)
        @lista_palestra = lista_palestra
        @palestras = File.readlines(@lista_paletra, chomp: true)
        @tempopalestra 
        @horario = Time.new(2022,12,15,9)
    end

     
    def organizar_duracaoPalestras
        @tempopalestra = @palestras.map do |minutes|
            if (minutes.match(/lightning/))
                minutes = '5'
            end
            minutes.match(/\d+/)[0].to_i
        end 
        @tempopalestra
    end

    def organizarPalestras
        @palestras
    end   

    def organizar_tempoPalestras
        organizar_tempoPalestras = []
        organizar_tempoPalestras.push(@horario.strftime("%k:%m".strip))

        return organizar_tempoPalestras

    end

end 