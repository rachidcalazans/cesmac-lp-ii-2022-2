require 'time'

class Conferencia
    def initialize(arquivo)
        @arquivo = arquivo
        @palestras = File.readlines(@arquivo)
        @duracao
        @horario = Time.new(2022,11,21,9)
    end

    def listar_palestras
        @palestras
    end

    def listar_duracao_palestras
        @duracao = @palestras.map do |minutes|
            if (minutes.match(/lightning/))
                minutes = '5'
            end
            minutes.match(/\d+/)[0].to_i
        end
        @duracao
    end

    def listar_horarios
        lista_horarios = []
        lista_horarios.push(@horario.strftime("%k:%M").strip)

        return lista_horarios
    end
end