require 'minitest/autorun'
require './prova_03/date'

class Proposals < Minitest::Test
    def test_open_file
        speeches = [] #palestras
        duraction = [] #duração
        

        morning = [] #Manhã
        afternoon = [] #Tarde

        speeches = File.readlines("prova_03/proposals.txt").each_with_index.map do |line|
            line [line]
        end
        
        speeches.insert(4, "Almoço")
        speeches.insert(12, "Evento de Networking")
        puts speeches[0..4]

    end


end    