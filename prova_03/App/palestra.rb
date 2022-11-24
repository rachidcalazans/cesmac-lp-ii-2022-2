class Palestra
    attr_accessor :nome, :duracao, :horario
   
    def initialize nome, duracao, horario, conferencia
       @nome = nome
       @duracao = duracao
       @horario = horario

       conferencia.atualizar_horario @duracao
    end

    def formatar
      "#{@horario.strftime("%H:%M")} #{@nome}\n"
    end
end