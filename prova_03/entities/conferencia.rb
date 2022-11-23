require './entities/palestra'

class Conferencia
    attr_accessor :arquivo, :palestras, :horario, :HORA_INICIAL

     def initialize caminho_arquivo
        @HORA_INICIAL = 9
        @arquivo = File.readlines(caminho_arquivo, chomp: true)
 	    @horario = Time.new(2022,11,23,@HORA_INICIAL)

        self.obter_palestras
     end

     def obter_palestras	
        @palestras = @arquivo.map { |palestra| Palestra.new(palestra, palestra.include?("lightning") ? 5 : palestra.match(/\d+/)[0].to_i, @horario, self)}
     end

    def organizar_palestras nome_arquivo = "palestras.txt"
		if !File.exists?(nome_arquivo)
	       File.new(nome_arquivo, "w+") 
        end

        File.open(nome_arquivo, "w") { |file| @palestras.each { |palestra| 
            linha = palestra.formatar

            if palestra.horario.hour == 11 && palestra.horario.min + palestra.duracao > 59
                linha += "\n12:00 Almoço\n"
            elsif palestra.horario.hour == 16 && palestra.horario.min + palestra.duracao > 59
                linha += "\n17:00 Evento de Networking\n"
            end

            linha += "\n"            
            file.puts linha
          }

          file.puts "17:00 Evento de Networking"
        }
    end

    def atualizar_horario duracao 
        hora = @horario.hour
        minuto = @horario.min + duracao

        if minuto > 59
           hora += 1
           minuto = minuto - 60

           if hora == 12
              hora += 1
           end

           if hora == 17
              hora = @HORA_INICIAL
           end
        end

        @horario = Time.new(2022,11,23,hora,minuto)
    end
end
