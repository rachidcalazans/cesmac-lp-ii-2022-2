class Pessoa
    def initialize(nome, sobre_nome)
        @nome = nome
        @sobre_nome = sobre_nome
    end
  
    def nome
        @nome
    end
  
    def sobrenome
        @sobre_nome
    end
  
    def nome_completo
        @nome_completo = "#{nome} #{sobrenome}"
    end
  
  end