class Pessoas

    def initialize(nome_completo)
        @nome_completo = nome_completo
        
    end


    def nome
        @nome_completo
    end

    def add_pessoa
        gets.chomp @pessoa
       return @pessoa 
        
    end
    
    def retunr_pessoa
        
        puts @pessoa
    end

end



