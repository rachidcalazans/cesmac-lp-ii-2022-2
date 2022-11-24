require_relative 'palestra'

class Conferencia 
    attr_accessor :arquivo, :palestras, :horariopalestras, :Comecopalestras

    def initialize arquivopalestras
        @Comecopalestras
        @arquivo = File.readlines(arquivopalestras, chomp: true)
        @horario = Time.new(2022,11,23,@Comecopalestras)

    end 

end    