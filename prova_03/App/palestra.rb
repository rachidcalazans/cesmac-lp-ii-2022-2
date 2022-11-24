class Palestras 
    attr_accessor :nome, :duraca, :horario 

    def initialize nome, duracao, horario, conferencia
        @nome = nome
        @duracao = duracao 
        @horario = horario 
        
        conferencia.atualizarHora @duracao
    end

    def formatar
        "#{@horario.strftime("%H:%M")} #{@nome}\n"
      end

end    