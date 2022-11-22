class Pessoa
    def initialize(nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end

    def nome
        @nome
    end

    def sobrenome
        @sobrenome
    end
    
    def nome_completo
        @nome_completo = "#{nome} #{sobrenome}"
    end
end
  
