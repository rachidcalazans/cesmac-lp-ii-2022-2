class Pessoa
    def initialize(nome, sobrenome, nome_completo)
        @nome = nome
        @sobrenome =sobrenome
        @nome_completo =  "#{nome()} #{sobrenome()}"

    end

    def nome
        @nome
    end

    def sobrenome
        @sobrenome
    end
    
    def nome_completo
        @nome_completo
    end


end
  
