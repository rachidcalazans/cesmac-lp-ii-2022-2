class Conferencia
    def initialize(arquivo)
        @arquivo = arquivo
        @palestras = File.readlines(@arquivo, chomp: true)
        @duracao
    end

    def listar_palestras
        return @palestras
    end

    def listar_duracao_palestras
        @duracao = @palestras.map do |minutes|
            if (minutes.match(/lightning/))
                minutes = '5'
            end
            minutes.match(/\d+/)[0].to_i
        end
        return @duracao
    end
end